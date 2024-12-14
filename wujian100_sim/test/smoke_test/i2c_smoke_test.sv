class i2c_smoke_test extends smoke_base_test;
   `uvm_component_utils(i2c_smoke_test)

  function new(string name = "i2c_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task i2c_smoke_test::run_smoke_test();
  i2c_master_write_sequence i2c_mst_wr_seq;
  bit[31:0] rdata;

  write_field   (2'b1  , "MODE_SEL"     , "MODE_SEL" , "usi0");
  write_field   (1'b0  , "MS_MODE"      , "I2C_MODE" , "usi0");
  write_field   (10'h3C, "I2C_ADDR"     , "I2C_ADDR" , "usi0");
  write_field   (1'b1  , "TH_MODE"      , "INTR_CTRL", "usi0");
  write_field   (3'h1  , "RX_FIFO_TH"   , "INTR_CTRL", "usi0");
  write_field   (1'b1  , "RX_THOLD_EN"  , "INTR_EN"  , "usi0");
  write_field   (1'b1  , "RX_THOLD_MASK", "INTR_MASK", "usi0");
  write_register(4'hB  ,                   "USI_CTRL", "usi0");

  i2c_mst_wr_seq = i2c_master_write_sequence::type_id::create("i2c_mst_wr_seq");
  i2c_mst_wr_seq.start(vseqr.i2c_mst_seqr);

  #10us;
endtask