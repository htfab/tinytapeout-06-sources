set ::env(DESIGN_NAME) tt_um_SJ
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_SJ.sv \
    $::env(DESIGN_DIR)/top.sv \
    $::env(DESIGN_DIR)/topLevelControl.sv \
    $::env(DESIGN_DIR)/PE.sv"

# Project area: 3x2 tiles
set ::env(DIE_AREA) "0 0 508.76 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_3x2_pg.def"
