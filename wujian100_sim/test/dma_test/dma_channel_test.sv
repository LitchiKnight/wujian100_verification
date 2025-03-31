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

  for (int ch = 0; ch < 16; ch++) begin
    wr_data = new[16];
    foreach(wr_data[i]) begin
      wr_data[i] = {4{byte'(i)}};
      env_cfg.direct_word_write_memory(wr_data[i], DATA_SRAM, i+ch*'h100);
      env_cfg.direct_word_write_memory('hFFFF_FFFF, INST_SRAM, i+ch*'h100);
    end
    dmac_int_ev = events.get("dmac_int_ev");

    seq = dma_launch_seq::type_id::create("seq");
    seq.randomize() with {
      ch_id     == ch                             ;
      src_addr  == `DATA_SRAM_START_ADDR+ch*'h100 ;
      dst_addr  == `INST_SRAM_START_ADDR+ch*'h100 ;
      len % 4   == 0                              ;
      len inside {[4:64]}                         ;
      sinc      == 0                              ;
      dinc      == 0                              ;
      src_width == 2                              ;
      dst_width == 2                              ;
      prot_ctl  == 0                              ;
      src_dtlgc == 0                              ;
      dst_dtlgc == 0                              ;
      trg_tmdc  == 2                              ;
      int_en    == 1                              ;
      int_mask  == 2                              ;
      soft_req  == 1                              ;
    };
    seq.start(vseqr);

    dmac_int_ev.wait_trigger();
    read_memory(rd_data, INST_SRAM, ch*'h100, 16);
  end
endtask

