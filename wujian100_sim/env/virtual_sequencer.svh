class virtual_sequencer extends uvm_sequencer;
  `uvm_component_utils(virtual_sequencer)

  env_config               env_cfg       ;
  yuu_ahb_master_sequencer ahb_mst0_seqr ;
  yuu_ahb_master_sequencer ahb_mst1_seqr ;
  yuu_ahb_master_sequencer ahb_mst2_seqr ;
  i2c_master_sequencer     i2c_mst_seqr  ;

  function new(string name = "virtual_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

endclass
