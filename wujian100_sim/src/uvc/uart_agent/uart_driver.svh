class uart_driver extends uvm_driver #(uart_sequence_item);
  `uvm_component_utils(uart_driver)

  virtual uart_interface vif   ;
          uart_config    cfg   ;
          uvm_event_pool events;
          real           td    ;

  function new(string name = "uart_driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);
  extern virtual task          init_signal();
endclass

function void uart_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif   ;
  this.events = cfg.events;
  this.td     = 1000000000/cfg.buad_rate; // ns
endfunction

task uart_driver::run_phase(uvm_phase phase);
  init_signal();
  forever begin
    seq_item_port.get_next_item(req);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", req.sprint()), UVM_LOW)
    vif.tx <= 1'b0;
    # td;
    for (int i = 0; i < cfg.data_bit; i++) begin
      vif.tx <= req.data[i];
      # td;
    end
    if (cfg.parity_en) begin
      vif.tx <= req.par_bit;
      # td;
    end
    vif.tx <= 1'b1;
    # (td*cfg.stop_bit);
    seq_item_port.item_done();
  end
endtask

task uart_driver::init_signal();
  vif.tx <= 1'b1;
endtask
