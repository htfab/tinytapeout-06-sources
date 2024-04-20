TOPLEVEL_LANG ?= verilog
SRC_DIR       ?= $(PWD)/../src/
CORNER        ?= nom
OC            ?= Slowest
SDF_TIMING    ?= typ
FIXED_PDK_DIR ?= $(HOME)/pdk_sim_files/verilog/cvc-pdk
SDF_RENAMED   ?= "./sdf_renamed_out/multicorner/$(CORNER)/tt_um_hsc_tdc.$(OC).sdf"
GLN_RENAMED   ?= ./gln_renamed_out/tt_um_hsc_tdc.v
SIM           ?= icarus
GATES         ?= no

# Only used for VCS simulation
SKYWATER_STD_CELL_FIXED =  $(PWD)/skywater_stdcell_fixed

PROJECT_SOURCES = \
    tt_um_hsc_tdc.sv \
    tdc/tdc_top.sv \
    tdc/delay_line/tdc_delay_line.sv \
    tdc/delay_line/rca.sv \
    tdc/pop_count/pop_count_simple.sv \
    tdc/pulse_gen/tdc_pg.sv \
    tdc/reg/capture_reg.sv

ifeq ($(SIM), icarus)

    ifneq ($(GATES),yes)

        # RTL simulation:
        SIM_BUILD		  = sim_build/rtl
        COMPILE_ARGS 	 += -I$(SRC_DIR)
        COMPILE_ARGS     += -DFUNCTIONAL
        COMPILE_ARGS     += -DSIM
        COMPILE_ARGS     += -DWAVES
        COMPILE_ARGS     += -DUNIT_DELAY=\#1
        VERILOG_SOURCES  += $(addprefix $(SRC_DIR),$(PROJECT_SOURCES))
        # We need to include these for the std cell macro models
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/primitives_hd.v
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/sky130_ef_sc_hd__decap_12.v
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/sky130_fd_sc_hd.v

    else

        # Gate level simulation:
        SIM_BUILD		  = sim_build/gl
        COMPILE_ARGS     += -DGL_TEST
        COMPILE_ARGS     += -DFUNCTIONAL
        COMPILE_ARGS     += -DSDF_ANNOTATE
        COMPILE_ARGS     += -DSDF=$(SDF_RENAMED)
        COMPILE_ARGS     += -DUSE_POWER_PINS
        COMPILE_ARGS     += -DSIM
        COMPILE_ARGS     += -DWAVES
        COMPILE_ARGS     += -DUNIT_DELAY=\#1
        COMPILE_ARGS     += -gspecify
        COMPILE_ARGS     += -ginterconnect
        COMPILE_ARGS     += -g2012
        COMPILE_ARGS     += -T$(SDF_TIMING)
        VERILOG_SOURCES  += $(GLN_RENAMED)
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/primitives_hd.v
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/sky130_ef_sc_hd__decap_12.v
        VERILOG_SOURCES  += $(FIXED_PDK_DIR)/sky130_fd_sc_hd.v

    endif

endif

ifeq ($(SIM), vcs)

    ifneq ($(GATES),yes)

        SIM_BUILD		   = sim_build/gl
        COMPILE_ARGS      += +lint=all
        COMPILE_ARGS      += -LDFLAGS "-Wl,--no-as-needed"
        COMPILE_ARGS      += -debug_acess+all -negdelay +neg_tchk
        COMPILE_ARGS      += +verilog1995ext+.v -acc+2
        COMPILE_ARGS      += -nc -full64 -sverilog +v2k -ntb -debug_access+all -tb_timescale=1ns/1ps +vcs+vcdpluson
        COMPILE_ARGS      += +sdfverbose +allmtm +csdf+precompile +csdf+precomp+dir+sdf_vcs
        SIM_ARGS          += -vcd waves.vcd
        # this gets copied in by the GDS action workflow
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/primitives_hd.v
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/sky130_ef_sc_hd__decap_12.v
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/sky130_fd_sc_hd.v
        VERILOG_SOURCES   += $(addprefix $(SRC_DIR)/,$(PROJECT_SOURCES))

    else

        SIM_BUILD		   = sim_build/gl
        COMPILE_ARGS      += +lint=all
        COMPILE_ARGS      += -LDFLAGS "-Wl,--no-as-needed"
        COMPILE_ARGS      += +define+UNIT_DELAY=\#1
        COMPILE_ARGS      += +define+USE_POWER_PINS
        # COMPILE_ARGS      += +verilog1995ext+.v +v2k
        COMPILE_ARGS      += -debug_access+all
        COMPILE_ARGS      += -full64 
        COMPILE_ARGS      += -sverilog 
        COMPILE_ARGS      += -tb_timescale=1ns/1ps 
        COMPILE_ARGS      += +vcs+vcdpluson
        COMPILE_ARGS      += +sdfverbose +csdf+precompile +csdf+precomp+dir+sdf_vcs
        COMPILE_ARGS      += -sdf min:tb.tdc_inst:$(SDF_FILE) +neg_tchk
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/primitives_hd.v
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/sky130_ef_sc_hd__decap_12.v
        COMPILE_ARGS      += -v $(FIXED_PDK_DIR)/sky130_fd_sc_hd.v
        SIM_ARGS          += -vcd waves.vcd -ucli -i $(PWD)/cdc_registers.tchk
        VERILOG_SOURCES   += $(GLN)

    endif

endif

# Include the testbench sources:
MODULE = tdc_test
VERILOG_SOURCES += $(PWD)/tb.v
TOPLEVEL = tb

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
