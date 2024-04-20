set ::env(DESIGN_NAME) tt_um_dgkaminski
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/adder.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/control.v \
    $::env(DESIGN_DIR)/fullAdder.v \
    $::env(DESIGN_DIR)/logical.v \
    $::env(DESIGN_DIR)/shifter.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
