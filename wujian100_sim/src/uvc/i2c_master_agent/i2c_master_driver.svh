class i2c_master_driver extends uvm_driver #(i2c_master_item);
  `uvm_component_utils(i2c_master_driver)

  virtual i2c_master_interface vif    ;
          i2c_master_config    cfg    ;
          real                 period ;
          bit                  scl_en ;

  function new(string name = "i2c_master_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);
  extern virtual task          init_signal();
  extern virtual task          clk_gen();
endclass

function void i2c_master_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.period = (1000000/cfg.speed_mode); // ns
endfunction

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
      # (period/2) vif.scl = ~vif.scl & scl_en;
    end
  join_none
endtask

task i2c_master_driver::run_phase(uvm_phase phase);
  init_signal();
  clk_gen();

  forever begin
    i2c_master_item item;

    seq_item_port.get_next_item(item);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", item.sprint()), UVM_HIGH)
    case (item.cmd)
      SEND_SOF : begin
        scl_en = 1'b1;
        @ (vif.m_drv_ctrl_cb);
        vif.m_drv_ctrl_cb.sda_io <= 1'b0;
      end
      SEND_DATA: begin
        for (int i = 7; i >=0; i--) begin
          @ (vif.m_drv_data_cb);
          vif.m_drv_data_cb.sda_io <= item.data[i];
        end
         @ (vif.m_drv_data_cb);
         vif.m_drv_data_cb.sda_io <= 1'b1;
      end
      RCV_ACK  : begin
        rsp = i2c_master_item::type_id::create("rsp");
        rsp.set_id_info(item);
        rsp.copy(item);
        @ (vif.s_drv_data_cb);
        rsp.ret = !vif.s_drv_data_cb.sda_in;
        seq_item_port.put_response(rsp);
      end
      RCV_DATA : begin
        rsp = i2c_master_item::type_id::create("rsp");
        rsp.set_id_info(item);
        rsp.copy(item);
        for (int i = 7; i >= 0; i--) begin
          rsp.ret = rsp.ret << 1;
          @ (vif.s_drv_data_cb);
          rsp.ret |= vif.s_drv_data_cb.sda_in;
        end
        seq_item_port.put_response(rsp);
      end
      SEND_ACK : begin
        @ (vif.m_drv_data_cb);
        vif.m_drv_data_cb.sda_io <= !item.data[0];
        @ (vif.m_drv_data_cb);
        vif.m_drv_data_cb.sda_io <= 1'b1;
      end
      SEND_EOF : begin
        @ (vif.m_drv_data_cb);
        vif.m_drv_data_cb.sda_io <= 1'b0;
        @ (vif.m_drv_ctrl_cb);
        vif.m_drv_ctrl_cb.sda_io <= 1'b1;
        scl_en = 1'b0;
      end
    endcase
    seq_item_port.item_done();
  end
endtask
