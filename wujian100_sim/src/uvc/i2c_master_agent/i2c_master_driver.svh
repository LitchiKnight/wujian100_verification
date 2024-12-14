class i2c_master_driver extends uvm_driver #(i2c_master_item);
  `uvm_component_utils(i2c_master_driver)

  virtual i2c_master_interface vif    ;
          i2c_master_config    cfg    ;

  function new(string name = "i2c_master_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);

  extern virtual task          init_signal();
  extern virtual task          send_response(i2c_master_item item);
  extern virtual task          send_sof();
  extern virtual task          send_addr(i2c_master_item item);
  extern virtual task          send_data(i2c_master_item item);
  extern virtual task          send_eof();
endclass

function void i2c_master_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif = cfg.vif;
endfunction

task i2c_master_driver::run_phase(uvm_phase phase);
  fork
    forever begin
      # (cfg.clk_period/4) vif.clk = ~vif.clk;
    end
    forever begin
      # (cfg.clk_period/2) vif.scl = ~vif.scl;
    end
  join_none

  init_signal();
  forever begin
    i2c_master_item item;

    seq_item_port.get_next_item(item);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", item.sprint()), UVM_LOW)
    send_sof();
    send_addr(item);
    @ (negedge (vif.clk & vif.scl));
    if (vif.sda)
      send_data(item);
    send_eof();
    seq_item_port.item_done();
  end
endtask

task i2c_master_driver::init_signal();
  vif.clk    <= 1'b1;
  vif.scl    <= 1'b1;
  vif.sda_io <= 1'b1;
endtask

task i2c_master_driver::send_response(i2c_master_item item);
  rsp = i2c_master_item::type_id::create("rsp");
  rsp.set_id_info(item);
  rsp.copy(item);
  seq_item_port.put_response(rsp);
endtask

task i2c_master_driver::send_sof();
  @ (negedge (vif.clk & vif.scl));
  vif.sda_io <= 1'b0;
endtask

task i2c_master_driver::send_addr(i2c_master_item item);
  // send slave addr
  for (int i = item.slave_addr_mode-1; i >= 0; i--) begin
    @ (negedge (vif.clk & ~vif.scl));
    vif.sda_io <= item.slave_addr[i];
  end
  // send r/w flag
  @ (negedge (vif.clk & ~vif.scl));
  vif.sda_io <= item.r_w;
  // relase SDA
  @ (negedge (vif.clk & ~vif.scl));
  vif.sda_io <= 1'b1;
endtask

task i2c_master_driver::send_data(i2c_master_item item);
  foreach(item.data[i]) begin
    // send data
    bit[7:0] tbc_byte = item.data[i];
    `uvm_info(get_type_name(), $sformatf("send 0x%0h to 0x%0h i2c slave device", tbc_byte, item.slave_addr), UVM_LOW)
    for (int n = 7; n >= 0; n--) begin
      @ (negedge (vif.clk & ~vif.scl));
      vif.sda_io <= tbc_byte[n];
    end
    // relase SDA
    @ (negedge (vif.clk & ~vif.scl));
    vif.sda_io <= 1'b1;
    // wait ack
    @ (negedge (vif.clk & vif.scl));
    if(!vif.sda)
      break;
  end
endtask

task i2c_master_driver::send_eof();
  @ (negedge (vif.clk & ~vif.scl));
  vif.sda_io <= 1'b0;
  @ (negedge (vif.clk & vif.scl));
  vif.sda_io <= 1'b1;
endtask
