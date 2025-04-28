class dma_channel_test extends dma_base_test;
  `uvm_component_utils(dma_channel_test)

  dma_launch_seq seq;

  function new(string name = "dma_channel_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual task run_dma_test();
endclass

task dma_channel_test::run_dma_test();
  bit[31:0] wr_data[]   ;
  bit[31:0] rd_data[]   ;
  uvm_event dmac_int_ev ;

  write_register(32'h1, "DMACCFG", "dma");

  for (int ch = 0; ch < 16; ch++) begin
    wr_data = new[16];
    std::randomize(wr_data);
    foreach(wr_data[i]) begin
      // wr_data[i] = {4{byte'(i)}};
      env_cfg.direct_word_write_memory(wr_data[i], DATA_SRAM, i+ch*'h40);
      env_cfg.direct_word_write_memory('hFFFF_FFFF, INST_SRAM, i+ch*'h40);
    end
    dmac_int_ev = events.get("dmac_int_ev");

    seq = dma_launch_seq::type_id::create("seq");
    seq.randomize() with {
      ch_id     == ch                             ;
      src_addr  == `DATA_SRAM_START_ADDR+ch*'h100 ;
      dst_addr  == `INST_SRAM_START_ADDR+ch*'h100 ;
      byte_len  == 64                             ;
    };
    seq.start(vseqr);

    dmac_int_ev.wait_trigger();
    read_memory(rd_data, INST_SRAM, ch*'h100, 16);
    foreach(rd_data[i]) begin
      if (rd_data[i] != wr_data[i])
        `uvm_error(get_type_name(), $sformatf("data compare failed, wr_addr: 0x%8h, wr_data: 0x%8h, rd_addr: 0x%8h, rd_data: 0x%8h", seq.src_addr, wr_data[i], seq.dst_addr, wr_data[i]))
    end
  end
endtask

