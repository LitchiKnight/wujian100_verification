class spi_master_smoke_test extends smoke_base_test;
  `uvm_component_utils(spi_master_smoke_test)

   function new(string name = "spi_master_smoke_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern function void build_phase(uvm_phase phase);

  extern function void modify_config() ;
  extern task          run_smoke_test();
endclass

function void spi_master_smoke_test::build_phase(uvm_phase phase);
  super.build_phase(phase);

  uvm_config_db #(uvm_object_wrapper)::set(this, "env.spi_agt.sequencer.run_phase", "default_sequence", spi_rx_base_sequence::type_id::get());
endfunction

function void spi_master_smoke_test::modify_config();

endfunction

task spi_master_smoke_test::run_smoke_test();
  spi_config_base_sequence spi_cfg_seq  ;
  usi_set_data_sequence    set_data_seq ;

  spi_cfg_seq = spi_config_base_sequence::type_id::create("spi_cfg_seq");
  spi_cfg_seq.randomize() with {
    usi_id     == 2    ;
    usi_en     == 1    ;
    fm_en      == 1    ;
    tx_fifo_en == 1    ;
    rx_fifo_en == 1    ;
    clk_div0   == 2    ;
    ms_mode    == 1    ;
    tmod       == 1    ;
    nss_toggle == 1    ;
    nss_ctrl   == 1    ;
  };
  spi_cfg_seq.start(vseqr);

  set_data_seq = usi_set_data_sequence::type_id::create("set_data_seq");
  set_data_seq.randomize() with {
    usi_id == 2;
  };
  set_data_seq.start(vseqr);

  #10us;
endtask
