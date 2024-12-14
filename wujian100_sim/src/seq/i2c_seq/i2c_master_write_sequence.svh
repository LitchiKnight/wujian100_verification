class i2c_master_write_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_write_sequence)

  function new(string name = "i2c_master_write_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_master_write_sequence::body();
  `uvm_create(req)
  req.randomize() with {
    slave_addr == 10'h3C;
    r_w == 0;
    data.size == 4;
    slave_addr_mode == ADDRESS_7BIT;
  };
  `uvm_send(req)
endtask
