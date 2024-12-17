`include "i2c_slave_interface.sv"

package i2c_slave_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "i2c_slave_config.svh"
  `include "i2c_slave_item.svh"
  `include "i2c_slave_driver.svh"
  `include "i2c_slave_monitor.svh"
  `include "i2c_slave_sequencer.svh"
  `include "i2c_slave_agent.svh"
endpackage
