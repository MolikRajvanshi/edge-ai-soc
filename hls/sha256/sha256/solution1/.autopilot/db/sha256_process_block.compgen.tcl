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
    id 189 \
    name H \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename H \
    op interface \
    ports { H_address0 { O 3 vector } H_ce0 { O 1 bit } H_we0 { O 1 bit } H_d0 { O 32 vector } H_q0 { I 32 vector } H_address1 { O 3 vector } H_ce1 { O 1 bit } H_we1 { O 1 bit } H_d1 { O 32 vector } H_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'H'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name block_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read \
    op interface \
    ports { block_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name block_read_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_79 \
    op interface \
    ports { block_read_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name block_read_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_80 \
    op interface \
    ports { block_read_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name block_read_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_81 \
    op interface \
    ports { block_read_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name block_read_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_82 \
    op interface \
    ports { block_read_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name block_read_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_83 \
    op interface \
    ports { block_read_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name block_read_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_84 \
    op interface \
    ports { block_read_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name block_read_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_85 \
    op interface \
    ports { block_read_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name block_read_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_86 \
    op interface \
    ports { block_read_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name block_read_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_87 \
    op interface \
    ports { block_read_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name block_read_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_88 \
    op interface \
    ports { block_read_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name block_read_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_89 \
    op interface \
    ports { block_read_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name block_read_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_90 \
    op interface \
    ports { block_read_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name block_read_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_91 \
    op interface \
    ports { block_read_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name block_read_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_92 \
    op interface \
    ports { block_read_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name block_read_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_93 \
    op interface \
    ports { block_read_93 { I 32 vector } } \
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


