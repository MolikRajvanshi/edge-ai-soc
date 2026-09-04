set moduleName sha256_top
set isTopModule 1
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
set C_modelName {sha256_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA int 32 regular {axi_master 2}  }
	{ message int 64 regular {axi_slave 0}  }
	{ digest int 64 regular {axi_slave 0}  }
	{ msg_len_words int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "message","offset": { "type": "dynamic","port_name": "message","bundle": "CTRL"},"direction": "READONLY"},{"cName": "digest","offset": { "type": "dynamic","port_name": "digest","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "message", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "digest", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "msg_len_words", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_DATA_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_DATA_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_DATA_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"sha256_top","role":"start","value":"0","valid_bit":"0"},{"name":"sha256_top","role":"continue","value":"0","valid_bit":"4"},{"name":"sha256_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"message","role":"data","value":"16"},{"name":"digest","role":"data","value":"28"},{"name":"msg_len_words","role":"data","value":"40"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"sha256_top","role":"start","value":"0","valid_bit":"0"},{"name":"sha256_top","role":"done","value":"0","valid_bit":"1"},{"name":"sha256_top","role":"idle","value":"0","valid_bit":"2"},{"name":"sha256_top","role":"ready","value":"0","valid_bit":"3"},{"name":"sha256_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "14", "16", "17"],
		"CDFG" : "sha256_top",
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
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha256_top_Pipeline_STORE_DIGEST_fu_351", "Port" : "DATA", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "2", "SubInstance" : "grp_sha256_top_Pipeline_LOAD_BLOCK_fu_305", "Port" : "DATA", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "message", "Type" : "None", "Direction" : "I"},
			{"Name" : "digest", "Type" : "None", "Direction" : "I"},
			{"Name" : "msg_len_words", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "HASH_BLOCKS", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_Pipeline_LOAD_BLOCK_fu_305", "Parent" : "0",
		"CDFG" : "sha256_top_Pipeline_LOAD_BLOCK",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln60", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD_BLOCK", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state7"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state10"]}}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330", "Parent" : "0", "Child" : ["4", "10"],
		"CDFG" : "sha256_process_block",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9"],
		"CDFG" : "sha256_process_block_Pipeline_EXPAND_W",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "block_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "EXPAND_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U21", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U22", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U23", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.mux_647_32_1_1_U24", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_EXPAND_W_fu_457.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_COMPRESS_fu_541", "Parent" : "3", "Child" : ["11", "12", "13"],
		"CDFG" : "sha256_process_block_Pipeline_COMPRESS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_read_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "g_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "e_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COMPRESS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.mux_647_32_1_1_x_U90", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.mux_647_32_1_1_U91", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_process_block_fu_330.grp_sha256_process_block_Pipeline_COMPRESS_fu_541.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_Pipeline_STORE_DIGEST_fu_351", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "sha256_top_Pipeline_STORE_DIGEST",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
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
			{"Name" : "sext_ln70", "Type" : "None", "Direction" : "I"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "STORE_DIGEST", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_Pipeline_STORE_DIGEST_fu_351.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DATA_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_top {
		DATA {Type IO LastRead 9 FirstWrite -1}
		message {Type I LastRead 3 FirstWrite -1}
		digest {Type I LastRead 3 FirstWrite -1}
		msg_len_words {Type I LastRead 3 FirstWrite -1}}
	sha256_top_Pipeline_LOAD_BLOCK {
		DATA {Type I LastRead 8 FirstWrite -1}
		sext_ln60 {Type I LastRead 0 FirstWrite -1}
		sext_ln52 {Type I LastRead 6 FirstWrite -1}
		zext_ln52 {Type I LastRead 6 FirstWrite -1}
		block_15_out {Type O LastRead -1 FirstWrite 8}
		block_14_out {Type O LastRead -1 FirstWrite 8}
		block_13_out {Type O LastRead -1 FirstWrite 8}
		block_12_out {Type O LastRead -1 FirstWrite 8}
		block_11_out {Type O LastRead -1 FirstWrite 8}
		block_10_out {Type O LastRead -1 FirstWrite 8}
		block_9_out {Type O LastRead -1 FirstWrite 8}
		block_8_out {Type O LastRead -1 FirstWrite 8}
		block_7_out {Type O LastRead -1 FirstWrite 8}
		block_6_out {Type O LastRead -1 FirstWrite 8}
		block_5_out {Type O LastRead -1 FirstWrite 8}
		block_4_out {Type O LastRead -1 FirstWrite 8}
		block_3_out {Type O LastRead -1 FirstWrite 8}
		block_2_out {Type O LastRead -1 FirstWrite 8}
		block_1_out {Type O LastRead -1 FirstWrite 8}
		block_out {Type O LastRead -1 FirstWrite 8}}
	sha256_process_block {
		block_read {Type I LastRead 2 FirstWrite -1}
		block_read_79 {Type I LastRead 2 FirstWrite -1}
		block_read_80 {Type I LastRead 2 FirstWrite -1}
		block_read_81 {Type I LastRead 2 FirstWrite -1}
		block_read_82 {Type I LastRead 2 FirstWrite -1}
		block_read_83 {Type I LastRead 2 FirstWrite -1}
		block_read_84 {Type I LastRead 2 FirstWrite -1}
		block_read_85 {Type I LastRead 2 FirstWrite -1}
		block_read_86 {Type I LastRead 2 FirstWrite -1}
		block_read_87 {Type I LastRead 2 FirstWrite -1}
		block_read_88 {Type I LastRead 2 FirstWrite -1}
		block_read_89 {Type I LastRead 2 FirstWrite -1}
		block_read_90 {Type I LastRead 2 FirstWrite -1}
		block_read_91 {Type I LastRead 2 FirstWrite -1}
		block_read_92 {Type I LastRead 2 FirstWrite -1}
		block_read_93 {Type I LastRead 2 FirstWrite -1}
		H {Type IO LastRead 4 FirstWrite 6}}
	sha256_process_block_Pipeline_EXPAND_W {
		block_read_16 {Type I LastRead 0 FirstWrite -1}
		block_read_17 {Type I LastRead 0 FirstWrite -1}
		block_read_18 {Type I LastRead 0 FirstWrite -1}
		block_read_19 {Type I LastRead 0 FirstWrite -1}
		block_read_20 {Type I LastRead 0 FirstWrite -1}
		block_read_21 {Type I LastRead 0 FirstWrite -1}
		block_read_22 {Type I LastRead 0 FirstWrite -1}
		block_read_23 {Type I LastRead 0 FirstWrite -1}
		block_read_24 {Type I LastRead 0 FirstWrite -1}
		block_read_25 {Type I LastRead 0 FirstWrite -1}
		block_read_26 {Type I LastRead 0 FirstWrite -1}
		block_read_27 {Type I LastRead 0 FirstWrite -1}
		block_read_28 {Type I LastRead 0 FirstWrite -1}
		block_read_29 {Type I LastRead 0 FirstWrite -1}
		block_read_30 {Type I LastRead 0 FirstWrite -1}
		block_read {Type I LastRead 0 FirstWrite -1}
		W_47_out {Type O LastRead -1 FirstWrite 0}
		W_46_out {Type O LastRead -1 FirstWrite 0}
		W_45_out {Type O LastRead -1 FirstWrite 0}
		W_44_out {Type O LastRead -1 FirstWrite 0}
		W_43_out {Type O LastRead -1 FirstWrite 0}
		W_42_out {Type O LastRead -1 FirstWrite 0}
		W_41_out {Type O LastRead -1 FirstWrite 0}
		W_40_out {Type O LastRead -1 FirstWrite 0}
		W_39_out {Type O LastRead -1 FirstWrite 0}
		W_38_out {Type O LastRead -1 FirstWrite 0}
		W_37_out {Type O LastRead -1 FirstWrite 0}
		W_36_out {Type O LastRead -1 FirstWrite 0}
		W_35_out {Type O LastRead -1 FirstWrite 0}
		W_34_out {Type O LastRead -1 FirstWrite 0}
		W_33_out {Type O LastRead -1 FirstWrite 0}
		W_32_out {Type O LastRead -1 FirstWrite 0}
		W_31_out {Type O LastRead -1 FirstWrite 0}
		W_30_out {Type O LastRead -1 FirstWrite 0}
		W_29_out {Type O LastRead -1 FirstWrite 0}
		W_28_out {Type O LastRead -1 FirstWrite 0}
		W_27_out {Type O LastRead -1 FirstWrite 0}
		W_26_out {Type O LastRead -1 FirstWrite 0}
		W_25_out {Type O LastRead -1 FirstWrite 0}
		W_24_out {Type O LastRead -1 FirstWrite 0}
		W_23_out {Type O LastRead -1 FirstWrite 0}
		W_22_out {Type O LastRead -1 FirstWrite 0}
		W_21_out {Type O LastRead -1 FirstWrite 0}
		W_20_out {Type O LastRead -1 FirstWrite 0}
		W_19_out {Type O LastRead -1 FirstWrite 0}
		W_18_out {Type O LastRead -1 FirstWrite 0}
		W_17_out {Type O LastRead -1 FirstWrite 0}
		W_16_out {Type O LastRead -1 FirstWrite 0}
		W_15_out {Type O LastRead -1 FirstWrite 0}
		W_14_out {Type O LastRead -1 FirstWrite 0}
		W_13_out {Type O LastRead -1 FirstWrite 0}
		W_12_out {Type O LastRead -1 FirstWrite 0}
		W_11_out {Type O LastRead -1 FirstWrite 0}
		W_10_out {Type O LastRead -1 FirstWrite 0}
		W_9_out {Type O LastRead -1 FirstWrite 0}
		W_8_out {Type O LastRead -1 FirstWrite 0}
		W_7_out {Type O LastRead -1 FirstWrite 0}
		W_6_out {Type O LastRead -1 FirstWrite 0}
		W_5_out {Type O LastRead -1 FirstWrite 0}
		W_4_out {Type O LastRead -1 FirstWrite 0}
		W_3_out {Type O LastRead -1 FirstWrite 0}
		W_2_out {Type O LastRead -1 FirstWrite 0}
		W_1_out {Type O LastRead -1 FirstWrite 0}
		W_out {Type O LastRead -1 FirstWrite 0}}
	sha256_process_block_Pipeline_COMPRESS {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		block_read {Type I LastRead 0 FirstWrite -1}
		block_read_16 {Type I LastRead 0 FirstWrite -1}
		block_read_17 {Type I LastRead 0 FirstWrite -1}
		block_read_18 {Type I LastRead 0 FirstWrite -1}
		block_read_19 {Type I LastRead 0 FirstWrite -1}
		block_read_20 {Type I LastRead 0 FirstWrite -1}
		block_read_21 {Type I LastRead 0 FirstWrite -1}
		block_read_22 {Type I LastRead 0 FirstWrite -1}
		block_read_23 {Type I LastRead 0 FirstWrite -1}
		block_read_24 {Type I LastRead 0 FirstWrite -1}
		block_read_25 {Type I LastRead 0 FirstWrite -1}
		block_read_26 {Type I LastRead 0 FirstWrite -1}
		block_read_27 {Type I LastRead 0 FirstWrite -1}
		block_read_28 {Type I LastRead 0 FirstWrite -1}
		block_read_29 {Type I LastRead 0 FirstWrite -1}
		block_read_30 {Type I LastRead 0 FirstWrite -1}
		W_16_reload {Type I LastRead 0 FirstWrite -1}
		W_17_reload {Type I LastRead 0 FirstWrite -1}
		W_18_reload {Type I LastRead 0 FirstWrite -1}
		W_19_reload {Type I LastRead 0 FirstWrite -1}
		W_20_reload {Type I LastRead 0 FirstWrite -1}
		W_21_reload {Type I LastRead 0 FirstWrite -1}
		W_22_reload {Type I LastRead 0 FirstWrite -1}
		W_23_reload {Type I LastRead 0 FirstWrite -1}
		W_24_reload {Type I LastRead 0 FirstWrite -1}
		W_25_reload {Type I LastRead 0 FirstWrite -1}
		W_26_reload {Type I LastRead 0 FirstWrite -1}
		W_27_reload {Type I LastRead 0 FirstWrite -1}
		W_28_reload {Type I LastRead 0 FirstWrite -1}
		W_29_reload {Type I LastRead 0 FirstWrite -1}
		W_30_reload {Type I LastRead 0 FirstWrite -1}
		W_31_reload {Type I LastRead 0 FirstWrite -1}
		W_32_reload {Type I LastRead 0 FirstWrite -1}
		W_33_reload {Type I LastRead 0 FirstWrite -1}
		W_34_reload {Type I LastRead 0 FirstWrite -1}
		W_35_reload {Type I LastRead 0 FirstWrite -1}
		W_36_reload {Type I LastRead 0 FirstWrite -1}
		W_37_reload {Type I LastRead 0 FirstWrite -1}
		W_38_reload {Type I LastRead 0 FirstWrite -1}
		W_39_reload {Type I LastRead 0 FirstWrite -1}
		W_40_reload {Type I LastRead 0 FirstWrite -1}
		W_41_reload {Type I LastRead 0 FirstWrite -1}
		W_42_reload {Type I LastRead 0 FirstWrite -1}
		W_43_reload {Type I LastRead 0 FirstWrite -1}
		W_44_reload {Type I LastRead 0 FirstWrite -1}
		W_45_reload {Type I LastRead 0 FirstWrite -1}
		W_46_reload {Type I LastRead 0 FirstWrite -1}
		W_47_reload {Type I LastRead 0 FirstWrite -1}
		W_15_reload {Type I LastRead 0 FirstWrite -1}
		W_14_reload {Type I LastRead 0 FirstWrite -1}
		W_13_reload {Type I LastRead 0 FirstWrite -1}
		W_12_reload {Type I LastRead 0 FirstWrite -1}
		W_11_reload {Type I LastRead 0 FirstWrite -1}
		W_10_reload {Type I LastRead 0 FirstWrite -1}
		W_9_reload {Type I LastRead 0 FirstWrite -1}
		W_8_reload {Type I LastRead 0 FirstWrite -1}
		W_7_reload {Type I LastRead 0 FirstWrite -1}
		W_6_reload {Type I LastRead 0 FirstWrite -1}
		W_5_reload {Type I LastRead 0 FirstWrite -1}
		W_4_reload {Type I LastRead 0 FirstWrite -1}
		W_3_reload {Type I LastRead 0 FirstWrite -1}
		W_2_reload {Type I LastRead 0 FirstWrite -1}
		W_1_reload {Type I LastRead 0 FirstWrite -1}
		W_reload {Type I LastRead 0 FirstWrite -1}
		h_1_out {Type O LastRead -1 FirstWrite 2}
		g_3_out {Type O LastRead -1 FirstWrite 2}
		f_3_out {Type O LastRead -1 FirstWrite 2}
		e_3_out {Type O LastRead -1 FirstWrite 2}
		d_1_out {Type O LastRead -1 FirstWrite 2}
		a_3_out {Type O LastRead -1 FirstWrite 2}
		b_3_out {Type O LastRead -1 FirstWrite 2}
		c_3_out {Type O LastRead -1 FirstWrite 2}}
	sha256_top_Pipeline_STORE_DIGEST {
		DATA {Type O LastRead -1 FirstWrite 2}
		sext_ln70 {Type I LastRead 0 FirstWrite -1}
		H {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DATA { m_axi {  { m_axi_DATA_AWVALID VALID 1 1 }  { m_axi_DATA_AWREADY READY 0 1 }  { m_axi_DATA_AWADDR ADDR 1 64 }  { m_axi_DATA_AWID ID 1 1 }  { m_axi_DATA_AWLEN SIZE 1 8 }  { m_axi_DATA_AWSIZE BURST 1 3 }  { m_axi_DATA_AWBURST LOCK 1 2 }  { m_axi_DATA_AWLOCK CACHE 1 2 }  { m_axi_DATA_AWCACHE PROT 1 4 }  { m_axi_DATA_AWPROT QOS 1 3 }  { m_axi_DATA_AWQOS REGION 1 4 }  { m_axi_DATA_AWREGION USER 1 4 }  { m_axi_DATA_AWUSER DATA 1 1 }  { m_axi_DATA_WVALID VALID 1 1 }  { m_axi_DATA_WREADY READY 0 1 }  { m_axi_DATA_WDATA FIFONUM 1 32 }  { m_axi_DATA_WSTRB STRB 1 4 }  { m_axi_DATA_WLAST LAST 1 1 }  { m_axi_DATA_WID ID 1 1 }  { m_axi_DATA_WUSER DATA 1 1 }  { m_axi_DATA_ARVALID VALID 1 1 }  { m_axi_DATA_ARREADY READY 0 1 }  { m_axi_DATA_ARADDR ADDR 1 64 }  { m_axi_DATA_ARID ID 1 1 }  { m_axi_DATA_ARLEN SIZE 1 8 }  { m_axi_DATA_ARSIZE BURST 1 3 }  { m_axi_DATA_ARBURST LOCK 1 2 }  { m_axi_DATA_ARLOCK CACHE 1 2 }  { m_axi_DATA_ARCACHE PROT 1 4 }  { m_axi_DATA_ARPROT QOS 1 3 }  { m_axi_DATA_ARQOS REGION 1 4 }  { m_axi_DATA_ARREGION USER 1 4 }  { m_axi_DATA_ARUSER DATA 1 1 }  { m_axi_DATA_RVALID VALID 0 1 }  { m_axi_DATA_RREADY READY 1 1 }  { m_axi_DATA_RDATA FIFONUM 0 32 }  { m_axi_DATA_RLAST LAST 0 1 }  { m_axi_DATA_RID ID 0 1 }  { m_axi_DATA_RUSER DATA 0 1 }  { m_axi_DATA_RRESP RESP 0 2 }  { m_axi_DATA_BVALID VALID 0 1 }  { m_axi_DATA_BREADY READY 1 1 }  { m_axi_DATA_BRESP RESP 0 2 }  { m_axi_DATA_BID ID 0 1 }  { m_axi_DATA_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict DATA {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
