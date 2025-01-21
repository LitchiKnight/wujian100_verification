class spi_tx_base_sequence extends uvm_sequence #(spi_sequence_item);
  `uvm_object_utils(spi_tx_base_sequence)
  `uvm_declare_p_sequencer(spi_sequencer)

  rand bit[15:0]    data[];
  rand int unsigned len   ;

  function new(string name = "spi_tx_base_sequence");
    super.new(name);
  endfunction

  constraint basic_c {
    data.size() == len;
  };

  virtual task body();
    for (int i = 0; i < len; i++) begin
      `uvm_create(req)
      req.data = data[i] & ~(16'hFFFF << (p_sequencer.cfg.data_size+1));
      `uvm_info(get_type_name(), $sformatf("spi send data 0x%0h", req.data), UVM_LOW)
      `uvm_send(req)
    end
  endtask
endclass

class spi_rx_base_sequence extends uvm_sequence #(spi_sequence_item);
  `uvm_object_utils(spi_rx_base_sequence)
  `uvm_declare_p_sequencer(spi_sequencer)

  spi_sequence_item rx_item;

  function new(string name = "spi_rx_base_sequence");
    super.new(name);
  endfunction

  virtual task body();
    forever begin
      p_sequencer.mon_item_fifo.get(rx_item);
      `uvm_info(get_type_name(), $sformatf("spi received data 0x%0h", rx_item.data), UVM_LOW)
    end
  endtask
endclass
