# This script segment is generated automatically by AutoPilot

set id 21
set name sha256_top_mux_647_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
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
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
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
set din38_signed 0
set din39_width 32
set din39_signed 0
set din40_width 32
set din40_signed 0
set din41_width 32
set din41_signed 0
set din42_width 32
set din42_signed 0
set din43_width 32
set din43_signed 0
set din44_width 32
set din44_signed 0
set din45_width 32
set din45_signed 0
set din46_width 32
set din46_signed 0
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
set din58_signed 0
set din59_width 32
set din59_signed 0
set din60_width 32
set din60_signed 0
set din61_width 32
set din61_signed 0
set din62_width 32
set din62_signed 0
set din63_width 32
set din63_signed 0
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
    id 26 \
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
    id 27 \
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
    id 28 \
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
    id 29 \
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
    id 30 \
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
    id 31 \
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
    id 32 \
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
    id 33 \
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
    id 34 \
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
    id 35 \
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
    id 36 \
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
    id 37 \
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
    id 38 \
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
    id 39 \
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
    id 40 \
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
    id 41 \
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
    id 42 \
    name W_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_47_out \
    op interface \
    ports { W_47_out { O 32 vector } W_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name W_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_46_out \
    op interface \
    ports { W_46_out { O 32 vector } W_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name W_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_45_out \
    op interface \
    ports { W_45_out { O 32 vector } W_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name W_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_44_out \
    op interface \
    ports { W_44_out { O 32 vector } W_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name W_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_43_out \
    op interface \
    ports { W_43_out { O 32 vector } W_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name W_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_42_out \
    op interface \
    ports { W_42_out { O 32 vector } W_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name W_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_41_out \
    op interface \
    ports { W_41_out { O 32 vector } W_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name W_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_40_out \
    op interface \
    ports { W_40_out { O 32 vector } W_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name W_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_39_out \
    op interface \
    ports { W_39_out { O 32 vector } W_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name W_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_38_out \
    op interface \
    ports { W_38_out { O 32 vector } W_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name W_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_37_out \
    op interface \
    ports { W_37_out { O 32 vector } W_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name W_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_36_out \
    op interface \
    ports { W_36_out { O 32 vector } W_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name W_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_35_out \
    op interface \
    ports { W_35_out { O 32 vector } W_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name W_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_34_out \
    op interface \
    ports { W_34_out { O 32 vector } W_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name W_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_33_out \
    op interface \
    ports { W_33_out { O 32 vector } W_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name W_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_32_out \
    op interface \
    ports { W_32_out { O 32 vector } W_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name W_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_31_out \
    op interface \
    ports { W_31_out { O 32 vector } W_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name W_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_30_out \
    op interface \
    ports { W_30_out { O 32 vector } W_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name W_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_29_out \
    op interface \
    ports { W_29_out { O 32 vector } W_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name W_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_28_out \
    op interface \
    ports { W_28_out { O 32 vector } W_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name W_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_27_out \
    op interface \
    ports { W_27_out { O 32 vector } W_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name W_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_26_out \
    op interface \
    ports { W_26_out { O 32 vector } W_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name W_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_25_out \
    op interface \
    ports { W_25_out { O 32 vector } W_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name W_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_24_out \
    op interface \
    ports { W_24_out { O 32 vector } W_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name W_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_23_out \
    op interface \
    ports { W_23_out { O 32 vector } W_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name W_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_22_out \
    op interface \
    ports { W_22_out { O 32 vector } W_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name W_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_21_out \
    op interface \
    ports { W_21_out { O 32 vector } W_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name W_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_20_out \
    op interface \
    ports { W_20_out { O 32 vector } W_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name W_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_19_out \
    op interface \
    ports { W_19_out { O 32 vector } W_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name W_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_18_out \
    op interface \
    ports { W_18_out { O 32 vector } W_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name W_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_17_out \
    op interface \
    ports { W_17_out { O 32 vector } W_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name W_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_16_out \
    op interface \
    ports { W_16_out { O 32 vector } W_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name W_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_15_out \
    op interface \
    ports { W_15_out { O 32 vector } W_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name W_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_14_out \
    op interface \
    ports { W_14_out { O 32 vector } W_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name W_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_13_out \
    op interface \
    ports { W_13_out { O 32 vector } W_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name W_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_12_out \
    op interface \
    ports { W_12_out { O 32 vector } W_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name W_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_11_out \
    op interface \
    ports { W_11_out { O 32 vector } W_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name W_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_10_out \
    op interface \
    ports { W_10_out { O 32 vector } W_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name W_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_9_out \
    op interface \
    ports { W_9_out { O 32 vector } W_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name W_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_8_out \
    op interface \
    ports { W_8_out { O 32 vector } W_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name W_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_7_out \
    op interface \
    ports { W_7_out { O 32 vector } W_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name W_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_6_out \
    op interface \
    ports { W_6_out { O 32 vector } W_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name W_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_5_out \
    op interface \
    ports { W_5_out { O 32 vector } W_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name W_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_4_out \
    op interface \
    ports { W_4_out { O 32 vector } W_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name W_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_3_out \
    op interface \
    ports { W_3_out { O 32 vector } W_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name W_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_2_out \
    op interface \
    ports { W_2_out { O 32 vector } W_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name W_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_1_out \
    op interface \
    ports { W_1_out { O 32 vector } W_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name W_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_W_out \
    op interface \
    ports { W_out { O 32 vector } W_out_ap_vld { O 1 bit } } \
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


