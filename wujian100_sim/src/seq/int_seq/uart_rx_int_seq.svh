class uart_rx_int_seq extends uvm_sequence;
  `uvm_object_utils(uart_rx_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "uart_rx_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task uart_rx_int_seq::body();
  uvm_event uart_rx_int_ev;
  bit sta ;
  int num ;

  uart_rx_int_ev = p_sequencer.env_cfg.events.get("uart_rx_int_ev");
  p_sequencer.env_cfg.get_field_value(sta, "RX_THOLD", "INTR_STA", "usi1");
  p_sequencer.env_cfg.set_field_value(1'b0, "RX_THOLD_MASK", "INTR_UNMASK", "usi1");
  p_sequencer.env_cfg.get_field_value(num, "RX_NUM", "FIFO_STA", "usi1");
  for (int i = 0; i < num; i++) begin
	bit[31:0] rdata;
	p_sequencer.env_cfg.get_field_value(rdata, "DATA", "DATA_FIFO", "usi1");
  end
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_CLR", "INTR_CLR", "usi1");
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_MASK", "INTR_UNMASK", "usi1");
  uart_rx_int_ev.trigger();
endtask
