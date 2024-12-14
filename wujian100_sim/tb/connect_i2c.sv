module connect_i2c;
  pullup(tb_top.u_top_hdl.PAD_USI0_SCLK);
  pullup(tb_top.u_top_hdl.PAD_USI0_SD0);

  assign tb_top.u_top_hdl.PAD_USI0_SCLK = tb_top.i2c_mst_if.scl;
  assign tb_top.u_top_hdl.PAD_USI0_SD0  = tb_top.i2c_mst_if.sda;
  assign tb_top.i2c_mst_if.sda_in       = tb_top.u_top_hdl.PAD_USI0_SD0;
endmodule
