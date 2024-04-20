# Define clocks for launch and capture
set lc_period $::env(CLOCK_PERIOD)
set input_delay_value [expr ${lc_period} * $::env(IO_PCT)]
set output_delay_value [expr ${lc_period} * $::env(IO_PCT)]
set_max_fanout $::env(MAX_FANOUT_CONSTRAINT) [ current_design ]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]

# Define clocks
create_clock [ get_ports "ui_in\[0\]"]  -name launch_clk -period ${lc_period}
create_clock [ get_ports "ui_in\[1\]"]  -name capture_clk -period ${lc_period}
create_clock [ get_ports "clk" ] -name rp2040_clk -period ${lc_period}

# Remove clock nets from inputs
set idx [ lsearch [ all_inputs ] "clk" ]
set all_inputs_wo_clk [ lreplace [ all_inputs ] $idx $idx ]
set idx [ lsearch $all_inputs_wo_clk "ui_in\[0\]" ]
set all_inputs_wo_clk [ lreplace $all_inputs_wo_clk $idx $idx ]
set idx [ lsearch $all_inputs_wo_clk "ui_in\[1\]" ]
set all_inputs_wo_clk [ lreplace $all_inputs_wo_clk $idx $idx ]

# Set I/O delays
set_input_delay $input_delay_value -clock [ get_clocks rp2040_clk ] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [ get_clocks rp2040_clk ] [ all_outputs ]
set_input_delay $input_delay_value -clock [ get_clocks launch_clk ] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [ get_clocks launch_clk ] [ all_outputs ]
set_input_delay $input_delay_value -clock [ get_clocks capture_clk ] $all_inputs_wo_clk
set_output_delay $output_delay_value -clock [ get_clocks capture_clk ] [ all_outputs ]

# CDC between launch and capture is recorded
set_clock_groups -group { rp2040_clk } -group { capture_clk launch_clk } -asynchronous -allow_paths

# Achievable constraints between launch and capture clocks
set_min_delay -from [get_clocks launch_clk] -to [get_clocks capture_clk]  0.0
# This is fine because PG can be divided to whatever rate we'd like on the FPGA
set_max_delay -from [get_clocks launch_clk] -to [get_clocks capture_clk] [expr "${lc_period}"]

# Ignore direct path from pin to capture clock (we don't care if this is violated)
set_false_path -from $all_inputs_wo_clk -to [get_clocks capture_clk]

# Setup driving cells
set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) $all_inputs_wo_clk

# Set output cap
set_load  $cap_load [all_outputs]

# Clock jitter
puts "\[INFO\]: Setting clock uncertainity to: $::env(SYNTH_CLOCK_UNCERTAINTY)"
set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINTY) [get_clocks rp2040_clk]
set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINTY) [get_clocks launch_clk]
set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINTY) [get_clocks capture_clk]

# Clock slew
puts "\[INFO\]: Setting clock transition to: $::env(SYNTH_CLOCK_TRANSITION)"
set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks rp2040_clk]
set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks launch_clk]
set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks capture_clk]

# Make everything worse by SYNTH_TIMING_DERATE
set_timing_derate -early [expr {1-$::env(SYNTH_TIMING_DERATE)}]
set_timing_derate -late [expr {1+$::env(SYNTH_TIMING_DERATE)}]

