class i2c_master_config extends uvm_object;
  virtual i2c_master_interface    vif;
          uvm_active_passive_enum is_active = UVM_ACTIVE;
          int unsigned            clk_period = 10000;

  `uvm_object_utils_begin(i2c_master_config)
    `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "i2c_master_config");
    super.new(name);
  endfunction
endclass
