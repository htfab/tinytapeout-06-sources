set ::env(DESIGN_NAME) tt_um_sanojn_ttrpg_dice
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/debouncer.v \
    $::env(DESIGN_DIR)/seg7_digitsonly.v \
    $::env(DESIGN_DIR)/i2c_slave.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
