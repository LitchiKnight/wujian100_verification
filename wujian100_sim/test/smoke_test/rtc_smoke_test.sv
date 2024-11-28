class rtc_smoke_test extends smoke_base_test;
  `uvm_component_utils(rtc_smoke_test)

  function new(string name = "rtc_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task rtc_smoke_test::run_smoke_test();
  uvm_event rtc_int_ev = events.get("rtc_int_ev");

  `uvm_info(get_type_name(), "start rtc smoke test", UVM_LOW)

  write_register(32'h200, "RTC_match_value", "rtc");
  write_register(32'h1e0, "RTC_load_value" , "rtc");
  write_register(32'hd  , "RTC_CCR"        , "rtc");

  rtc_int_ev.wait_trigger();
  `uvm_info(get_type_name(), "rtc interrupt triggered!", UVM_LOW)
endtask
