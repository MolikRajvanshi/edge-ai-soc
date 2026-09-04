// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of input_data
//        bit 31~0 - input_data[31:0] (Read/Write)
// 0x14 : Data signal of input_data
//        bit 31~0 - input_data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of weight_data
//        bit 31~0 - weight_data[31:0] (Read/Write)
// 0x20 : Data signal of weight_data
//        bit 31~0 - weight_data[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias_data
//        bit 31~0 - bias_data[31:0] (Read/Write)
// 0x2c : Data signal of bias_data
//        bit 31~0 - bias_data[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of output_data
//        bit 31~0 - output_data[31:0] (Read/Write)
// 0x38 : Data signal of output_data
//        bit 31~0 - output_data[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of kernel_size
//        bit 31~0 - kernel_size[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of in_channels
//        bit 31~0 - in_channels[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of out_channels
//        bit 31~0 - out_channels[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of in_height
//        bit 31~0 - in_height[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of in_width
//        bit 31~0 - in_width[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of stride
//        bit 31~0 - stride[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of padding
//        bit 31~0 - padding[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of relu_enable
//        bit 31~0 - relu_enable[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of pool_enable
//        bit 31~0 - pool_enable[31:0] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XACCEL_TOP_CTRL_ADDR_AP_CTRL           0x00
#define XACCEL_TOP_CTRL_ADDR_GIE               0x04
#define XACCEL_TOP_CTRL_ADDR_IER               0x08
#define XACCEL_TOP_CTRL_ADDR_ISR               0x0c
#define XACCEL_TOP_CTRL_ADDR_INPUT_DATA_DATA   0x10
#define XACCEL_TOP_CTRL_BITS_INPUT_DATA_DATA   64
#define XACCEL_TOP_CTRL_ADDR_WEIGHT_DATA_DATA  0x1c
#define XACCEL_TOP_CTRL_BITS_WEIGHT_DATA_DATA  64
#define XACCEL_TOP_CTRL_ADDR_BIAS_DATA_DATA    0x28
#define XACCEL_TOP_CTRL_BITS_BIAS_DATA_DATA    64
#define XACCEL_TOP_CTRL_ADDR_OUTPUT_DATA_DATA  0x34
#define XACCEL_TOP_CTRL_BITS_OUTPUT_DATA_DATA  64
#define XACCEL_TOP_CTRL_ADDR_KERNEL_SIZE_DATA  0x40
#define XACCEL_TOP_CTRL_BITS_KERNEL_SIZE_DATA  32
#define XACCEL_TOP_CTRL_ADDR_IN_CHANNELS_DATA  0x48
#define XACCEL_TOP_CTRL_BITS_IN_CHANNELS_DATA  32
#define XACCEL_TOP_CTRL_ADDR_OUT_CHANNELS_DATA 0x50
#define XACCEL_TOP_CTRL_BITS_OUT_CHANNELS_DATA 32
#define XACCEL_TOP_CTRL_ADDR_IN_HEIGHT_DATA    0x58
#define XACCEL_TOP_CTRL_BITS_IN_HEIGHT_DATA    32
#define XACCEL_TOP_CTRL_ADDR_IN_WIDTH_DATA     0x60
#define XACCEL_TOP_CTRL_BITS_IN_WIDTH_DATA     32
#define XACCEL_TOP_CTRL_ADDR_STRIDE_DATA       0x68
#define XACCEL_TOP_CTRL_BITS_STRIDE_DATA       32
#define XACCEL_TOP_CTRL_ADDR_PADDING_DATA      0x70
#define XACCEL_TOP_CTRL_BITS_PADDING_DATA      32
#define XACCEL_TOP_CTRL_ADDR_RELU_ENABLE_DATA  0x78
#define XACCEL_TOP_CTRL_BITS_RELU_ENABLE_DATA  32
#define XACCEL_TOP_CTRL_ADDR_POOL_ENABLE_DATA  0x80
#define XACCEL_TOP_CTRL_BITS_POOL_ENABLE_DATA  32

