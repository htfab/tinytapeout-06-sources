set ::env(DESIGN_NAME) tt_um_ADPCM_COMPRESSOR
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_ADPCM_COMPRESSOR.v \
    $::env(DESIGN_DIR)/CIC_ADPCM_Wrapper.v \
    $::env(DESIGN_DIR)/CICDecimatorVerilogBlock.v \
    $::env(DESIGN_DIR)/ima_adpcm_enc.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
