set ::env(DESIGN_NAME) tt_um_rng_3_lucaz97
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/catapult_utils.v \
    $::env(DESIGN_DIR)/approx.v"

# Project area: 6x2 tiles
set ::env(DIE_AREA) "0 0 1030.40 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_6x2_pg.def"
