/**
 * =============================================================================
 * File: accel_top.cpp
 * Description: Top-level HLS function for the CNN Inference Accelerator.
 *
 *              THIS IS THE FUNCTION THAT BECOMES YOUR IP BLOCK.
 *              Vitis HLS synthesizes this into Verilog with AXI interfaces.
 *
 *              Pipeline: Input → Convolution → Bias → ReLU → Max Pool → Output
 *
 *              AXI Interfaces:
 *              - m_axi (DATA): Direct memory access for DDR buffers
 *              - s_axilite (CTRL): Unified AXI-Lite control and address register interface
 *
 * Target: Zynq-7020 (ZedBoard) via Vitis HLS
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "accel_top.h"

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
) {
    // =========================================================================
    // HLS INTERFACE PRAGMAS — Unified AXI interfaces
    // =========================================================================

    // AXI Master ports for DDR data access
    #pragma HLS INTERFACE m_axi port=input_data   offset=slave bundle=DATA depth=65536
    #pragma HLS INTERFACE m_axi port=weight_data  offset=slave bundle=DATA depth=65536
    #pragma HLS INTERFACE m_axi port=bias_data    offset=slave bundle=DATA depth=64
    #pragma HLS INTERFACE m_axi port=output_data  offset=slave bundle=DATA depth=65536

    // Single unified AXI-Lite slave interface (s_axi_CTRL)
    #pragma HLS INTERFACE s_axilite port=input_data    bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=weight_data   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=bias_data     bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=output_data   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=kernel_size   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=in_channels   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=out_channels  bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=in_height     bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=in_width      bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=stride        bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=padding       bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=relu_enable   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=pool_enable   bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return        bundle=CTRL

    // =========================================================================
    // Local on-chip buffers (inferred as BRAMs)
    // =========================================================================

    data_t   local_input[MAX_IN_CHANNELS][MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH];
    #pragma HLS BIND_STORAGE variable=local_input type=ram_2p impl=bram

    weight_t local_weights[MAX_IN_CHANNELS][MAX_KERNEL_SIZE][MAX_KERNEL_SIZE];
    #pragma HLS BIND_STORAGE variable=local_weights type=ram_2p impl=bram

    acc_t    conv_output[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH];
    #pragma HLS BIND_STORAGE variable=conv_output type=ram_2p impl=bram

    acc_t    pool_output[MAX_FEATURE_HEIGHT][MAX_FEATURE_WIDTH];
    #pragma HLS BIND_STORAGE variable=pool_output type=ram_2p impl=bram

    // =========================================================================
    // STEP 1: Load input feature map from DDR into local BRAM
    // (Linear pointer index avoids 32-bit multipliers in inner loop)
    // =========================================================================

    int in_ptr = 0;
    LOAD_INPUT_CH: for (int ic = 0; ic < in_channels; ic++) {
        LOAD_INPUT_H: for (int h = 0; h < in_height; h++) {
            LOAD_INPUT_W: for (int w = 0; w < in_width; w++) {
                #pragma HLS PIPELINE II=1
                local_input[ic][h][w] = input_data[in_ptr++];
            }
        }
    }

    // =========================================================================
    // STEP 2: Process each output channel
    // =========================================================================

    // Compute output spatial dimensions
    int out_height = (in_height + 2 * padding - kernel_size) / stride + 1;
    int out_width  = (in_width  + 2 * padding - kernel_size) / stride + 1;

    int final_height = pool_enable ? (out_height / 2) : out_height;
    int final_width  = pool_enable ? (out_width / 2)  : out_width;

    int w_ptr = 0;
    int out_ptr = 0;

    OUTPUT_CHANNEL: for (int oc = 0; oc < out_channels; oc++) {

        // -----------------------------------------------------------------
        // 2a. Load weights for this output channel from DDR
        // -----------------------------------------------------------------
        LOAD_W_IC: for (int ic = 0; ic < in_channels; ic++) {
            LOAD_W_KH: for (int kh = 0; kh < kernel_size; kh++) {
                LOAD_W_KW: for (int kw = 0; kw < kernel_size; kw++) {
                    #pragma HLS PIPELINE II=1
                    local_weights[ic][kh][kw] = weight_data[w_ptr++];
                }
            }
        }

        // Load bias for this output channel
        acc_t bias = bias_data[oc];

        // -----------------------------------------------------------------
        // 2b. Run convolution
        // -----------------------------------------------------------------
        conv_engine(
            local_input,
            local_weights,
            bias,
            conv_output,
            kernel_size,
            in_channels,
            in_height,
            in_width,
            stride,
            padding
        );

        // -----------------------------------------------------------------
        // 2c. Apply ReLU (if enabled)
        // -----------------------------------------------------------------
        if (relu_enable) {
            relu(conv_output, out_height, out_width);
        }

        // -----------------------------------------------------------------
        // 2d. Apply Max Pooling (if enabled)
        // -----------------------------------------------------------------
        if (pool_enable) {
            maxpool_2x2(conv_output, pool_output, out_height, out_width);
        }

        // -----------------------------------------------------------------
        // 2e. Store results back to DDR
        // -----------------------------------------------------------------
        STORE_H: for (int h = 0; h < final_height; h++) {
            STORE_W: for (int w = 0; w < final_width; w++) {
                #pragma HLS PIPELINE II=1
                if (pool_enable) {
                    output_data[out_ptr++] = (result_t) pool_output[h][w];
                } else {
                    output_data[out_ptr++] = (result_t) conv_output[h][w];
                }
            }
        }

    } // OUTPUT_CHANNEL
}
