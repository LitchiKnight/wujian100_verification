class uart_monitor extends uvm_monitor;
  `uvm_component_utils(uart_monitor)

  virtual uart_interface vif   ;
          uart_config    cfg   ;
          uvm_event_pool events;
          real           td    ;

  uvm_analysis_port #(uart_sequence_item) mon_tx_port;
  uvm_analysis_port #(uart_sequence_item) mon_rx_port;

  function new(string name = "uart_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);

  extern virtual task          mon_tx();
  extern virtual task          mon_rx();
endclass

function void uart_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_tx_port = new("mon_tx_port", this);
  mon_rx_port = new("mon_rx_port", this);
endfunction

function void uart_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif   ;
  this.events = cfg.events;
  this.td     = 1000000000/cfg.buad_rate; // ns
endfunction

task uart_monitor::run_phase(uvm_phase phase);
  fork
    mon_tx();
    mon_rx();
  join
endtask

task uart_monitor::mon_tx();
  forever begin
    uart_sequence_item tx_item;

    tx_item = uart_sequence_item::type_id::create("tx_item");
    @ (negedge vif.tx);
    # (td+50);
    for (int i = 0; i < cfg.data_bit; i++) begin
      tx_item.data |= (vif.tx << i);
      # td;
    end
    if (cfg.parity_en) begin
      tx_item.par_bit = vif.tx;
      # td;
    end
    mon_tx_port.write(tx_item);
  end
endtask

task uart_monitor::mon_rx();
  forever begin
    uart_sequence_item rx_item;

    rx_item = uart_sequence_item::type_id::create("rx_item");
    @ (negedge vif.rx);
    # (td+50);
    for (int i = 0; i < cfg.data_bit; i++) begin
      rx_item.data |= (vif.rx << i);
      # td;
    end
    if (cfg.parity_en) begin
      rx_item.par_bit = vif.rx;
      # td;
    end
    mon_rx_port.write(rx_item);
  end
endtask
