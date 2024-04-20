set ::env(DESIGN_NAME) tt_um_nicklausthompson_twi_monitor
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/Asynch_RS232.v \
    $::env(DESIGN_DIR)/Edge_Detector.sv \
    $::env(DESIGN_DIR)/I2C_Start_Stop_Detector.sv \
    $::env(DESIGN_DIR)/Metastability_Buffer.sv \
    $::env(DESIGN_DIR)/Shift_In.sv \
    $::env(DESIGN_DIR)/TWI_Frame_Presenter.sv \
    $::env(DESIGN_DIR)/TWI_Monitor.sv"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
