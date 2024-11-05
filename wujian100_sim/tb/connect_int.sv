module connect_int;
  bit[15:0] rev_intr;

  initial begin
    assign tb_top.int_if.interrupt = {
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy7_intr | tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy8_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy5_intr | tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy6_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy4_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy3_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy2_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb1_dummy1_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy9_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy8_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy7_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy5_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy4_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy3_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy2_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.apb0_dummy1_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.lsbus_dummy3_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.lsbus_dummy2_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.lsbus_dummy1_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.lsbus_dummy0_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.main_dummy3_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.main_dummy2_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.main_dummy1_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.main_dummy0_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.main_imemdummy0_intr | tb_top.u_top_hdl.dut.x_cpu_top.main_dmemdummy0_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim7_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim6_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim5_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim4_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.dmac0_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.pmu_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.usi2_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.usi1_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.usi0_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.wdt_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.rtc_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.pwm_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim3_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim2_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim1_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.tim0_wic_intr,
      tb_top.u_top_hdl.dut.x_cpu_top.gpio_wic_intr,
      rev_intr
    };
  end
endmodule
