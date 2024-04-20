set ::env(DESIGN_NAME) tt_um_seven_segment_fun1
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_seven_segment_fun1.v \
    $::env(DESIGN_DIR)/seg7.v \
    $::env(DESIGN_DIR)/changing.v \
    $::env(DESIGN_DIR)/button.v \
    $::env(DESIGN_DIR)/button_to_pulse.v \
    $::env(DESIGN_DIR)/cells.v \
    $::env(DESIGN_DIR)/debouncer.v \
    $::env(DESIGN_DIR)/synchronizer.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
