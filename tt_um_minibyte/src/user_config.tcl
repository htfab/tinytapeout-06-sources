set ::env(DESIGN_NAME) tt_um_minibyte
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/cpu.v \
    $::env(DESIGN_DIR)/control_unit.v \
    $::env(DESIGN_DIR)/alu.v \
    $::env(DESIGN_DIR)/register.v \
    $::env(DESIGN_DIR)/mux.v \
    $::env(DESIGN_DIR)/drive.v \
    $::env(DESIGN_DIR)/demo_rom.v \
    $::env(DESIGN_DIR)/reg_ram.v"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
