class spi_sequence_item extends uvm_sequence_item;
  rand bit[15:0] data ;

  `uvm_object_utils_begin(spi_sequence_item)
    `uvm_field_int(data, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "spi_sequence_item");
    super.new(name);
  endfunction
endclass
