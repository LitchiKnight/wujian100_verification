class usi_config_base_sequence extends uvm_sequence;
  `uvm_declare_p_sequencer(virtual_sequencer)

  rand bit[ 1:0] usi_id              ;
  rand bit       usi_en              ;
  rand bit       fm_en               ;
  rand bit       tx_fifo_en          ;
  rand bit       rx_fifo_en          ;
  rand bit[ 1:0] mode_sel            ;
  rand bit[23:0] clk_div0            ;
  rand bit[23:0] clk_div1            ;
  rand bit[ 2:0] tx_fifo_th          ;
  rand bit[ 2:0] rx_fifo_th          ;
  rand bit       th_mode             ;
  rand bit       tx_thold_en         ;
  rand bit       tx_empty_en         ;
  rand bit       tx_full_en          ;
  rand bit       tx_rerr_en          ;
  rand bit       tx_werr_en          ;
  rand bit       rx_thold_en         ;
  rand bit       rx_empty_en         ;
  rand bit       rx_full_en          ;
  rand bit       rx_rerr_en          ;
  rand bit       rx_werr_en          ;
  rand bit       uart_tx_stop_en     ;
  rand bit       uart_rx_stop_en     ;
  rand bit       uart_perr_en        ;
  rand bit       i2c_stop_en         ;
  rand bit       i2c_nack_en         ;
  rand bit       i2cm_lose_arbi_en   ;
  rand bit       i2cs_gcall_en       ;
  rand bit       i2c_aerr_en         ;
  rand bit       spi_stop_en         ;
  rand bit       tx_thold_mask       ;
  rand bit       tx_empty_mask       ;
  rand bit       tx_full_mask        ;
  rand bit       tx_rerr_mask        ;
  rand bit       tx_werr_mask        ;
  rand bit       rx_thold_mask       ;
  rand bit       rx_empty_mask       ;
  rand bit       rx_full_mask        ;
  rand bit       rx_rerr_mask        ;
  rand bit       rx_werr_mask        ;
  rand bit       uart_tx_stop_mask   ;
  rand bit       uart_rx_stop_mask   ;
  rand bit       uart_perr_mask      ;
  rand bit       i2c_stop_mask       ;
  rand bit       i2c_nack_mask       ;
  rand bit       i2cm_lose_arbi_mask ;
  rand bit       i2cs_gcall_mask     ;
  rand bit       i2c_aerr_mask       ;
  rand bit       spi_stop_mask       ;

  function new(string name = "usi_config_base_sequence");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(usi_config_base_sequence);
    `uvm_field_int(usi_id             , UVM_ALL_ON)
    `uvm_field_int(usi_en             , UVM_ALL_ON)
    `uvm_field_int(fm_en              , UVM_ALL_ON)
    `uvm_field_int(tx_fifo_en         , UVM_ALL_ON)
    `uvm_field_int(rx_fifo_en         , UVM_ALL_ON)
    `uvm_field_int(mode_sel           , UVM_ALL_ON)
    `uvm_field_int(clk_div0           , UVM_ALL_ON)
    `uvm_field_int(clk_div1           , UVM_ALL_ON)
    `uvm_field_int(tx_fifo_th         , UVM_ALL_ON)
    `uvm_field_int(rx_fifo_th         , UVM_ALL_ON)
    `uvm_field_int(th_mode            , UVM_ALL_ON)
    `uvm_field_int(tx_thold_en        , UVM_ALL_ON)
    `uvm_field_int(tx_empty_en        , UVM_ALL_ON)
    `uvm_field_int(tx_full_en         , UVM_ALL_ON)
    `uvm_field_int(tx_rerr_en         , UVM_ALL_ON)
    `uvm_field_int(tx_werr_en         , UVM_ALL_ON)
    `uvm_field_int(rx_thold_en        , UVM_ALL_ON)
    `uvm_field_int(rx_empty_en        , UVM_ALL_ON)
    `uvm_field_int(rx_full_en         , UVM_ALL_ON)
    `uvm_field_int(rx_rerr_en         , UVM_ALL_ON)
    `uvm_field_int(rx_werr_en         , UVM_ALL_ON)
    `uvm_field_int(uart_tx_stop_en    , UVM_ALL_ON)
    `uvm_field_int(uart_rx_stop_en    , UVM_ALL_ON)
    `uvm_field_int(uart_perr_en       , UVM_ALL_ON)
    `uvm_field_int(i2c_stop_en        , UVM_ALL_ON)
    `uvm_field_int(i2c_nack_en        , UVM_ALL_ON)
    `uvm_field_int(i2cm_lose_arbi_en  , UVM_ALL_ON)
    `uvm_field_int(i2cs_gcall_en      , UVM_ALL_ON)
    `uvm_field_int(i2c_aerr_en        , UVM_ALL_ON)
    `uvm_field_int(spi_stop_en        , UVM_ALL_ON)
    `uvm_field_int(tx_thold_mask      , UVM_ALL_ON)
    `uvm_field_int(tx_empty_mask      , UVM_ALL_ON)
    `uvm_field_int(tx_full_mask       , UVM_ALL_ON)
    `uvm_field_int(tx_rerr_mask       , UVM_ALL_ON)
    `uvm_field_int(tx_werr_mask       , UVM_ALL_ON)
    `uvm_field_int(rx_thold_mask      , UVM_ALL_ON)
    `uvm_field_int(rx_empty_mask      , UVM_ALL_ON)
    `uvm_field_int(rx_full_mask       , UVM_ALL_ON)
    `uvm_field_int(rx_rerr_mask       , UVM_ALL_ON)
    `uvm_field_int(rx_werr_mask       , UVM_ALL_ON)
    `uvm_field_int(uart_tx_stop_mask  , UVM_ALL_ON)
    `uvm_field_int(uart_rx_stop_mask  , UVM_ALL_ON)
    `uvm_field_int(uart_perr_mask     , UVM_ALL_ON)
    `uvm_field_int(i2c_stop_mask      , UVM_ALL_ON)
    `uvm_field_int(i2c_nack_mask      , UVM_ALL_ON)
    `uvm_field_int(i2cm_lose_arbi_mask, UVM_ALL_ON)
    `uvm_field_int(i2cs_gcall_mask    , UVM_ALL_ON)
    `uvm_field_int(i2c_aerr_mask      , UVM_ALL_ON)
    `uvm_field_int(spi_stop_mask      , UVM_ALL_ON)
  `uvm_object_utils_end
  
  constraint default_usi_ctrl_c {
    soft usi_en     == 0;
    soft fm_en      == 0;
    soft tx_fifo_en == 0;
    soft rx_fifo_en == 0;
  }

  constraint default_clk_div0_c {
    soft clk_div0 == 'h20;
  }

  constraint default_clk_div1_c {
    soft clk_div1 == 'h30;
  }

  constraint default_intr_ctrl_c {
    soft tx_fifo_th == 0;
    soft rx_fifo_th == 1;
    soft th_mode    == 1;  
  }

  constraint default_intr_en_c {
    soft tx_thold_en       == 0;
    soft tx_empty_en       == 0;
    soft tx_full_en        == 0;
    soft tx_rerr_en        == 0;
    soft tx_werr_en        == 0;
    soft rx_thold_en       == 0;
    soft rx_empty_en       == 0;
    soft rx_full_en        == 0;
    soft rx_rerr_en        == 0;
    soft rx_werr_en        == 0;
    soft uart_tx_stop_en   == 0;
    soft uart_rx_stop_en   == 0;
    soft uart_perr_en      == 0;
    soft i2c_stop_en       == 0;
    soft i2c_nack_en       == 0;
    soft i2cm_lose_arbi_en == 0;
    soft i2cs_gcall_en     == 0;
    soft i2c_aerr_en       == 0;
    soft spi_stop_en       == 0;
  }

  constraint default_intr_unmask_c {
    soft tx_thold_mask       == 0;
    soft tx_empty_mask       == 0;  
    soft tx_full_mask        == 0;
    soft tx_rerr_mask        == 0;
    soft tx_werr_mask        == 0;
    soft rx_thold_mask       == 0;
    soft rx_empty_mask       == 0;
    soft rx_full_mask        == 0;
    soft rx_rerr_mask        == 0;
    soft rx_werr_mask        == 0;
    soft uart_tx_stop_mask   == 0;
    soft uart_rx_stop_mask   == 0;
    soft uart_perr_mask      == 0;
    soft i2c_stop_mask       == 0;
    soft i2c_nack_mask       == 0;
    soft i2cm_lose_arbi_mask == 0;
    soft i2cs_gcall_mask     == 0;
    soft i2c_aerr_mask       == 0;
    soft spi_stop_mask       == 0;
  }

  extern virtual task body();
endclass

task usi_config_base_sequence::body();
  p_sequencer.env_cfg.set_reg_value({30'h0, mode_sel}, "MODE_SEL", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({15'h0, th_mode, 5'h0, rx_fifo_th, 5'h0, tx_fifo_th}, "INTR_CTRL", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({13'h0, spi_stop_en, i2c_aerr_en, i2cs_gcall_en, i2cm_lose_arbi_en, i2c_nack_en, i2c_stop_en, uart_perr_en, uart_rx_stop_en, uart_tx_stop_en, rx_werr_en, rx_rerr_en, rx_full_en, rx_empty_en, rx_thold_en, tx_werr_en, tx_rerr_en, tx_full_en, tx_empty_en, tx_thold_en}, "INTR_EN", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({13'h0, spi_stop_mask, i2c_aerr_mask, i2cs_gcall_mask, i2cm_lose_arbi_mask, i2c_nack_mask, i2c_stop_mask, uart_perr_mask, uart_rx_stop_mask, uart_tx_stop_mask, rx_werr_mask, rx_rerr_mask, rx_full_mask, rx_empty_mask, rx_thold_mask, tx_werr_mask, tx_rerr_mask, tx_full_mask, tx_empty_mask, tx_thold_mask}, "INTR_MASK", $sformatf("usi%0d", usi_id));
  p_sequencer.env_cfg.set_reg_value({28'h0, rx_fifo_en, tx_fifo_en, fm_en, usi_en}, "USI_CTRL",$sformatf("usi%0d", usi_id));
endtask
