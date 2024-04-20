set ::env(DESIGN_NAME) tt_um_CKPope_top
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_CKPope_top.v \
    $::env(DESIGN_DIR)/Compx1.v \
    $::env(DESIGN_DIR)/Compx4.v \
    $::env(DESIGN_DIR)/Mealy_SM.v \
    $::env(DESIGN_DIR)/input_synch.v \
    $::env(DESIGN_DIR)/target_reg.v \
    $::env(DESIGN_DIR)/ud_counter.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
