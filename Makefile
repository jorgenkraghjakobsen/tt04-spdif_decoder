SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/src/tb.v
VERILOG_SOURCES += $(PWD)/src/tt_um_jkj_spdif_decoder.v
VERILOG_SOURCES += $(PWD)/src/spdif_decoder.v

TOPLEVEL = tb

MODULE = test

include $(shell cocotb-config --makefiles)/Makefile.sim