set ::env(DESIGN_NAME) tt_um_chatgpt_rsnn_paolaunisa
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/tt_um_chatgpt_rsnn_paolaunisa.v \
    $::env(DESIGN_DIR)/LeakyIntegrateFireNeuron.v \
    $::env(DESIGN_DIR)/LeakyIntegrateFireNeuron_test.v \
    $::env(DESIGN_DIR)/MemoryCU.v \
    $::env(DESIGN_DIR)/RecurrentSpikingNeuron.v \
    $::env(DESIGN_DIR)/RecurrentSpikingNeuron_test.v \
    $::env(DESIGN_DIR)/register.v \
    $::env(DESIGN_DIR)/RSNN_TopModule.v \
    $::env(DESIGN_DIR)/SpikingNeuronLayer.v \
    $::env(DESIGN_DIR)/SpikingNeuronLayer_test.v \
    $::env(DESIGN_DIR)/ThreeLayerNeuralNetwork.v \
    $::env(DESIGN_DIR)/FIPO_Memory.v"

# Project area: 3x2 tiles
set ::env(DIE_AREA) "0 0 508.76 225.76"
set ::env(FP_DEF_TEMPLATE) "$::env(DESIGN_DIR)/../tt/def/tt_block_3x2_pg.def"
