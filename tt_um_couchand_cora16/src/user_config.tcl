set ::env(DESIGN_NAME) tt_um_couchand_cora16
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/cpu.v \
    $::env(DESIGN_DIR)/decoder.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/spi.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
