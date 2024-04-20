set ::env(DESIGN_NAME) tt_um_petersn_micro1
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v"

# Project area: 8x2 tiles
set ::env(DIE_AREA) "0 0 1378.16 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_8x2_pg.def"
