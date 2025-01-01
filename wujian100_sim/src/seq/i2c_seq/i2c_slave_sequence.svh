class i2c_slave_sequence extends uvm_sequence #(i2c_slave_item);
  `uvm_object_utils(i2c_slave_sequence)
  `uvm_declare_p_sequencer(i2c_slave_sequencer)

  i2c_slave_item mon_item;

  function new(string name = "i2c_slave_sequence");
    super.new(name);
  endfunction

  extern virtual task body();
endclass

task i2c_slave_sequence::body();
  i2c_slave_cmd_e pre_cmd;
  bit             matched;
  bit             r_w    ;

  forever begin
    p_sequencer.mon_item_fifo.get(mon_item);
    case (mon_item.cmd)
      S_RCV_DATA: begin
        if (pre_cmd == RCV_SOF) begin
          if (mon_item.data[7:1] == p_sequencer.cfg.slave_addr) begin
            r_w = mon_item.data[0];
            matched = 1'b1;
            `uvm_do_with(req, {cmd == S_SEND_ACK; data == 0;})
          end
        end
        if (matched && pre_cmd == S_RCV_ACK && !r_w)
          `uvm_do_with(req, {cmd == S_SEND_ACK; data == 0;})
      end
      S_RCV_ACK: begin
        if (matched && pre_cmd == S_RCV_DATA && r_w && !mon_item.data[0])
          `uvm_do_with(req, {cmd == S_SEND_DATA;})
      end
      RCV_EOF: begin
        matched = 1'b0;
      end
    endcase
    pre_cmd = mon_item.cmd;
  end
endtask
