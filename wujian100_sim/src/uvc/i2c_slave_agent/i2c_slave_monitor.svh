class i2c_slave_monitor extends uvm_monitor;
  `uvm_component_utils(i2c_slave_monitor)

  function new(string name = "i2c_slave_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction
endclass
