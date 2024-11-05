class smoke_base_test extends wujian100_base_test;
  `uvm_component_utils(smoke_base_test)

  function new(string name = "smoke_base_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual task main_phase(uvm_phase phase);
  extern virtual task run_smoke_test();
endclass

task smoke_base_test::main_phase(uvm_phase phase);
  `uvm_info(get_type_name(), "start smoke testcase", UVM_LOW)
  phase.raise_objection(this);
  run_smoke_test();
  phase.phase_done.set_drain_time(this, 600);
  phase.drop_objection(this);
  `uvm_info(get_type_name(), "smoke testcase end", UVM_LOW)
endtask

task smoke_base_test::run_smoke_test();
  // TODO
endtask
