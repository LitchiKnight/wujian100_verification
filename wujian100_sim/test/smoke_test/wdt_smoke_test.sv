class wdt_smoke_test extends smoke_base_test;
  `uvm_component_utils(wdt_smoke_test)

  function new(string name = "wdt_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task wdt_smoke_test::run_smoke_test();
  uvm_event wdt_int_ev = events.get("wdt_int_ev");

  `uvm_info(get_type_name(), "start wdt smoke test", UVM_LOW)

  write_field(3'b111, "RPL"   , "WDT_CR"      , "wdt");
  write_field(1'b1  , "WDT_EN", "WDT_CR"      , "wdt");
  write_field(8'h76 , "CRR"   , "WDT_restart" , "wdt");

  wdt_int_ev.wait_trigger();
  `uvm_info(get_type_name(), "wdt interrupt triggered!", UVM_LOW)
endtask
