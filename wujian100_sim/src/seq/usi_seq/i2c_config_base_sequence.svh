class i2c_config_base_sequecne extends usi_config_base_sequence;
  `uvm_declare_p_sequencer(virtual_sequencer)

  rand bit      ms_mode    ;
  rand bit[9:0] i2c_addr   ;
  rand bit      addr_mode  ;
  rand bit      stop       ;
  rand bit      hs_mode    ;
  rand bit      sbyte      ;
  rand bit      gcall      ;
  rand bit[2:0] mcode      ;
  rand bit      gcall_mode ;
  rand bit[7:0] i2c_fm_div ;
  rand bit[7:0] i2c_hold   ;

  function new(string name = "i2c_config_base_sequecne");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(i2c_config_base_sequecne)
    `uvm_field_int(ms_mode   , UVM_ALL_ON)
    `uvm_field_int(i2c_addr  , UVM_ALL_ON)
    `uvm_field_int(addr_mode , UVM_ALL_ON)
    `uvm_field_int(stop      , UVM_ALL_ON)
    `uvm_field_int(hs_mode   , UVM_ALL_ON)
    `uvm_field_int(sbyte     , UVM_ALL_ON)
    `uvm_field_int(gcall     , UVM_ALL_ON)
    `uvm_field_int(mcode     , UVM_ALL_ON)
    `uvm_field_int(gcall_mode, UVM_ALL_ON)
    `uvm_field_int(i2c_fm_div, UVM_ALL_ON)
    `uvm_field_int(i2c_hold  , UVM_ALL_ON)
  `uvm_object_utils_end

  constraint default_i2c_mode_c {
    soft ms_mode == 1;
  }

  constraint default_i2c_addr_c {
    soft i2c_addr == 'h133;
  }

  constraint default_i2cm_ctrl_c {
    soft addr_mode == 0;
    soft stop      == 0;
    soft hs_mode   == 0;
    soft sbyte     == 0;
    soft gcall     == 0;
  }

  constraint default_i2cm_code_c {
    soft mcode == 1;
  }

  constraint default_i2cs_ctrl_c {
    soft gcall_mode == 0;
  }

  constraint default_i2c_fm_div_c {
    soft i2c_fm_div == 5;
  }

  constraint default_i2c_hold_c {
    soft i2c_hold == 5;
  }

  extern virtual task body();
endclass

task i2c_config_base_sequecne::body();
  p_sequencer.env_cfg.set_reg_value({8'h0, clk_div0}, "CLK_DIV0", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({8'h0, clk_div1}, "CLK_DIV1", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({31'h0, ms_mode}, "I2C_MODE", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({21'h0, i2c_addr}, "I2C_ADDR", $sformatf("usi%0d", usi_id));
  if (ms_mode) begin
    p_sequencer.env_cfg.set_reg_value({27'h0, gcall, sbyte, hs_mode, stop, addr_mode}, "I2CM_CTRL", $sformatf("usi%0d", usi_id));
    p_sequencer.env_cfg.set_reg_value({29'h0, mcode}, "I2CM_CODE", $sformatf("usi%0d", usi_id));
  end
  else
    p_sequencer.env_cfg.set_reg_value({31'h0, gcall_mode}, "I2CS_CTRL", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({24'h0, i2c_fm_div}, "I2C_FM_DIV", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({24'h0, i2c_hold}, "I2C_HOLD", $sformatf("usi%0d", usi_id));
  super.body();
endtask
