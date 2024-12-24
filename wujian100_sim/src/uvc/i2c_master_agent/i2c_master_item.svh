class i2c_master_item extends uvm_sequence_item;
  rand i2c_master_cmd_e cmd ;
  rand bit[7:0]         data;
       bit[7:0]         ret ;

  `uvm_object_utils_begin(i2c_master_item)
    `uvm_field_enum(i2c_master_cmd_e, cmd , UVM_ALL_ON)
    if (cmd inside {SEND_DATA, SEND_ACK})
      `uvm_field_int (data, UVM_ALL_ON)
    if (cmd inside {RCV_ACK, RCV_DATA})
      `uvm_field_int (ret , UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "i2c_master_item");
    super.new(name);
  endfunction
endclass
