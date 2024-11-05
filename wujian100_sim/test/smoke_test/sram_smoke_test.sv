class sram_smoke_test extends smoke_base_test;
  `uvm_component_utils(sram_smoke_test)

  function new(string name = "sram_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task sram_smoke_test::run_smoke_test();
  bit[31:0]             rd_data[]   ;
  bit[31:0]             wr_data[]   ;

  wr_data = new[16];
  foreach(wr_data[i])
    wr_data[i] = {4{byte'(i)}};

  write_memory(DATA_SRAM, 'h100, wr_data, 16);
  read_memory(rd_data, DATA_SRAM, 'h100, 16);
  foreach(rd_data[i])
    `uvm_info(get_type_name(), $sformatf("DSRAM[%0d]=0x%8h", ('h100+i*4)/4, rd_data[i]), UVM_LOW)
endtask
