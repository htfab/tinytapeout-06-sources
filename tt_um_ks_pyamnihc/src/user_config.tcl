set ::env(DESIGN_NAME) tt_um_ks_pyamnihc
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_ks_pyamnihc.v \
    $::env(DESIGN_DIR)/spi_slave_mem_interface.v \
    $::env(DESIGN_DIR)/register_map.v \
    $::env(DESIGN_DIR)/prbs15.v \
    $::env(DESIGN_DIR)/prbs7.v \
    $::env(DESIGN_DIR)/i2s_tx.v \
    $::env(DESIGN_DIR)/ks_string.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
