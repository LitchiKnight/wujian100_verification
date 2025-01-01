`include "i2c_interface.sv"

package i2c_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "i2c_type.svh"
  `include "i2c_config.svh"
  `include "i2c_sequence_item.svh"
  `include "i2c_driver.svh"
  `include "i2c_monitor.svh"
  `include "i2c_sequencer.svh"
  `include "i2c_agent.svh"
  `include "i2c_sequence_lib.svh"
endpackage
