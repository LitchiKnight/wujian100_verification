class i2c_master_smoke_test extends smoke_base_test;
  `uvm_component_utils(i2c_master_smoke_test)

   function new(string name = "i2c_master_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void build_phase(uvm_phase phase);

  extern function void modify_config();
  extern task          run_smoke_test();
endclass

function void i2c_master_smoke_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  uvm_config_db #(uvm_object_wrapper)::set(this, "env.i2c_slv_agt.sequencer.run_phase", "default_sequence", i2c_slave_sequence_base::type_id::get());
endfunction

function void i2c_master_smoke_test::modify_config();
  env_cfg.i2c_slv_cfg.addr_mode  = I2C_ADDR_10BIT;
  env_cfg.i2c_slv_cfg.slave_addr = 10'h12A;
endfunction

task i2c_master_smoke_test::run_smoke_test();
  
  write_field   (2'b1   , "MODE_SEL", "MODE_SEL" , "usi0");
  write_field   (24'h15 , "CLK_DIV0", "CLK_DIV0" , "usi0");
  write_field   (24'h14 , "CLK_DIV1", "CLK_DIV1" , "usi0");
  write_field   (1'b1   , "MS_MODE" , "I2C_MODE" , "usi0");
  write_field   (10'h12A, "I2C_ADDR", "I2C_ADDR" , "usi0");
  write_register(32'h3  ,             "I2CM_CTRL", "usi0");
  write_register(4'hF   ,             "USI_CTRL" , "usi0");
  
  write_field(8'ha5, "DATA", "DATA_FIFO", "usi0");
  write_field(8'ha6, "DATA", "DATA_FIFO", "usi0");
  write_field(8'ha7, "DATA", "DATA_FIFO", "usi0");
  write_field(8'ha8, "DATA", "DATA_FIFO", "usi0");

  #20us;
endtask
