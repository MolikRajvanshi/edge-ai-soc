/**
 * =============================================================================
 * File: test_data.h
 * Description: Known test input data, weights, and expected output for the
 *              CNN accelerator C testbench.
 *
 *              Test case: 3×3 convolution on a 4×4 single-channel input
 *              with stride=1, padding=0, relu=ON, pool=OFF
 *
 *              Input (4×4):          Weight (3×3):
 *              ┌───┬───┬───┬───┐    ┌───┬───┬───┐
 *              │ 1 │ 2 │ 3 │ 0 │    │ 1 │ 0 │-1 │
 *              ├───┼───┼───┼───┤    ├───┼───┼───┤
 *              │ 0 │ 1 │ 2 │ 3 │    │ 0 │ 1 │ 0 │
 *              ├───┼───┼───┼───┤    ├───┼───┼───┤
 *              │ 3 │ 0 │ 1 │ 2 │    │-1 │ 0 │ 1 │
 *              ├───┼───┼───┼───┤    └───┴───┴───┘
 *              │ 2 │ 3 │ 0 │ 1 │
 *              └───┴───┴───┴───┘    Bias = 1
 *
 *              Output (2×2) = Conv + Bias + ReLU:
 *              Pixel (0,0): 1*1+2*0+3*(-1)+0*0+1*1+2*0+3*(-1)+0*0+1*1 + bias(1)
 *                         = 1+0-3+0+1+0-3+0+1 +1 = -2 → ReLU → 0
 *              (computed by hand for verification)
 *
 * Author: Molik Rajvanshi
 * =============================================================================
 */

#ifndef TEST_DATA_H
#define TEST_DATA_H

#include "../src/accel_top.h"

// =============================================================================
// Test Configuration
// =============================================================================
#define TEST_KERNEL_SIZE    3
#define TEST_IN_CHANNELS    1
#define TEST_OUT_CHANNELS   1
#define TEST_IN_HEIGHT      4
#define TEST_IN_WIDTH       4
#define TEST_STRIDE         1
#define TEST_PADDING        0
#define TEST_RELU_ENABLE    1
#define TEST_POOL_ENABLE    0

// Output dimensions: (4 + 2*0 - 3)/1 + 1 = 2
#define TEST_OUT_HEIGHT     2
#define TEST_OUT_WIDTH      2

// =============================================================================
// Test Input (1 channel × 4 × 4, flattened)
// =============================================================================
static data_t test_input[TEST_IN_CHANNELS * TEST_IN_HEIGHT * TEST_IN_WIDTH] = {
    // Channel 0 (4×4)
     1,  2,  3,  0,
     0,  1,  2,  3,
     3,  0,  1,  2,
     2,  3,  0,  1
};

// =============================================================================
// Test Weights (1 out_ch × 1 in_ch × 3 × 3, flattened)
// =============================================================================
static weight_t test_weights[TEST_OUT_CHANNELS * TEST_IN_CHANNELS * TEST_KERNEL_SIZE * TEST_KERNEL_SIZE] = {
    // Output Channel 0, Input Channel 0 (3×3)
     1,  0, -1,
     0,  1,  0,
    -1,  0,  1
};

// =============================================================================
// Test Bias (1 per output channel)
// =============================================================================
static acc_t test_bias[TEST_OUT_CHANNELS] = {
    1  // Bias for output channel 0
};

// =============================================================================
// Expected Output (computed by hand)
// =============================================================================
//
// Conv output (before ReLU):
//   Pixel(0,0): sum of input[0:3][0:3] * weight + bias
//     = (1*1 + 2*0 + 3*(-1)) + (0*0 + 1*1 + 2*0) + (3*(-1) + 0*0 + 1*1) + 1
//     = (1+0-3) + (0+1+0) + (-3+0+1) + 1 = -3 + 1 + -2 + 1 = -3
//     ReLU(-3) = 0
//
//   Pixel(0,1): input[0:3][1:4] * weight + bias
//     = (2*1 + 3*0 + 0*(-1)) + (1*0 + 2*1 + 3*0) + (0*(-1) + 1*0 + 2*1) + 1
//     = (2+0+0) + (0+2+0) + (0+0+2) + 1 = 2+2+2+1 = 7
//     ReLU(7) = 7
//
//   Pixel(1,0): input[1:4][0:3] * weight + bias
//     = (0*1 + 1*0 + 2*(-1)) + (3*0 + 0*1 + 1*0) + (2*(-1) + 3*0 + 0*1) + 1
//     = (0+0-2) + (0+0+0) + (-2+0+0) + 1 = -2+0-2+1 = -3
//     ReLU(-3) = 0
//
//   Pixel(1,1): input[1:4][1:4] * weight + bias
//     = (1*1 + 2*0 + 3*(-1)) + (0*0 + 1*1 + 2*0) + (3*(-1) + 0*0 + 1*1) + 1
//     = (1+0-3) + (0+1+0) + (-3+0+1) + 1 = -2+1-2+1 = -2
//     ReLU(-2) = 0
//
static result_t test_expected_output[TEST_OUT_CHANNELS * TEST_OUT_HEIGHT * TEST_OUT_WIDTH] = {
    0,  7,
    0,  0
};

// =============================================================================
// Larger Test: Multi-channel input (for extended testing)
// =============================================================================
#define TEST2_KERNEL_SIZE   3
#define TEST2_IN_CHANNELS   2
#define TEST2_OUT_CHANNELS  1
#define TEST2_IN_HEIGHT     4
#define TEST2_IN_WIDTH      4
#define TEST2_STRIDE        1
#define TEST2_PADDING       0
#define TEST2_OUT_HEIGHT    2
#define TEST2_OUT_WIDTH     2

// 2 channels × 4×4
static data_t test2_input[TEST2_IN_CHANNELS * TEST2_IN_HEIGHT * TEST2_IN_WIDTH] = {
    // Channel 0
     1,  2,  3,  0,
     0,  1,  2,  3,
     3,  0,  1,  2,
     2,  3,  0,  1,
    // Channel 1
     0,  1,  0,  1,
     1,  0,  1,  0,
     0,  1,  0,  1,
     1,  0,  1,  0
};

// 1 out_ch × 2 in_ch × 3×3
static weight_t test2_weights[TEST2_OUT_CHANNELS * TEST2_IN_CHANNELS * TEST2_KERNEL_SIZE * TEST2_KERNEL_SIZE] = {
    // Out Ch 0, In Ch 0
     1,  0, -1,
     0,  1,  0,
    -1,  0,  1,
    // Out Ch 0, In Ch 1
     1,  1,  1,
     0,  0,  0,
    -1, -1, -1
};

static acc_t test2_bias[TEST2_OUT_CHANNELS] = { 0 };

#endif // TEST_DATA_H
