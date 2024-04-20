set ::env(DESIGN_NAME) tt_um_histefan_top
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/project.v \
    $::env(DESIGN_DIR)/vga_sync.v \
    $::env(DESIGN_DIR)/btn_debounce.v \
    $::env(DESIGN_DIR)/synchronizer.v \
    $::env(DESIGN_DIR)/draw_apple.v \
    $::env(DESIGN_DIR)/draw_border.v \
    $::env(DESIGN_DIR)/draw_snake.v \
    $::env(DESIGN_DIR)/collision.v \
    $::env(DESIGN_DIR)/rgb_select.v \
    $::env(DESIGN_DIR)/snake_control.v \
    $::env(DESIGN_DIR)/random_position.v \
    $::env(DESIGN_DIR)/snake_update_trigger.v \
    $::env(DESIGN_DIR)/snake.v"

# Project area: 1x2 tiles
set ::env(DIE_AREA) "0 0 161.00 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_1x2_pg.def"
