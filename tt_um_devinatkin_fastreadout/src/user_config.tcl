set ::env(DESIGN_NAME) tt_um_devinatkin_fastreadout
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_devinatkin_fastreadout.v \
    $::env(DESIGN_DIR)/frequency_counter.v \
    $::env(DESIGN_DIR)/frequency_module.v \
    $::env(DESIGN_DIR)/shift_register.v \
    $::env(DESIGN_DIR)/repeated_add_multiplier.v \
    $::env(DESIGN_DIR)/output_parallel_to_serial.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
