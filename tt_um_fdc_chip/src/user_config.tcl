set ::env(DESIGN_NAME) tt_um_fdc_chip
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_FDC_chip.v \
    $::env(DESIGN_DIR)/chip.v \
    $::env(DESIGN_DIR)/FDC_sincronico.v \
    $::env(DESIGN_DIR)/FDC_asincrono.v \
    $::env(DESIGN_DIR)/demux.v \
    $::env(DESIGN_DIR)/ripple_counter.v \
    $::env(DESIGN_DIR)/reg_file.v \
    $::env(DESIGN_DIR)/ff_d_fdc.v \
    $::env(DESIGN_DIR)/counter.v \
    $::env(DESIGN_DIR)/register.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
