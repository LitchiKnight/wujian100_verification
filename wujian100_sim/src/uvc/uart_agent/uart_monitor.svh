class uart_monitor extends uvm_monitor;
  `uvm_component_utils(uart_monitor)

  virtual uart_interface vif   ;
          uart_config    cfg   ;
          uvm_event_pool events;
          real           td    ;

  uvm_analysis_port #(uart_sequence_item) mon_out_port;

  function new(string name = "uart_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void uart_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_out_port = new("mon_out_port", this);
endfunction

function void uart_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif   ;
  this.events = cfg.events;
  this.td     = 1000000000/cfg.buad_rate; // ns
endfunction
