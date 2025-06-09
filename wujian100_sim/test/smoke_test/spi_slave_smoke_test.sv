class spi_slave_smoke_test extends smoke_base_test;
  `uvm_component_utils(spi_slave_smoke_test)

   function new(string name = "spi_slave_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void modify_config() ;
  extern task          run_smoke_test();
endclass

function void spi_slave_smoke_test::modify_config();
  env_cfg.spi_cfg.cpol = 1'b1;
  env_cfg.spi_cfg.cpha = 1'b1;
  env_cfg.spi_cfg.data_size = 4'hA;
  env_cfg.spi_cfg.freq = 10000;
endfunction

task spi_slave_smoke_test::run_smoke_test();
  spi_config_base_sequence spi_cfg_seq;
  spi_tx_base_sequence     spi_tx_seq ;
  
  spi_cfg_seq = spi_config_base_sequence::type_id::create("spi_cfg_seq");
  spi_cfg_seq.randomize() with {
    usi_id        == 2    ;
    usi_en        == 1    ;
    fm_en         == 1    ;
    tx_fifo_en    == 1    ;
    rx_fifo_en    == 1    ;
    ms_mode       == 0    ;
    tmod          == 2    ;
    cpol          == 1    ;
    cpha          == 1    ;
    data_size     == 'hA  ;
    th_mode       == 1    ;
    rx_fifo_th    == 2    ;
    rx_thold_en   == 1    ;
    rx_thold_mask == 1    ;
  };
  spi_cfg_seq.start(vseqr);
  
  #10us;

  spi_tx_seq = spi_tx_base_sequence::type_id::create("spi_tx_seq");
  spi_tx_seq.randomize() with {len == 20;};
  spi_tx_seq.start(vseqr.spi_seqr);

  #10us;
endtask
