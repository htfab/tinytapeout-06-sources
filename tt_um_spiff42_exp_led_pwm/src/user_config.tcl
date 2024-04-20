set ::env(DESIGN_NAME) tt_um_spiff42_exp_led_pwm
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_spiff42_exp_led_pwm.v \
    $::env(DESIGN_DIR)/ramp_gen.v \
    $::env(DESIGN_DIR)/pwm_chan.v \
    $::env(DESIGN_DIR)/i2c_slave.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
