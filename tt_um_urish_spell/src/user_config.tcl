set ::env(DESIGN_NAME) tt_um_urish_spell
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/spell.v \
    $::env(DESIGN_DIR)/execute.v \
    $::env(DESIGN_DIR)/mem.v \
    $::env(DESIGN_DIR)/mem_internal.v \
    $::env(DESIGN_DIR)/mem_io.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
