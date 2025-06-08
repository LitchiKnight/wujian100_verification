class i2c_slave_smoke_test extends smoke_base_test;
   `uvm_component_utils(i2c_slave_smoke_test)

  function new(string name = "i2c_slave_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void build_phase(uvm_phase phase);

  extern function void modify_config();
  extern task          run_smoke_test();
endclass

function void i2c_slave_smoke_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  uvm_config_db #(uvm_object_wrapper)::set(this, "env.i2c_slv_agt.sequencer.run_phase", "default_sequence", i2c_slave_sequence_base::type_id::get());
endfunction

function void i2c_slave_smoke_test::modify_config();
  env_cfg.i2c_mst_cfg.speed_mode = I2C_FAST_MODE;
endfunction

task i2c_slave_smoke_test::run_smoke_test();
  i2c_config_base_sequecne i2c_cfg_seq   ;
  i2c_master_sequence_base i2c_mst_wr_seq;
  i2c_master_sequence_base i2c_mst_rd_seq;
  bit[31:0] rdata;

  i2c_cfg_seq = i2c_config_base_sequecne::type_id::create("i2c_cfg_seq");
  i2c_cfg_seq.randomize() with {
    usi_id        == 0    ;
    usi_en        == 1    ;
    fm_en         == 1    ;
    tx_fifo_en    == 1    ;
    rx_fifo_en    == 1    ;
    mode_sel      == 1    ;
    ms_mode       == 0    ;
    i2c_addr      == 'h3C ;
    th_mode       == 1    ;
    rx_fifo_th    == 2    ;
    rx_thold_en   == 1    ;
    rx_thold_mask == 1    ;
  };
  i2c_cfg_seq.start(vseqr);

  i2c_mst_wr_seq = i2c_master_sequence_base::type_id::create("i2c_mst_wr_seq");
  i2c_mst_wr_seq.randomize() with {
    addr_mode == I2C_ADDR_7BIT ;
    addr      == 10'h3C        ;
    len       == 20            ;
    direction == I2C_WRITE     ;
  };
  i2c_mst_wr_seq.start(vseqr.i2c_mst_seqr);

  // #10us;
  repeat(200)
    ahb_mst0_vif.wait_cycle();
  

  write_field(8'h12, "DATA", "DATA_FIFO", "usi0");
  write_field(8'h34, "DATA", "DATA_FIFO", "usi0");
  write_field(8'h56, "DATA", "DATA_FIFO", "usi0");
  write_field(8'h78, "DATA", "DATA_FIFO", "usi0");
  write_field(8'h9A, "DATA", "DATA_FIFO", "usi0");
  write_field(8'hBC, "DATA", "DATA_FIFO", "usi0");
  write_field(8'hDE, "DATA", "DATA_FIFO", "usi0");
  write_field(8'hF0, "DATA", "DATA_FIFO", "usi0");

  i2c_mst_rd_seq = i2c_master_sequence_base::type_id::create("i2c_mst_rd_seq");
  i2c_mst_rd_seq.randomize() with {
    addr_mode == I2C_ADDR_7BIT ;
    addr      == 10'h3C        ;
    len       == 8             ;
    direction == I2C_READ      ;
  };
  i2c_mst_rd_seq.start(vseqr.i2c_mst_seqr);
  foreach(i2c_mst_rd_seq.ret[i])
    `uvm_info(get_type_name(), $sformatf("ret[%0d] = 0x%2h", i, i2c_mst_rd_seq.ret[i]), UVM_LOW)
endtask
