set ::env(DESIGN_NAME) tt_um_advanced_counter
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_advanced_counter.v \
    $::env(DESIGN_DIR)/modeselect.v \
    $::env(DESIGN_DIR)/synchronizer.v \
    $::env(DESIGN_DIR)/decodeshift.v \
    $::env(DESIGN_DIR)/decoder.v \
    $::env(DESIGN_DIR)/counter.v \
    $::env(DESIGN_DIR)/input_trigger.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
