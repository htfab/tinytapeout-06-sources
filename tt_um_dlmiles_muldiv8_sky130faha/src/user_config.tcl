set ::env(DESIGN_NAME) tt_um_dlmiles_muldiv8_sky130faha
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/top_tt_um_dlmiles_muldiv8_sky130faha.v \
    $::env(DESIGN_DIR)/pdk_sky130/sky130_fd_sc_hd__dlrtp.v \
    $::env(DESIGN_DIR)/pdk_sky130/sky130_fd_sc_hd__fa.v \
    $::env(DESIGN_DIR)/pdk_sky130/sky130_fd_sc_hd__ha.v \
    $::env(DESIGN_DIR)/TT06MULDIV8Top.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
