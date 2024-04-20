set ::env(DESIGN_NAME) tt_um_tiny_shader_mole99
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_tiny_shader_mole99.sv \
    $::env(DESIGN_DIR)/tiny_shader_top.sv \
    $::env(DESIGN_DIR)/shader_execute.sv \
    $::env(DESIGN_DIR)/shader_memory.sv \
    $::env(DESIGN_DIR)/spi_receiver.sv \
    $::env(DESIGN_DIR)/timing.sv \
    $::env(DESIGN_DIR)/synchronizer.sv"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
