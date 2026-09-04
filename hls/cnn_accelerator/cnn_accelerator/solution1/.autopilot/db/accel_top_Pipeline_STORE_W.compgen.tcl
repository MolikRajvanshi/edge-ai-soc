# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name pool_output_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pool_output_V \
    op interface \
    ports { pool_output_V_address0 { O 10 vector } pool_output_V_ce0 { O 1 bit } pool_output_V_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pool_output_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name conv_output_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_output_V \
    op interface \
    ports { conv_output_V_address0 { O 8 vector } conv_output_V_ce0 { O 1 bit } conv_output_V_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_output_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name conv_output_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_output_V_1 \
    op interface \
    ports { conv_output_V_1_address0 { O 8 vector } conv_output_V_1_ce0 { O 1 bit } conv_output_V_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_output_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name conv_output_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_output_V_2 \
    op interface \
    ports { conv_output_V_2_address0 { O 8 vector } conv_output_V_2_ce0 { O 1 bit } conv_output_V_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_output_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name conv_output_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_output_V_3 \
    op interface \
    ports { conv_output_V_3_address0 { O 8 vector } conv_output_V_3_ce0 { O 1 bit } conv_output_V_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_output_V_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name sext_ln166_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln166_1 \
    op interface \
    ports { sext_ln166_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name DATA \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_DATA \
    op interface \
    ports { m_axi_DATA_AWVALID { O 1 bit } m_axi_DATA_AWREADY { I 1 bit } m_axi_DATA_AWADDR { O 64 vector } m_axi_DATA_AWID { O 1 vector } m_axi_DATA_AWLEN { O 32 vector } m_axi_DATA_AWSIZE { O 3 vector } m_axi_DATA_AWBURST { O 2 vector } m_axi_DATA_AWLOCK { O 2 vector } m_axi_DATA_AWCACHE { O 4 vector } m_axi_DATA_AWPROT { O 3 vector } m_axi_DATA_AWQOS { O 4 vector } m_axi_DATA_AWREGION { O 4 vector } m_axi_DATA_AWUSER { O 1 vector } m_axi_DATA_WVALID { O 1 bit } m_axi_DATA_WREADY { I 1 bit } m_axi_DATA_WDATA { O 32 vector } m_axi_DATA_WSTRB { O 4 vector } m_axi_DATA_WLAST { O 1 bit } m_axi_DATA_WID { O 1 vector } m_axi_DATA_WUSER { O 1 vector } m_axi_DATA_ARVALID { O 1 bit } m_axi_DATA_ARREADY { I 1 bit } m_axi_DATA_ARADDR { O 64 vector } m_axi_DATA_ARID { O 1 vector } m_axi_DATA_ARLEN { O 32 vector } m_axi_DATA_ARSIZE { O 3 vector } m_axi_DATA_ARBURST { O 2 vector } m_axi_DATA_ARLOCK { O 2 vector } m_axi_DATA_ARCACHE { O 4 vector } m_axi_DATA_ARPROT { O 3 vector } m_axi_DATA_ARQOS { O 4 vector } m_axi_DATA_ARREGION { O 4 vector } m_axi_DATA_ARUSER { O 1 vector } m_axi_DATA_RVALID { I 1 bit } m_axi_DATA_RREADY { O 1 bit } m_axi_DATA_RDATA { I 32 vector } m_axi_DATA_RLAST { I 1 bit } m_axi_DATA_RID { I 1 vector } m_axi_DATA_RFIFONUM { I 9 vector } m_axi_DATA_RUSER { I 1 vector } m_axi_DATA_RRESP { I 2 vector } m_axi_DATA_BVALID { I 1 bit } m_axi_DATA_BREADY { O 1 bit } m_axi_DATA_BRESP { I 2 vector } m_axi_DATA_BID { I 1 vector } m_axi_DATA_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name final_width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_width \
    op interface \
    ports { final_width { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name zext_ln164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln164 \
    op interface \
    ports { zext_ln164 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name output_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_data \
    op interface \
    ports { output_data { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name zext_ln166_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln166_1 \
    op interface \
    ports { zext_ln166_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name trunc_ln160_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln160_1 \
    op interface \
    ports { trunc_ln160_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name icmp_ln104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln104 \
    op interface \
    ports { icmp_ln104 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName accel_top_flow_control_loop_pipe_sequential_init_U
set CompName accel_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix accel_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


