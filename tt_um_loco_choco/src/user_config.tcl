set ::env(DESIGN_NAME) tt_um_loco_choco
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/dff.v \
    $::env(DESIGN_DIR)/dff14.v \
    $::env(DESIGN_DIR)/mux2.v \
    $::env(DESIGN_DIR)/mux4.v \
    $::env(DESIGN_DIR)/is_zero.v \
    $::env(DESIGN_DIR)/is_zero14.v \
    $::env(DESIGN_DIR)/signal.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/fsm.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
