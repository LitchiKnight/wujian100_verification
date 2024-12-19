class i2c_master_write_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_write_sequence)

  rand slave_addr_mode_e addr_mode ;
  rand bit[9:0]          addr      ;
  rand int unsigned      len       ;

  function new(string name = "i2c_master_write_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_master_write_sequence::body();
  `uvm_create(req)
  req.randomize() with {
    slave_addr_mode == addr_mode ;
    slave_addr      == addr      ;
    len             == local::len;
    r_w             == 1'b0      ;
    repeat_start    == 1'b0      ;
  };
  `uvm_send(req)
endtask

