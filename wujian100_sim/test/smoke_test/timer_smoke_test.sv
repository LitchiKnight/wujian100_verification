class timer_smoke_test extends smoke_base_test;
  `uvm_component_utils(timer_smoke_test)

  function new(string name = "timer_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task timer_smoke_test::run_smoke_test();
  uvm_event tim0_tim1_int_ev = events.get("tim0_tim1_int_ev");

  `uvm_info(get_type_name(), "start timer smoke test", UVM_LOW)

  write_field(1'b0    ,"tim1_en_sel"  , "Timer1Control"  , "tim0");
  write_field(32'h100 ,"tim1_load_cnt", "Timer1LoadCount", "tim0");
  write_field(1'b1    ,"tim1_en_sel"  , "Timer1Control"  , "tim0");

  tim0_tim1_int_ev.wait_trigger();
  write_field(1'b0 ,"tim1_en_sel", "Timer1Control", "tim0");
  `uvm_info(get_type_name(), "timer1 of timer0 interrupt triggered!", UVM_LOW)
endtask
