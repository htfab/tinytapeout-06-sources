set ::env(DESIGN_NAME) tt_um_koconnor_kstep
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/spiwb.v \
    $::env(DESIGN_DIR)/pincfg.v \
    $::env(DESIGN_DIR)/moveq.v \
    $::env(DESIGN_DIR)/schedstep.v \
    $::env(DESIGN_DIR)/clockcounter.v \
    $::env(DESIGN_DIR)/busdispatch.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
