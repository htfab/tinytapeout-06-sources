set ::env(DESIGN_NAME) tt_um_MNSLab_BLDC
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/bldc_esc.v \
    $::env(DESIGN_DIR)/Divider32bit.v \
    $::env(DESIGN_DIR)/I2C_SLAVE_4.v \
    $::env(DESIGN_DIR)/pid_tuner.v \
    $::env(DESIGN_DIR)/Register_Module.v \
    $::env(DESIGN_DIR)/TOP_MODULE_1.v"

# Project area: 4x2 tiles
set ::env(DIE_AREA) "0 0 682.64 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_4x2_pg.def"
