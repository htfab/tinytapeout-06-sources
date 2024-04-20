set ::env(DESIGN_NAME) tt_um_rejunity_fp4_mul_i8
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/config.v \
    $::env(DESIGN_DIR)/fp4_mul_i8.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
