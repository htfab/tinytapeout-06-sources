set ::env(DESIGN_NAME) tt_um_lk_ans_top
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/loader.v \
    $::env(DESIGN_DIR)/encoder.v \
    $::env(DESIGN_DIR)/decoder.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
