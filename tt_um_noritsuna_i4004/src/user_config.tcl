set ::env(DESIGN_NAME) tt_um_noritsuna_i4004
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_noritsuna_i4004.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/counter.v \
    $::env(DESIGN_DIR)/instruction_decode.v \
    $::env(DESIGN_DIR)/instruction_pointer.v \
    $::env(DESIGN_DIR)/scratchpad.v \
    $::env(DESIGN_DIR)/timing_io.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
