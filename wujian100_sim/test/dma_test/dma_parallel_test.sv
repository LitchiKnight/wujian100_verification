class dma_parallel_test extends dma_base_test;
  `uvm_component_utils(dma_parallel_test)

  function new(string name = "dma_parallel_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual task run_dma_test();
endclass

task dma_parallel_test::run_dma_test();
  uvm_event dmac_int_ev;
  bit[31:0] busy       ;

  dmac_int_ev = events.get("dmac_int_ev");
  write_register(32'h1, "DMACCFG", "dma");

  fork
    begin
      bit[31:0]      wr_data[] ;
      dma_launch_seq seq       ;

      wr_data = new[16];
      std::randomize(wr_data);
      foreach(wr_data[i])
        env_cfg.direct_word_write_memory(wr_data[i], DATA_SRAM, 'h0);
      
      seq = dma_launch_seq::type_id::create("seq_1");
      seq.randomize() with {
        src_addr  == `DATA_SRAM_START_ADDR ;
        dst_addr  == `INST_SRAM_START_ADDR ;
        byte_len  == 64                    ;
      };
      seq.start(vseqr);
    end
    begin
      bit[31:0]      wr_data[] ;
      dma_launch_seq seq       ;

      wr_data = new[16];
      std::randomize(wr_data);
      foreach(wr_data[i])
        env_cfg.direct_word_write_memory(wr_data[i], DATA_SRAM, 'h40);

      seq = dma_launch_seq::type_id::create("seq_2");
      seq.randomize() with {
        src_addr  == `DATA_SRAM_START_ADDR+'h100 ;
        dst_addr  == `INST_SRAM_START_ADDR+'h100 ;
        byte_len  == 64                          ;
      };
      seq.start(vseqr);
    end
  join

  do begin
    dmac_int_ev.wait_trigger();
    read_register(busy, "CHSR", "dma");
  end while(busy);
endtask
