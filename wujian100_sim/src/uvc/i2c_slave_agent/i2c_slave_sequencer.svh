class i2c_slave_sequencer extends uvm_sequencer #(i2c_slave_item);
  `uvm_component_utils(i2c_slave_sequencer)

  function new(string name = "i2c_slave_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction
endclass
