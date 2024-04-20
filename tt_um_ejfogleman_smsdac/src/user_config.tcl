set ::env(DESIGN_NAME) tt_um_ejfogleman_smsdac
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_ejfogleman_smsdac.v \
    $::env(DESIGN_DIR)/ef_smsdac_top.v \
    $::env(DESIGN_DIR)/ef_smsdac_sync.v \
    $::env(DESIGN_DIR)/ef_smsdac_reg.v \
    $::env(DESIGN_DIR)/ef_smsdac_mse.v \
    $::env(DESIGN_DIR)/ef_smsdac_mse_sb.v \
    $::env(DESIGN_DIR)/ef_smsdac_lfsr10_7.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
