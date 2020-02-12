/* Copyright 2019 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "tensorflow/lite/kernels/internal/reference/reduce.h"

#include "tensorflow/lite/c/builtin_op_data.h"
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/kernels/internal/quantization_util.h"
#include "tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "tensorflow/lite/kernels/internal/types.h"
#include "tensorflow/lite/kernels/kernel_util.h"

// This specialized implementation is required so that we can call a kernel
// that uses ints from a framework that uses int32_ts. This could be written
// portably, but it would be sloppy and doesn't fix the underling problem of
// the assumptions the kernel makes.

namespace tflite {
namespace ops {
namespace micro {
namespace reduce {

namespace {

// The Lite kernel requires int arrays of unknown size while the micro tensor
// data structure uses int32_t's. To adjust for this, when the platform has
// ints smaller than 32 bits, it copies the array to the same location with a
// smaller size. Assumes that the integer does fit, but this is valid since
// we are dealing with tensor dimensions here.
int* int32ArrayAsInt(int32_t* arr, int size) {
  if (sizeof(int) == sizeof(int32_t)) {
    return reinterpret_cast<int*>(arr);
  } else {
    int* result = reinterpret_cast<int*>(arr);
    for (int i = 0; i < size; i++) {
      result[i] = arr[i];
    }
    return result;
  }
}

// undoes int32ArrayAsInt, and therefore assumes that writing 'oob' an
// appropriate amount is using memory correctly
int32_t* intArrayAsInt32(int* arr, int size) {
  if (sizeof(int) == sizeof(int32_t)) {
    return reinterpret_cast<int32_t*>(arr);
  } else {
    int32_t* result = reinterpret_cast<int32_t*>(arr);
    for (int i = 0; i < size; i++) {
      result[i] = arr[i];
    }
    return result;
  }
}

template <int input_dims_size, int output_dims_size, int num_axis>
bool call_mean(float* input, float output, int32_t axis32, bool keep_dims,
               int temp_index, int* resolved_axis) {
  int input_dims[input_dims_size];
  int output_dims[output_dims_size];
  int axis[num_axis];

  return reference_ops::Mean(input, input_dims, input_dims_size, output,
                             output_dims, output_dims_size, axis, num_axis,
                             keep_dims, temp_index, resolved_axis, output);
}
}  // namespace

constexpr int kMaxNumberOfAxis = 4;
constexpr int kMaxNumberOfReducedAxis = 2;

TfLiteStatus PrepareSimple(TfLiteContext* context, TfLiteNode* node) {
  // Inputs Tensor (dtype depends on quantization):
  // [0] = Input
  // [1] = Axis

  // Outputs Tensor (dtype depends on quantization):
  // [0] = Output

  // Validate number of inputs and outputs
  TF_LITE_ENSURE_EQ(context, node->inputs->size, 2);
  TF_LITE_ENSURE_EQ(context, node->outputs->size, 1);

  // Validate axis type
  const TfLiteTensor* axis = &context->tensors[node->inputs->data[1]];
  TF_LITE_ENSURE_TYPES_EQ(context, axis->type, kTfLiteInt32);
  return kTfLiteOk;
}

TfLiteStatus PrepareMeanOrSum(TfLiteContext* context, TfLiteNode* node) {
  TF_LITE_ENSURE_OK(context, PrepareSimple(context, node));
  // TODO(b/144955155): Support uint8(b/144955155) and int8(b/144955018)
  return kTfLiteOk;
}

void ResolveAxis(const int32_t* axis_data, int axis_count,
                 tflite::MeanParams* op_params) {
  int i = 0;
  for (; i < axis_count; ++i) {
    op_params->axis[i] = static_cast<int16>(axis_data[i]);
  }
  for (; i < 4; ++i) {
    op_params->axis[i] = 1;
  }
  op_params->axis_count = axis_count;
}

TfLiteStatus EvalMean(TfLiteContext* context, TfLiteNode* node) {
  const TfLiteTensor* input = &context->tensors[node->inputs->data[0]];
  const TfLiteTensor* axis = &context->tensors[node->inputs->data[1]];
  TfLiteTensor* output = &context->tensors[node->outputs->data[0]];
  TfLiteReducerParams* params =
      reinterpret_cast<TfLiteReducerParams*>(node->builtin_data);

  int num_axis = static_cast<int>(NumElements(axis));
  int temp_index[kMaxNumberOfAxis];
  int resolved_axis[kMaxNumberOfReducedAxis];

  switch (input->type) {
    case kTfLiteFloat32: {
      tflite::MeanParams op_params;
      ResolveAxis(GetTensorData<int32_t>(axis), num_axis, &op_params);
      // TODO(b/146571391): Support only 4D Input and 2D Axis for Mean until
      // scratch tensor allocation has been implemented in (b/132070898)
      bool is_valid_inputs =
          (NumDimensions(input) == 4 && op_params.axis_count == 2 &&
           ((op_params.axis[0] == 1 && op_params.axis[1] == 2) ||
            (op_params.axis[0] == 2 && op_params.axis[1] == 1)));
      TF_LITE_ENSURE_MSG(
          context, is_valid_inputs == true,
          "Number of Input "
          "dimensions != 4 OR the Axis is not either [1, 2] or [2, 1]");
      // TODO(b/139102329): Handle the below special case in the combined
      // reference method.
      // Defer to specialized implementation for 4D Mean across axes 1 & 2.
      if (params->keep_dims) {
        reference_ops::Mean(op_params, GetTensorShape(input),
                            GetTensorData<float>(input), GetTensorShape(output),
                            GetTensorData<float>(output));
      } else {
        // Make arrangements to call Mean with a smaller integer type.
        // For non-const arrays we can use the same memory and undo it later
        // For const arrays we can set a reasonable max and copy into a buffer
        int* input_dims = int32ArrayAsInt(input->dims->data, input->dims->size);
        int* output_dims =
            int32ArrayAsInt(output->dims->data, output->dims->size);
        TF_LITE_ENSURE(context, num_axis <= 16);
        int axis[16] = {1, 2, 0, 0};

        TF_LITE_ENSURE(
            context,
            reference_ops::Mean(GetTensorData<float>(input), input_dims,
                                input->dims->size, GetTensorData<float>(output),
                                output_dims, output->dims->size, axis, num_axis,
                                params->keep_dims, temp_index, resolved_axis,
                                GetTensorData<float>(output)));

        // re-write the data back into the original format
        intArrayAsInt32(input_dims, input->dims->size);
        intArrayAsInt32(output_dims, output->dims->size);
      }
    } break;
    default:
      // TODO(b/144955155): Support uint8(b/144955155) and int8(b/144955018)
      TF_LITE_ENSURE_MSG(context, false,
                         "Currently, only float32 input type "
                         "is supported.");
  }
  return kTfLiteOk;
}
}  // namespace reduce

TfLiteRegistration* Register_MEAN() {
  static TfLiteRegistration r = {};
  r.init = nullptr;
  r.free = nullptr;
  r.prepare = reduce::PrepareMeanOrSum;
  r.invoke = reduce::EvalMean;
  return &r;
}
}  // namespace micro
}  // namespace ops
}  // namespace tflite
