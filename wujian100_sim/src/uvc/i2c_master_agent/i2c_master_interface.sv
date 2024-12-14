interface i2c_master_interface(
  output scl,
  inout  sda
);
  logic clk;
  logic scl;
  wire  sda;
  logic sda_io;

  assign sda = sda_io ? 1'bz : 1'b0;
  assign (weak0, weak1) sda = 1'b1;

  clocking drv_cb @ (posedge clk);
    default input #1step output #1step;
    output sda_io;
  endclocking

  clocking mon_cb @ (posedge clk);
    default input #1step output #1step;
    input sda_io;
  endclocking

endinterface
