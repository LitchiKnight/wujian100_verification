class i2c_master_write_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_write_sequence)

  rand bit[9:0]          addr      ;
  rand slave_addr_mode_e addr_mode ;

  function new(string name = "i2c_master_write_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
  extern function void response_handler(uvm_sequence_item item);
endclass

task i2c_master_write_sequence::body();
  use_response_handler(1);
  `uvm_create(req)
  req.randomize() with {
    slave_addr == addr;
    r_w == 0;
    slave_addr_mode == addr_mode;
    repeat_start == 1'b0;
  };
  `uvm_send(req)
endtask

function void i2c_master_write_sequence::response_handler(uvm_sequence_item item);
  if ($cast(rsp, item))
    `uvm_info(get_type_name(), $sformatf("sequence response item:\n%s", rsp.sprint()), UVM_LOW)
endfunction
