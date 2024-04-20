set ::env(DESIGN_NAME) tt_um_jv_sigdel
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/modNCnt.v \
    $::env(DESIGN_DIR)/serTXa.v \
    $::env(DESIGN_DIR)/sinc1.v \
    $::env(DESIGN_DIR)/sinc2.v \
    $::env(DESIGN_DIR)/sinc3.v \
    $::env(DESIGN_DIR)/pwm.v \
    $::env(DESIGN_DIR)/clkdiv.v \
    $::env(DESIGN_DIR)/sigdel.v \
    $::env(DESIGN_DIR)/tt_um_jv_sigdel.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
