// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes128_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes128_top_CfgInitialize(XAes128_top *InstancePtr, XAes128_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes128_top_Start(XAes128_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL) & 0x80;
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes128_top_IsDone(XAes128_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes128_top_IsIdle(XAes128_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes128_top_IsReady(XAes128_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes128_top_EnableAutoRestart(XAes128_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL, 0x80);
}

void XAes128_top_DisableAutoRestart(XAes128_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_AP_CTRL, 0);
}

void XAes128_top_Set_data_in(XAes128_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_IN_DATA, (u32)(Data));
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XAes128_top_Get_data_in(XAes128_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_IN_DATA);
    Data += (u64)XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_IN_DATA + 4) << 32;
    return Data;
}

void XAes128_top_Set_key_in(XAes128_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_KEY_IN_DATA, (u32)(Data));
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_KEY_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XAes128_top_Get_key_in(XAes128_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_KEY_IN_DATA);
    Data += (u64)XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_KEY_IN_DATA + 4) << 32;
    return Data;
}

void XAes128_top_Set_data_out(XAes128_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_OUT_DATA, (u32)(Data));
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XAes128_top_Get_data_out(XAes128_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_OUT_DATA);
    Data += (u64)XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_DATA_OUT_DATA + 4) << 32;
    return Data;
}

void XAes128_top_Set_encrypt(XAes128_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_ENCRYPT_DATA, Data);
}

u32 XAes128_top_Get_encrypt(XAes128_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_ENCRYPT_DATA);
    return Data;
}

void XAes128_top_InterruptGlobalEnable(XAes128_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_GIE, 1);
}

void XAes128_top_InterruptGlobalDisable(XAes128_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_GIE, 0);
}

void XAes128_top_InterruptEnable(XAes128_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_IER);
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_IER, Register | Mask);
}

void XAes128_top_InterruptDisable(XAes128_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_IER);
    XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_IER, Register & (~Mask));
}

void XAes128_top_InterruptClear(XAes128_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XAes128_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_ISR, Mask);
}

u32 XAes128_top_InterruptGetEnabled(XAes128_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_IER);
}

u32 XAes128_top_InterruptGetStatus(XAes128_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XAes128_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XAES128_TOP_CTRL_ADDR_ISR);
}

