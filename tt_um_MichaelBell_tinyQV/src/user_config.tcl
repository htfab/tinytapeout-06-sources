set ::env(DESIGN_NAME) tt_um_MichaelBell_tinyQV
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/tinyqv.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/alu.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/core.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/counter.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/cpu.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/decode.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/mem_ctrl.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/qspi_ctrl.v \
    $::env(DESIGN_DIR)/tinyQV/cpu/register.v \
    $::env(DESIGN_DIR)/tinyQV/peri/uart/uart_tx.v \
    $::env(DESIGN_DIR)/tinyQV/peri/uart/uart_rx.v \
    $::env(DESIGN_DIR)/tinyQV/peri/spi/spi.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
