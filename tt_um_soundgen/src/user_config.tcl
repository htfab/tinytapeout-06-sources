set ::env(DESIGN_NAME) tt_um_soundgen
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_soundgen.v \
    $::env(DESIGN_DIR)/dac.v \
    $::env(DESIGN_DIR)/prelude.v \
    $::env(DESIGN_DIR)/sine.v \
    $::env(DESIGN_DIR)/clkgen.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
