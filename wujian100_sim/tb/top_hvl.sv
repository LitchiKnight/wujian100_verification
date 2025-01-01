import uvm_pkg::*;
`include "uvm_macros.svh"
import sim_pkg::*;

program top_hvl;
  initial begin
    uvm_config_db #(virtual yuu_ahb_master_interface)::set(null, "uvm_test_top", "ahb_mst0_if", tb_top.ahb_mst0_if);
	uvm_config_db #(virtual yuu_ahb_master_interface)::set(null, "uvm_test_top", "ahb_mst1_if", tb_top.ahb_mst1_if);
	uvm_config_db #(virtual yuu_ahb_master_interface)::set(null, "uvm_test_top", "ahb_mst2_if", tb_top.ahb_mst2_if);
    uvm_config_db #(virtual yuu_int_if)::set(null, "uvm_test_top", "int_if", tb_top.int_if);
    uvm_config_db #(virtual i2c_interface)::set(null, "uvm_test_top", "i2c_mst_if", tb_top.i2c_mst_if);
    uvm_config_db #(virtual i2c_interface)::set(null, "uvm_test_top", "i2c_slv_if", tb_top.i2c_slv_if);
  end

  initial begin
    $fsdbDumpfile("wave.fsdb");
    $fsdbDumpvars(0, "+all", "+functions");
    $fsdbDumpMDA();
  end

  initial begin
    run_test();
  end
endprogram
