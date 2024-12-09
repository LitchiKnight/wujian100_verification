class i2c_master_monitor extends uvm_monitor;
  `uvm_component_utils(i2c_master_monitor)

  virtual i2c_master_interface vif ;
          i2c_master_config    cfg ;

  function new(string name = "i2c_master_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);
endclass

function void i2c_master_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif = cfg.vif;
endfunction

task i2c_master_monitor::run_phase(uvm_phase phase);

endtask
