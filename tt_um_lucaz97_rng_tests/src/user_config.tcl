set ::env(DESIGN_NAME) tt_um_lucaz97_rng_tests
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_lucaz97_rng_tests.v \
    $::env(DESIGN_DIR)/ccs_out_v1.v \
    $::env(DESIGN_DIR)/ccs_in_v1.v \
    $::env(DESIGN_DIR)/mgc_io_sync_v2.v \
    $::env(DESIGN_DIR)/serial_core.v \
    $::env(DESIGN_DIR)/serial.v \
    $::env(DESIGN_DIR)/longest_run_of_ones_core.v \
    $::env(DESIGN_DIR)/longest_run_of_ones.v \
    $::env(DESIGN_DIR)/overlapping_core.v \
    $::env(DESIGN_DIR)/overlapping.v \
    $::env(DESIGN_DIR)/non_overlapping.v"

# Project area: 6x2 tiles
set ::env(DIE_AREA) "0 0 1030.40 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_6x2_pg.def"
