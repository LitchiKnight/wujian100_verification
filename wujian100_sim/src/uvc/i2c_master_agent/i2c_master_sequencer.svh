class i2c_master_sequencer extends uvm_sequencer #(i2c_master_item);
  `uvm_component_utils(i2c_master_sequencer)

  virtual i2c_master_interface vif ;
          i2c_master_config    cfg ;

  function new(string name = "i2c_master_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void i2c_master_sequencer::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif = cfg.vif;
endfunction
