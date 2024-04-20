set ::env(DESIGN_NAME) tt_um_ALU_DECODERS
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_ALU_DECODERS.v \
    $::env(DESIGN_DIR)/Proyecto_Final.v \
    $::env(DESIGN_DIR)/ALU3B.v \
    $::env(DESIGN_DIR)/Decod_Octal.v \
    $::env(DESIGN_DIR)/Decod_Gray.v \
    $::env(DESIGN_DIR)/Mux2_1_14b.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
