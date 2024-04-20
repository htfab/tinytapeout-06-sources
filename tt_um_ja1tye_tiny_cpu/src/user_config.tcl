set ::env(DESIGN_NAME) tt_um_ja1tye_tiny_cpu
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.sv \
    $::env(DESIGN_DIR)/alu.sv \
    $::env(DESIGN_DIR)/common.sv \
    $::env(DESIGN_DIR)/instruction_decoder.sv \
    $::env(DESIGN_DIR)/instruction_register.sv \
    $::env(DESIGN_DIR)/program_counter.sv \
    $::env(DESIGN_DIR)/reg_file.sv \
    $::env(DESIGN_DIR)/sequencer.sv \
    $::env(DESIGN_DIR)/spi_memory_controller.sv \
    $::env(DESIGN_DIR)/status_register.sv \
    $::env(DESIGN_DIR)/tiny_mcu.sv \
    $::env(DESIGN_DIR)/mcu_peripheral.sv"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
