class wdt_int_seq extends uvm_sequence;
  `uvm_object_utils(wdt_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "wdt_int_seq");
    super.new(name);
  endfunction

  extern task body();
endclass

task wdt_int_seq::body();
  uvm_event wdt_int_ev ;
  bit[31:0] rdata      ;

  wdt_int_ev = p_sequencer.env_cfg.events.get("wdt_int_ev");
  p_sequencer.env_cfg.get_reg_value(rdata, "WDT_int_status", "wdt");
  p_sequencer.env_cfg.get_reg_value(rdata, "WDT_int_clr"   , "wdt");
  p_sequencer.env_cfg.get_reg_value(rdata, "WDT_int_status", "wdt");
  wdt_int_ev.trigger();
endtask
