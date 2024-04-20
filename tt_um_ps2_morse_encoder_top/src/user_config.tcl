set ::env(DESIGN_NAME) tt_um_ps2_morse_encoder_top
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/ps2_controller.v \
    $::env(DESIGN_DIR)/morse_code_encoder.v \
    $::env(DESIGN_DIR)/tone_generator.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
