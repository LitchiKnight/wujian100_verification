class spi_master_smoke_test extends smoke_base_test;
  `uvm_component_utils(spi_master_smoke_test)

   function new(string name = "spi_master_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void build_phase(uvm_phase phase);

  extern function void modify_config() ;
  extern task          run_smoke_test();
endclass

function void spi_master_smoke_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  uvm_config_db #(uvm_object_wrapper)::set(this, "env.spi_agt.sequencer.run_phase", "default_sequence", spi_rx_base_sequence::type_id::get());
endfunction

function void spi_master_smoke_test::modify_config();

endfunction

task spi_master_smoke_test::run_smoke_test();
  write_field   (2'h2 , "MODE_SEL"     , "MODE_SEL" , "usi2");
  write_field   (24'h2, "CLK_DIV0"     , "CLK_DIV0" , "usi2");
  write_field   (1'b1 , "MS_MODE"      , "SPI_MODE" , "usi2");
  write_field   (2'h1 , "TMOD"         , "SPI_CTRL" , "usi2");
  write_field   (1'b1 , "NSS_TOGGLE"   , "SPI_CTRL" , "usi2");
  write_field   (1'b1 , "NSS_CTRL"     , "SPI_CTRL" , "usi2");
  write_register(4'h7                  , "USI_CTRL" , "usi2");

  write_field(8'ha5, "DATA", "DATA_FIFO", "usi2");
  write_field(8'ha6, "DATA", "DATA_FIFO", "usi2");
  write_field(8'ha7, "DATA", "DATA_FIFO", "usi2");
  write_field(8'ha8, "DATA", "DATA_FIFO", "usi2");

  #10us;
endtask
