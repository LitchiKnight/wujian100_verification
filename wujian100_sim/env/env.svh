class top_env extends uvm_env;
  `uvm_component_utils(top_env);
  
  env_config           env_cfg      ;
  yuu_ahb_master_agent ahb_mst0_agt ;
  yuu_ahb_master_agent ahb_mst1_agt ;
  yuu_ahb_master_agent ahb_mst2_agt ;
  yuu_int_agent        int_agt      ;
  virtual_sequencer    vseqr        ;

  function new(string name = "top_env", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual function void report_phase(uvm_phase phase);

endclass

function void top_env::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if (!uvm_config_db #(env_config)::get(this, "", "env_cfg", env_cfg))
    `uvm_fatal(get_type_name(), "can't get env config, please check!")

  ahb_mst0_agt = yuu_ahb_master_agent::type_id::create("ahb_mst0_agt", this);
  ahb_mst1_agt = yuu_ahb_master_agent::type_id::create("ahb_mst1_agt", this);
  ahb_mst2_agt = yuu_ahb_master_agent::type_id::create("ahb_mst2_agt", this);
  int_agt      = yuu_int_agent::type_id::create("int_agt", this);
  vseqr        = virtual_sequencer::type_id::create("vseqr", this);

  uvm_config_db#(yuu_ahb_master_config)::set(this, "ahb_mst0_agt", "cfg", env_cfg.ahb_mst0_cfg);
  uvm_config_db#(yuu_ahb_master_config)::set(this, "ahb_mst1_agt", "cfg", env_cfg.ahb_mst1_cfg);
  uvm_config_db#(yuu_ahb_master_config)::set(this, "ahb_mst2_agt", "cfg", env_cfg.ahb_mst2_cfg);
  uvm_config_db#(yuu_int_config)::set(this, "int_agt", "cfg", env_cfg.int_cfg);
endfunction

function void top_env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  vseqr.env_cfg       = this.env_cfg          ;
  vseqr.ahb_mst0_seqr = ahb_mst0_agt.sequencer;
  vseqr.ahb_mst1_seqr = ahb_mst1_agt.sequencer;
  vseqr.ahb_mst2_seqr = ahb_mst2_agt.sequencer;

  env_cfg.regm.default_map.set_sequencer(ahb_mst0_agt.sequencer, ahb_mst0_agt.adapter);
  ahb_mst0_agt.predictor.map = env_cfg.regm.default_map;
endfunction

function void top_env::report_phase(uvm_phase phase);
  uvm_report_server rpt_svr;

  super.report_phase(phase);
  rpt_svr = uvm_report_server::get_server();
  $display("");
  $display("#########################################");
  if (rpt_svr.get_severity_count(UVM_FATAL)+rpt_svr.get_severity_count(UVM_ERROR) > 0)
    $display("##         test result: failed         ##");
  else
	$display("##         test result: passed         ##");
  $display("#########################################");
  $display("");
endfunction
