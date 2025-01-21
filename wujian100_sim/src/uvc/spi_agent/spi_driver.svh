class spi_driver extends uvm_driver #(spi_sequence_item);
  `uvm_component_utils(spi_driver)

  virtual spi_interface vif    ;
          spi_config    cfg    ;
          real          period ;
          bit           gate   ;
  
  function new(string name = "spi_driver", uvm_component parent);
    super.new(name, parent);
    gate = 1'b1;
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual task          run_phase(uvm_phase phase);

  extern virtual task          init_signals();
  extern virtual task          sclk_gen();
endclass

function void spi_driver::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  this.vif    = cfg.vif;
  this.period = (1000000/cfg.freq); // ns
endfunction

task spi_driver::run_phase(uvm_phase phase);
  init_signals();
  sclk_gen();
  forever begin
    seq_item_port.get_next_item(req);
    `uvm_info(get_type_name(), $sformatf("get a sequence item:\n%s", req.sprint()), UVM_HIGH)
    gate = 1'b0;
    if (cfg.cpol == cfg.cpha)
      @ (negedge vif.sclk_in);
    else
      @ (posedge vif.sclk_in);
    vif.cs_oe <= 1'b0;
    for (int i = cfg.data_size; i >= 0; i--) begin
      vif.mosi <= req.data[i];
      if (cfg.cpol == cfg.cpha)
        @ (negedge vif.sclk_in);
      else
        @ (posedge vif.sclk_in);
    end
    vif.cs_oe <= 1'b1;
    gate = 1'b1;
    seq_item_port.item_done();
  end
endtask

task spi_driver::init_signals();
  vif.sclk_oe <= 1'b1;
  vif.mosi_oe <= 1'b1;
  vif.miso_oe <= 1'b1;
  vif.cs_oe   <= 1'b1;
endtask

task spi_driver::sclk_gen();
  fork
    forever begin
     # (period/2) vif.sclk_oe = ~vif.sclk_oe | gate;
    end
  join_none
endtask
