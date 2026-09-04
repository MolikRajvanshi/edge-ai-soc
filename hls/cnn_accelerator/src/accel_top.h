/**
 * =============================================================================
 * File: accel_top.h
 * Description: Header file for the CNN Inference Accelerator.
 *              Defines data types, constants, layer configuration,
 *              and function declarations used across all HLS source files.
 *
 * Target: Zynq-7020 (PYNQ Z2) via Vitis HLS
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#ifndef ACCEL_TOP_H
#define ACCEL_TOP_H

#include <stdint.h>
#include <ap_int.h>       // Vitis HLS arbitrary-precision integers
#include <hls_stream.h>   // Vitis HLS streaming interface

// =============================================================================
// Data Types (INT8 quantized inference)
// =============================================================================

// Input/Weight: signed 8-bit integer
typedef ap_int<8>   data_t;     // INT8 input activation
typedef ap_int<8>   weight_t;   // INT8 weight
typedef ap_int<16>  prod_t;     // 8×8 = 16-bit product
typedef ap_int<32>  acc_t;      // 32-bit accumulator (avoids overflow)
typedef ap_int<32>  result_t;   // 32-bit output result

// =============================================================================
// Design Parameters
// =============================================================================

// Maximum supported dimensions
#define MAX_KERNEL_SIZE     7       // Supports 1×1, 3×3, 5×5, 7×7 kernels
#define MAX_IN_CHANNELS     64      // Max input channels per layer
#define MAX_OUT_CHANNELS    64      // Max output channels per layer
#define MAX_FEATURE_HEIGHT  32      // Max feature map height
#define MAX_FEATURE_WIDTH   32      // Max feature map width

// Derived limits
#define MAX_WEIGHT_SIZE     (MAX_KERNEL_SIZE * MAX_KERNEL_SIZE * MAX_IN_CHANNELS * MAX_OUT_CHANNELS)
#define MAX_INPUT_SIZE      (MAX_IN_CHANNELS * MAX_FEATURE_HEIGHT * MAX_FEATURE_WIDTH)
#define MAX_OUTPUT_SIZE     (MAX_OUT_CHANNELS * MAX_FEATURE_HEIGHT * MAX_FEATURE_WIDTH)

// Tile sizes for on-chip buffering (fit within Zynq-7020 BRAM)
#define TILE_SIZE           8       // Process 8×8 tiles at a time
#define MAX_TILE_INPUT      (MAX_IN_CHANNELS * TILE_SIZE * TILE_SIZE)

// =============================================================================
// Layer Configuration Structure
// =============================================================================
// This matches the CSR registers — programmed by the ARM PS before each layer

struct LayerConfig {
    int kernel_size;      // Convolution kernel size (1, 3, 5, or 7)
    int in_channels;      // Number of input channels
    int out_channels;     // Number of output channels
    int in_height;        // Input feature map height
    int in_width;         // Input feature map width
    int stride;           // Convolution stride (1 or 2)
    int padding;          // Zero-padding amount
    int relu_enable;      // 1 = apply ReLU after convolution
    int pool_enable;      // 1 = apply 2×2 max pooling after activation
};

// =============================================================================
// Function Declarations
// =============================================================================

/**
 * conv_engine() — Performs 2D convolution on a single output channel.
 *
 * For each output pixel (oh, ow):
 *   output[oh][ow] = sum over (ic, kh, kw) of:
 *       input[ic][oh*stride + kh][ow*stride + kw] * weight[ic][kh][kw]
 *       + bias
 */
void conv_engine(
    data_t   input[MAX_IN_CHANNELS][MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    weight_t weights[MAX_IN_CHANNELS][MAX_KERNEL_SIZE][MAX_KERNEL_SIZE],
    acc_t    bias,
    acc_t    output[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    int      kernel_size,
    int      in_channels,
    int      in_height,
    int      in_width,
    int      stride,
    int      padding
);

/**
 * relu() — Applies ReLU activation: output = max(0, input)
 * In-place operation on the feature map.
 */
void relu(
    acc_t    feature_map[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    int      height,
    int      width
);

/**
 * maxpool_2x2() — Applies 2×2 max pooling with stride 2.
 * Reduces spatial dimensions by half.
 */
void maxpool_2x2(
    acc_t    input[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    acc_t    output[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH],
    int      in_height,
    int      in_width
);

/**
 * accel_top() — Top-level HLS function (becomes the IP block).
 * This is the function that Vitis HLS synthesizes into a Verilog IP.
 * Connected to Zynq PS via AXI (m_axi for data, s_axilite for control).
 */
void accel_top(
    data_t   *input_data,       // DDR: Input feature map (flattened)
    weight_t *weight_data,      // DDR: Convolution weights (flattened)
    acc_t    *bias_data,        // DDR: Bias values (one per output channel)
    result_t *output_data,      // DDR: Output results (flattened)
    int       kernel_size,
    int       in_channels,
    int       out_channels,
    int       in_height,
    int       in_width,
    int       stride,
    int       padding,
    int       relu_enable,
    int       pool_enable
);

#endif // ACCEL_TOP_H
