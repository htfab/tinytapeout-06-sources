set ::env(DESIGN_NAME) tt_um_alu
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/four_bit_alu.v \
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/latch_2x8.v \
    $::env(DESIGN_DIR)/uart_tx.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
