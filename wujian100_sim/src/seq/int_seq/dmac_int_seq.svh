class dmac_int_seq extends uvm_sequence;
  `uvm_object_utils(dmac_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "dmac_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task dmac_int_seq::body();
  uvm_event dmac_int_ev ;
  bit[31:0] rdata       ;

  dmac_int_ev = p_sequencer.env_cfg.events.get("dmac_int_ev");
  p_sequencer.env_cfg.set_reg_value('h0, "CH0_INT_MASK", "dma");
  p_sequencer.env_cfg.get_reg_value(rdata, "CH0_INT_STATUS", "dma");
  p_sequencer.env_cfg.set_reg_value(rdata, "CH0_INT_CLEAR", "dma");
  p_sequencer.env_cfg.set_reg_value('hF, "CH0_INT_MASK", "dma");
  dmac_int_ev.trigger();
endtask
