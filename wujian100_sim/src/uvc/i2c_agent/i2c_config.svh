class i2c_config extends uvm_object;
  virtual i2c_interface           vif                        ;
          i2c_work_mode_e         work_mode  = I2C_MASTER    ;
          i2c_addr_mode_e         addr_mode  = I2C_ADDR_7BIT ;
          i2c_speed_mode_e        speed_mode = I2C_FAST_MODE ;
          uvm_active_passive_enum is_active  = UVM_ACTIVE    ;
          uvm_event_pool          events                     ;
          bit[9:0]                slave_addr                 ;

  `uvm_object_utils_begin(i2c_config)
    `uvm_field_enum(i2c_work_mode_e, work_mode, UVM_ALL_ON)
    if (work_mode == I2C_MASTER)
      `uvm_field_enum(i2c_speed_mode_e, speed_mode, UVM_ALL_ON)
    else begin
      `uvm_field_enum(i2c_addr_mode_e, addr_mode, UVM_ALL_ON)
      `uvm_field_int(slave_addr, UVM_ALL_ON)
    end
    `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "i2c_config");
    super.new(name);
  endfunction
endclass
