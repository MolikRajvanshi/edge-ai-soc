set moduleName accel_top
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
set C_modelName {accel_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA int 32 regular {axi_master 2}  }
	{ input_data int 64 regular {axi_slave 0}  }
	{ weight_data int 64 regular {axi_slave 0}  }
	{ bias_data int 64 regular {axi_slave 0}  }
	{ output_data int 64 regular {axi_slave 0}  }
	{ kernel_size int 32 regular {axi_slave 0}  }
	{ in_channels int 32 regular {axi_slave 0}  }
	{ out_channels int 32 regular {axi_slave 0}  }
	{ in_height int 32 regular {axi_slave 0}  }
	{ in_width int 32 regular {axi_slave 0}  }
	{ stride int 32 regular {axi_slave 0}  }
	{ padding int 32 regular {axi_slave 0}  }
	{ relu_enable int 32 regular {axi_slave 0}  }
	{ pool_enable int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "input_data","offset": { "type": "dynamic","port_name": "input_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "weight_data","offset": { "type": "dynamic","port_name": "weight_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "bias_data","offset": { "type": "dynamic","port_name": "bias_data","bundle": "CTRL"},"direction": "READONLY"},{"cName": "output_data","offset": { "type": "dynamic","port_name": "output_data","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_data", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "weight_data", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "bias_data", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "output_data", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "kernel_size", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "in_channels", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "out_channels", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "in_height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "in_width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "stride", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "padding", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "relu_enable", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "pool_enable", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} ]}
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
	{ s_axi_CTRL_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 8 signal -1 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"accel_top","role":"start","value":"0","valid_bit":"0"},{"name":"accel_top","role":"continue","value":"0","valid_bit":"4"},{"name":"accel_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_data","role":"data","value":"16"},{"name":"weight_data","role":"data","value":"28"},{"name":"bias_data","role":"data","value":"40"},{"name":"output_data","role":"data","value":"52"},{"name":"kernel_size","role":"data","value":"64"},{"name":"in_channels","role":"data","value":"72"},{"name":"out_channels","role":"data","value":"80"},{"name":"in_height","role":"data","value":"88"},{"name":"in_width","role":"data","value":"96"},{"name":"stride","role":"data","value":"104"},{"name":"padding","role":"data","value":"112"},{"name":"relu_enable","role":"data","value":"120"},{"name":"pool_enable","role":"data","value":"128"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"accel_top","role":"start","value":"0","valid_bit":"0"},{"name":"accel_top","role":"done","value":"0","valid_bit":"1"},{"name":"accel_top","role":"idle","value":"0","valid_bit":"2"},{"name":"accel_top","role":"ready","value":"0","valid_bit":"3"},{"name":"accel_top","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "11", "13", "24", "31", "35", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "accel_top",
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
					{"Name" : "DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW_fu_340", "Port" : "DATA", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "35", "SubInstance" : "grp_accel_top_Pipeline_STORE_W_fu_391", "Port" : "DATA", "Inst_start_state" : "58", "Inst_end_state" : "59"},
					{"ID" : "8", "SubInstance" : "grp_accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W_fu_326", "Port" : "DATA", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "input_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_channels", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_channels", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_enable", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOAD_INPUT_CH", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "59", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOAD_W_IC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "59", "FirstState" : "ap_ST_fsm_state42", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state42"], "PreState" : ["ap_ST_fsm_state41"], "PostState" : ["ap_ST_fsm_state44"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "STORE_H", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "59", "FirstState" : "ap_ST_fsm_state58", "LastState" : ["ap_ST_fsm_state59"], "QuitState" : ["ap_ST_fsm_state58"], "PreState" : ["ap_ST_fsm_state57"], "PostState" : ["ap_ST_fsm_state41"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OUTPUT_CHANNEL", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "59", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state58"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_input_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_weights_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_V_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_output_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W_fu_326", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W",
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
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln24", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_input_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln89_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOAD_INPUT_H_LOAD_INPUT_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W_fu_326.mul_31ns_31ns_32_1_1_U1", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW_fu_340", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_ptr_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln101", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln119", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln4", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LOAD_W_KH_LOAD_W_KW", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW_fu_340.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353", "Parent" : "0", "Child" : ["14", "17", "18", "19", "20", "21", "22", "23"],
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
					{"ID" : "14", "SubInstance" : "grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Port" : "input_r", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Port" : "weights", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196", "Parent" : "13", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196.mac_muladd_8s_8s_32s_32_4_1_U20", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.grp_conv_engine_Pipeline_CONV_IC_CONV_KH_CONV_KW_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.sdiv_32ns_32s_32_36_seq_1_U35", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.sdiv_32ns_32s_32_36_seq_1_U36", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.mul_32ns_32ns_64_1_1_U37", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.mul_32ns_64ns_96_5_1_U38", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.mul_32ns_32ns_64_1_1_U39", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.mul_32s_32s_32_1_1_U40", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_engine_fu_353.mul_32s_32s_32_1_1_U41", "Parent" : "13"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370", "Parent" : "0", "Child" : ["25", "30"],
		"CDFG" : "relu",
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
			{"Name" : "feature_map_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36", "Port" : "feature_map_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "feature_map_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36", "Port" : "feature_map_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "feature_map_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36", "Port" : "feature_map_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "feature_map_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36", "Port" : "feature_map_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36", "Parent" : "24", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "relu_Pipeline_RELU_ROW_RELU_COL",
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
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_map_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "feature_map_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "feature_map_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "feature_map_0_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "RELU_ROW_RELU_COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36.mux_21_32_1_1_U59", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36.mux_21_32_1_1_U60", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36.mux_21_32_1_1_U61", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.grp_relu_Pipeline_RELU_ROW_RELU_COL_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_relu_fu_370.mul_32ns_32ns_64_1_1_U69", "Parent" : "24"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2x2_fu_380", "Parent" : "0", "Child" : ["32", "34"],
		"CDFG" : "maxpool_2x2",
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
			{"Name" : "input_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Port" : "input_0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Port" : "input_0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Port" : "input_1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Port" : "input_1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Port" : "output_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2x2_fu_380.grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48", "Parent" : "31", "Child" : ["33"],
		"CDFG" : "maxpool_2x2_Pipeline_POOL_ROW_POOL_COL",
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
			{"Name" : "out_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "POOL_ROW_POOL_COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2x2_fu_380.grp_maxpool_2x2_Pipeline_POOL_ROW_POOL_COL_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool_2x2_fu_380.mul_32ns_32ns_64_1_1_U83", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_STORE_W_fu_391", "Parent" : "0", "Child" : ["36", "37", "38", "39"],
		"CDFG" : "accel_top_Pipeline_STORE_W",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln166_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "DATA", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "DATA_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "final_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln164", "Type" : "None", "Direction" : "I"},
			{"Name" : "pool_output_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln166_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_output_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_output_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln160_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln104", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "STORE_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_STORE_W_fu_391.mux_21_32_1_1_U91", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_STORE_W_fu_391.mux_21_32_1_1_U92", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_STORE_W_fu_391.mux_21_32_1_1_U93", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accel_top_Pipeline_STORE_W_fu_391.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DATA_m_axi_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_32_1_1_U107", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_63_1_1_U108", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U109", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U110", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U111", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_62_1_1_U112", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accel_top {
		DATA {Type IO LastRead 48 FirstWrite -1}
		input_data {Type I LastRead 0 FirstWrite -1}
		weight_data {Type I LastRead 0 FirstWrite -1}
		bias_data {Type I LastRead 0 FirstWrite -1}
		output_data {Type I LastRead 0 FirstWrite -1}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		in_channels {Type I LastRead 0 FirstWrite -1}
		out_channels {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		relu_enable {Type I LastRead 0 FirstWrite -1}
		pool_enable {Type I LastRead 0 FirstWrite -1}}
	accel_top_Pipeline_LOAD_INPUT_H_LOAD_INPUT_W {
		DATA {Type I LastRead 11 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		mul_ln24 {Type I LastRead 0 FirstWrite -1}
		zext_ln91 {Type I LastRead 0 FirstWrite -1}
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		in_ptr {Type I LastRead 0 FirstWrite -1}
		input_data {Type I LastRead 0 FirstWrite -1}
		local_input_V {Type O LastRead -1 FirstWrite 12}
		trunc_ln89_1 {Type I LastRead 0 FirstWrite -1}}
	accel_top_Pipeline_LOAD_W_KH_LOAD_W_KW {
		w_ptr_1 {Type I LastRead 0 FirstWrite -1}
		DATA {Type I LastRead 9 FirstWrite -1}
		kernel_size {Type I LastRead 0 FirstWrite -1}
		mul_ln101 {Type I LastRead 0 FirstWrite -1}
		sub_ln119 {Type I LastRead 0 FirstWrite -1}
		weight_data {Type I LastRead 0 FirstWrite -1}
		local_weights_V {Type O LastRead -1 FirstWrite 10}
		trunc_ln4 {Type I LastRead 0 FirstWrite -1}}
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
		sum_V_1_out {Type O LastRead -1 FirstWrite 6}}
	relu {
		feature_map_0_0 {Type IO LastRead 1 FirstWrite 3}
		feature_map_0_1 {Type IO LastRead 1 FirstWrite 3}
		feature_map_1_0 {Type IO LastRead 1 FirstWrite 3}
		feature_map_1_1 {Type IO LastRead 1 FirstWrite 3}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}}
	relu_Pipeline_RELU_ROW_RELU_COL {
		bound {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		feature_map_1_1 {Type IO LastRead 1 FirstWrite 3}
		feature_map_1_0 {Type IO LastRead 1 FirstWrite 3}
		feature_map_0_1 {Type IO LastRead 1 FirstWrite 3}
		feature_map_0_0 {Type IO LastRead 1 FirstWrite 3}}
	maxpool_2x2 {
		input_0_0 {Type I LastRead 1 FirstWrite -1}
		input_0_1 {Type I LastRead 1 FirstWrite -1}
		input_1_0 {Type I LastRead 1 FirstWrite -1}
		input_1_1 {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		in_height {Type I LastRead 0 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}}
	maxpool_2x2_Pipeline_POOL_ROW_POOL_COL {
		out_width {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		input_0_0 {Type I LastRead 1 FirstWrite -1}
		input_0_1 {Type I LastRead 1 FirstWrite -1}
		input_1_0 {Type I LastRead 1 FirstWrite -1}
		input_1_1 {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}}
	accel_top_Pipeline_STORE_W {
		sext_ln166_1 {Type I LastRead 0 FirstWrite -1}
		DATA {Type O LastRead 4 FirstWrite 3}
		final_width {Type I LastRead 0 FirstWrite -1}
		zext_ln164 {Type I LastRead 0 FirstWrite -1}
		pool_output_V {Type I LastRead 1 FirstWrite -1}
		output_data {Type I LastRead 0 FirstWrite -1}
		zext_ln166_1 {Type I LastRead 0 FirstWrite -1}
		conv_output_V {Type I LastRead 1 FirstWrite -1}
		conv_output_V_1 {Type I LastRead 1 FirstWrite -1}
		conv_output_V_2 {Type I LastRead 1 FirstWrite -1}
		conv_output_V_3 {Type I LastRead 1 FirstWrite -1}
		trunc_ln160_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln104 {Type I LastRead 0 FirstWrite -1}}}

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
