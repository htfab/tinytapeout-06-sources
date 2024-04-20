set ::env(DESIGN_NAME) tt_um_jorgenkraghjakobsen_toi2s
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/amp_if/amp_if.sv.conv.v \
    $::env(DESIGN_DIR)/amp_if/amp_i2c_master.sv.conv.v \
    $::env(DESIGN_DIR)/amp_if/amp_state_control.v \
    $::env(DESIGN_DIR)/amp_if/clk_div.v \
    $::env(DESIGN_DIR)/amp_if/timer_simple.v \
    $::env(DESIGN_DIR)/amp_if/spdif_decoder.v \
    $::env(DESIGN_DIR)/i2c_if/i2c_if_no_bidir.v \
    $::env(DESIGN_DIR)/i2c_if/i2cSlave_define.v \
    $::env(DESIGN_DIR)/i2c_if/serialInterface.v \
    $::env(DESIGN_DIR)/i2c_if/timescale.v \
    $::env(DESIGN_DIR)/pwm/pwm.v \
    $::env(DESIGN_DIR)/rb_toi2s/rb_toi2s.sv.conv.v \
    $::env(DESIGN_DIR)/toi2s_tt_top/toi2s_tt_top.sv.conv.v \
    $::env(DESIGN_DIR)/tt_um_jorgenkraghjakobsen_toi2s.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
