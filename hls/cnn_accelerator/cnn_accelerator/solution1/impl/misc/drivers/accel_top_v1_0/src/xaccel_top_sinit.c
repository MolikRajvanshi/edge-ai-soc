// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaccel_top.h"

extern XAccel_top_Config XAccel_top_ConfigTable[];

XAccel_top_Config *XAccel_top_LookupConfig(u16 DeviceId) {
	XAccel_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCEL_TOP_NUM_INSTANCES; Index++) {
		if (XAccel_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccel_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccel_top_Initialize(XAccel_top *InstancePtr, u16 DeviceId) {
	XAccel_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccel_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccel_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

