set moduleName conv_engine
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv_engine}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 8 regular {array 65536 { 1 3 } 1 1 }  }
	{ weights int 8 regular {array 3136 { 1 3 } 1 1 }  }
	{ bias int 32 regular  }
	{ output_0_0 int 32 regular {array 256 { 3 0 } 0 1 }  }
	{ output_0_1 int 32 regular {array 256 { 3 0 } 0 1 }  }
	{ output_1_0 int 32 regular {array 256 { 3 0 } 0 1 }  }
	{ output_1_1 int 32 regular {array 256 { 3 0 } 0 1 }  }
	{ kernel_size int 32 regular  }
	{ in_channels int 32 regular  }
	{ in_height int 32 regular  }
	{ in_width int 32 regular  }
	{ stride int 32 regular  }
	{ padding int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channels", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 16 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 8 signal 0 } 
	{ weights_address0 sc_out sc_lv 12 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 8 signal 1 } 
	{ bias sc_in sc_lv 32 signal 2 } 
	{ output_0_0_address1 sc_out sc_lv 8 signal 3 } 
	{ output_0_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ output_0_0_we1 sc_out sc_logic 1 signal 3 } 
	{ output_0_0_d1 sc_out sc_lv 32 signal 3 } 
	{ output_0_1_address1 sc_out sc_lv 8 signal 4 } 
	{ output_0_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ output_0_1_we1 sc_out sc_logic 1 signal 4 } 
	{ output_0_1_d1 sc_out sc_lv 32 signal 4 } 
	{ output_1_0_address1 sc_out sc_lv 8 signal 5 } 
	{ output_1_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ output_1_0_we1 sc_out sc_logic 1 signal 5 } 
	{ output_1_0_d1 sc_out sc_lv 32 signal 5 } 
	{ output_1_1_address1 sc_out sc_lv 8 signal 6 } 
	{ output_1_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ output_1_1_we1 sc_out sc_logic 1 signal 6 } 
	{ output_1_1_d1 sc_out sc_lv 32 signal 6 } 
	{ kernel_size sc_in sc_lv 32 signal 7 } 
	{ in_channels sc_in sc_lv 32 signal 8 } 
	{ in_height sc_in sc_lv 32 signal 9 } 
	{ in_width sc_in sc_lv 32 signal 10 } 
	{ stride sc_in sc_lv 32 signal 11 } 
	{ padding sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias", "role": "default" }} , 
 	{ "name": "output_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0_0", "role": "address1" }} , 
 	{ "name": "output_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_0", "role": "ce1" }} , 
 	{ "name": "output_0_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_0", "role": "we1" }} , 
 	{ "name": "output_0_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0_0", "role": "d1" }} , 
 	{ "name": "output_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0_1", "role": "address1" }} , 
 	{ "name": "output_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_1", "role": "ce1" }} , 
 	{ "name": "output_0_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0_1", "role": "we1" }} , 
 	{ "name": "output_0_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0_1", "role": "d1" }} , 
 	{ "name": "output_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1_0", "role": "address1" }} , 
 	{ "name": "output_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_0", "role": "ce1" }} , 
 	{ "name": "output_1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_0", "role": "we1" }} , 
 	{ "name": "output_1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1_0", "role": "d1" }} , 
 	{ "name": "output_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1_1", "role": "address1" }} , 
 	{ "name": "output_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_1", "role": "ce1" }} , 
 	{ "name": "output_1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1_1", "role": "we1" }} , 
 	{ "name": "output_1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1_1", "role": "d1" }} , 
 	{ "name": "kernel_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_size", "role": "default" }} , 
 	{ "name": "in_channels", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channels", "role": "default" }} , 
 	{ "name": "in_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_height", "role": "default" }} , 
 	{ "name": "in_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_width", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "padding", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "conv_engine",
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
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Port" : "input_r", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Port" : "weights", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_channels", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "CONV_OH_CONV_OW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "42", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196.mac_muladd_8s_8s_32s_32_4_1_U20", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32s_32_36_seq_1_U35", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32s_32_36_seq_1_U36", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U37", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_64ns_96_5_1_U38", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U39", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U40", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_engine {
		input_r {Type I LastRead 3 FirstWrite -1}
		weights {Type I LastRead 3 FirstWrite -1}
		bias {Type I LastRead 36 FirstWrite -1}
		output_0_0 {Type O LastRead -1 FirstWrite 41}
		output_0_1 {Type O LastRead -1 FirstWrite 41}
		output_1_0 {Type O LastRead -1 FirstWrite 41}
		output_1_1 {Type O LastRead -1 FirstWrite 41}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		in_channels {Type I LastRead 32 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 16 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 8 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 12 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 8 } } }
	bias { ap_none {  { bias in_data 0 32 } } }
	output_0_0 { ap_memory {  { output_0_0_address1 MemPortADDR2 1 8 }  { output_0_0_ce1 MemPortCE2 1 1 }  { output_0_0_we1 MemPortWE2 1 1 }  { output_0_0_d1 MemPortDIN2 1 32 } } }
	output_0_1 { ap_memory {  { output_0_1_address1 MemPortADDR2 1 8 }  { output_0_1_ce1 MemPortCE2 1 1 }  { output_0_1_we1 MemPortWE2 1 1 }  { output_0_1_d1 MemPortDIN2 1 32 } } }
	output_1_0 { ap_memory {  { output_1_0_address1 MemPortADDR2 1 8 }  { output_1_0_ce1 MemPortCE2 1 1 }  { output_1_0_we1 MemPortWE2 1 1 }  { output_1_0_d1 MemPortDIN2 1 32 } } }
	output_1_1 { ap_memory {  { output_1_1_address1 MemPortADDR2 1 8 }  { output_1_1_ce1 MemPortCE2 1 1 }  { output_1_1_we1 MemPortWE2 1 1 }  { output_1_1_d1 MemPortDIN2 1 32 } } }
	kernel_size { ap_none {  { kernel_size in_data 0 32 } } }
	in_channels { ap_none {  { in_channels in_data 0 32 } } }
	in_height { ap_none {  { in_height in_data 0 32 } } }
	in_width { ap_none {  { in_width in_data 0 32 } } }
	stride { ap_none {  { stride in_data 0 32 } } }
	padding { ap_none {  { padding in_data 0 32 } } }
}
