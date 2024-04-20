set ::env(DESIGN_NAME) tt_um_hsc_tdc
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_hsc_tdc.sv \
    $::env(DESIGN_DIR)/tdc/tdc_top.sv \
    $::env(DESIGN_DIR)/tdc/pulse_gen/tdc_pg.sv \
    $::env(DESIGN_DIR)/tdc/delay_line/tdc_delay_line.sv \
    $::env(DESIGN_DIR)/tdc/delay_line/rca.sv \
    $::env(DESIGN_DIR)/tdc/reg/capture_reg.sv \
    $::env(DESIGN_DIR)/tdc/pop_count/pop_count_simple.sv"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
