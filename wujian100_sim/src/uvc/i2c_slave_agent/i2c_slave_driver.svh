class i2c_slave_driver extends uvm_driver #(i2c_slave_item);
  `uvm_component_utils(i2c_slave_driver)

  function new(string name = "i2c_slave_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);
endclass

function void i2c_slave_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction

task i2c_slave_driver::run_phase(uvm_phase phase);

endtask
