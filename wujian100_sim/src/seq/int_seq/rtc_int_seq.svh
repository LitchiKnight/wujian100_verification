class rtc_int_seq extends uvm_sequence;
  `uvm_object_utils(rtc_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "rtc_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task rtc_int_seq::body();
  uvm_event rtc_int_ev ;
  bit[31:0] rdata      ;

  rtc_int_ev = p_sequencer.env_cfg.events.get("rtc_int_ev");
  p_sequencer.env_cfg.get_reg_value(rdata, "RTC_int_clr", "rtc");
  rtc_int_ev.trigger();
endtask
