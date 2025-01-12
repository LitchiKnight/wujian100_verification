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
      `uvm_info(get_type_name(), $sformatf("uart send data 0x%0h", req.data), UVM_LOW)
      `uvm_send(req)
    end
  endtask
endclass

class uart_rx_base_sequence extends uvm_sequence;
  `uvm_object_utils(uart_rx_base_sequence)
  `uvm_declare_p_sequencer(uart_sequencer)

  uart_sequence_item rx_item;

  function new(string name = "uart_rx_base_sequence");
    super.new(name);
  endfunction

  virtual task body();
    forever begin
      p_sequencer.mon_rx_fifo.get(rx_item);
      `uvm_info(get_type_name(), $sformatf("uart received data 0x%0h", rx_item.data), UVM_LOW)
      if (p_sequencer.cfg.parity_en) begin
        case (p_sequencer.cfg.parity_type)
          UART_ODD_PAR: begin
            if (($countones(rx_item.data)+rx_item.par_bit)%2 == 0)
              `uvm_warning(get_type_name(), $sformatf("0x%0h odd parity check failed", rx_item.data))
          end
          UART_EVEN_PAR: begin
            if (($countones(rx_item.data)+rx_item.par_bit)%2 != 0)
              `uvm_warning(get_type_name(), $sformatf("0x%0h even parity check failed", rx_item.data))
          end
        endcase
      end
    end
  endtask
endclass
