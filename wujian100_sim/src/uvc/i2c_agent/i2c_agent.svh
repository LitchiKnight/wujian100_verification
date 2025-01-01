class i2c_agent extends uvm_agent;
  `uvm_component_utils(i2c_agent)

  i2c_config    cfg       ;
  i2c_driver    driver    ;
  i2c_monitor   monitor   ;
  i2c_sequencer sequencer ;

  function new(string name = "i2c_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void i2c_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if (cfg == null) begin
    if (!uvm_config_db #(i2c_config)::get(this, "", "cfg", cfg))
      `uvm_fatal(get_type_name(), "Cannot get i2c config item")
  end

  monitor = i2c_monitor::type_id::create("monitor", this);
  monitor.cfg = this.cfg;

  if (cfg.is_active == UVM_ACTIVE) begin
    driver = i2c_driver::type_id::create("driver", this);
    sequencer = i2c_sequencer::type_id::create("sequencer", this);
    driver.cfg = this.cfg;
    sequencer.cfg = this.cfg;
  end
endfunction

function void i2c_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  monitor.mon_out_port.connect(sequencer.mon_item_export);
  if (cfg.is_active == UVM_ACTIVE)
    driver.seq_item_port.connect(sequencer.seq_item_export);
endfunction

