interface i2c_master_interface(
  output scl,
  inout  sda
);
  logic clk;
  logic scl;
  wire  sda;
  logic sda_io;
  logic sda_in;

  assign sda = sda_io ? 1'bz : 1'b0;

  clocking m_drv_ctrl_cb @ (negedge (clk & scl));
    default input #1step output #1step;
    output sda_io;
  endclocking

  clocking m_drv_data_cb @ (negedge (clk & ~scl));
    default input #1step output #1step;
    output sda_io;
  endclocking

  clocking s_drv_data_cb @ (posedge scl);
    default input #1step output #1step;
    input sda_in;
  endclocking
endinterface
