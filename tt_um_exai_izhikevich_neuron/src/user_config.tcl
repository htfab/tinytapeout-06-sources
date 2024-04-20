set ::env(DESIGN_NAME) tt_um_exai_izhikevich_neuron
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/exai_izhikevich_neuron.v"

# Project area: 2x2 tiles
set ::env(DIE_AREA) "0 0 334.88 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_2x2_pg.def"
