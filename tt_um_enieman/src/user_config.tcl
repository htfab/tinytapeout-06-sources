set ::env(DESIGN_NAME) tt_um_enieman
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/byte_to_word.v \
    $::env(DESIGN_DIR)/neg_edge_detector.v \
    $::env(DESIGN_DIR)/pos_edge_detector.v \
    $::env(DESIGN_DIR)/reg_file.v \
    $::env(DESIGN_DIR)/shift_register.v \
    $::env(DESIGN_DIR)/synchronizer.v \
    $::env(DESIGN_DIR)/tt_um_enieman.v \
    $::env(DESIGN_DIR)/uart_ctrl.v \
    $::env(DESIGN_DIR)/uart_rx.v \
    $::env(DESIGN_DIR)/uart_top.v \
    $::env(DESIGN_DIR)/uart_tx.v \
    $::env(DESIGN_DIR)/word_to_byte.v"

# Project area: 4x2 tiles
set ::env(DIE_AREA) "0 0 682.64 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_4x2_pg.def"
