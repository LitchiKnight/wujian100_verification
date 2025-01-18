class spi_monitor extends uvm_monitor;
  `uvm_component_utils(spi_monitor)

  virtual spi_interface     vif      ;
          spi_config        cfg      ;
          uvm_event_pool    events   ;
          spi_sequence_item mon_item ;

  uvm_analysis_port #(spi_sequence_item) mon_out_port;

  function new(string name = "spi_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void spi_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_out_port = new("mon_out_port", this);
endfunction

function void spi_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.events = cfg.events;
endfunction
