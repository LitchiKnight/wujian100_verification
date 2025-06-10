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
  i2c_config_base_sequecne i2c_cfg_seq     ;
  usi_set_data_sequence    set_data_seq    ;
  uvm_event                i2c_monitor_eof ;

  i2c_monitor_eof = events.get("i2c_monitor_eof") ;
  i2c_cfg_seq = i2c_config_base_sequecne::type_id::create("i2c_cfg_seq");
  i2c_cfg_seq.randomize() with {
    usi_id     == 0    ;
    usi_en     == 1    ;
    fm_en      == 1    ;
    tx_fifo_en == 1    ;
    clk_div0   == 'h14 ;
    clk_div1   == 'h15 ;
    ms_mode    == 1    ;
    i2c_addr   == 'h12A;
    addr_mode  == 1    ;
    stop       == 1    ;
  };
  i2c_cfg_seq.start(vseqr);

  set_data_seq = usi_set_data_sequence::type_id::create("set_data_seq");
  set_data_seq.randomize() with {
    usi_id == 0;
  };
  set_data_seq.start(vseqr);
  i2c_monitor_eof.wait_trigger();
endtask
