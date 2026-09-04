## Clock constraint — 100 MHz from Zynq PS FCLK_CLK0
create_clock -period 10.000 -name clk [get_ports clk]

## Input delay (relative to clk)
set_input_delay -clock clk -max 3.0 [get_ports -filter {DIRECTION == IN && NAME != clk && NAME != rst_n}]
set_input_delay -clock clk -min 1.0 [get_ports -filter {DIRECTION == IN && NAME != clk && NAME != rst_n}]

## Output delay
set_output_delay -clock clk -max 3.0 [get_ports -filter {DIRECTION == OUT}]
set_output_delay -clock clk -min 1.0 [get_ports -filter {DIRECTION == OUT}]

## Async reset — false path (rst_n is asynchronous)
set_false_path -from [get_ports rst_n]

## If using a second PL clock for the accelerator (e.g., 150 MHz):
# create_clock -period 6.667 -name accel_clk [get_ports accel_clk]
# set_clock_groups -asynchronous -group [get_clocks clk] -group [get_clocks accel_clk]
