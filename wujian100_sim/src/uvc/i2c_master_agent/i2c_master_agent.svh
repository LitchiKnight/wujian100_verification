class i2c_master_agent extends uvm_agent;
  `uvm_component_utils(i2c_master_agent)

  i2c_master_config    cfg       ;
  i2c_master_driver    driver    ;
  i2c_master_sequencer sequencer ;
  i2c_master_monitor   monitor   ;

  function new(string name = "i2c_master_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void i2c_master_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if (cfg == null) begin
    if (!uvm_config_db #(i2c_master_config)::get(this, "", "cfg", cfg))
      `uvm_fatal(get_type_name(), "Cannot get i2c master config")
  end

  monitor = i2c_master_monitor::type_id::create("monitor", this);
  monitor.cfg = this.cfg;

  if (cfg.is_active == UVM_ACTIVE) begin
    driver = i2c_master_driver::type_id::create("driver", this);
    sequencer = i2c_master_sequencer::type_id::create("sequencer", this);
    driver.cfg = this.cfg;
    sequencer.cfg = this.cfg;
  end
endfunction

function void i2c_master_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  if (cfg.is_active == UVM_ACTIVE)
    driver.seq_item_port.connect(sequencer.seq_item_export);
endfunction
