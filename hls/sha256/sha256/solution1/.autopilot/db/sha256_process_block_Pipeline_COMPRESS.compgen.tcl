# This script segment is generated automatically by AutoPilot

set id 90
set name sha256_top_mux_647_32_1_1_x
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 1
set din3_width 32
set din3_signed 1
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 1
set din7_width 32
set din7_signed 1
set din8_width 32
set din8_signed 1
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 1
set din14_width 32
set din14_signed 1
set din15_width 32
set din15_signed 1
set din16_width 32
set din16_signed 1
set din17_width 32
set din17_signed 1
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 1
set din25_width 32
set din25_signed 1
set din26_width 32
set din26_signed 1
set din27_width 32
set din27_signed 1
set din28_width 32
set din28_signed 1
set din29_width 32
set din29_signed 1
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 32
set din32_signed 0
set din33_width 32
set din33_signed 0
set din34_width 32
set din34_signed 0
set din35_width 32
set din35_signed 0
set din36_width 32
set din36_signed 0
set din37_width 32
set din37_signed 0
set din38_width 32
set din38_signed 1
set din39_width 32
set din39_signed 1
set din40_width 32
set din40_signed 1
set din41_width 32
set din41_signed 1
set din42_width 32
set din42_signed 1
set din43_width 32
set din43_signed 1
set din44_width 32
set din44_signed 1
set din45_width 32
set din45_signed 1
set din46_width 32
set din46_signed 1
set din47_width 32
set din47_signed 0
set din48_width 32
set din48_signed 0
set din49_width 32
set din49_signed 0
set din50_width 32
set din50_signed 0
set din51_width 32
set din51_signed 0
set din52_width 32
set din52_signed 0
set din53_width 32
set din53_signed 0
set din54_width 32
set din54_signed 0
set din55_width 32
set din55_signed 0
set din56_width 32
set din56_signed 0
set din57_width 32
set din57_signed 0
set din58_width 32
set din58_signed 1
set din59_width 32
set din59_signed 1
set din60_width 32
set din60_signed 1
set din61_width 32
set din61_signed 1
set din62_width 32
set din62_signed 1
set din63_width 32
set din63_signed 1
set din64_width 7
set din64_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h \
    op interface \
    ports { h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name g \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_g \
    op interface \
    ports { g { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name f \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f \
    op interface \
    ports { f { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name e \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e \
    op interface \
    ports { e { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name d \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d \
    op interface \
    ports { d { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a \
    op interface \
    ports { a { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name c \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c \
    op interface \
    ports { c { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
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
    id 102 \
    name block_read_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_16 \
    op interface \
    ports { block_read_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name block_read_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_17 \
    op interface \
    ports { block_read_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name block_read_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_18 \
    op interface \
    ports { block_read_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name block_read_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_19 \
    op interface \
    ports { block_read_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name block_read_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_20 \
    op interface \
    ports { block_read_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name block_read_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_21 \
    op interface \
    ports { block_read_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name block_read_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_22 \
    op interface \
    ports { block_read_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name block_read_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_23 \
    op interface \
    ports { block_read_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name block_read_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_24 \
    op interface \
    ports { block_read_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name block_read_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_25 \
    op interface \
    ports { block_read_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name block_read_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_26 \
    op interface \
    ports { block_read_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name block_read_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_27 \
    op interface \
    ports { block_read_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name block_read_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_28 \
    op interface \
    ports { block_read_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name block_read_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_29 \
    op interface \
    ports { block_read_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name block_read_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_read_30 \
    op interface \
    ports { block_read_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name W_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_16_reload \
    op interface \
    ports { W_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name W_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_17_reload \
    op interface \
    ports { W_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name W_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_18_reload \
    op interface \
    ports { W_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name W_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_19_reload \
    op interface \
    ports { W_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name W_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_20_reload \
    op interface \
    ports { W_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name W_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_21_reload \
    op interface \
    ports { W_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name W_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_22_reload \
    op interface \
    ports { W_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name W_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_23_reload \
    op interface \
    ports { W_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name W_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_24_reload \
    op interface \
    ports { W_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name W_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_25_reload \
    op interface \
    ports { W_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name W_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_26_reload \
    op interface \
    ports { W_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name W_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_27_reload \
    op interface \
    ports { W_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name W_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_28_reload \
    op interface \
    ports { W_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name W_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_29_reload \
    op interface \
    ports { W_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name W_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_30_reload \
    op interface \
    ports { W_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name W_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_31_reload \
    op interface \
    ports { W_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name W_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_32_reload \
    op interface \
    ports { W_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name W_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_33_reload \
    op interface \
    ports { W_33_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name W_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_34_reload \
    op interface \
    ports { W_34_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name W_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_35_reload \
    op interface \
    ports { W_35_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name W_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_36_reload \
    op interface \
    ports { W_36_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name W_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_37_reload \
    op interface \
    ports { W_37_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name W_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_38_reload \
    op interface \
    ports { W_38_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name W_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_39_reload \
    op interface \
    ports { W_39_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name W_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_40_reload \
    op interface \
    ports { W_40_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name W_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_41_reload \
    op interface \
    ports { W_41_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name W_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_42_reload \
    op interface \
    ports { W_42_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name W_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_43_reload \
    op interface \
    ports { W_43_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name W_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_44_reload \
    op interface \
    ports { W_44_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name W_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_45_reload \
    op interface \
    ports { W_45_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name W_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_46_reload \
    op interface \
    ports { W_46_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name W_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_47_reload \
    op interface \
    ports { W_47_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name W_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_15_reload \
    op interface \
    ports { W_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name W_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_14_reload \
    op interface \
    ports { W_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name W_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_13_reload \
    op interface \
    ports { W_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name W_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_12_reload \
    op interface \
    ports { W_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name W_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_11_reload \
    op interface \
    ports { W_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name W_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_10_reload \
    op interface \
    ports { W_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name W_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_9_reload \
    op interface \
    ports { W_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name W_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_8_reload \
    op interface \
    ports { W_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name W_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_7_reload \
    op interface \
    ports { W_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name W_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_6_reload \
    op interface \
    ports { W_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name W_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_5_reload \
    op interface \
    ports { W_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name W_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_4_reload \
    op interface \
    ports { W_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name W_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_3_reload \
    op interface \
    ports { W_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name W_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_2_reload \
    op interface \
    ports { W_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name W_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_1_reload \
    op interface \
    ports { W_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name W_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W_reload \
    op interface \
    ports { W_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name h_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_1_out \
    op interface \
    ports { h_1_out { O 32 vector } h_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name g_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_g_3_out \
    op interface \
    ports { g_3_out { O 32 vector } g_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name f_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f_3_out \
    op interface \
    ports { f_3_out { O 32 vector } f_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name e_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_e_3_out \
    op interface \
    ports { e_3_out { O 32 vector } e_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name d_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_1_out \
    op interface \
    ports { d_1_out { O 32 vector } d_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name a_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3_out \
    op interface \
    ports { a_3_out { O 32 vector } a_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name b_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3_out \
    op interface \
    ports { b_3_out { O 32 vector } b_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name c_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_out \
    op interface \
    ports { c_3_out { O 32 vector } c_3_out_ap_vld { O 1 bit } } \
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
set InstName sha256_top_flow_control_loop_pipe_sequential_init_U
set CompName sha256_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sha256_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


