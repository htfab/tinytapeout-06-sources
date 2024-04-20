set ::env(DESIGN_NAME) tt_um_csit_luks
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_csit_luks.v \
    $::env(DESIGN_DIR)/rotational_encoder/rotational_encoder.v \
    $::env(DESIGN_DIR)/seven_seg/seven_seg.v \
    $::env(DESIGN_DIR)/fsm/fsm.v \
    $::env(DESIGN_DIR)/spi_flash/spi_flash.v \
    $::env(DESIGN_DIR)/spi_sensor/spi_sensor.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
