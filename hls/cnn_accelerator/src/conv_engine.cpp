/**
 * =============================================================================
 * File: conv_engine.cpp
 * Description: 2D Convolution engine for CNN inference.
 *              Performs the core MAC (Multiply-Accumulate) operations:
 *
 *              For each output pixel (oh, ow):
 *                output[oh][ow] = bias + SUM over (ic, kh, kw):
 *                    input[ic][oh*stride + kh - padding][ow*stride + kw - padding]
 *                    × weight[ic][kh][kw]
 *
 * Author: Molik Rajvanshi
 * Project: Edge AI Inference SoC with Hardware Root-of-Trust
 * =============================================================================
 */

#include "accel_top.h"

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
) {
    #pragma HLS INLINE off

    int out_height = (in_height + 2 * padding - kernel_size) / stride + 1;
    int out_width  = (in_width  + 2 * padding - kernel_size) / stride + 1;

    CONV_OH: for (int oh = 0; oh < out_height; oh++) {
        int h_base = oh * stride - padding;

        CONV_OW: for (int ow = 0; ow < out_width; ow++) {
            int w_base = ow * stride - padding;
            acc_t sum = bias;

            CONV_IC: for (int ic = 0; ic < in_channels; ic++) {
                CONV_KH: for (int kh = 0; kh < kernel_size; kh++) {
                    int ih = h_base + kh;
                    bool h_valid = (ih >= 0 && ih < in_height);

                    CONV_KW: for (int kw = 0; kw < kernel_size; kw++) {
                        #pragma HLS PIPELINE II=1

                        int iw = w_base + kw;
                        bool in_valid = h_valid && (iw >= 0 && iw < in_width);

                        data_t in_val = in_valid ? input[ic][ih][iw] : (data_t)0;
                        weight_t w_val = weights[ic][kh][kw];
                        prod_t prod = in_val * w_val;
                        sum += prod;

                    } // CONV_KW
                } // CONV_KH
            } // CONV_IC

            output[oh][ow] = sum;

        } // CONV_OW
    } // CONV_OH
}
