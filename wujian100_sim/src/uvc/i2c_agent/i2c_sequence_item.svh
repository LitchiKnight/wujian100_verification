class i2c_sequence_item extends uvm_sequence_item;
  rand i2c_cmd_e cmd  ;
  rand bit[7:0]  data ;
       bit[7:0]  ret  ;

  `uvm_object_utils_begin(i2c_sequence_item)
    `uvm_field_enum(i2c_cmd_e, cmd , UVM_ALL_ON)
    `uvm_field_int (           data, UVM_ALL_ON)
    `uvm_field_int (           ret , UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "i2c_sequence_item");
    super.new(name);
  endfunction
endclass
