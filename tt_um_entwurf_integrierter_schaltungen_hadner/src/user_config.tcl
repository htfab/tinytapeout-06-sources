set ::env(DESIGN_NAME) tt_um_entwurf_integrierter_schaltungen_hadner
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_entwurf_integrierter_schaltungen_hadner.v \
    $::env(DESIGN_DIR)/counter.v \
    $::env(DESIGN_DIR)/ones_counter.v \
    $::env(DESIGN_DIR)/pwm_analyzer.v \
    $::env(DESIGN_DIR)/seg7.v \
    $::env(DESIGN_DIR)/uart_transmitter.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
