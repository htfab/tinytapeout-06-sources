set ::env(DESIGN_NAME) tt_um_rejunity_1_58bit
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/config.v \
    $::env(DESIGN_DIR)/1_58bit_mul.v"

# Project area: 3x2 tiles
set ::env(DIE_AREA) "0 0 508.76 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_3x2_pg.def"
