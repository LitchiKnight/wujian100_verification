class i2c_rx_int_seq extends uvm_sequence;
  `uvm_object_utils(i2c_rx_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "i2c_rx_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task i2c_rx_int_seq::body();
  uvm_event i2c_rx_int_ev;
  bit sta ;
  int num ;

  i2c_rx_int_ev = p_sequencer.env_cfg.events.get("i2c_rx_int_ev");
  p_sequencer.env_cfg.get_field_value(sta, "RX_THOLD", "INTR_STA", "usi0");
  p_sequencer.env_cfg.set_field_value(1'b0, "RX_THOLD_MASK", "INTR_MASK", "usi0");
  p_sequencer.env_cfg.get_field_value(num, "RX_NUM", "FIFO_STA", "usi0");
  for (int i = 0; i < num; i++) begin
	bit[31:0] rdata;
	p_sequencer.env_cfg.get_field_value(rdata, "DATA", "DATA_FIFO", "usi0");
  end
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_CLR", "INTR_CLR", "usi0");
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_MASK", "INTR_MASK", "usi0");
  i2c_rx_int_ev.trigger();
endtask
