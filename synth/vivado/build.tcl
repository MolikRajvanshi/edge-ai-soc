#=============================================================================
# Script: build.tcl
# Description: Runs the full Vivado build flow:
#              Synthesis → Implementation → Bitstream Generation
#
# Usage:
#   1. First run create_project.tcl to create the project
#   2. Then run this script:
#      vivado -mode batch -source build.tcl
#      OR in Vivado GUI: Tools > Run Tcl Script > build.tcl
#
# Author: Molik Rajvanshi
#=============================================================================

set PROJECT_DIR  [file normalize [file dirname [info script]]]
set PROJECT_NAME "edge_ai_soc"

puts "============================================="
puts "  Edge AI SoC — Full Build Flow"
puts "============================================="

# ===========================================================================
# STEP 1: Open the project
# ===========================================================================
open_project ${PROJECT_DIR}/${PROJECT_NAME}/${PROJECT_NAME}.xpr

# ===========================================================================
# STEP 2: Run Synthesis
# ===========================================================================
puts "\n--- Running Synthesis ---"
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# Check synthesis status
if {[get_property STATUS [get_runs synth_1]] != "synth_design Complete!"} {
    puts "ERROR: Synthesis failed!"
    exit 1
}
puts "Synthesis completed successfully."

# Open synthesized design and generate reports
open_run synth_1
report_utilization -file ${PROJECT_DIR}/reports/post_synth_utilization.rpt
report_timing_summary -file ${PROJECT_DIR}/reports/post_synth_timing.rpt
puts "Synthesis reports saved to: ${PROJECT_DIR}/reports/"

# ===========================================================================
# STEP 3: Run Implementation
# ===========================================================================
puts "\n--- Running Implementation ---"
launch_runs impl_1 -jobs 4
wait_on_run impl_1

# Check implementation status
if {[get_property STATUS [get_runs impl_1]] != "route_design Complete!"} {
    puts "ERROR: Implementation failed!"
    exit 1
}
puts "Implementation completed successfully."

# Open implemented design and generate reports
open_run impl_1
report_utilization -file ${PROJECT_DIR}/reports/post_impl_utilization.rpt
report_timing_summary -file ${PROJECT_DIR}/reports/post_impl_timing.rpt
report_power -file ${PROJECT_DIR}/reports/post_impl_power.rpt
report_drc -file ${PROJECT_DIR}/reports/post_impl_drc.rpt
puts "Implementation reports saved to: ${PROJECT_DIR}/reports/"

# ===========================================================================
# STEP 4: Generate Bitstream
# ===========================================================================
puts "\n--- Generating Bitstream ---"
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

puts "Bitstream generated successfully."

# ===========================================================================
# STEP 5: Export Hardware (for PYNQ overlay)
# ===========================================================================
puts "\n--- Exporting Hardware ---"
file mkdir ${PROJECT_DIR}/../../sw/overlay

# Export .bit and .hwh files for PYNQ
file copy -force \
    ${PROJECT_DIR}/${PROJECT_NAME}/${PROJECT_NAME}.runs/impl_1/soc_top.bit \
    ${PROJECT_DIR}/../../sw/overlay/edge_ai_soc.bit

puts "Hardware exported to: sw/overlay/"

# ===========================================================================
# DONE
# ===========================================================================
puts "\n============================================="
puts "  Build completed successfully!"
puts "  Bitstream: sw/overlay/edge_ai_soc.bit"
puts "  Reports:   synth/vivado/reports/"
puts "============================================="
