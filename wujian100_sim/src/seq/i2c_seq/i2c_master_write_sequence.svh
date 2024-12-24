class i2c_master_write_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_write_sequence)

  rand i2c_addr_mode_e   addr_mode ;
  rand bit[7:0]          addr      ;
  rand int unsigned      len       ;

  function new(string name = "i2c_master_write_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_master_write_sequence::body();
  `uvm_do_with(req, {cmd == SEND_SOF;})
  `uvm_do_with(req, {cmd == SEND_DATA; data == {addr, 1'b0};})
  `uvm_do_with(req, {cmd == RCV_ACK;})
  get_response(rsp);
  if (rsp.ret) begin
    for (int i = 0; i < len; i++) begin
      `uvm_do_with(req, {cmd == SEND_DATA;})
      `uvm_do_with(req, {cmd == RCV_ACK;})
      get_response(rsp);
      if (!rsp.ret)
        break;
    end
  end
  `uvm_do_with(req, {cmd == SEND_EOF;})
endtask

