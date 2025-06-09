class dma_fixed_src_addr_test extends dma_base_test;
  `uvm_component_utils(dma_fixed_src_addr_test)

  i2c_config_base_sequecne i2c_cfg_seq    ;
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
  i2c_cfg_seq = i2c_config_base_sequecne::type_id::create("i2c_cfg_seq");
  i2c_cfg_seq.randomize() with {
    usi_id        == 0    ;
    usi_en        == 1    ;
    fm_en         == 1    ;
    tx_fifo_en    == 1    ;
    rx_fifo_en    == 1    ;
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
    len       == 100           ;
    direction == I2C_WRITE     ;
  };
  i2c_mst_wr_seq.start(vseqr.i2c_mst_seqr);
endtask
