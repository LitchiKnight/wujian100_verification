class i2c_driver extends uvm_driver #(i2c_sequence_item);
  `uvm_component_utils(i2c_driver)

  virtual i2c_interface  vif    ;
          i2c_config     cfg    ;
          real           period ;
		  uvm_event_pool events ;

  function new(string name = "i2c_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);
  extern virtual task          init_signal();
  extern virtual task          scl_gen();
endclass

function void i2c_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.period = (1000000/cfg.speed_mode); // ns
  this.events = cfg.events;
endfunction

task i2c_driver::run_phase(uvm_phase phase);
  init_signal();
  scl_gen();

  forever begin
    seq_item_port.get_next_item(req);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", req.sprint()), UVM_HIGH)
    case (req.cmd)
      I2C_SEND_SOF: begin
	    uvm_event i2c_drive_sof = events.get("i2c_drive_sof");
		i2c_drive_sof.trigger();
        @ (posedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= 1'b0;
      end
      I2C_SEND_DATA: begin
        for (int i = 7; i >= 0; i--) begin
          @ (negedge vif.scl_in);
          @ (vif.drv_cb);
          vif.drv_cb.sda_oe <= req.data[i];
        end
        @ (negedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= 1'b1;
      end
      I2C_RCV_ACK: begin
        rsp = i2c_sequence_item::type_id::create("rsp");
        rsp.set_id_info(req);
        rsp.copy(req);
        @ (posedge vif.scl_in);
        @ (vif.mon_cb);
        rsp.ret = vif.mon_cb.sda_in;
        seq_item_port.put_response(rsp);
      end
      I2C_RCV_DATA: begin
        rsp = i2c_sequence_item::type_id::create("rsp");
        rsp.set_id_info(req);
        rsp.copy(req);
        repeat(8) begin
          rsp.ret = rsp.ret << 1;
          @ (posedge vif.scl_in);
          @ (vif.mon_cb);
          rsp.ret |= vif.mon_cb.sda_in;
        end
        seq_item_port.put_response(rsp);
      end
      I2C_SEND_ACK: begin
        @ (negedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= req.data[0];
        @ (negedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= 1'b1;
      end
      I2C_SEND_EOF: begin
	    uvm_event i2c_drive_eof = events.get("i2c_drive_eof");

        @ (negedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= 1'b0;
        @ (posedge vif.scl_in);
        @ (vif.drv_cb);
        vif.drv_cb.sda_oe <= 1'b1;
		i2c_drive_eof.trigger();
      end
    endcase
    seq_item_port.item_done();
  end
endtask

task i2c_driver::init_signal();
  vif.scl_oe <= 1'b1;
  vif.sda_oe <= 1'b1;
endtask

task i2c_driver::scl_gen();
  if (cfg.work_mode == I2C_MASTER) begin
	uvm_event i2c_drive_sof = events.get("i2c_drive_sof");
	uvm_event i2c_drive_eof = events.get("i2c_drive_eof");
    fork
	  begin
	    forever begin
		  i2c_drive_sof.wait_trigger();
	      fork
		    begin
		      fork
		        forever begin
                  # (period/2) vif.scl_oe = ~vif.scl_oe;
		  	    end
			    begin
		  	      i2c_drive_eof.wait_trigger();
			      vif.scl_oe <= 1'b1;
			    end
		      join_any
		      disable fork;
			end
		  join
	    end
	  end
    join_none
  end
endtask
