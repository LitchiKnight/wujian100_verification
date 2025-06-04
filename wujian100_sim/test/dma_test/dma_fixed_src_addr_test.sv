class dma_fixed_src_addr_test extends dma_base_test;
  `uvm_component_utils(dma_fixed_src_addr_test)

  i2c_master_sequence_base i2c_mst_wr_seq ;

  function new(string name = "dma_fixed_src_addr_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual task run_dma_test();
endclass

function void dma_fixed_src_addr_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  set_type_override_by_type(i2c_rx_int_seq::get_type(), i2c_rx_int_with_dma_seq::get_type());
endfunction

task dma_fixed_src_addr_test::run_dma_test();
  write_field   (2'b1   , "MODE_SEL"     , "MODE_SEL" , "usi0");
  write_field   (1'b0   , "MS_MODE"      , "I2C_MODE" , "usi0");
  write_field   (10'h3C , "I2C_ADDR"     , "I2C_ADDR" , "usi0");
  write_field   (1'b1   , "TH_MODE"      , "INTR_CTRL", "usi0");
  write_field   (3'h2   , "RX_FIFO_TH"   , "INTR_CTRL", "usi0");
  write_field   (1'b1   , "RX_THOLD_EN"  , "INTR_EN"  , "usi0");
  write_field   (1'b1   , "RX_THOLD_MASK", "INTR_MASK", "usi0");
  write_register(4'hF   ,                  "USI_CTRL" , "usi0");

  i2c_mst_wr_seq = i2c_master_sequence_base::type_id::create("i2c_mst_wr_seq");
  i2c_mst_wr_seq.randomize() with {
    addr_mode == I2C_ADDR_7BIT ;
    addr      == 10'h3C        ;
    len       == 100           ;
    direction == I2C_WRITE     ;
  };
  i2c_mst_wr_seq.start(vseqr.i2c_mst_seqr);
endtask
