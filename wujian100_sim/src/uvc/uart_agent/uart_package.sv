`include "uart_interface.sv"

package uart_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "uart_type.svh"
  `include "uart_config.svh"
  `include "uart_sequence_item.svh"
  `include "uart_driver.svh"
  `include "uart_monitor.svh"
  `include "uart_sequencer.svh"
  `include "uart_agent.svh"
  `include "uart_sequence_lib.svh"
endpackage
