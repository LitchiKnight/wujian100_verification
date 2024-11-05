################## PARAMETERS ##################
UVM_TEST      = wujian100_base_test
UVM_VERBOSITY = UVM_LOW

LOG_PATH      = ./log
COMP_LOG_DIR  = comp_log
SIM_LOG_DIR   = sim_log
UVM_HOME      = ../uvm_lib/uvm-1.2

ifndef UVM_HOME
UVM           = -ntb_opts uvm-1.2 -debug_all
else
UVM           = -debug_pp                                \
                +incdir+$(UVM_HOME)/src                  \
			    $(UVM_HOME)/src/uvm_pkg.sv               \
                $(UVM_HOME)/src/dpi/uvm_dpi.cc           \
			    -CFLAGS                                  \
			    -DVCS
endif

LIBMAP        = libmap_module
DUT_F         = ../flist/dut.f
TB_F          = ../flist/testbench.f
DUMMY_F       = ../flist/dummy.f

COMP_OPTS     = -timescale=1ns/10ps                      \
                -sverilog                                \
			    +v2k                                     \
			    -fsdb                                    \
			    +vcs+lic+wait                            \
			    +plusarg_save                            \
			    +vpi                                     \
			    +acc                                     \
			    -kdb                                     \
			    +notimingcheck                           \
			    +nospecify                               \
			    +no_notifier                             \
			    -full64                                  \
			    -l $(LOG_PATH)/$(COMP_LOG_DIR)/comp.log  \
			    $(UVM)                                   \
			    -f $(DUT_F)                              \
			    -f $(DUMMY_F)                            \
			    -f $(TB_F)                               \
			    -libmap $(LIBMAP)                        \
			    -top lib_cfg                             \
			    -lca


################## COMMANDS ##################
all: comp run

dir:
	@mkdir -p $(LOG_PATH)
	@mkdir -p $(LOG_PATH)/$(SIM_LOG_DIR)
	@mkdir -p $(LOG_PATH)/$(COMP_LOG_DIR)

comp: dir
	vcs $(COMP_OPTS) -debug_access+all+dmptf+pp+f+fn -debug_region+cell+encrypt

run:
	@mkdir -p $(LOG_PATH)/$(SIM_LOG_DIR)/$(UVM_TEST)
	./simv +UVM_TESTNAME=$(UVM_TEST) +ntb_random_seed_automatic -l $(LOG_PATH)/$(SIM_LOG_DIR)/$(UVM_TEST)/sim.log +UVM_VERBOSITY=$(UVM_VERBOSITY) +define+WAVES_FSDB

clean:
	rm -rf simv* csrc ucli.key
	rm -rf vc_hdrs.h .vcsmx_rebuild waves
	rm -rf work/* *.svshell vcs_version
	rm -rf novas* *vpd *dump *fsdb DVEfiles verdiLog vdCovLog cm.log
	rm -rf sharedMem.dat tr_db.log opendatabase.log core.*
	rm -rf $(LOG_PATH)/$(COMP_LOG_DIR)/*
	rm -rf $(LOG_PATH)/$(SIM_LOG_DIR)/*
	rm -rf summary_log
	rm -rf vericomLog work.lib*
