`include "i2c_master_interface.sv"

package i2c_master_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "i2c_master_type.svh"
  `include "i2c_master_config.svh"
  `include "i2c_master_item.svh"
  `include "i2c_master_driver.svh"
  `include "i2c_master_monitor.svh"
  `include "i2c_master_sequencer.svh"
  `include "i2c_master_agent.svh"
endpackage
