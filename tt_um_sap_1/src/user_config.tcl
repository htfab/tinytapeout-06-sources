set ::env(DESIGN_NAME) tt_um_sap_1
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_sap_1.v \
    $::env(DESIGN_DIR)/sap_1.v \
    $::env(DESIGN_DIR)/clock.v \
    $::env(DESIGN_DIR)/pc.v \
    $::env(DESIGN_DIR)/memory.v \
    $::env(DESIGN_DIR)/reg_a.v \
    $::env(DESIGN_DIR)/reg_b.v \
    $::env(DESIGN_DIR)/adder.v \
    $::env(DESIGN_DIR)/multiplier.v \
    $::env(DESIGN_DIR)/divider.v \
    $::env(DESIGN_DIR)/ir.v \
    $::env(DESIGN_DIR)/controller.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
