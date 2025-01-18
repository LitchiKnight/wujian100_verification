interface spi_interface(
  inout sclk,
  inout mosi,
  inout miso,
  inout cs
);
  wire sclk;
  wire mosi;
  wire miso;
  wire cs  ;
  logic sclk_in;
  logic sclk_oe;
  logic mosi_in;
  logic mosi_oe;
  logic miso_in;
  logic miso_oe;
  logic cs_in;
  logic cs_oe;

  assign sclk = sclk_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) sclk = 1'b1;
  assign sclk_in = sclk;

  assign mosi = mosi_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) mosi = 1'b1;
  assign mosi_in = mosi;

  assign miso = miso_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) miso = 1'b1;
  assign miso_in = miso;

  assign cs = cs_oe ? 1'bz : 1'b0;
  assign (weak0, weak1) cs = 1'b1;
  assign cs_in = cs;
endinterface
