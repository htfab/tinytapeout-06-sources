# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
COCOTB_HDL_TIMEUNIT = "1ns"
COCOTB_HDL_TIMEPRECISION = "10ps"
BEHAV?=1
COCOTB_SIM = 1

PWD=$(shell pwd)
ifeq ($(BEHAV), 1)
	VERILOG_SOURCES += $(PWD)/../src/parameters.svh
	VERILOG_SOURCES += $(PWD)/../src/tt_um_gray_sobel.sv
	VERILOG_SOURCES += $(PWD)/../src/top_gray_sobel.sv
	VERILOG_SOURCES += $(PWD)/../src/sobel_control.sv
	VERILOG_SOURCES += $(PWD)/../src/sobel_core.sv
	VERILOG_SOURCES += $(PWD)/../src/gray_scale_core.sv
	VERILOG_SOURCES += $(PWD)/../src/async_nreset_synchronizers.sv
	VERILOG_SOURCES += $(PWD)/../src/spi_core.sv
	VERILOG_SOURCES += $(PWD)/../src/spi_control.sv
	VERILOG_SOURCES += $(PWD)/../src/LFSR.sv
else
	VERILOG_SOURCES += $(PWD)/../src/apr/tt_um_gray_sobel.v
	VERILOG_SOURCES += $(PWD)/../src/pdk_verilog/primitives.v
	VERILOG_SOURCES += $(PWD)/../src/pdk_verilog/sky130_fd_sc_hd.v
endif

#TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
# TOPLEVEL = top_gray_sobel
TOPLEVEL = tt_um_gray_sobel

# MODULE is the basename of the Python test file
# MODULE = gray_sobel_TB
MODULE = tt_um_gray_sobel_TB
COMPILE_ARGS += -PUSE_POWER_PINS=1
# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim

clean_output:
	rm -rf  *.jpg *.txt *~


