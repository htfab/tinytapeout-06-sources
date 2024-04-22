set ::env(DESIGN_NAME) tt_um_aerox2_jrb8_computer
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/alu.sv \
    $::env(DESIGN_DIR)/cmp.sv \
    $::env(DESIGN_DIR)/cu.sv \
    $::env(DESIGN_DIR)/jmp.sv \
    $::env(DESIGN_DIR)/spi.sv \
    $::env(DESIGN_DIR)/tt_um_aerox2_jrb8_computer.sv"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
