class wujian100_base_test extends uvm_test;
  `uvm_component_utils(wujian100_base_test)

  virtual yuu_ahb_master_interface ahb_mst0_vif ;
  virtual yuu_ahb_master_interface ahb_mst1_vif ;
  virtual yuu_ahb_master_interface ahb_mst2_vif ;
  virtual yuu_int_if               int_vif      ;

          env_config               env_cfg      ;
		  top_env                  env          ;
		  virtual_sequencer        vseqr        ;
          uvm_event_pool           events       ;

  function new(string name = "wujian100_base_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase)              ;
  extern virtual function void connect_phase(uvm_phase phase)            ;
  extern virtual function void end_of_elaboration_phase(uvm_phase phase) ;
  extern virtual task          pre_main_phase(uvm_phase phase)           ;
  extern virtual task          main_phase(uvm_phase phase)               ;

  extern virtual function void create_config()                           ;
  extern virtual function void retrieve_vifs()                           ;
  extern virtual function void create_events()                           ;
  extern virtual function void assign_config()                           ;
  extern virtual function void install_isr()                             ;
  extern virtual function void create_env()                              ;

  extern virtual task          read_memory(output bit[`DATA_BITS-1:0] data[],
                                           input  memory_t            mem_type,
                                           input  bit[`ADDR_BITS-1:0] offset,
                                           input  int                 len);
  extern virtual task          write_memory(input  memory_t            mem_type,
                                            input  bit[`ADDR_BITS-1:0] offset,
                                            input  bit[`DATA_BITS-1:0] data[],
                                            input  int                 len);
  extern virtual task          write_register(bit[31:0] data,
                                              string    reg_name,
                                              string    block_name);
  extern virtual task          read_register(output bit[31:0] data,
                                             input  string    reg_name,
											 input  string    block_name);
  extern virtual task          write_field(bit[31:0] data,
                                           string    field_name,
                                           string    reg_name,
                                           string    block_name);
  extern virtual task          read_field(output bit[31:0] data,
                                          input  string    field_name,
                                          input  string    reg_name,
                                          input  string    block_name);
endclass

function void wujian100_base_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  create_config() ;
  retrieve_vifs() ;
  create_events() ;
  assign_config() ;
  create_env()    ;

  uvm_config_db #(env_config)::set(this, "env", "env_cfg", env_cfg);
endfunction

function void wujian100_base_test::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  vseqr = env.vseqr;
endfunction

function void wujian100_base_test::end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);

  uvm_top.print_topology();
endfunction

task wujian100_base_test::pre_main_phase(uvm_phase phase);
  super.pre_main_phase(phase);

  install_isr();
endtask

task wujian100_base_test::main_phase(uvm_phase phase);
  `uvm_info(get_type_name(), $sformatf("start run %s", get_name()), UVM_LOW)
endtask

function void wujian100_base_test::create_config();
  env_cfg = env_config::type_id::create("env_cfg");
endfunction

function void wujian100_base_test::retrieve_vifs();
  if (!uvm_config_db #(virtual yuu_ahb_master_interface)::get(this, "", "ahb_mst0_if", ahb_mst0_vif))
	`uvm_fatal(get_type_name(), "can't get ahb master 0 interface, please check!")

  if (!uvm_config_db #(virtual yuu_ahb_master_interface)::get(this, "", "ahb_mst1_if", ahb_mst1_vif))
	`uvm_fatal(get_type_name(), "can't get ahb master 1 interface, please check!")

  if (!uvm_config_db #(virtual yuu_ahb_master_interface)::get(this, "", "ahb_mst2_if", ahb_mst2_vif))
	`uvm_fatal(get_type_name(), "can't get ahb master 2 interface, please check!")

  if (!uvm_config_db #(virtual yuu_int_if)::get(this, "", "int_if", int_vif))
    `uvm_fatal(get_type_name(), "can't get interrupt interface, please check!")
endfunction

function void wujian100_base_test::create_events();
  this.events = new("events");
endfunction

function void wujian100_base_test::assign_config();
  env_cfg.ahb_mst0_cfg                 = yuu_ahb_master_config::type_id::create("ahb_mst0_cfg");
  env_cfg.ahb_mst0_cfg.index           = 0;
  env_cfg.ahb_mst0_cfg.coverage_enable = True;
  env_cfg.ahb_mst0_cfg.use_response    = True;
  env_cfg.ahb_mst0_cfg.use_reg_model   = True;
  env_cfg.ahb_mst0_cfg.events          = this.events;
  env_cfg.ahb_mst0_cfg.vif             = ahb_mst0_vif;

  env_cfg.ahb_mst1_cfg                 = yuu_ahb_master_config::type_id::create("ahb_mst1_cfg");
  env_cfg.ahb_mst1_cfg.index           = 0;
  env_cfg.ahb_mst1_cfg.coverage_enable = True;
  env_cfg.ahb_mst1_cfg.use_response    = True;
  env_cfg.ahb_mst1_cfg.events          = this.events;
  env_cfg.ahb_mst1_cfg.vif             = ahb_mst1_vif;

  env_cfg.ahb_mst2_cfg                 = yuu_ahb_master_config::type_id::create("ahb_mst2_cfg");
  env_cfg.ahb_mst2_cfg.index           = 0;
  env_cfg.ahb_mst2_cfg.coverage_enable = True;
  env_cfg.ahb_mst2_cfg.use_response    = True;
  env_cfg.ahb_mst2_cfg.events          = this.events;
  env_cfg.ahb_mst2_cfg.vif             = ahb_mst2_vif;

  env_cfg.int_cfg        = yuu_int_config::type_id::create("int_cfg");
  env_cfg.int_cfg.vif    = int_vif;
  env_cfg.int_cfg.events = this.events;
  
  env_cfg.events = this.events;

  uvm_reg::include_coverage("*", UVM_CVR_ALL);
  env_cfg.regm = top_reg_model::type_id::create("regm");
  env_cfg.regm.configure(null, "");
  env_cfg.regm.build();
  env_cfg.regm.lock_model();
  env_cfg.regm.reset();
  env_cfg.regm.set_coverage(UVM_CVR_ALL);
endfunction

function void wujian100_base_test::install_isr();
  wdt_int_seq wdt_isr;

  wdt_isr = wdt_int_seq::type_id::create("wdt_isr");
  wdt_isr.set_sequencer(vseqr);
  env_cfg.int_cfg.install_isr(wdt_isr, 27, POSEDGE);
endfunction

function void wujian100_base_test::create_env();
  env = top_env::type_id::create("env", this);
endfunction

task wujian100_base_test::read_memory(output bit[`DATA_BITS-1:0] data[],
                                      input  memory_t            mem_type,
                                      input  bit[`ADDR_BITS-1:0] offset,
                                      input  int                 len);
  bit[`ADDR_BITS-1:0]  phy_addr   ;
  memory_read_sequence mem_rd_seq ;
 
  case (mem_type)
    INST_SRAM: phy_addr = `INST_SRAM_START_ADDR+offset;
    DATA_SRAM: phy_addr = `DATA_SRAM_START_ADDR+offset;
  endcase
 
  mem_rd_seq         = memory_read_sequence::type_id::create("mem_rd_seq");
  mem_rd_seq.rd_addr = phy_addr;
  mem_rd_seq.rd_len  = len;
  mem_rd_seq.start(vseqr.ahb_mst0_seqr);
 
  data = new[len];
  foreach(data[i])
    data[i] = mem_rd_seq.rd_data[i];
endtask

task wujian100_base_test::write_memory(input  memory_t            mem_type,
                                       input  bit[`ADDR_BITS-1:0] offset,
                                       input  bit[`DATA_BITS-1:0] data[],
                                       input  int                 len);
  bit[`ADDR_BITS-1:0]  phy_addr   ;
  memory_write_sequence mem_wr_seq ;

  case (mem_type)
    INST_SRAM: phy_addr = `INST_SRAM_START_ADDR+offset;
    DATA_SRAM: phy_addr = `DATA_SRAM_START_ADDR+offset;
  endcase

  mem_wr_seq         = memory_write_sequence::type_id::create("mem_wr_seq");
  mem_wr_seq.wr_addr = phy_addr;
  mem_wr_seq.wr_data = new[len];
  foreach(mem_wr_seq.wr_data[i])
    mem_wr_seq.wr_data[i] = data[i];
  mem_wr_seq.wr_len  = len;
  mem_wr_seq.start(vseqr.ahb_mst0_seqr);
endtask

task wujian100_base_test::write_register(bit[31:0] data,
                                         string    reg_name,
                                         string    block_name);
  env_cfg.set_reg_value(data, reg_name, block_name);
endtask

task wujian100_base_test::read_register(output bit[31:0] data,
                                        input  string    reg_name,
										input  string    block_name);
  env_cfg.get_reg_value(data, reg_name, block_name);
endtask

task wujian100_base_test::write_field(bit[31:0] data,
                                      string    field_name,
                                      string    reg_name,
                                      string    block_name);
  env_cfg.set_field_value(data, field_name, reg_name, block_name);
endtask

task wujian100_base_test::read_field(output bit[31:0] data,
                                     input  string    field_name,
                                     input  string    reg_name,
                                     input  string    block_name);
  env_cfg.get_field_value(data, field_name, reg_name, block_name);
endtask
