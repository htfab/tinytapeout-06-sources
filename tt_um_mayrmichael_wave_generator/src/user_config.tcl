set ::env(DESIGN_NAME) tt_um_mayrmichael_wave_generator
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_mayrmichael_wave_generator.v \
    $::env(DESIGN_DIR)/wave_generator.v \
    $::env(DESIGN_DIR)/strobe_generator.v \
    $::env(DESIGN_DIR)/sin_generator.v \
    $::env(DESIGN_DIR)/cordic_convergence.v \
    $::env(DESIGN_DIR)/cordic_iterative.v \
    $::env(DESIGN_DIR)/cordic_slice.v \
    $::env(DESIGN_DIR)/top_triangle_generator.v \
    $::env(DESIGN_DIR)/counter.v \
    $::env(DESIGN_DIR)/triangle_generator.v \
    $::env(DESIGN_DIR)/square_puls_generator.v \
    $::env(DESIGN_DIR)/spi_master_only_tx_single_cs.v \
    $::env(DESIGN_DIR)/spi_master_only_tx.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
