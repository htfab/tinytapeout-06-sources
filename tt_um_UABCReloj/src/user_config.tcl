set ::env(DESIGN_NAME) tt_um_UABCReloj
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_UABCReloj.v \
    $::env(DESIGN_DIR)/topReloj23B3.v \
    $::env(DESIGN_DIR)/c_ame09.v \
    $::env(DESIGN_DIR)/c_america09.v \
    $::env(DESIGN_DIR)/c_div2.v \
    $::env(DESIGN_DIR)/c_mel04.v \
    $::env(DESIGN_DIR)/c_mel05.v \
    $::env(DESIGN_DIR)/c_melissa05.v \
    $::env(DESIGN_DIR)/c_uriel023c.v \
    $::env(DESIGN_DIR)/count2b.v \
    $::env(DESIGN_DIR)/decod.v \
    $::env(DESIGN_DIR)/demux.v \
    $::env(DESIGN_DIR)/divisorf_b.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
