class uart_smoke_test extends smoke_base_test;
  `uvm_component_utils(uart_smoke_test)

   function new(string name = "uart_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void build_phase(uvm_phase phase);

  extern function void modify_config() ;
  extern task          run_smoke_test();
endclass

function void uart_smoke_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  uvm_config_db #(uvm_object_wrapper)::set(this, "env.uart_agt.sequencer.run_phase", "default_sequence", uart_rx_base_sequence::type_id::get());
endfunction

function void uart_smoke_test::modify_config();
  env_cfg.uart_cfg.buad_rate = UART_115200BPS;
  env_cfg.uart_cfg.data_bit  = UART_DATA_5BIT;
  env_cfg.uart_cfg.stop_bit  = 2.0;
  env_cfg.uart_cfg.parity_en = 1'b1;
endfunction

task uart_smoke_test::run_smoke_test();
  uart_config_base_sequence uart_cfg_seq ;
  uart_tx_base_sequence     uart_tx_seq  ;
  usi_set_data_sequence     set_data_seq ;

  uart_cfg_seq = uart_config_base_sequence::type_id::create("uart_cfg_seq");
  uart_cfg_seq.randomize() with {
    usi_id        == 1    ;
    usi_en        == 1    ;
    fm_en         == 1    ;
    tx_fifo_en    == 1    ;
    rx_fifo_en    == 1    ;
    clk_div0      == 24'h9;
    th_mode       == 1    ;
    rx_fifo_th    == 2    ;
    rx_thold_en   == 1    ;
    rx_thold_mask == 1    ;
  };
  uart_cfg_seq.start(vseqr);

  fork
    begin
      set_data_seq = usi_set_data_sequence::type_id::create("set_data_seq");
      set_data_seq.randomize() with {
        usi_id == 1;
      };
      set_data_seq.start(vseqr);
    end
    begin
      uart_tx_seq = uart_tx_base_sequence::type_id::create("uart_tx_seq");
      uart_tx_seq.randomize() with {
        len == 20;
        foreach(data[i]) {
          data[i][7:5] == 0;
        }
      };
      uart_tx_seq.start(vseqr.uart_seqr);
    end
  join

  #10us;
endtask
