set ::env(DESIGN_NAME) tt_um_MATTHIAS_M_PAL_TOP_WRAPPER
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/PAL.v \
    $::env(DESIGN_DIR)/stride.v \
    $::env(DESIGN_DIR)/crosspoint.v \
    $::env(DESIGN_DIR)/reduce_and.v \
    $::env(DESIGN_DIR)/reduce_or.v \
    $::env(DESIGN_DIR)/sr.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
