class dma_parallel_test extends dma_base_test;
  `uvm_component_utils(dma_parallel_test)

  function new(string name = "dma_parallel_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual task run_dma_test();
endclass

task dma_parallel_test::run_dma_test();
  dma_launch_seq seq1        ;
  dma_launch_seq seq2        ;
  uvm_event      dmac_int_ev ;
  bit[31:0]      busy        ;
  bit[31:0]      exp1[]      ;
  bit[31:0]      exp2[]      ;
  bit[31:0]      act[]       ;

  dmac_int_ev = events.get("dmac_int_ev");
  write_register(32'h1, "DMACCFG", "dma");
  fork
    begin
      exp1 = new[16];
      std::randomize(exp1);
      foreach(exp1[i])
        env_cfg.direct_word_write_memory(exp1[i], DATA_SRAM, 'h0+i);
      
      seq1 = dma_launch_seq::type_id::create("seq1");
      seq1.randomize() with {
        src_addr  == `DATA_SRAM_START_ADDR ;
        dst_addr  == `INST_SRAM_START_ADDR ;
        byte_len  == 63                    ;
      };
      seq1.start(vseqr);
    end
    begin
      exp2 = new[16];
      std::randomize(exp2);
      foreach(exp2[i])
        env_cfg.direct_word_write_memory(exp2[i], DATA_SRAM, 'h40+i);

      seq2 = dma_launch_seq::type_id::create("seq2");
      seq2.randomize() with {
        src_addr  == `DATA_SRAM_START_ADDR+'h100 ;
        dst_addr  == `INST_SRAM_START_ADDR+'h100 ;
        byte_len  == 63                          ;
      };
      seq2.start(vseqr);
    end
  join

  do begin
    dmac_int_ev.wait_trigger();
    read_register(busy, "CHSR", "dma");
  end while(busy);
  
  read_memory(act, INST_SRAM, 'h0, 16);
  foreach(exp1[i]) begin
    if (exp1[i] != act[i])
      `uvm_error(get_type_name(), $sformatf("data compare failed, wr_addr: 0x%8h, wr_data: 0x%8h, rd_addr: 0x%8h, rd_data: 0x%8h", seq1.src_addr+i*4, exp1[i], seq1.dst_addr+i*4, act[i]))
  end

  read_memory(act, INST_SRAM, 'h100, 16);
  foreach(exp2[i]) begin
    if (exp2[i] != act[i])
      `uvm_error(get_type_name(), $sformatf("data compare failed, wr_addr: 0x%8h, wr_data: 0x%8h, rd_addr: 0x%8h, rd_data: 0x%8h", seq2.src_addr+i*4, exp2[i], seq2.dst_addr+i*4, act[i]))
  end
endtask
