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

  dmac_int_ev = p_sequencer.env_cfg.events.get("dmac_int_ev");
  do begin
    for(int i = 0; i < 16; i++) begin
      bit[31:0] int_mask   ;
      bit[31:0] int_status ;

      p_sequencer.env_cfg.get_reg_value(int_status, $sformatf("CH%0d_INT_STATUS", i), "dma");
      if (int_status) begin
        p_sequencer.env_cfg.get_reg_value(int_mask  , $sformatf("CH%0d_INT_MASK" , i) , "dma");
        if (int_status & int_mask) begin
          p_sequencer.env_cfg.set_reg_value('h0       , $sformatf("CH%0d_INT_MASK" , i) , "dma");
          p_sequencer.env_cfg.set_reg_value(int_status, $sformatf("CH%0d_INT_CLEAR", i) , "dma");
          p_sequencer.env_cfg.set_reg_value(int_mask  , $sformatf("CH%0d_INT_MASK" , i) , "dma");
          break;
        end
      end
    end
  end while(p_sequencer.env_cfg.int_cfg.vif.interrupt != 0);

  dmac_int_ev.trigger();
endtask

