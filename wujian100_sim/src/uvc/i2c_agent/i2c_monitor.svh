class i2c_monitor extends uvm_monitor;
  `uvm_component_utils(i2c_monitor)

  virtual i2c_interface     vif       ;
          i2c_config        cfg       ;
          uvm_event_pool    events    ;
          i2c_sequence_item mon_item ;

  uvm_analysis_port #(i2c_sequence_item) mon_out_port;

  function new(string name = "i2c_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task run_phase(uvm_phase phase);
  extern virtual task monitor_sof();
  extern virtual task monitor_data();
  extern virtual task monitor_ack();
  extern virtual task monitor_eof();
endclass

function void i2c_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_out_port = new("mon_out_port", this);
endfunction

function void i2c_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.events = cfg.events;
endfunction

task i2c_monitor::run_phase(uvm_phase phase);
  fork
    monitor_sof() ;
    monitor_data();
    monitor_ack() ;
    monitor_eof() ;
  join
endtask

task i2c_monitor::monitor_sof();
  uvm_event i2c_monitor_sof = events.get("i2c_monitor_sof");
  forever begin
    @ (negedge vif.sda_in);
    if (vif.scl_in) begin
      mon_item = i2c_sequence_item::type_id::create("mon_item");
      mon_item.cmd = I2C_RCV_SOF;
      mon_out_port.write(mon_item);
      i2c_monitor_sof.trigger();
    end
  end
endtask

task i2c_monitor::monitor_data();
  uvm_event i2c_monitor_sof  = events.get("i2c_monitor_sof") ;
  uvm_event i2c_monitor_data = events.get("i2c_monitor_data");
  uvm_event i2c_monitor_ack  = events.get("i2c_monitor_ack") ;
  uvm_event i2c_monitor_eof  = events.get("i2c_monitor_eof") ;

  forever begin
    fork
      begin
        fork
          begin
            i2c_monitor_sof.wait_trigger();
            forever begin
              mon_item = i2c_sequence_item::type_id::create("mon_item");
              mon_item.cmd = I2C_RCV_DATA;

              repeat(8) begin
                mon_item.data = mon_item.data << 1;
                @ (posedge vif.scl_in);
                @ (vif.mon_cb);
                mon_item.data |= vif.mon_cb.sda_in;
              end
              mon_out_port.write(mon_item);
              i2c_monitor_data.trigger();
              i2c_monitor_ack.wait_trigger();
            end
          end
          i2c_monitor_eof.wait_trigger();
        join_any
        disable fork;
      end
    join
  end
endtask

task i2c_monitor::monitor_ack();
  uvm_event i2c_monitor_data = events.get("i2c_monitor_data");
  uvm_event i2c_monitor_ack  = events.get("i2c_monitor_ack") ;

  forever begin
    i2c_monitor_data.wait_trigger();
    mon_item = i2c_sequence_item::type_id::create("mon_item");
    mon_item.cmd = I2C_RCV_ACK;
    @ (posedge vif.scl_in);
    @ (vif.mon_cb);
    mon_item.data = vif.mon_cb.sda_in;
    mon_out_port.write(mon_item);
    i2c_monitor_ack.trigger();
  end
endtask

task i2c_monitor::monitor_eof();
  uvm_event i2c_monitor_eof = events.get("i2c_monitor_eof");

  forever begin
    @ (posedge vif.sda_in);
    if (vif.scl_in) begin
      mon_item = i2c_sequence_item::type_id::create("mon_item");
      mon_item.cmd = I2C_RCV_EOF;
      mon_out_port.write(mon_item);
      i2c_monitor_eof.trigger();
    end
  end
endtask

