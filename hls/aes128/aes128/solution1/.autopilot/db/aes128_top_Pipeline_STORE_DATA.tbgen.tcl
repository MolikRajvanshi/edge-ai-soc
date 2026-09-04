set moduleName aes128_top_Pipeline_STORE_DATA
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
set C_modelName {aes128_top_Pipeline_STORE_DATA}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA int 32 regular {axi_master 1}  }
	{ sext_ln77 int 62 regular  }
	{ ciphertext int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ ciphertext_1 int 8 regular {array 8 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "data_in","offset": { "type": "dynamic","port_name": "data_in","bundle": "CTRL"},"direction": "READONLY"},{"cName": "key_in","offset": { "type": "dynamic","port_name": "key_in","bundle": "CTRL"},"direction": "READONLY"},{"cName": "data_out","offset": { "type": "dynamic","port_name": "data_out","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln77", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_DATA_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_DATA_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln77 sc_in sc_lv 62 signal 1 } 
	{ ciphertext_address0 sc_out sc_lv 3 signal 2 } 
	{ ciphertext_ce0 sc_out sc_logic 1 signal 2 } 
	{ ciphertext_q0 sc_in sc_lv 8 signal 2 } 
	{ ciphertext_address1 sc_out sc_lv 3 signal 2 } 
	{ ciphertext_ce1 sc_out sc_logic 1 signal 2 } 
	{ ciphertext_q1 sc_in sc_lv 8 signal 2 } 
	{ ciphertext_1_address0 sc_out sc_lv 3 signal 3 } 
	{ ciphertext_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ ciphertext_1_q0 sc_in sc_lv 8 signal 3 } 
	{ ciphertext_1_address1 sc_out sc_lv 3 signal 3 } 
	{ ciphertext_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ ciphertext_1_q1 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "DATA", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BUSER" }} , 
 	{ "name": "sext_ln77", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln77", "role": "default" }} , 
 	{ "name": "ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext", "role": "address0" }} , 
 	{ "name": "ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce0" }} , 
 	{ "name": "ciphertext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "q0" }} , 
 	{ "name": "ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext", "role": "address1" }} , 
 	{ "name": "ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce1" }} , 
 	{ "name": "ciphertext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "q1" }} , 
 	{ "name": "ciphertext_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "address0" }} , 
 	{ "name": "ciphertext_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "ce0" }} , 
 	{ "name": "ciphertext_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "q0" }} , 
 	{ "name": "ciphertext_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "address1" }} , 
 	{ "name": "ciphertext_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "ce1" }} , 
 	{ "name": "ciphertext_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "aes128_top_Pipeline_STORE_DATA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "STORE_DATA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes128_top_Pipeline_STORE_DATA {
		DATA {Type O LastRead -1 FirstWrite 2}
		sext_ln77 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 1 FirstWrite -1}
		ciphertext_1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_DATA_AWVALID VALID 1 1 }  { m_axi_DATA_AWREADY READY 0 1 }  { m_axi_DATA_AWADDR ADDR 1 64 }  { m_axi_DATA_AWID ID 1 1 }  { m_axi_DATA_AWLEN SIZE 1 32 }  { m_axi_DATA_AWSIZE BURST 1 3 }  { m_axi_DATA_AWBURST LOCK 1 2 }  { m_axi_DATA_AWLOCK CACHE 1 2 }  { m_axi_DATA_AWCACHE PROT 1 4 }  { m_axi_DATA_AWPROT QOS 1 3 }  { m_axi_DATA_AWQOS REGION 1 4 }  { m_axi_DATA_AWREGION USER 1 4 }  { m_axi_DATA_AWUSER DATA 1 1 }  { m_axi_DATA_WVALID VALID 1 1 }  { m_axi_DATA_WREADY READY 0 1 }  { m_axi_DATA_WDATA FIFONUM 1 32 }  { m_axi_DATA_WSTRB STRB 1 4 }  { m_axi_DATA_WLAST LAST 1 1 }  { m_axi_DATA_WID ID 1 1 }  { m_axi_DATA_WUSER DATA 1 1 }  { m_axi_DATA_ARVALID VALID 1 1 }  { m_axi_DATA_ARREADY READY 0 1 }  { m_axi_DATA_ARADDR ADDR 1 64 }  { m_axi_DATA_ARID ID 1 1 }  { m_axi_DATA_ARLEN SIZE 1 32 }  { m_axi_DATA_ARSIZE BURST 1 3 }  { m_axi_DATA_ARBURST LOCK 1 2 }  { m_axi_DATA_ARLOCK CACHE 1 2 }  { m_axi_DATA_ARCACHE PROT 1 4 }  { m_axi_DATA_ARPROT QOS 1 3 }  { m_axi_DATA_ARQOS REGION 1 4 }  { m_axi_DATA_ARREGION USER 1 4 }  { m_axi_DATA_ARUSER DATA 1 1 }  { m_axi_DATA_RVALID VALID 0 1 }  { m_axi_DATA_RREADY READY 1 1 }  { m_axi_DATA_RDATA FIFONUM 0 32 }  { m_axi_DATA_RLAST LAST 0 1 }  { m_axi_DATA_RID ID 0 1 }  { m_axi_DATA_RFIFONUM LEN 0 9 }  { m_axi_DATA_RUSER DATA 0 1 }  { m_axi_DATA_RRESP RESP 0 2 }  { m_axi_DATA_BVALID VALID 0 1 }  { m_axi_DATA_BREADY READY 1 1 }  { m_axi_DATA_BRESP RESP 0 2 }  { m_axi_DATA_BID ID 0 1 }  { m_axi_DATA_BUSER DATA 0 1 } } }
	sext_ln77 { ap_none {  { sext_ln77 in_data 0 62 } } }
	ciphertext { ap_memory {  { ciphertext_address0 mem_address 1 3 }  { ciphertext_ce0 mem_ce 1 1 }  { ciphertext_q0 mem_dout 0 8 }  { ciphertext_address1 MemPortADDR2 1 3 }  { ciphertext_ce1 MemPortCE2 1 1 }  { ciphertext_q1 MemPortDOUT2 0 8 } } }
	ciphertext_1 { ap_memory {  { ciphertext_1_address0 mem_address 1 3 }  { ciphertext_1_ce0 mem_ce 1 1 }  { ciphertext_1_q0 mem_dout 0 8 }  { ciphertext_1_address1 MemPortADDR2 1 3 }  { ciphertext_1_ce1 MemPortCE2 1 1 }  { ciphertext_1_q1 MemPortDOUT2 0 8 } } }
}
