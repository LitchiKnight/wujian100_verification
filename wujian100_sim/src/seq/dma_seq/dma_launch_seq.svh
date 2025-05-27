class dma_launch_seq extends uvm_sequence;
  rand bit[ 3:0] ch_id     ;
  rand bit[31:0] src_addr  ;
  rand bit[31:0] dst_addr  ;
  rand bit[11:0] byte_len  ;
  rand bit[ 1:0] sinc      ;
  rand bit[ 1:0] dinc      ;
  rand bit[ 1:0] src_width ;
  rand bit[ 1:0] dst_width ;
  rand bit[ 3:0] prot_ctl  ;
  rand bit       src_dtlgc ;
  rand bit       dst_dtlgc ;
  rand bit[ 1:0] trg_tmdc  ;
  rand bit       int_en    ;
  rand bit[ 3:0] int_mask  ;
  rand bit       soft_req  ;

  function new(string name = "dma_launch_seq");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(dma_launch_seq)
    `uvm_field_int(src_addr , UVM_ALL_ON)
    `uvm_field_int(dst_addr , UVM_ALL_ON)
    `uvm_field_int(byte_len , UVM_ALL_ON)
    `uvm_field_int(sinc     , UVM_ALL_ON)
    `uvm_field_int(dinc     , UVM_ALL_ON)
    `uvm_field_int(src_width, UVM_ALL_ON)
    `uvm_field_int(dst_width, UVM_ALL_ON)
    `uvm_field_int(prot_ctl , UVM_ALL_ON)
    `uvm_field_int(src_dtlgc, UVM_ALL_ON)
    `uvm_field_int(dst_dtlgc, UVM_ALL_ON)
    `uvm_field_int(trg_tmdc , UVM_ALL_ON)
    `uvm_field_int(int_en   , UVM_ALL_ON)
    `uvm_field_int(int_mask , UVM_ALL_ON)
    `uvm_field_int(soft_req , UVM_ALL_ON)
  `uvm_object_utils_end
  `uvm_declare_p_sequencer(virtual_sequencer)

  constraint default_c {
    soft sinc      == 0 ;
    soft dinc      == 0 ;
    soft src_width == 2 ;
    soft dst_width == 2 ;
    soft prot_ctl  == 0 ;
    soft src_dtlgc == 0 ;
    soft dst_dtlgc == 0 ;
    soft trg_tmdc  == 2 ;
    soft int_en    == 1 ;
    soft int_mask  == 2 ;
    soft soft_req  == 1 ;
  }

  extern virtual task body();
endclass

task dma_launch_seq::body();
  p_sequencer.env_cfg.set_reg_value(src_addr, $sformatf("SAR%0d", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value(dst_addr, $sformatf("DAR%0d", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value({8'h0, byte_len, 4'h0, sinc, dinc, src_width, dst_width}, $sformatf("CH%0d_CTRL_A", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value({13'h0, prot_ctl, dst_dtlgc, src_dtlgc, 10'h0, trg_tmdc, int_en}, $sformatf("CH%0d_CTRL_B", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value({28'h0, int_mask}, $sformatf("CH%0d_INT_MASK", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value(31'h1, $sformatf("CH%0d_EN", ch_id), "dma");
  p_sequencer.env_cfg.set_reg_value({31'h0, soft_req}, $sformatf("CH%0d_SOFT_REQ", ch_id), "dma");
endtask
