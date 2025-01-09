class uart_tx_base_sequence extends uvm_sequence #(uart_sequence_item);
  `uvm_object_utils(uart_tx_base_sequence)
  `uvm_declare_p_sequencer(uart_sequencer)

  rand bit[7:0]     data[];
  rand int unsigned len   ;

  function new(string name = "uart_tx_base_sequence");
    super.new(name);
  endfunction

  constraint basic_c {
    data.size() == len;
  };

  virtual task body();
    for(int i = 0; i < len; i++) begin
      `uvm_create(req)
      req.data = this.data[i];
      if (p_sequencer.cfg.parity_en) begin
        bit[7:0] valid_data = data[i] & ~(8'hFF << p_sequencer.cfg.data_bit);
        case (p_sequencer.cfg.parity_type)
          UART_ODD_PAR : req.par_bit = $countones(valid_data)%2 ? 1'b0 : 1'b1;
          UART_EVEN_PAR: req.par_bit = $countones(valid_data)%2 ? 1'b1 : 1'b0;
        endcase
      end
      `uvm_send(req)
    end
  endtask
endclass
