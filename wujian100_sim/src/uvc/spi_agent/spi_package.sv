`include "spi_interface.sv"

package spi_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  `include "spi_type.svh"
  `include "spi_config.svh"
  `include "spi_sequence_item.svh"
  `include "spi_driver.svh"
  `include "spi_monitor.svh"
  `include "spi_sequencer.svh"
  `include "spi_agent.svh"
  `include "spi_sequence_lib.svh"
endpackage
