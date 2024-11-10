class tim0_tim1_int_seq extends uvm_sequence;
  `uvm_object_utils(tim0_tim1_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "tim0_tim1_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task tim0_tim1_int_seq::body();
  uvm_event tim0_tim1_int_ev ;
  bit[31:0] rdata            ;

  tim0_tim1_int_ev = p_sequencer.env_cfg.events.get("tim0_tim1_int_ev");
  p_sequencer.env_cfg.get_reg_value(rdata, "Timer1IntClr", "tim0");
  tim0_tim1_int_ev.trigger();
endtask
