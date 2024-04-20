set ::env(DESIGN_NAME) tt_um_scorbetta_goa
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/FIXED_POINT_ADD.v \
    $::env(DESIGN_DIR)/FIXED_POINT_ABS.v \
    $::env(DESIGN_DIR)/FIXED_POINT_MUL.v \
    $::env(DESIGN_DIR)/FIXED_POINT_CHANGE_SIGN.v \
    $::env(DESIGN_DIR)/FIXED_POINT_COMP.v \
    $::env(DESIGN_DIR)/FIXED_POINT_ACT_FUN.v \
    $::env(DESIGN_DIR)/RW_REG.v \
    $::env(DESIGN_DIR)/RO_REG.v \
    $::env(DESIGN_DIR)/DELTA_REG.v \
    $::env(DESIGN_DIR)/REGPOOL.v \
    $::env(DESIGN_DIR)/D_FF_EN.v \
    $::env(DESIGN_DIR)/PISO_BUFFER.v \
    $::env(DESIGN_DIR)/SIPO_BUFFER.v \
    $::env(DESIGN_DIR)/SCI_SLAVE.v \
    $::env(DESIGN_DIR)/COUNTER.v \
    $::env(DESIGN_DIR)/EDGE_DETECTOR.v \
    $::env(DESIGN_DIR)/NEURON_CONTROL_ENGINE.v \
    $::env(DESIGN_DIR)/NEURON.v \
    $::env(DESIGN_DIR)/NEURON_WRAPPER.v \
    $::env(DESIGN_DIR)/tt_um_scorbetta_goa.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
