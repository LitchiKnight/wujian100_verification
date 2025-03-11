class dma_base_test extends wujian100_base_test;
  `uvm_component_utils(dma_base_test)

  function new(string name = "dma_base_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual task main_phase(uvm_phase phase);
  extern virtual task run_dma_test();
endclass

task dma_base_test::main_phase(uvm_phase phase);
  `uvm_info(get_type_name(), "start dma testcase", UVM_LOW)
  phase.raise_objection(this);
  run_dma_test();
  phase.phase_done.set_drain_time(this, 600);
  phase.drop_objection(this);
  `uvm_info(get_type_name(), "dma testcase end", UVM_LOW)
endtask

task dma_base_test::run_dma_test();
  // TODO
endtask
