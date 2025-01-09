class uart_rx_smoke_test extends smoke_base_test;
  `uvm_component_utils(uart_rx_smoke_test)

   function new(string name = "uart_rx_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void modify_config() ;
  extern task          run_smoke_test();
endclass

function void uart_rx_smoke_test::modify_config();
  env_cfg.uart_cfg.buad_rate = UART_115200BPS;
  env_cfg.uart_cfg.data_bit  = UART_DATA_5BIT;
  env_cfg.uart_cfg.stop_bit  = 2.0;
  env_cfg.uart_cfg.parity_en = 1'b1;

endfunction

task uart_rx_smoke_test::run_smoke_test();
  uart_tx_base_sequence uart_tx_seq;

  write_field   (24'h9 , "CLK_DIV0"     , "CLK_DIV0" , "usi1"); // 81: 9600bps, 40: 19200bps, 9: 115200bps
  write_register(32'h18                 , "UART_CTRL", "usi1");
  write_field   (1'b1  , "TH_MODE"      , "INTR_CTRL", "usi1");
  write_field   (3'h2  , "RX_FIFO_TH"   , "INTR_CTRL", "usi1");
  write_field   (1'b1  , "RX_THOLD_EN"  , "INTR_EN"  , "usi1");
  write_field   (1'b1  , "RX_THOLD_MASK", "INTR_MASK", "usi1");
  write_register(4'hB                   , "USI_CTRL" , "usi1");

  uart_tx_seq = uart_tx_base_sequence::type_id::create("uart_tx_seq");
  uart_tx_seq.randomize() with {
    len == 20;
    foreach(data[i]) {
      data[i][7:5] == 0;
    }
  };
  uart_tx_seq.start(vseqr.uart_seqr);

  #10us;
endtask
