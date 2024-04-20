set ::env(DESIGN_NAME) tt_um_liu3hao_rv32e_min_mcu
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.sv \
    $::env(DESIGN_DIR)/spi_controller.sv \
    $::env(DESIGN_DIR)/mem_bus.sv \
    $::env(DESIGN_DIR)/registers.sv \
    $::env(DESIGN_DIR)/alu.sv \
    $::env(DESIGN_DIR)/uart.sv"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
