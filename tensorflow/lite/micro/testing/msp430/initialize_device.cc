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

#include "tensorflow/lite/micro/testing/initialize_device.h"

#include <msp430.h>

// Need to stop the watchdog timer so that the program doesn't reset. Might as
// well do other setup including setting the max clock frequency (16x faster).
void initialize_device() {
  WDTCTL = WDTPW | WDTHOLD;  // Stop WDT
  // Configure GPIO
  P1OUT &= ~BIT0;  // Clear P1.0 output latch for a defined power-on state
  P1DIR |= BIT0;   // Set P1.0 to output direction
  // Disable the GPIO power-on default high-impedance mode
  PM5CTL0 &= ~LOCKLPM5;
  // setting frequency to 16 MHz
  FRCTL0 = FRCTLPW | NWAITS_1;
  // Clock System Setup
  // Setting the frequency to 16MHz
  CSCTL0_H = CSKEY_H;  // Unlock CS registers
  CSCTL1 = DCOFSEL_0;  // Set DCO to 1MHz
  // Set SMCLK = MCLK = DCO, ACLK = VLOCLK
  CSCTL2 = SELA__VLOCLK | SELS__DCOCLK | SELM__DCOCLK;
  // Per Device Errata set divider to 4 before changing frequency to
  // prevent out of spec operation from overshoot transient
  CSCTL3 =
      DIVA__4 | DIVS__4 |
      DIVM__4;  // Set all corresponding clk sources to divide by 4 for errata
  CSCTL1 = DCOFSEL_4 | DCORSEL;  // Set DCO to 16MHz
  // Delay by ~10us to let DCO settle. 60 cycles = 20 cycles buffer + (10us /
  // (1/4MHz))
  __delay_cycles(60);
  CSCTL3 =
      DIVA__1 | DIVS__1 | DIVM__1;  // Set all dividers to 1 for 16MHz operation
  CSCTL0_H = 0;
}