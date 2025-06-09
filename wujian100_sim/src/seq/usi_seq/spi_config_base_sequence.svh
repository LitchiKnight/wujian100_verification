class spi_config_base_sequence extends usi_config_base_sequence;
  `uvm_declare_p_sequencer(virtual_sequencer)

  rand bit      ms_mode    ;
  rand bit[3:0] data_size  ;
  rand bit[1:0] tmod       ;
  rand bit      cpha       ;
  rand bit      cpol       ;
  rand bit      nss_toggle ;
  rand bit      nss_ctrl   ;
  rand bit      nss_data   ;

  `uvm_object_utils_begin(spi_config_base_sequence)
    `uvm_field_int(ms_mode   , UVM_ALL_ON)
    `uvm_field_int(data_size , UVM_ALL_ON)
    `uvm_field_int(tmod      , UVM_ALL_ON)
    `uvm_field_int(cpha      , UVM_ALL_ON)
    `uvm_field_int(cpol      , UVM_ALL_ON)
    `uvm_field_int(nss_toggle, UVM_ALL_ON)
    `uvm_field_int(nss_ctrl  , UVM_ALL_ON)
    `uvm_field_int(nss_data  , UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "spi_config_base_sequence");
    super.new(name);
  endfunction

  constraint default_mode_sel_c {
    soft mode_sel == 2;
  }

  constraint default_spi_mode_c {
    soft ms_mode == 1;
  }

  constraint default_spi_ctrl_c {
    soft data_size  == 7;
    soft tmod       == 0;
    soft cpha       == 0;
    soft cpol       == 0;
    soft nss_toggle == 0;
    soft nss_ctrl   == 0;
  }

  constraint default_spi_nss_data_c {
    soft nss_data == 0;
  }

  extern virtual task body();
endclass

task spi_config_base_sequence::body();
  p_sequencer.env_cfg.set_reg_value({8'h0, clk_div0}, "CLK_DIV0", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({31'h0, ms_mode}, "SPI_MODE", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({22'h0, nss_ctrl, nss_toggle, cpol, cpha, tmod, data_size}, "SPI_CTRL", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({31'h0, nss_data}, "SPI_NSS_DATA", $sformatf("usi%0d", usi_id));
  super.body();
endtask
