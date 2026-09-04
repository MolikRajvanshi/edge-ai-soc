/**
 * =============================================================================
 * File: tb_accel.cpp
 * Description: C Testbench for the CNN Accelerator.
 *
 *              This testbench runs during "C Simulation" in Vitis HLS.
 *              It calls accel_top() with known inputs and compares the
 *              output against hand-computed expected values.
 *
 *              Same approach as your RISC-V testbench files
 *              (testbench_rv32i_pp_ip.cpp, testbench_multicore_pipeline_4s.cpp)
 *
 *              Usage in Vitis HLS:
 *              1. Set this file as the testbench
 *              2. Run "C Simulation"
 *              3. Check console for PASS/FAIL
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "../src/accel_top.h"
#include "test_data.h"

// =============================================================================
// Test Runner
// =============================================================================

int run_test(
    const char *test_name,
    data_t     *input,
    weight_t   *weights,
    acc_t      *bias,
    result_t   *expected_output,
    int         kernel_size,
    int         in_channels,
    int         out_channels,
    int         in_height,
    int         in_width,
    int         stride,
    int         padding,
    int         relu_enable,
    int         pool_enable,
    int         out_height,
    int         out_width
) {
    printf("\n========================================\n");
    printf(" Test: %s\n", test_name);
    printf("========================================\n");
    printf("  Input:  %d ch × %d × %d\n", in_channels, in_height, in_width);
    printf("  Kernel: %d × %d, stride=%d, pad=%d\n", kernel_size, kernel_size, stride, padding);
    printf("  Output: %d ch × %d × %d\n", out_channels, out_height, out_width);
    printf("  ReLU: %s, Pool: %s\n",
           relu_enable ? "ON" : "OFF",
           pool_enable ? "ON" : "OFF");

    // Allocate output buffer
    int output_size = out_channels * out_height * out_width;
    result_t *hw_output = (result_t *) calloc(output_size, sizeof(result_t));

    if (!hw_output) {
        printf("  ERROR: Failed to allocate output buffer!\n");
        return 1;
    }

    // =========================================================================
    // Call the HLS top function (this is what gets synthesized)
    // =========================================================================
    accel_top(
        input,
        weights,
        bias,
        hw_output,
        kernel_size,
        in_channels,
        out_channels,
        in_height,
        in_width,
        stride,
        padding,
        relu_enable,
        pool_enable
    );

    // =========================================================================
    // Compare output against expected values
    // =========================================================================
    int errors = 0;

    printf("\n  Results:\n");
    printf("  %-10s %-10s %-10s %-10s\n", "Index", "Expected", "Got", "Status");
    printf("  %-10s %-10s %-10s %-10s\n", "-----", "--------", "---", "------");

    for (int i = 0; i < output_size; i++) {
        int expected = (int) expected_output[i];
        int got      = (int) hw_output[i];
        const char *status = (expected == got) ? "OK" : "MISMATCH!";

        printf("  %-10d %-10d %-10d %-10s\n", i, expected, got, status);

        if (expected != got) {
            errors++;
        }
    }

    // =========================================================================
    // Print result
    // =========================================================================
    printf("\n  ----------------------------------------\n");
    if (errors == 0) {
        printf("  RESULT: PASS (%d/%d outputs matched)\n", output_size, output_size);
    } else {
        printf("  RESULT: FAIL (%d/%d outputs MISMATCHED)\n", errors, output_size);
    }
    printf("  ----------------------------------------\n");

    free(hw_output);
    return errors;
}

// =============================================================================
// Main — runs all test cases
// =============================================================================

int main() {
    int total_errors = 0;

    printf("\n");
    printf("╔══════════════════════════════════════════╗\n");
    printf("║  CNN Accelerator — HLS C Testbench       ║\n");
    printf("║  Edge AI Inference SoC                   ║\n");
    printf("╚══════════════════════════════════════════╝\n");

    // =========================================================================
    // Test 1: Simple 3×3 convolution (1 channel, 4×4 input, ReLU ON)
    // =========================================================================
    total_errors += run_test(
        "3x3 Conv, 1ch, 4x4, ReLU ON",
        test_input,
        test_weights,
        test_bias,
        test_expected_output,
        TEST_KERNEL_SIZE,
        TEST_IN_CHANNELS,
        TEST_OUT_CHANNELS,
        TEST_IN_HEIGHT,
        TEST_IN_WIDTH,
        TEST_STRIDE,
        TEST_PADDING,
        TEST_RELU_ENABLE,
        TEST_POOL_ENABLE,
        TEST_OUT_HEIGHT,
        TEST_OUT_WIDTH
    );

    // =========================================================================
    // Test 2: Multi-channel input (2 channels)
    // =========================================================================
    // Note: Expected output for test2 needs to be computed
    // For now, just run it to check for crashes/hangs
    printf("\n========================================\n");
    printf(" Test: Multi-channel (2ch) — Smoke Test\n");
    printf("========================================\n");

    int test2_out_size = TEST2_OUT_CHANNELS * TEST2_OUT_HEIGHT * TEST2_OUT_WIDTH;
    result_t *test2_output = (result_t *) calloc(test2_out_size, sizeof(result_t));

    accel_top(
        test2_input,
        test2_weights,
        test2_bias,
        test2_output,
        TEST2_KERNEL_SIZE,
        TEST2_IN_CHANNELS,
        TEST2_OUT_CHANNELS,
        TEST2_IN_HEIGHT,
        TEST2_IN_WIDTH,
        TEST2_STRIDE,
        TEST2_PADDING,
        1,  // relu
        0   // no pool
    );

    printf("  Multi-channel output:\n");
    for (int i = 0; i < test2_out_size; i++) {
        printf("    output[%d] = %d\n", i, (int)test2_output[i]);
    }
    printf("  RESULT: Smoke test completed (no crash)\n");

    free(test2_output);

    // =========================================================================
    // Final Summary
    // =========================================================================
    printf("\n╔══════════════════════════════════════════╗\n");
    if (total_errors == 0) {
        printf("║  ALL TESTS PASSED!                       ║\n");
    } else {
        printf("║  TESTS FAILED! (%d errors)               ║\n", total_errors);
    }
    printf("╚══════════════════════════════════════════╝\n\n");

    return total_errors;
}
