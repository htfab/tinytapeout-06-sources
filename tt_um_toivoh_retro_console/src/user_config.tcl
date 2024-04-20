set ::env(DESIGN_NAME) tt_um_toivoh_retro_console
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/ppu.v \
    $::env(DESIGN_DIR)/anemonesynth.v \
    $::env(DESIGN_DIR)/sb_io.v"

# Project area: 3x2 tiles
set ::env(DIE_AREA) "0 0 508.76 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_3x2_pg.def"
