class i2c_master_read_sequence extends uvm_sequence #(i2c_master_item);
  `uvm_object_utils(i2c_master_read_sequence)

  rand i2c_addr_mode_e   addr_mode ;
  rand bit[9:0]          addr      ;
  rand int unsigned      len       ;
       bit[7:0]          ret[]     ;

  function new(string name = "i2c_master_read_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_master_read_sequence::body();
  ret = new[len];
  `uvm_do_with(req, {cmd == SEND_SOF;})
  `uvm_do_with(req, {cmd == SEND_DATA; data == {addr, 1'b1};})
  `uvm_do_with(req, {cmd == RCV_ACK;})
  get_response(rsp);
  if (rsp.ret) begin
    for (int i = 0; i < len; i++) begin
      `uvm_do_with(req, {cmd == RCV_DATA;})
      get_response(rsp);
      ret[i] = rsp.ret;
      if (i < len-1)
        `uvm_do_with(req, {cmd == SEND_ACK; data == 1;})
      else
        `uvm_do_with(req, {cmd == SEND_ACK; data == 0;})
    end
  end
  `uvm_do_with(req, {cmd == SEND_EOF;})
endtask

