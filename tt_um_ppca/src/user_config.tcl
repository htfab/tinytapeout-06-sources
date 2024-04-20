set ::env(DESIGN_NAME) tt_um_ppca
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/controls.v \
    $::env(DESIGN_DIR)/ff_lib.v \
    $::env(DESIGN_DIR)/pos_aim.v \
    $::env(DESIGN_DIR)/target_gen.v \
    $::env(DESIGN_DIR)/trajectory_calc.v \
    $::env(DESIGN_DIR)/one_pulse.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
