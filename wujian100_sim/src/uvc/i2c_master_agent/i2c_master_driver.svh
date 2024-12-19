class i2c_master_driver extends uvm_driver #(i2c_master_item);
  `uvm_component_utils(i2c_master_driver)

  virtual i2c_master_interface vif    ;
          i2c_master_config    cfg    ;
          real                 period ;

  function new(string name = "i2c_master_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);

  extern virtual task          init_signal();
  extern virtual task          clk_gen();
  extern virtual task          send_sof();
  extern virtual task          send_eof();
  extern virtual task          wait_ack_bit(output bit ack);
  extern virtual task          send_ack_bit(input bit ack);
  extern virtual task          send_slave_address(input i2c_master_item item);
  extern virtual task          transmit_data(input i2c_master_item item);
  extern virtual task          receive_data(input i2c_master_item item, output bit[7:0] data[]);
  extern virtual task          send_response(input i2c_master_item item);
endclass

function void i2c_master_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.period = (1000000/cfg.speed_mode); // ns
endfunction

task i2c_master_driver::run_phase(uvm_phase phase);
  clk_gen();
  init_signal();
  forever begin
    i2c_master_item item ;
    bit             ack  ;

    seq_item_port.get_next_item(item);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", item.sprint()), UVM_LOW)
    send_sof(); // send start of frame flag
    send_slave_address(item); // send slave address
    wait_ack_bit(ack); // wait slave ack
    if (ack) begin
      if (item.r_w) begin // read data
        bit[7:0] data[];
        receive_data(item, data);
        item.ret = data;
      end
      else begin // write data
        transmit_data(item);
      end
    end
    if (!item.repeat_start)
      send_eof(); // send end of frame flag
    send_response(item);
    seq_item_port.item_done();
  end
endtask

task i2c_master_driver::init_signal();
  vif.clk    <= 1'b1;
  vif.scl    <= 1'b1;
  vif.sda_io <= 1'b1;
endtask

task i2c_master_driver::clk_gen();
  fork
    forever begin
      # (period/4) vif.clk = ~vif.clk;
    end
    forever begin
      # (period/2) vif.scl = ~vif.scl;
    end
  join_none
endtask

task i2c_master_driver::send_sof();
  @ (vif.m_drv_ctrl_cb);
  vif.m_drv_ctrl_cb.sda_io <= 1'b0;
endtask

task i2c_master_driver::send_eof();
  @ (vif.m_drv_data_cb);
  vif.m_drv_data_cb.sda_io <= 1'b0;
  @ (vif.m_drv_ctrl_cb);
  vif.m_drv_ctrl_cb.sda_io <= 1'b1;
endtask

task i2c_master_driver::wait_ack_bit(output bit ack);
  @ (vif.s_drv_data_cb);
  ack = vif.s_drv_data_cb.sda_in;
endtask

task i2c_master_driver::send_ack_bit(input bit ack);
  @ (vif.m_drv_data_cb);
  vif.m_drv_data_cb.sda_io <= ack;
endtask

task i2c_master_driver::send_slave_address(i2c_master_item item);
  // send slave addr
  for (int i = item.slave_addr_mode-1; i >= 0; i--) begin
    @ (vif.m_drv_data_cb);
    vif.m_drv_data_cb.sda_io <= item.slave_addr[i];
  end
  // send r/w flag
  @ (vif.m_drv_data_cb);
  vif.m_drv_data_cb.sda_io <= item.r_w;
  // relase SDA
  @ (vif.m_drv_data_cb);
  vif.m_drv_data_cb.sda_io <= 1'b1;
endtask

task i2c_master_driver::transmit_data(i2c_master_item item);
  foreach(item.data[i]) begin
    bit      ack     ;
    bit[7:0] tx_byte ;

    tx_byte = item.data[i];
    `uvm_info(get_type_name(), $sformatf("send 0x%0h to 0x%0h i2c slave device", tx_byte, item.slave_addr), UVM_LOW)
    // send data
    for (int n = 7; n >= 0; n--) begin
      @ (vif.m_drv_data_cb);
      vif.m_drv_data_cb.sda_io <= tx_byte[n];
    end
    // relase SDA
    @ (vif.m_drv_data_cb);
    vif.m_drv_data_cb.sda_io <= 1'b1;
    // wait & check nack
    wait_ack_bit(ack);
    if (!ack)
      break;
  end
endtask

task i2c_master_driver::receive_data(input  i2c_master_item item,
                                     output bit[7:0]        data[]);
  data = new[item.len];
  for (int i = 0; i < item.len; i++) begin
    bit[7:0] rx_byte;
    // receive data
    for (int n = 7; n >= 0; n--) begin
      rx_byte = rx_byte << 1;
      @ (vif.s_drv_data_cb);
      rx_byte |= vif.s_drv_data_cb.sda_in;
    end
    data[i] = rx_byte;
    // send ack & nack
    if (i < item.len-1)
      send_ack_bit(1'b0);
    else
      send_ack_bit(1'b1);
    // relase SDA
    @ (vif.m_drv_data_cb);
    vif.m_drv_data_cb.sda_io <= 1'b1;
  end
endtask

task i2c_master_driver::send_response(i2c_master_item item);
  rsp = i2c_master_item::type_id::create("rsp");
  rsp.set_id_info(item);
  rsp.copy(item);
  seq_item_port.put_response(rsp);
endtask
