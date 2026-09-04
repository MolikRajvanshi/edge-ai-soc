// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccel_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccel_top_CfgInitialize(XAccel_top *InstancePtr, XAccel_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccel_top_Start(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL) & 0x80;
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccel_top_IsDone(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccel_top_IsIdle(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccel_top_IsReady(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccel_top_EnableAutoRestart(XAccel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL, 0x80);
}

void XAccel_top_DisableAutoRestart(XAccel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_AP_CTRL, 0);
}

void XAccel_top_Set_input_data(XAccel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_INPUT_DATA_DATA, (u32)(Data));
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_INPUT_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_top_Get_input_data(XAccel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_INPUT_DATA_DATA);
    Data += (u64)XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_INPUT_DATA_DATA + 4) << 32;
    return Data;
}

void XAccel_top_Set_weight_data(XAccel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_WEIGHT_DATA_DATA, (u32)(Data));
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_WEIGHT_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_top_Get_weight_data(XAccel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_WEIGHT_DATA_DATA);
    Data += (u64)XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_WEIGHT_DATA_DATA + 4) << 32;
    return Data;
}

void XAccel_top_Set_bias_data(XAccel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_BIAS_DATA_DATA, (u32)(Data));
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_BIAS_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_top_Get_bias_data(XAccel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_BIAS_DATA_DATA);
    Data += (u64)XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_BIAS_DATA_DATA + 4) << 32;
    return Data;
}

void XAccel_top_Set_output_data(XAccel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUTPUT_DATA_DATA, (u32)(Data));
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUTPUT_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAccel_top_Get_output_data(XAccel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUTPUT_DATA_DATA);
    Data += (u64)XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUTPUT_DATA_DATA + 4) << 32;
    return Data;
}

void XAccel_top_Set_kernel_size(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_KERNEL_SIZE_DATA, Data);
}

u32 XAccel_top_Get_kernel_size(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_KERNEL_SIZE_DATA);
    return Data;
}

void XAccel_top_Set_in_channels(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_CHANNELS_DATA, Data);
}

u32 XAccel_top_Get_in_channels(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_CHANNELS_DATA);
    return Data;
}

void XAccel_top_Set_out_channels(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUT_CHANNELS_DATA, Data);
}

u32 XAccel_top_Get_out_channels(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_OUT_CHANNELS_DATA);
    return Data;
}

void XAccel_top_Set_in_height(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_HEIGHT_DATA, Data);
}

u32 XAccel_top_Get_in_height(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_HEIGHT_DATA);
    return Data;
}

void XAccel_top_Set_in_width(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_WIDTH_DATA, Data);
}

u32 XAccel_top_Get_in_width(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IN_WIDTH_DATA);
    return Data;
}

void XAccel_top_Set_stride(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_STRIDE_DATA, Data);
}

u32 XAccel_top_Get_stride(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_STRIDE_DATA);
    return Data;
}

void XAccel_top_Set_padding(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_PADDING_DATA, Data);
}

u32 XAccel_top_Get_padding(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_PADDING_DATA);
    return Data;
}

void XAccel_top_Set_relu_enable(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_RELU_ENABLE_DATA, Data);
}

u32 XAccel_top_Get_relu_enable(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_RELU_ENABLE_DATA);
    return Data;
}

void XAccel_top_Set_pool_enable(XAccel_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_POOL_ENABLE_DATA, Data);
}

u32 XAccel_top_Get_pool_enable(XAccel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_POOL_ENABLE_DATA);
    return Data;
}

void XAccel_top_InterruptGlobalEnable(XAccel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_GIE, 1);
}

void XAccel_top_InterruptGlobalDisable(XAccel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_GIE, 0);
}

void XAccel_top_InterruptEnable(XAccel_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IER);
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IER, Register | Mask);
}

void XAccel_top_InterruptDisable(XAccel_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IER);
    XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IER, Register & (~Mask));
}

void XAccel_top_InterruptClear(XAccel_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XAccel_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_ISR, Mask);
}

u32 XAccel_top_InterruptGetEnabled(XAccel_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_IER);
}

u32 XAccel_top_InterruptGetStatus(XAccel_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XAccel_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCEL_TOP_CTRL_ADDR_ISR);
}

