set ::env(DESIGN_NAME) tt_um_kwilke_cdc_fifo
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/cdc_fifo.sv \
    $::env(DESIGN_DIR)/dpram.sv \
    $::env(DESIGN_DIR)/cdc_fifo_read_state.sv \
    $::env(DESIGN_DIR)/cdc_fifo_write_state.sv \
    $::env(DESIGN_DIR)/binary_to_gray.sv \
    $::env(DESIGN_DIR)/gray_to_binary.sv \
    $::env(DESIGN_DIR)/synchronizer.sv"

# Project area: 1x1 tiles
set ::env(DIE_AREA) "0 0 161.00 111.52"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x1_pg.def"
