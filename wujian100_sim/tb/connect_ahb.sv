module connect_ahb;
  initial begin
    // connect master 0
    assign tb_top.ahb_mst0_if.hclk     = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_clk         ;
    assign tb_top.ahb_mst0_if.hreset_n = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_rst_b       ;

    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_haddr  = tb_top.ahb_mst0_if.haddr    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_hburst = tb_top.ahb_mst0_if.hburst   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_hprot  = tb_top.ahb_mst0_if.hprot    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_hsize  = tb_top.ahb_mst0_if.hsize    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_htrans = tb_top.ahb_mst0_if.htrans   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_hwdata = tb_top.ahb_mst0_if.hwdata   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m0_hwrite = tb_top.ahb_mst0_if.hwrite   ;

    force  tb_top.ahb_mst0_if.hrdata   = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m0_hrdata ;
    force  tb_top.ahb_mst0_if.hready_i = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m0_hready ;
    force  tb_top.ahb_mst0_if.hresp    = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m0_hresp  ;

    // connect master 1
    assign tb_top.ahb_mst1_if.hclk     = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_clk         ;
    assign tb_top.ahb_mst1_if.hreset_n = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_rst_b       ;

    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_haddr  = tb_top.ahb_mst1_if.haddr    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_hburst = tb_top.ahb_mst1_if.hburst   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_hprot  = tb_top.ahb_mst1_if.hprot    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_hsize  = tb_top.ahb_mst1_if.hsize    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_htrans = tb_top.ahb_mst1_if.htrans   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_hwdata = tb_top.ahb_mst1_if.hwdata   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m1_hwrite = tb_top.ahb_mst1_if.hwrite   ;

    force  tb_top.ahb_mst1_if.hrdata   = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m1_hrdata ;
    force  tb_top.ahb_mst1_if.hready_i = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m1_hready ;
    force  tb_top.ahb_mst1_if.hresp    = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m1_hresp  ;

	// connect master 2
    assign tb_top.ahb_mst2_if.hclk     = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_clk         ;
    assign tb_top.ahb_mst2_if.hreset_n = tb_top.u_top_hdl.dut.x_cpu_top.pad_core_rst_b       ;

    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_haddr  = tb_top.ahb_mst2_if.haddr    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_hburst = tb_top.ahb_mst2_if.hburst   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_hprot  = tb_top.ahb_mst2_if.hprot    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_hsize  = tb_top.ahb_mst2_if.hsize    ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_htrans = tb_top.ahb_mst2_if.htrans   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_hwdata = tb_top.ahb_mst2_if.hwdata   ;
    force  tb_top.u_top_hdl.dut.x_cpu_top.cpu_hmain0_m2_hwrite = tb_top.ahb_mst2_if.hwrite   ;

    force  tb_top.ahb_mst2_if.hrdata   = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m2_hrdata ;
    force  tb_top.ahb_mst2_if.hready_i = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m2_hready ;
    force  tb_top.ahb_mst2_if.hresp    = tb_top.u_top_hdl.dut.x_cpu_top.hmain0_cpu_m2_hresp  ;
  end
endmodule
