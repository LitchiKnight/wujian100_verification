interface i2c_interface(input clk, inout scl, inout sda);
  logic clk    ;
  wire  scl    ;
  wire  sda    ;
  reg   scl_in ;
  reg   scl_oe ;
  reg   sda_in ;
  reg   sda_oe ;
  
  assign scl = scl_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) scl = 1'b1;
  assign scl_in = scl;

  assign sda = sda_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) sda = 1'b1;
  assign sda_in = sda;
  
  clocking drv_cb @ (negedge clk);
    default input #1step output #1step;
    output scl_oe;
    output sda_oe;
  endclocking
  
  clocking mon_cb @ (negedge clk);
    default input #1step output #1step;
    input scl_in;
    input sda_in;
  endclocking
endinterface
