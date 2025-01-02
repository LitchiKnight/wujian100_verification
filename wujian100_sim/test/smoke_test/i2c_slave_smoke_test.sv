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
  i2c_master_sequence_base i2c_mst_wr_seq;
  i2c_master_sequence_base i2c_mst_rd_seq;
  bit[31:0] rdata;

  write_field   (2'b1  , "MODE_SEL"     , "MODE_SEL" , "usi0");
  write_field   (1'b0  , "MS_MODE"      , "I2C_MODE" , "usi0");
  write_field   (10'h13C, "I2C_ADDR"     , "I2C_ADDR" , "usi0");
  write_field   (1'b1  , "TH_MODE"      , "INTR_CTRL", "usi0");
  write_field   (3'h2  , "RX_FIFO_TH"   , "INTR_CTRL", "usi0");
  write_field   (1'b1  , "RX_THOLD_EN"  , "INTR_EN"  , "usi0");
  write_field   (1'b1  , "RX_THOLD_MASK", "INTR_MASK", "usi0");
  write_register(4'hF  ,                  "USI_CTRL" , "usi0");

  i2c_mst_wr_seq = i2c_master_sequence_base::type_id::create("i2c_mst_wr_seq");
  i2c_mst_wr_seq.randomize() with {
    addr_mode == I2C_ADDR_10BIT ;
    addr      == 10'h13C   ;
    len       == 20        ;
    direction == I2C_WRITE ;
  };
  i2c_mst_wr_seq.start(vseqr.i2c_mst_seqr);

  #10us;

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
    addr_mode == I2C_ADDR_10BIT ;
    addr      == 10'h13C  ;
    len       == 8        ;
    direction == I2C_READ ;
  };
  i2c_mst_rd_seq.start(vseqr.i2c_mst_seqr);
  foreach(i2c_mst_rd_seq.ret[i])
    `uvm_info(get_type_name(), $sformatf("ret[%0d] = 0x%2h", i, i2c_mst_rd_seq.ret[i]), UVM_LOW)
endtask
