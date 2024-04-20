set ::env(DESIGN_NAME) tt_um_I2C_to_SPI
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_I2C_to_SPI.v \
    $::env(DESIGN_DIR)/tt_um_I2C_SPI_Wrapper.v \
    $::env(DESIGN_DIR)/simple_spi_top.v \
    $::env(DESIGN_DIR)/i2c_to_wb_top.v \
    $::env(DESIGN_DIR)/i2c_to_wb_if.v \
    $::env(DESIGN_DIR)/i2c_to_wb_fsm.v \
    $::env(DESIGN_DIR)/i2c_to_wb_config.v \
    $::env(DESIGN_DIR)/glitch_filter.v \
    $::env(DESIGN_DIR)/fifo4.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
