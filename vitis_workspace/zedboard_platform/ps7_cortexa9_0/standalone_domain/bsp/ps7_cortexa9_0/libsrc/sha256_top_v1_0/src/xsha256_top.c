// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsha256_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSha256_top_CfgInitialize(XSha256_top *InstancePtr, XSha256_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSha256_top_Start(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL) & 0x80;
    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSha256_top_IsDone(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSha256_top_IsIdle(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSha256_top_IsReady(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSha256_top_EnableAutoRestart(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL, 0x80);
}

void XSha256_top_DisableAutoRestart(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_AP_CTRL, 0);
}

void XSha256_top_Set_message(XSha256_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MESSAGE_DATA, (u32)(Data));
    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MESSAGE_DATA + 4, (u32)(Data >> 32));
}

u64 XSha256_top_Get_message(XSha256_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MESSAGE_DATA);
    Data += (u64)XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MESSAGE_DATA + 4) << 32;
    return Data;
}

void XSha256_top_Set_digest(XSha256_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_DIGEST_DATA, (u32)(Data));
    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_DIGEST_DATA + 4, (u32)(Data >> 32));
}

u64 XSha256_top_Get_digest(XSha256_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_DIGEST_DATA);
    Data += (u64)XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_DIGEST_DATA + 4) << 32;
    return Data;
}

void XSha256_top_Set_msg_len_words(XSha256_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MSG_LEN_WORDS_DATA, Data);
}

u32 XSha256_top_Get_msg_len_words(XSha256_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_MSG_LEN_WORDS_DATA);
    return Data;
}

void XSha256_top_InterruptGlobalEnable(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_GIE, 1);
}

void XSha256_top_InterruptGlobalDisable(XSha256_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_GIE, 0);
}

void XSha256_top_InterruptEnable(XSha256_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_IER);
    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_IER, Register | Mask);
}

void XSha256_top_InterruptDisable(XSha256_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_IER);
    XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_IER, Register & (~Mask));
}

void XSha256_top_InterruptClear(XSha256_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XSha256_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_ISR, Mask);
}

u32 XSha256_top_InterruptGetEnabled(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_IER);
}

u32 XSha256_top_InterruptGetStatus(XSha256_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XSha256_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSHA256_TOP_CTRL_ADDR_ISR);
}

