# TensorFlow for MSP430

## Importing into Code Composer Studio

You've probably already generated a project using
``` bash
gmake -f tensorflow/lite/micro/tools/make/Makefile TARGET=msp430 generate_hello_world_test_ccs_project
```
To import this into Code Composer Studio, navigate to `File->Import->Code Composer Studio->CCS Projects`.
For running unit tests, we recommend setting your search directory to tensorflow/lite/micro/tools/make/gen/msp430_msp430
which should discover all generated projects recursively
