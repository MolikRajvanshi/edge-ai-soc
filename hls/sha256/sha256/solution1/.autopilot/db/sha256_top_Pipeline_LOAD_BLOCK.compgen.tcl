# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
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
    id 2 \
    name sext_ln60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln60 \
    op interface \
    ports { sext_ln60 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name sext_ln52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln52 \
    op interface \
    ports { sext_ln52 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name zext_ln52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln52 \
    op interface \
    ports { zext_ln52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name block_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_15_out \
    op interface \
    ports { block_15_out { O 32 vector } block_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name block_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_14_out \
    op interface \
    ports { block_14_out { O 32 vector } block_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name block_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_13_out \
    op interface \
    ports { block_13_out { O 32 vector } block_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name block_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_12_out \
    op interface \
    ports { block_12_out { O 32 vector } block_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name block_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_11_out \
    op interface \
    ports { block_11_out { O 32 vector } block_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name block_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_10_out \
    op interface \
    ports { block_10_out { O 32 vector } block_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name block_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_9_out \
    op interface \
    ports { block_9_out { O 32 vector } block_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name block_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_8_out \
    op interface \
    ports { block_8_out { O 32 vector } block_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name block_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_7_out \
    op interface \
    ports { block_7_out { O 32 vector } block_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name block_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_6_out \
    op interface \
    ports { block_6_out { O 32 vector } block_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name block_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_5_out \
    op interface \
    ports { block_5_out { O 32 vector } block_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name block_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_4_out \
    op interface \
    ports { block_4_out { O 32 vector } block_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name block_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_3_out \
    op interface \
    ports { block_3_out { O 32 vector } block_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name block_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_2_out \
    op interface \
    ports { block_2_out { O 32 vector } block_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name block_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_1_out \
    op interface \
    ports { block_1_out { O 32 vector } block_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name block_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_out \
    op interface \
    ports { block_out { O 32 vector } block_out_ap_vld { O 1 bit } } \
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


