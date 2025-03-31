class dmac_int_seq extends uvm_sequence;
  `uvm_object_utils(dmac_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "dmac_int_seq");
    super.new(name);
  endfunction

  extern task body();
  extern task handle_intrrupt(bit[3:0] id);
endclass

task dmac_int_seq::body();
  uvm_event dmac_int_ev ;

  dmac_int_ev = p_sequencer.env_cfg.events.get("dmac_int_ev");
  for(int i = 0; i < 16; i++)
    handle_intrrupt(i);

  dmac_int_ev.trigger();
endtask

task dmac_int_seq::handle_intrrupt(bit[3:0] id);
  bit[31:0] int_mask   ;
  bit[31:0] int_status ;

  p_sequencer.env_cfg.get_reg_value(int_status, $sformatf("CH%0d_INT_STATUS", id), "dma");
  if (int_status != 0) begin
    p_sequencer.env_cfg.get_reg_value(int_mask  , $sformatf("CH%0d_INT_MASK" , id) , "dma");
    p_sequencer.env_cfg.set_reg_value('h0       , $sformatf("CH%0d_INT_MASK" , id) , "dma");
    p_sequencer.env_cfg.set_reg_value(int_status, $sformatf("CH%0d_INT_CLEAR", id) , "dma");
    p_sequencer.env_cfg.set_reg_value(int_mask  , $sformatf("CH%0d_INT_MASK" , id) , "dma");
  end
endtask
