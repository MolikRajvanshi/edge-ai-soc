set moduleName conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW}
set C_modelType { void 0 }
set C_modelArgList {
	{ bias int 32 regular  }
	{ sext_ln36_2 int 32 regular  }
	{ sext_ln36_1 int 32 regular  }
	{ bound4 int 96 regular  }
	{ bound int 64 regular  }
	{ and_ln52_3 int 1 regular  }
	{ kernel_size int 32 regular  }
	{ icmp_ln48_1 int 1 regular  }
	{ weights int 8 regular {array 3136 { 1 3 } 1 1 }  }
	{ sext_ln43 int 32 regular  }
	{ input_r int 8 regular {array 65536 { 1 3 } 1 1 }  }
	{ sext_ln36 int 32 regular  }
	{ sum_V_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln36_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln36_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "and_ln52_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln48_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias sc_in sc_lv 32 signal 0 } 
	{ sext_ln36_2 sc_in sc_lv 32 signal 1 } 
	{ sext_ln36_1 sc_in sc_lv 32 signal 2 } 
	{ bound4 sc_in sc_lv 96 signal 3 } 
	{ bound sc_in sc_lv 64 signal 4 } 
	{ and_ln52_3 sc_in sc_lv 1 signal 5 } 
	{ kernel_size sc_in sc_lv 32 signal 6 } 
	{ icmp_ln48_1 sc_in sc_lv 1 signal 7 } 
	{ weights_address0 sc_out sc_lv 12 signal 8 } 
	{ weights_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_q0 sc_in sc_lv 8 signal 8 } 
	{ sext_ln43 sc_in sc_lv 32 signal 9 } 
	{ input_r_address0 sc_out sc_lv 16 signal 10 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_r_q0 sc_in sc_lv 8 signal 10 } 
	{ sext_ln36 sc_in sc_lv 32 signal 11 } 
	{ sum_V_1_out sc_out sc_lv 32 signal 12 } 
	{ sum_V_1_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "default" }} , 
 	{ "name": "sext_ln36_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln36_2", "role": "default" }} , 
 	{ "name": "sext_ln36_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln36_1", "role": "default" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "and_ln52_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "and_ln52_3", "role": "default" }} , 
 	{ "name": "kernel_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_size", "role": "default" }} , 
 	{ "name": "icmp_ln48_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln48_1", "role": "default" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "sext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln36", "role": "default" }} , 
 	{ "name": "sum_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_V_1_out", "role": "default" }} , 
 	{ "name": "sum_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln36_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln36_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "and_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln48_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "CONV_IC_CONV_KH_CONV_KW", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32s_32_4_1_U20", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW {
		bias {Type I LastRead 0 FirstWrite -1}
		sext_ln36_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln36_1 {Type I LastRead 0 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		and_ln52_3 {Type I LastRead 0 FirstWrite -1}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		icmp_ln48_1 {Type I LastRead 0 FirstWrite -1}
		weights {Type I LastRead 3 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 3 FirstWrite -1}
		sext_ln36 {Type I LastRead 0 FirstWrite -1}
		sum_V_1_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias { ap_none {  { bias in_data 0 32 } } }
	sext_ln36_2 { ap_none {  { sext_ln36_2 in_data 0 32 } } }
	sext_ln36_1 { ap_none {  { sext_ln36_1 in_data 0 32 } } }
	bound4 { ap_none {  { bound4 in_data 0 96 } } }
	bound { ap_none {  { bound in_data 0 64 } } }
	and_ln52_3 { ap_none {  { and_ln52_3 in_data 0 1 } } }
	kernel_size { ap_none {  { kernel_size in_data 0 32 } } }
	icmp_ln48_1 { ap_none {  { icmp_ln48_1 in_data 0 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 12 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 in_data 0 8 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 32 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 16 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 in_data 0 8 } } }
	sext_ln36 { ap_none {  { sext_ln36 in_data 0 32 } } }
	sum_V_1_out { ap_vld {  { sum_V_1_out out_data 1 32 }  { sum_V_1_out_ap_vld out_vld 1 1 } } }
}
