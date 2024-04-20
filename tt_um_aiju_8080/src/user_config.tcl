set ::env(DESIGN_NAME) tt_um_aiju_8080
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_aiju_8080.v \
    $::env(DESIGN_DIR)/bus_if.v \
    $::env(DESIGN_DIR)/cpu.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
