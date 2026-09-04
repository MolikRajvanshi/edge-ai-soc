# This script segment is generated automatically by AutoPilot

set name accel_top_mul_31ns_31ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


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
    id 10 \
    name local_input_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_input_V \
    op interface \
    ports { local_input_V_address1 { O 16 vector } local_input_V_ce1 { O 1 bit } local_input_V_we1 { O 1 bit } local_input_V_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_input_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name DATA \
    type other \
    dir I \
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
    id 4 \
    name in_width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_width \
    op interface \
    ports { in_width { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name mul_ln24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln24 \
    op interface \
    ports { mul_ln24 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name zext_ln91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln91 \
    op interface \
    ports { zext_ln91 { I 37 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name zext_ln87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln87 \
    op interface \
    ports { zext_ln87 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name in_ptr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_ptr \
    op interface \
    ports { in_ptr { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name input_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_data \
    op interface \
    ports { input_data { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name trunc_ln89_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln89_1 \
    op interface \
    ports { trunc_ln89_1 { I 2 vector } } \
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


