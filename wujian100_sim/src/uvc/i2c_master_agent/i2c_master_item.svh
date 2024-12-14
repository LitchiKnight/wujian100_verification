class i2c_master_item extends uvm_sequence_item;
  rand bit[9:0]          slave_addr      ;
  rand bit               r_w             ;
  rand bit[7:0]          data[]          ;
  rand slave_addr_mode_e slave_addr_mode ;
  rand bit               repeat_start    ;
       bit               ack             ;
       bit[7:0]          ret[]           ;

  `uvm_object_utils_begin(i2c_master_item)
    `uvm_field_int       (                   slave_addr     , UVM_ALL_ON)
    `uvm_field_int       (                   r_w            , UVM_ALL_ON)
    `uvm_field_array_int (                   data           , UVM_ALL_ON)
    `uvm_field_enum      (slave_addr_mode_e, slave_addr_mode, UVM_ALL_ON)
    `uvm_field_int       (                   repeat_start   , UVM_ALL_ON)
    `uvm_field_array_int (                   ret            , UVM_ALL_ON)
  `uvm_object_utils_end

  constraint c_addr {
    if (slave_addr_mode == ADDRESS_7BIT) {
      slave_addr[9:7] == 3'h0;
    }
  }

  function new(string name = "i2c_master_item");
    super.new(name);
  endfunction
endclass
