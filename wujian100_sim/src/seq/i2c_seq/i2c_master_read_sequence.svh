class i2c_master_read_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_read_sequence)

  rand slave_addr_mode_e addr_mode ;
  rand bit[9:0]          addr      ;
  rand int unsigned      len       ;
       bit[7:0]          ret[]     ;

  function new(string name = "i2c_master_read_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
  extern function void response_handler(uvm_sequence_item item);
endclass

task i2c_master_read_sequence::body();
  use_response_handler(1);
  `uvm_create(req)
  req.randomize() with {
    slave_addr_mode == addr_mode ;
    slave_addr      == addr      ;
	len             == local::len;
    r_w             == 1'b1      ;
    repeat_start    == 1'b0      ;
  };
  `uvm_send(req)
endtask

function void i2c_master_read_sequence::response_handler(uvm_sequence_item item);
  if ($cast(rsp, item)) begin
    `uvm_info(get_type_name(), $sformatf("sequence response item:\n%s", rsp.sprint()), UVM_LOW)
	ret = new[len];
	foreach(rsp.ret[i])
	  ret[i] = rsp.ret[i];
  end
endfunction
