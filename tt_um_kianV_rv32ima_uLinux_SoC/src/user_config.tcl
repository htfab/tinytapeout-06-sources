set ::env(DESIGN_NAME) tt_um_kianV_rv32ima_uLinux_SoC
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/spi.v \
    $::env(DESIGN_DIR)/divider.v \
    $::env(DESIGN_DIR)/rx_uart.v \
    $::env(DESIGN_DIR)/defines_soc.vh \
    $::env(DESIGN_DIR)/csr_exception_handler.v \
    $::env(DESIGN_DIR)/riscv_defines.vh \
    $::env(DESIGN_DIR)/rv32_amo_opcodes.vh \
    $::env(DESIGN_DIR)/design_elements.v \
    $::env(DESIGN_DIR)/fifo.v \
    $::env(DESIGN_DIR)/mcause.vh \
    $::env(DESIGN_DIR)/soc.v \
    $::env(DESIGN_DIR)/alu_decoder.v \
    $::env(DESIGN_DIR)/datapath_unit.v \
    $::env(DESIGN_DIR)/extend.v \
    $::env(DESIGN_DIR)/load_alignment.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/csr_utilities.vh \
    $::env(DESIGN_DIR)/qqspi.v \
    $::env(DESIGN_DIR)/load_decoder.v \
    $::env(DESIGN_DIR)/riscv_priv_csr_status.vh \
    $::env(DESIGN_DIR)/multiplier_decoder.v \
    $::env(DESIGN_DIR)/csr_decoder.v \
    $::env(DESIGN_DIR)/clint.v \
    $::env(DESIGN_DIR)/register_file.v \
    $::env(DESIGN_DIR)/misa.vh \
    $::env(DESIGN_DIR)/tx_uart.v \
    $::env(DESIGN_DIR)/tt_um_kianV_rv32ima_uLinux_SoC.v \
    $::env(DESIGN_DIR)/main_fsm.v \
    $::env(DESIGN_DIR)/divider_decoder.v \
    $::env(DESIGN_DIR)/multiplier_extension_decoder.v \
    $::env(DESIGN_DIR)/multiplier.v \
    $::env(DESIGN_DIR)/store_alignment.v \
    $::env(DESIGN_DIR)/store_decoder.v \
    $::env(DESIGN_DIR)/control_unit.v \
    $::env(DESIGN_DIR)/kianv_harris_mc_edition.v"

# Project area: 8x2 tiles
set ::env(DIE_AREA) "0 0 1378.16 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_8x2_pg.def"
