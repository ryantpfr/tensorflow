/* Copyright 2018 The TensorFlow Authors. All Rights Reserved.

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

// A specializable function that sets up the target device directly after the
// test starts. This is called by TF_LITE_MICRO_TESTS_BEGIN, but is included
// as a separate cc file so that the project generation system can swap in
// device-specific code.
//
// Example: for MSP430 the watchdog timer needs to be stopped or else the
// program will unexpectedly reset.

#ifndef TENSORFLOW_LITE_MICRO_TESTING_INIT_DEVICE_H_
#define TENSORFLOW_LITE_MICRO_TESTING_INIT_DEVICE_H_

void initialize_device();

#endif  // TENSORFLOW_LITE_MICRO_TESTING_INIT_DEVICE_H_
