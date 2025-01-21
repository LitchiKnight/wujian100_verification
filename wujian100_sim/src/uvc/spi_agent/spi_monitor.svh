class spi_monitor extends uvm_monitor;
  `uvm_component_utils(spi_monitor)

  virtual spi_interface     vif      ;
          spi_config        cfg      ;
          uvm_event_pool    events   ;
          spi_sequence_item mon_item ;

  uvm_analysis_port #(spi_sequence_item) mon_tx_port;
  uvm_analysis_port #(spi_sequence_item) mon_rx_port;

  function new(string name = "spi_monitor", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);

  extern virtual task          mon_tx();
  extern virtual task          mon_rx();
endclass

function void spi_monitor::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_tx_port = new("mon_tx_port", this);
  mon_rx_port = new("mon_rx_port", this);
endfunction

function void spi_monitor::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.events = cfg.events;
endfunction

task spi_monitor::run_phase(uvm_phase phase);
  fork
    mon_tx();
    mon_rx();
  join
endtask

task spi_monitor::mon_tx();
  forever begin
    spi_sequence_item tx_item;

    tx_item = spi_sequence_item::type_id::create("tx_item");
    @ (negedge vif.cs_in);
    for (int i = cfg.data_size; i >= 0; i--) begin
      tx_item.data = tx_item.data << 1;
      if (cfg.cpol == cfg.cpha)
        @ (posedge vif.sclk_in);
      else
        @ (negedge vif.sclk_in);
      tx_item.data |= vif.mosi_in;
    end
    mon_tx_port.write(tx_item);
  end
endtask

task spi_monitor::mon_rx();
  forever begin
    spi_sequence_item rx_item;

    @ (negedge vif.cs_in);
    fork
      begin
        fork
          @ (posedge vif.cs_in);
          begin
            while(1) begin
              rx_item = spi_sequence_item::type_id::create("rx_item");
              for (int i = cfg.data_size; i >= 0; i--) begin
                rx_item.data = rx_item.data << 1;
                if (cfg.cpol == cfg.cpha)
                  @ (posedge vif.sclk_in);
                else
                  @ (negedge vif.sclk_in);
                rx_item.data |= vif.miso_in;
              end
              mon_rx_port.write(rx_item);
            end
          end
        join_any
        disable fork;
      end
    join
    
  end
endtask
