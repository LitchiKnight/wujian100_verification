`timescale 1ns/10ps

import uvm_pkg::*;
`include "uvm_macros.svh"

import yuu_common_pkg::*;
import yuu_ahb_pkg::*;
import yuu_int_pkg::*;
import i2c_pkg::*;
import uart_pkg::*;
import sim_pkg::*;
import spi_pkg::*;

module tb_top;
  
  `define CORE_JTG_TCLK_DURATION 500

  `define CLKMUX_EHS_CLK_DURATION 25 

  `define CLKMUX_ELS_CLK_DURATION 15258.789

  reg                         i_ext_pad_clkmux_ehs_clk ; 
  reg                         i_ext_pad_clkmux_els_clk ; 
  reg                         jtag_clk                 ;
  reg                         i_ext_pad_rstgen_i_mcurst;

  top_hdl                     u_top_hdl();
  top_hvl                     u_top_hvl();

  yuu_ahb_master_interface    ahb_mst0_if();
  yuu_ahb_master_interface    ahb_mst1_if();
  yuu_ahb_master_interface    ahb_mst2_if();
  connect_ahb                 con_ahb();

  yuu_int_if                  int_if(i_ext_pad_clkmux_ehs_clk);
  connect_int                 con_int();

  i2c_interface i2c_mst_if(
    .clk(i_ext_pad_clkmux_ehs_clk),
    .scl(u_top_hdl.PAD_USI0_SCLK),
    .sda(u_top_hdl.PAD_USI0_SD0)
  );
  i2c_interface i2c_slv_if(
    .clk(i_ext_pad_clkmux_ehs_clk),
    .scl(u_top_hdl.PAD_USI0_SCLK),
    .sda(u_top_hdl.PAD_USI0_SD0)
  );

  uart_interface uart_if(
    .tx(u_top_hdl.PAD_USI1_SCLK),
    .rx(u_top_hdl.PAD_USI1_SD0)
  );

  spi_interface spi_if(
    .sclk(u_top_hdl.PAD_USI2_SCLK),
    .mosi(u_top_hdl.PAD_USI2_SD0),
    .miso(u_top_hdl.PAD_USI2_SD1),
    .cs(u_top_hdl.PAD_USI2_NSS)
  );

////////////////////////////////////clock define/////////////////////////////////
////////////////////////////////////ehs clock define////////////////////////////
  assign u_top_hdl.PIN_EHS = i_ext_pad_clkmux_ehs_clk;
  initial begin
    i_ext_pad_clkmux_ehs_clk = 1'b0;
    forever begin
      #`CLKMUX_EHS_CLK_DURATION;
      i_ext_pad_clkmux_ehs_clk = ~i_ext_pad_clkmux_ehs_clk;
    end
  end

////////////////////////////////////els clock define////////////////////////////                   
  assign u_top_hdl.PIN_ELS = i_ext_pad_clkmux_els_clk;
  
  initial begin
    i_ext_pad_clkmux_els_clk = 1'b0;
    forever begin
      #`CLKMUX_ELS_CLK_DURATION;
      i_ext_pad_clkmux_els_clk = ~i_ext_pad_clkmux_els_clk;
    end
  end

////////////////////////////////////jtag clock define////////////////////////////
  assign u_top_hdl.PAD_JTAG_TCLK = jtag_clk;
  
  initial begin
    force u_top_hdl.PAD_JTAG_TMS = 1'b1;
  end
  
  initial begin
    jtag_clk = 1'b0;
    forever begin
      #`CORE_JTG_TCLK_DURATION;
      jtag_clk = ~jtag_clk;
    end
  end

/////////////////////////////////pad reset define/////////////////////////////
  assign u_top_hdl.PAD_MCURST = i_ext_pad_rstgen_i_mcurst;

  initial begin
    i_ext_pad_rstgen_i_mcurst = 1'b0;
    #200;
    i_ext_pad_rstgen_i_mcurst = 1'b0;
    #20000;
    i_ext_pad_rstgen_i_mcurst = 1'b1;
  end

endmodule
