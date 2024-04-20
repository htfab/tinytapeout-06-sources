set ::env(DESIGN_NAME) tt_um_simplez_rcoeurjoly
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/simplez-top.v \
    $::env(DESIGN_DIR)/baudgen_rx.v \
    $::env(DESIGN_DIR)/baudgen_tx.v \
    $::env(DESIGN_DIR)/baudgen.vh \
    $::env(DESIGN_DIR)/dividerp1.v \
    $::env(DESIGN_DIR)/divider.vh \
    $::env(DESIGN_DIR)/genram.v \
    $::env(DESIGN_DIR)/simplez.v \
    $::env(DESIGN_DIR)/uart_rx.v \
    $::env(DESIGN_DIR)/uart_tx.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
