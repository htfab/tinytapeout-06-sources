set ::env(DESIGN_NAME) tt_um_LFSR_shivam
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_LFSR.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
