set ::env(DESIGN_NAME) tt_um_lucaz97_monobit
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/excursions.v"

# Project area: 4x2 tiles
set ::env(DIE_AREA) "0 0 682.64 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_4x2_pg.def"
