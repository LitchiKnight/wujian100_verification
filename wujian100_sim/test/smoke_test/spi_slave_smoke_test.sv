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
  spi_tx_base_sequence spi_tx_seq;

  write_field   (2'h2, "MODE_SEL"     , "MODE_SEL" , "usi2");
  write_field   (1'b0, "MS_MODE"      , "SPI_MODE" , "usi2");
  write_field   (2'h2, "TMOD"         , "SPI_CTRL" , "usi2");
  write_field   (1'b1, "CPOL"         , "SPI_CTRL" , "usi2");
  write_field   (1'b1, "CPHA"         , "SPI_CTRL" , "usi2");
  write_field   (4'hA, "DATA_SIZE"    , "SPI_CTRL" , "usi2");
  write_field   (1'b1, "TH_MODE"      , "INTR_CTRL", "usi2");
  write_field   (3'h2, "RX_FIFO_TH"   , "INTR_CTRL", "usi2");
  write_field   (1'b1, "RX_THOLD_EN"  , "INTR_EN"  , "usi2");
  write_field   (1'b1, "RX_THOLD_MASK", "INTR_MASK", "usi2");
  write_register(4'hB                 , "USI_CTRL" , "usi2");

  #10us;

  spi_tx_seq = spi_tx_base_sequence::type_id::create("spi_tx_seq");
  spi_tx_seq.randomize() with {len == 20;};
  spi_tx_seq.start(vseqr.spi_seqr);

  #10us;
endtask
