set ::env(DESIGN_NAME) tt_um_fstolzcode
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/fpu.v \
    $::env(DESIGN_DIR)/uart_rx.v \
    $::env(DESIGN_DIR)/uart_tx.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
