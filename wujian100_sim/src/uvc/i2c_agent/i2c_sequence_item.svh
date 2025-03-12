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

  constraint default_c {
    cmd == I2C_SEND_SOF -> data == 'h0;
    cmd == I2C_RCV_SOF  -> data == 'h0;
    cmd == I2C_RCV_DATA -> data == 'h0;
	cmd == I2C_RCV_ACK  -> data == 'h0;
    cmd == I2C_SEND_EOF -> data == 'h0;
    cmd == I2C_RCV_EOF  -> data == 'h0;
  };
endclass
