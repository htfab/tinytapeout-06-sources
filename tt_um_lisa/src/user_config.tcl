set ::env(DESIGN_NAME) tt_um_lisa
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_lisa.v \
    $::env(DESIGN_DIR)/RAM32.v \
    $::env(DESIGN_DIR)/lisa_core.v \
    $::env(DESIGN_DIR)/lisa_dbg.v \
    $::env(DESIGN_DIR)/lisa_div.v \
    $::env(DESIGN_DIR)/lisa_periph.v \
    $::env(DESIGN_DIR)/lisa_io_mux.v \
    $::env(DESIGN_DIR)/lisa_qqspi.v \
    $::env(DESIGN_DIR)/lisa_qspi_controller.v \
    $::env(DESIGN_DIR)/lisa_rx8n.v \
    $::env(DESIGN_DIR)/lisa_tx8n.v \
    $::env(DESIGN_DIR)/lisa_i2c.v \
    $::env(DESIGN_DIR)/debug_ctrl.v \
    $::env(DESIGN_DIR)/debug_autobaud.v \
    $::env(DESIGN_DIR)/debug_brg.v \
    $::env(DESIGN_DIR)/debug_regs.v \
    $::env(DESIGN_DIR)/data_cache8.v \
    $::env(DESIGN_DIR)/inst_cache.v \
    $::env(DESIGN_DIR)/i2c_master_byte_ctrl.v \
    $::env(DESIGN_DIR)/i2c_master_bit_ctrl.v \
    $::env(DESIGN_DIR)/lisa_uart.v \
    $::env(DESIGN_DIR)/fops.v"

# Project area: 8x2 tiles
set ::env(DIE_AREA) "0 0 1378.16 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_8x2_pg.def"
