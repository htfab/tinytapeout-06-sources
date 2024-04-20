set ::env(DESIGN_NAME) tt_um_obriensp_be8
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_top.v \
    $::env(DESIGN_DIR)/cpu/alu.v \
    $::env(DESIGN_DIR)/cpu/bus_mux.v \
    $::env(DESIGN_DIR)/cpu/control.v \
    $::env(DESIGN_DIR)/cpu/core.v \
    $::env(DESIGN_DIR)/cpu/datapath.v \
    $::env(DESIGN_DIR)/cpu/full_adder.v \
    $::env(DESIGN_DIR)/cpu/microcode.v \
    $::env(DESIGN_DIR)/cpu/pc.v \
    $::env(DESIGN_DIR)/cpu/ram.v \
    $::env(DESIGN_DIR)/cpu/RAM8.v \
    $::env(DESIGN_DIR)/cpu/register.v \
    $::env(DESIGN_DIR)/cpu/register4.v \
    $::env(DESIGN_DIR)/debugger/cpu_access.v \
    $::env(DESIGN_DIR)/debugger/debugger_apb.v \
    $::env(DESIGN_DIR)/debugger/debugger_microcode.v \
    $::env(DESIGN_DIR)/debugger/status_reg.v \
    $::env(DESIGN_DIR)/i2c/i2c_slave.v \
    $::env(DESIGN_DIR)/i2c/i2c_to_apb.v \
    $::env(DESIGN_DIR)/i2c/I2C.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
