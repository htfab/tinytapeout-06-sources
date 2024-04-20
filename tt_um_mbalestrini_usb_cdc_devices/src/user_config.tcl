set ::env(DESIGN_NAME) tt_um_mbalestrini_usb_cdc_devices
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_mbalestrini_usb_cdc_devices.v \
    $::env(DESIGN_DIR)/usb_cdc_devices.v \
    $::env(DESIGN_DIR)/prescaler.v \
    $::env(DESIGN_DIR)/device0/arcade_io_device.v \
    $::env(DESIGN_DIR)/device0/input_debouncer.v \
    $::env(DESIGN_DIR)/device1/loopback_device.v \
    $::env(DESIGN_DIR)/usb_cdc/bulk_endp.v \
    $::env(DESIGN_DIR)/usb_cdc/ctrl_endp.v \
    $::env(DESIGN_DIR)/usb_cdc/in_fifo.v \
    $::env(DESIGN_DIR)/usb_cdc/out_fifo.v \
    $::env(DESIGN_DIR)/usb_cdc/phy_rx.v \
    $::env(DESIGN_DIR)/usb_cdc/phy_tx.v \
    $::env(DESIGN_DIR)/usb_cdc/sie.v \
    $::env(DESIGN_DIR)/usb_cdc/usb_cdc.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
