set ::env(DESIGN_NAME) tt_um_gak25_8bit_cpu_ext
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt06-gak25-8bit-cpu-ext.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
