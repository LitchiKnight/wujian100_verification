class dma_smoke_test extends smoke_base_test;
  `uvm_component_utils(dma_smoke_test)

  function new(string name = "dma_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern task run_smoke_test();
endclass

task dma_smoke_test::run_smoke_test();
   bit[31:0] wr_data[]    ;
   bit[31:0] rd_data[]    ;
   bit[31:0] int_dma_flag ;
   uvm_event dmac_int_ev  ;

   wr_data = new[16];
  foreach(wr_data[i]) begin
    wr_data[i] = {4{byte'(i)}};
    env_cfg.direct_word_write_memory(wr_data[i], DATA_SRAM, i);
    env_cfg.direct_word_write_memory('hFFFF_FFFF, INST_SRAM, i);
  end
  dmac_int_ev = events.get("dmac_int_ev");

  write_register(`DATA_SRAM_START_ADDR, "SAR0", "dma");
  write_register(`INST_SRAM_START_ADDR, "DAR0", "dma");
  write_register('h2300A, "CH0_CTRL_A", "dma");
  write_register('h5, "CH0_CTRL_B", "dma");
  write_register('h2, "CH0_INT_MASK", "dma");
  write_register('h1, "CH0_EN", "dma");
  write_register('h1, "DMACCFG", "dma");
  write_register('h1, "CH0_SOFT_REQ", "dma");

  dmac_int_ev.wait_trigger();
  read_memory(rd_data, INST_SRAM, 'h0, 16);
  foreach(rd_data[i])
    `uvm_info(get_type_name(), $sformatf("rd_data[0x%8h]=0x%8h", `INST_SRAM_START_ADDR+i*4, rd_data[i]), UVM_LOW)
endtask
