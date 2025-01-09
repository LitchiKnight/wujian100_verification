class uart_sequence_item extends uvm_sequence_item;
  rand bit[7:0] data    ;
  rand bit      par_bit ;

  `uvm_object_utils_begin(uart_sequence_item)
    `uvm_field_int(data   , UVM_ALL_ON)
    `uvm_field_int(par_bit, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "uart_sequence_item");
    super.new(name);
  endfunction
endclass
