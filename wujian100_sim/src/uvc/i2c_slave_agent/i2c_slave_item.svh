class i2c_slave_item extends uvm_sequence_item;
  `uvm_object_utils(i2c_slave_item)

  function new(string name = "i2c_slave_item");
    super.new(name);
  endfunction
endclass
