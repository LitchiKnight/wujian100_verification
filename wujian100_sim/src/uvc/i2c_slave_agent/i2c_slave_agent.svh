class i2c_slave_agent extends uvm_agent;
  `uvm_component_utils(i2c_slave_agent)

  i2c_slave_config    cfg       ;
  i2c_slave_driver    driver    ;
  i2c_slave_monitor   monitor   ;
  i2c_slave_sequencer sequencer ;

  function new(string name = "i2c_slave_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void i2c_slave_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction

function void i2c_slave_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction

