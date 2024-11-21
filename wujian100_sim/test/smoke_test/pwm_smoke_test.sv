class pwm_smoke_test extends smoke_base_test;
  `uvm_component_utils(pwm_smoke_test)

  function new(string name = "pwm_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task pwm_smoke_test::run_smoke_test();
  write_register('h2      , "PWM01LOAD" , "pwm");
  write_register('h2      , "PWM0CMP"   , "pwm");
  write_register('h302    , "CAPCTL"    , "pwm");
  write_register('h2      , "CAPINTEN"  , "pwm");
  write_register('h200000 , "CAP01MATCH", "pwm");
  write_register('h9002001, "PWMCFG"    , "pwm");

  #1ms;
endtask
