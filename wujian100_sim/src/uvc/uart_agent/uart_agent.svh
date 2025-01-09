class uart_agent extends uvm_agent;
  `uvm_component_utils(uart_agent)

  uart_config    cfg       ;
  uart_driver    driver    ;
  uart_monitor   monitor   ;
  uart_sequencer sequencer ;

  function new(string name = "uart_agent", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void uart_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if (cfg == null) begin
    if (!uvm_config_db #(uart_config)::get(this, "", "cfg", cfg))
      `uvm_fatal(get_type_name(), "Cannot get uart config item")
  end

  monitor = uart_monitor::type_id::create("monitor", this);
  monitor.cfg = this.cfg;

  if (cfg.is_active == UVM_ACTIVE) begin
    driver = uart_driver::type_id::create("driver", this);
    sequencer = uart_sequencer::type_id::create("sequencer", this);
    driver.cfg = this.cfg;
    sequencer.cfg = this.cfg;
  end
endfunction

function void uart_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  monitor.mon_out_port.connect(sequencer.mon_item_export);
  if (cfg.is_active == UVM_ACTIVE)
    driver.seq_item_port.connect(sequencer.seq_item_export);
endfunction
