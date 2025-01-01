class i2c_master_sequence_base extends uvm_sequence #(i2c_sequence_item);
  `uvm_object_utils(i2c_master_sequence_base)
  `uvm_declare_p_sequencer(i2c_sequencer)

  rand bit[9:0]          addr      ;
  rand int unsigned      len       ;
  rand i2c_direction_e   direction ;               
       bit[7:0]          ret[]     ;

  function new(string name = "i2c_master_sequence_base");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_master_sequence_base::body();
  `uvm_do_with(req, {cmd == I2C_SEND_SOF;})
  `uvm_do_with(req, {cmd == I2C_SEND_DATA; data == {addr, bit'(direction)};})
  `uvm_do_with(req, {cmd == I2C_RCV_ACK;})
  get_response(rsp);
  if (rsp.ret == 0) begin
    if (direction == I2C_WRITE) begin
      for (int i = 0; i < len; i++) begin
        `uvm_do_with(req, {cmd == I2C_SEND_DATA;})
        `uvm_do_with(req, {cmd == I2C_RCV_ACK;})
        get_response(rsp);
        if (rsp.ret == 1)
          break;
      end
    end
    else begin
      ret = new[len];
      for (int i = 0; i < len; i++) begin
        `uvm_do_with(req, {cmd == I2C_RCV_DATA;})
        get_response(rsp);
        ret[i] = rsp.ret;
        if (i < len-1)
          `uvm_do_with(req, {cmd == I2C_SEND_ACK; data == 0;})
        else
          `uvm_do_with(req, {cmd == I2C_SEND_ACK; data == 1;})
      end
    end
  end
  `uvm_do_with(req, {cmd == I2C_SEND_EOF;})
endtask

class i2c_slave_sequence_base extends uvm_sequence #(i2c_sequence_item);
  `uvm_object_utils(i2c_slave_sequence_base)
  `uvm_declare_p_sequencer(i2c_sequencer)

  i2c_sequence_item mon_item;

  function new(string name = "i2c_slave_sequence_base");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_slave_sequence_base::body();
  i2c_cmd_e       pre_cmd   ;
  bit             matched   ;
  i2c_direction_e direction ;

  forever begin
    p_sequencer.mon_item_fifo.get(mon_item);
    case (mon_item.cmd)
      I2C_RCV_DATA: begin
        if (pre_cmd == I2C_RCV_SOF) begin
          if (mon_item.data[7:1] == p_sequencer.cfg.slave_addr) begin
            direction = mon_item.data[0];
            matched = 1'b1;
            `uvm_do_with(req, {cmd == I2C_SEND_ACK; data == 0;})
          end
        end
        if (matched && pre_cmd == I2C_RCV_ACK && direction == I2C_WRITE)
          `uvm_do_with(req, {cmd == I2C_SEND_ACK; data == 0;})
      end
      I2C_RCV_ACK: begin
        if (matched && pre_cmd == I2C_RCV_DATA && direction == I2C_READ && !mon_item.data[0])
          `uvm_do_with(req, {cmd == I2C_SEND_DATA;})
      end
      I2C_RCV_EOF: begin
        matched = 1'b0;
      end
    endcase
    pre_cmd = mon_item.cmd;
  end
endtask
