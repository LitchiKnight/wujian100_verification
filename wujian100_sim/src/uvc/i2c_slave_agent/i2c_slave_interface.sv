interface i2c_slave_interface(
  input scl,
  inout sda
);
  logic clk;
  logic scl;
  wire  sda;
  logic sda_io;
  logic sda_in;

  assign sda = sda_io ? 1'bz : 1'b0;
  assign (weak0, weak1) sda = 1'b1;
  
endinterface
