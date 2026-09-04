// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes128_top.h"

extern XAes128_top_Config XAes128_top_ConfigTable[];

XAes128_top_Config *XAes128_top_LookupConfig(u16 DeviceId) {
	XAes128_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES128_TOP_NUM_INSTANCES; Index++) {
		if (XAes128_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes128_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes128_top_Initialize(XAes128_top *InstancePtr, u16 DeviceId) {
	XAes128_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes128_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes128_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

