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
// 0x10 : Data signal of data_in
//        bit 31~0 - data_in[31:0] (Read/Write)
// 0x14 : Data signal of data_in
//        bit 31~0 - data_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of key_in
//        bit 31~0 - key_in[31:0] (Read/Write)
// 0x20 : Data signal of key_in
//        bit 31~0 - key_in[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of data_out
//        bit 31~0 - data_out[31:0] (Read/Write)
// 0x2c : Data signal of data_out
//        bit 31~0 - data_out[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of encrypt
//        bit 31~0 - encrypt[31:0] (Read/Write)
// 0x38 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES128_TOP_CTRL_ADDR_AP_CTRL       0x00
#define XAES128_TOP_CTRL_ADDR_GIE           0x04
#define XAES128_TOP_CTRL_ADDR_IER           0x08
#define XAES128_TOP_CTRL_ADDR_ISR           0x0c
#define XAES128_TOP_CTRL_ADDR_DATA_IN_DATA  0x10
#define XAES128_TOP_CTRL_BITS_DATA_IN_DATA  64
#define XAES128_TOP_CTRL_ADDR_KEY_IN_DATA   0x1c
#define XAES128_TOP_CTRL_BITS_KEY_IN_DATA   64
#define XAES128_TOP_CTRL_ADDR_DATA_OUT_DATA 0x28
#define XAES128_TOP_CTRL_BITS_DATA_OUT_DATA 64
#define XAES128_TOP_CTRL_ADDR_ENCRYPT_DATA  0x34
#define XAES128_TOP_CTRL_BITS_ENCRYPT_DATA  32

