`ifndef RAL_USI0
`define RAL_USI0

import uvm_pkg::*;

class ral_reg_USI_CTRL extends uvm_reg;
	rand uvm_reg_field USI_EN;
	rand uvm_reg_field FM_EN;
	rand uvm_reg_field TX_FIFO_EN;
	rand uvm_reg_field RX_FIFO_EN;

	function new(string name = "USI_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.USI_EN = uvm_reg_field::type_id::create("USI_EN",,get_full_name());
      this.USI_EN.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.FM_EN = uvm_reg_field::type_id::create("FM_EN",,get_full_name());
      this.FM_EN.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_FIFO_EN = uvm_reg_field::type_id::create("TX_FIFO_EN",,get_full_name());
      this.TX_FIFO_EN.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_FIFO_EN = uvm_reg_field::type_id::create("RX_FIFO_EN",,get_full_name());
      this.RX_FIFO_EN.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_USI_CTRL)

endclass : ral_reg_USI_CTRL


class ral_reg_MODE_SEL extends uvm_reg;
	rand uvm_reg_field MODE_SEL;

	function new(string name = "MODE_SEL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.MODE_SEL = uvm_reg_field::type_id::create("MODE_SEL",,get_full_name());
      this.MODE_SEL.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_MODE_SEL)

endclass : ral_reg_MODE_SEL


class ral_reg_DATA_FIFO extends uvm_reg;
	rand uvm_reg_field DATA;

	function new(string name = "DATA_FIFO");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DATA = uvm_reg_field::type_id::create("DATA",,get_full_name());
      this.DATA.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DATA_FIFO)

endclass : ral_reg_DATA_FIFO


class ral_reg_FIFO_STA extends uvm_reg;
	uvm_reg_field TX_EMPTY;
	uvm_reg_field TX_FULL;
	uvm_reg_field RX_EMPTY;
	uvm_reg_field RX_FULL;
	uvm_reg_field TX_NUM;
	uvm_reg_field RX_NUM;

	function new(string name = "FIFO_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_EMPTY = uvm_reg_field::type_id::create("TX_EMPTY",,get_full_name());
      this.TX_EMPTY.configure(this, 1, 0, "RO", 0, 1'b1, 1, 0, 0);
      this.TX_FULL = uvm_reg_field::type_id::create("TX_FULL",,get_full_name());
      this.TX_FULL.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_EMPTY = uvm_reg_field::type_id::create("RX_EMPTY",,get_full_name());
      this.RX_EMPTY.configure(this, 1, 2, "RO", 0, 1'b1, 1, 0, 0);
      this.RX_FULL = uvm_reg_field::type_id::create("RX_FULL",,get_full_name());
      this.RX_FULL.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.TX_NUM = uvm_reg_field::type_id::create("TX_NUM",,get_full_name());
      this.TX_NUM.configure(this, 4, 8, "RO", 0, 4'h0, 1, 0, 1);
      this.RX_NUM = uvm_reg_field::type_id::create("RX_NUM",,get_full_name());
      this.RX_NUM.configure(this, 4, 16, "RO", 0, 4'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_FIFO_STA)

endclass : ral_reg_FIFO_STA


class ral_reg_CLK_DIV0 extends uvm_reg;
	rand uvm_reg_field CLK_DIV0;

	function new(string name = "CLK_DIV0");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CLK_DIV0 = uvm_reg_field::type_id::create("CLK_DIV0",,get_full_name());
      this.CLK_DIV0.configure(this, 24, 0, "RW", 0, 24'h20, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CLK_DIV0)

endclass : ral_reg_CLK_DIV0


class ral_reg_CLK_DIV1 extends uvm_reg;
	rand uvm_reg_field CLK_DIV1;

	function new(string name = "CLK_DIV1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CLK_DIV1 = uvm_reg_field::type_id::create("CLK_DIV1",,get_full_name());
      this.CLK_DIV1.configure(this, 24, 0, "RW", 0, 24'h20, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CLK_DIV1)

endclass : ral_reg_CLK_DIV1


class ral_reg_UART_CTRL extends uvm_reg;
	rand uvm_reg_field DBIT;
	rand uvm_reg_field PBIT;
	rand uvm_reg_field PEN;
	rand uvm_reg_field EPS;

	function new(string name = "UART_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DBIT = uvm_reg_field::type_id::create("DBIT",,get_full_name());
      this.DBIT.configure(this, 2, 0, "RW", 0, 2'h3, 1, 0, 0);
      this.PBIT = uvm_reg_field::type_id::create("PBIT",,get_full_name());
      this.PBIT.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.PEN = uvm_reg_field::type_id::create("PEN",,get_full_name());
      this.PEN.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.EPS = uvm_reg_field::type_id::create("EPS",,get_full_name());
      this.EPS.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_UART_CTRL)

endclass : ral_reg_UART_CTRL


class ral_reg_UART_STA extends uvm_reg;
	uvm_reg_field TXD_WORK;
	uvm_reg_field RXD_WORK;

	function new(string name = "UART_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TXD_WORK = uvm_reg_field::type_id::create("TXD_WORK",,get_full_name());
      this.TXD_WORK.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.RXD_WORK = uvm_reg_field::type_id::create("RXD_WORK",,get_full_name());
      this.RXD_WORK.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_UART_STA)

endclass : ral_reg_UART_STA


class ral_reg_I2C_MODE extends uvm_reg;
	rand uvm_reg_field MS_MODE;

	function new(string name = "I2C_MODE");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.MS_MODE = uvm_reg_field::type_id::create("MS_MODE",,get_full_name());
      this.MS_MODE.configure(this, 1, 0, "RW", 0, 1'b1, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2C_MODE)

endclass : ral_reg_I2C_MODE


class ral_reg_I2C_ADDR extends uvm_reg;
	rand uvm_reg_field I2C_ADDR;

	function new(string name = "I2C_ADDR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.I2C_ADDR = uvm_reg_field::type_id::create("I2C_ADDR",,get_full_name());
      this.I2C_ADDR.configure(this, 10, 0, "RW", 0, 10'h133, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2C_ADDR)

endclass : ral_reg_I2C_ADDR


class ral_reg_I2CM_CTRL extends uvm_reg;
	rand uvm_reg_field ADDR_MODE;
	rand uvm_reg_field STOP;
	rand uvm_reg_field HS_MODE;
	rand uvm_reg_field SBYTE;
	rand uvm_reg_field GCALL;

	function new(string name = "I2CM_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ADDR_MODE = uvm_reg_field::type_id::create("ADDR_MODE",,get_full_name());
      this.ADDR_MODE.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.STOP = uvm_reg_field::type_id::create("STOP",,get_full_name());
      this.STOP.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.HS_MODE = uvm_reg_field::type_id::create("HS_MODE",,get_full_name());
      this.HS_MODE.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.SBYTE = uvm_reg_field::type_id::create("SBYTE",,get_full_name());
      this.SBYTE.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.GCALL = uvm_reg_field::type_id::create("GCALL",,get_full_name());
      this.GCALL.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_I2CM_CTRL)

endclass : ral_reg_I2CM_CTRL


class ral_reg_I2CM_CODE extends uvm_reg;
	rand uvm_reg_field MCODE;

	function new(string name = "I2CM_CODE");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.MCODE = uvm_reg_field::type_id::create("MCODE",,get_full_name());
      this.MCODE.configure(this, 3, 0, "RW", 0, 3'h1, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2CM_CODE)

endclass : ral_reg_I2CM_CODE


class ral_reg_I2CS_CTRL extends uvm_reg;
	rand uvm_reg_field GCALL_MODE;

	function new(string name = "I2CS_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.GCALL_MODE = uvm_reg_field::type_id::create("GCALL_MODE",,get_full_name());
      this.GCALL_MODE.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2CS_CTRL)

endclass : ral_reg_I2CS_CTRL


class ral_reg_I2C_FM_DIV extends uvm_reg;
	rand uvm_reg_field I2C_FM_DIV;

	function new(string name = "I2C_FM_DIV");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.I2C_FM_DIV = uvm_reg_field::type_id::create("I2C_FM_DIV",,get_full_name());
      this.I2C_FM_DIV.configure(this, 8, 0, "RW", 0, 8'h5, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2C_FM_DIV)

endclass : ral_reg_I2C_FM_DIV


class ral_reg_I2C_HOLD extends uvm_reg;
	rand uvm_reg_field I2C_HOLD;

	function new(string name = "I2C_HOLD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.I2C_HOLD = uvm_reg_field::type_id::create("I2C_HOLD",,get_full_name());
      this.I2C_HOLD.configure(this, 8, 0, "RW", 0, 8'h5, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2C_HOLD)

endclass : ral_reg_I2C_HOLD


class ral_reg_I2C_STA extends uvm_reg;
	uvm_reg_field I2CM_WORK;
	uvm_reg_field I2CM_DATA;
	uvm_reg_field I2CS_WORK;

	function new(string name = "I2C_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.I2CM_WORK = uvm_reg_field::type_id::create("I2CM_WORK",,get_full_name());
      this.I2CM_WORK.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.I2CM_DATA = uvm_reg_field::type_id::create("I2CM_DATA",,get_full_name());
      this.I2CM_DATA.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.I2CS_WORK = uvm_reg_field::type_id::create("I2CS_WORK",,get_full_name());
      this.I2CS_WORK.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_I2C_STA)

endclass : ral_reg_I2C_STA


class ral_reg_SPI_MODE extends uvm_reg;
	rand uvm_reg_field MS_MODE;

	function new(string name = "SPI_MODE");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.MS_MODE = uvm_reg_field::type_id::create("MS_MODE",,get_full_name());
      this.MS_MODE.configure(this, 1, 0, "RW", 0, 1'b1, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SPI_MODE)

endclass : ral_reg_SPI_MODE


class ral_reg_SPI_CTRL extends uvm_reg;
	rand uvm_reg_field DATA_SIZE;
	rand uvm_reg_field TMOD;
	rand uvm_reg_field CPHA;
	rand uvm_reg_field CPOL;
	rand uvm_reg_field NSS_TOGGLE;
	rand uvm_reg_field NSS_CTRL;

	function new(string name = "SPI_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DATA_SIZE = uvm_reg_field::type_id::create("DATA_SIZE",,get_full_name());
      this.DATA_SIZE.configure(this, 4, 0, "RW", 0, 4'h7, 1, 0, 0);
      this.TMOD = uvm_reg_field::type_id::create("TMOD",,get_full_name());
      this.TMOD.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.CPHA = uvm_reg_field::type_id::create("CPHA",,get_full_name());
      this.CPHA.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.CPOL = uvm_reg_field::type_id::create("CPOL",,get_full_name());
      this.CPOL.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.NSS_TOGGLE = uvm_reg_field::type_id::create("NSS_TOGGLE",,get_full_name());
      this.NSS_TOGGLE.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.NSS_CTRL = uvm_reg_field::type_id::create("NSS_CTRL",,get_full_name());
      this.NSS_CTRL.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_SPI_CTRL)

endclass : ral_reg_SPI_CTRL


class ral_reg_SPI_STA extends uvm_reg;
	uvm_reg_field SPI_WORKING;

	function new(string name = "SPI_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SPI_WORKING = uvm_reg_field::type_id::create("SPI_WORKING",,get_full_name());
      this.SPI_WORKING.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SPI_STA)

endclass : ral_reg_SPI_STA


class ral_reg_INTR_CTRL extends uvm_reg;
	rand uvm_reg_field TX_FIFO_TH;
	rand uvm_reg_field RX_FIFO_TH;
	rand uvm_reg_field TH_MODE;

	function new(string name = "INTR_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_FIFO_TH = uvm_reg_field::type_id::create("TX_FIFO_TH",,get_full_name());
      this.TX_FIFO_TH.configure(this, 3, 0, "RW", 0, 3'h1, 1, 0, 1);
      this.RX_FIFO_TH = uvm_reg_field::type_id::create("RX_FIFO_TH",,get_full_name());
      this.RX_FIFO_TH.configure(this, 3, 8, "RW", 0, 3'h1, 1, 0, 1);
      this.TH_MODE = uvm_reg_field::type_id::create("TH_MODE",,get_full_name());
      this.TH_MODE.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_INTR_CTRL)

endclass : ral_reg_INTR_CTRL


class ral_reg_INTR_EN extends uvm_reg;
	rand uvm_reg_field TX_THOLD_EN;
	rand uvm_reg_field TX_EMPTY_EN;
	rand uvm_reg_field TX_FULL_EN;
	rand uvm_reg_field TX_RERR_EN;
	rand uvm_reg_field TX_WERR_EN;
	rand uvm_reg_field RX_THOLD_EN;
	rand uvm_reg_field RX_EMPTY_EN;
	rand uvm_reg_field RX_FULL_EN;
	rand uvm_reg_field RX_RERR_EN;
	rand uvm_reg_field RX_WERR_EN;
	rand uvm_reg_field UART_TX_STOP_EN;
	rand uvm_reg_field UART_RX_STOP_EN;
	rand uvm_reg_field UART_PERR_EN;
	rand uvm_reg_field I2C_STOP_EN;
	rand uvm_reg_field I2C_NACK_EN;
	rand uvm_reg_field I2CM_LOSE_ARBI_EN;
	rand uvm_reg_field I2CS_GCALL_EN;
	rand uvm_reg_field I2C_AERR_EN;
	rand uvm_reg_field SPI_STOP_EN;

	function new(string name = "INTR_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_THOLD_EN = uvm_reg_field::type_id::create("TX_THOLD_EN",,get_full_name());
      this.TX_THOLD_EN.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_EMPTY_EN = uvm_reg_field::type_id::create("TX_EMPTY_EN",,get_full_name());
      this.TX_EMPTY_EN.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_FULL_EN = uvm_reg_field::type_id::create("TX_FULL_EN",,get_full_name());
      this.TX_FULL_EN.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_RERR_EN = uvm_reg_field::type_id::create("TX_RERR_EN",,get_full_name());
      this.TX_RERR_EN.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_WERR_EN = uvm_reg_field::type_id::create("TX_WERR_EN",,get_full_name());
      this.TX_WERR_EN.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_THOLD_EN = uvm_reg_field::type_id::create("RX_THOLD_EN",,get_full_name());
      this.RX_THOLD_EN.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_EMPTY_EN = uvm_reg_field::type_id::create("RX_EMPTY_EN",,get_full_name());
      this.RX_EMPTY_EN.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_FULL_EN = uvm_reg_field::type_id::create("RX_FULL_EN",,get_full_name());
      this.RX_FULL_EN.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_RERR_EN = uvm_reg_field::type_id::create("RX_RERR_EN",,get_full_name());
      this.RX_RERR_EN.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_WERR_EN = uvm_reg_field::type_id::create("RX_WERR_EN",,get_full_name());
      this.RX_WERR_EN.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_TX_STOP_EN = uvm_reg_field::type_id::create("UART_TX_STOP_EN",,get_full_name());
      this.UART_TX_STOP_EN.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_RX_STOP_EN = uvm_reg_field::type_id::create("UART_RX_STOP_EN",,get_full_name());
      this.UART_RX_STOP_EN.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_PERR_EN = uvm_reg_field::type_id::create("UART_PERR_EN",,get_full_name());
      this.UART_PERR_EN.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_STOP_EN = uvm_reg_field::type_id::create("I2C_STOP_EN",,get_full_name());
      this.I2C_STOP_EN.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_NACK_EN = uvm_reg_field::type_id::create("I2C_NACK_EN",,get_full_name());
      this.I2C_NACK_EN.configure(this, 1, 14, "RW", 0, 1'b0, 1, 0, 0);
      this.I2CM_LOSE_ARBI_EN = uvm_reg_field::type_id::create("I2CM_LOSE_ARBI_EN",,get_full_name());
      this.I2CM_LOSE_ARBI_EN.configure(this, 1, 15, "RW", 0, 1'b0, 1, 0, 0);
      this.I2CS_GCALL_EN = uvm_reg_field::type_id::create("I2CS_GCALL_EN",,get_full_name());
      this.I2CS_GCALL_EN.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_AERR_EN = uvm_reg_field::type_id::create("I2C_AERR_EN",,get_full_name());
      this.I2C_AERR_EN.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.SPI_STOP_EN = uvm_reg_field::type_id::create("SPI_STOP_EN",,get_full_name());
      this.SPI_STOP_EN.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_INTR_EN)

endclass : ral_reg_INTR_EN


class ral_reg_INTR_STA extends uvm_reg;
	uvm_reg_field TX_THOLD;
	uvm_reg_field TX_EMPTY;
	uvm_reg_field TX_FULL;
	uvm_reg_field TX_RERR;
	uvm_reg_field TX_WERR;
	uvm_reg_field RX_THOLD;
	uvm_reg_field RX_EMPTY;
	uvm_reg_field RX_FULL;
	uvm_reg_field RX_RERR;
	uvm_reg_field RX_WERR;
	uvm_reg_field UART_TX_STOP;
	uvm_reg_field UART_RX_STOP;
	uvm_reg_field UART_PERR;
	uvm_reg_field I2C_STOP;
	uvm_reg_field I2C_NACK;
	uvm_reg_field I2CM_LOSE_ARBI;
	uvm_reg_field I2CS_GCALL;
	uvm_reg_field I2C_AERR;
	uvm_reg_field SPI_STOP;

	function new(string name = "INTR_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_THOLD = uvm_reg_field::type_id::create("TX_THOLD",,get_full_name());
      this.TX_THOLD.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.TX_EMPTY = uvm_reg_field::type_id::create("TX_EMPTY",,get_full_name());
      this.TX_EMPTY.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.TX_FULL = uvm_reg_field::type_id::create("TX_FULL",,get_full_name());
      this.TX_FULL.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.TX_RERR = uvm_reg_field::type_id::create("TX_RERR",,get_full_name());
      this.TX_RERR.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.TX_WERR = uvm_reg_field::type_id::create("TX_WERR",,get_full_name());
      this.TX_WERR.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_THOLD = uvm_reg_field::type_id::create("RX_THOLD",,get_full_name());
      this.RX_THOLD.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_EMPTY = uvm_reg_field::type_id::create("RX_EMPTY",,get_full_name());
      this.RX_EMPTY.configure(this, 1, 6, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_FULL = uvm_reg_field::type_id::create("RX_FULL",,get_full_name());
      this.RX_FULL.configure(this, 1, 7, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_RERR = uvm_reg_field::type_id::create("RX_RERR",,get_full_name());
      this.RX_RERR.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.RX_WERR = uvm_reg_field::type_id::create("RX_WERR",,get_full_name());
      this.RX_WERR.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.UART_TX_STOP = uvm_reg_field::type_id::create("UART_TX_STOP",,get_full_name());
      this.UART_TX_STOP.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.UART_RX_STOP = uvm_reg_field::type_id::create("UART_RX_STOP",,get_full_name());
      this.UART_RX_STOP.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.UART_PERR = uvm_reg_field::type_id::create("UART_PERR",,get_full_name());
      this.UART_PERR.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.I2C_STOP = uvm_reg_field::type_id::create("I2C_STOP",,get_full_name());
      this.I2C_STOP.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.I2C_NACK = uvm_reg_field::type_id::create("I2C_NACK",,get_full_name());
      this.I2C_NACK.configure(this, 1, 14, "RO", 0, 1'b0, 1, 0, 0);
      this.I2CM_LOSE_ARBI = uvm_reg_field::type_id::create("I2CM_LOSE_ARBI",,get_full_name());
      this.I2CM_LOSE_ARBI.configure(this, 1, 15, "RO", 0, 1'b0, 1, 0, 0);
      this.I2CS_GCALL = uvm_reg_field::type_id::create("I2CS_GCALL",,get_full_name());
      this.I2CS_GCALL.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.I2C_AERR = uvm_reg_field::type_id::create("I2C_AERR",,get_full_name());
      this.I2C_AERR.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.SPI_STOP = uvm_reg_field::type_id::create("SPI_STOP",,get_full_name());
      this.SPI_STOP.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_INTR_STA)

endclass : ral_reg_INTR_STA


class ral_reg_RAW_INTR_STA extends uvm_reg;
	uvm_reg_field RAW_TX_THOLD;
	uvm_reg_field RAW_TX_EMPTY;
	uvm_reg_field RAW_TX_FULL;
	uvm_reg_field RAW_TX_RERR;
	uvm_reg_field RAW_TX_WERR;
	uvm_reg_field RAW_RX_THOLD;
	uvm_reg_field RAW_RX_EMPTY;
	uvm_reg_field RAW_RX_FULL;
	uvm_reg_field RAW_RX_RERR;
	uvm_reg_field RAW_RX_WERR;
	uvm_reg_field RAW_UART_TX_STOP;
	uvm_reg_field RAW_UART_RX_STOP;
	uvm_reg_field RAW_UART_PERR;
	uvm_reg_field RAW_I2C_STOP;
	uvm_reg_field RAW_I2C_NACK;
	uvm_reg_field RAW_I2CM_LOSE_ARBI;
	uvm_reg_field RAW_I2CS_GCALL;
	uvm_reg_field RAW_I2C_AERR;
	uvm_reg_field RAW_SPI_STOP;

	function new(string name = "RAW_INTR_STA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.RAW_TX_THOLD = uvm_reg_field::type_id::create("RAW_TX_THOLD",,get_full_name());
      this.RAW_TX_THOLD.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_TX_EMPTY = uvm_reg_field::type_id::create("RAW_TX_EMPTY",,get_full_name());
      this.RAW_TX_EMPTY.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_TX_FULL = uvm_reg_field::type_id::create("RAW_TX_FULL",,get_full_name());
      this.RAW_TX_FULL.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_TX_RERR = uvm_reg_field::type_id::create("RAW_TX_RERR",,get_full_name());
      this.RAW_TX_RERR.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_TX_WERR = uvm_reg_field::type_id::create("RAW_TX_WERR",,get_full_name());
      this.RAW_TX_WERR.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_RX_THOLD = uvm_reg_field::type_id::create("RAW_RX_THOLD",,get_full_name());
      this.RAW_RX_THOLD.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_RX_EMPTY = uvm_reg_field::type_id::create("RAW_RX_EMPTY",,get_full_name());
      this.RAW_RX_EMPTY.configure(this, 1, 6, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_RX_FULL = uvm_reg_field::type_id::create("RAW_RX_FULL",,get_full_name());
      this.RAW_RX_FULL.configure(this, 1, 7, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_RX_RERR = uvm_reg_field::type_id::create("RAW_RX_RERR",,get_full_name());
      this.RAW_RX_RERR.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_RX_WERR = uvm_reg_field::type_id::create("RAW_RX_WERR",,get_full_name());
      this.RAW_RX_WERR.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_UART_TX_STOP = uvm_reg_field::type_id::create("RAW_UART_TX_STOP",,get_full_name());
      this.RAW_UART_TX_STOP.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_UART_RX_STOP = uvm_reg_field::type_id::create("RAW_UART_RX_STOP",,get_full_name());
      this.RAW_UART_RX_STOP.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_UART_PERR = uvm_reg_field::type_id::create("RAW_UART_PERR",,get_full_name());
      this.RAW_UART_PERR.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_I2C_STOP = uvm_reg_field::type_id::create("RAW_I2C_STOP",,get_full_name());
      this.RAW_I2C_STOP.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_I2C_NACK = uvm_reg_field::type_id::create("RAW_I2C_NACK",,get_full_name());
      this.RAW_I2C_NACK.configure(this, 1, 14, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_I2CM_LOSE_ARBI = uvm_reg_field::type_id::create("RAW_I2CM_LOSE_ARBI",,get_full_name());
      this.RAW_I2CM_LOSE_ARBI.configure(this, 1, 15, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_I2CS_GCALL = uvm_reg_field::type_id::create("RAW_I2CS_GCALL",,get_full_name());
      this.RAW_I2CS_GCALL.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_I2C_AERR = uvm_reg_field::type_id::create("RAW_I2C_AERR",,get_full_name());
      this.RAW_I2C_AERR.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.RAW_SPI_STOP = uvm_reg_field::type_id::create("RAW_SPI_STOP",,get_full_name());
      this.RAW_SPI_STOP.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_RAW_INTR_STA)

endclass : ral_reg_RAW_INTR_STA


class ral_reg_INTR_MASK extends uvm_reg;
	rand uvm_reg_field TX_THOLD_MASK;
	rand uvm_reg_field TX_EMPTY_MASK;
	rand uvm_reg_field TX_FULL_MASK;
	rand uvm_reg_field TX_RERR_MASK;
	rand uvm_reg_field TX_WERR_MASK;
	rand uvm_reg_field RX_THOLD_MASK;
	rand uvm_reg_field RX_EMPTY_MASK;
	rand uvm_reg_field RX_FULL_MASK;
	rand uvm_reg_field RX_RERR_MASK;
	rand uvm_reg_field RX_WERR_MASK;
	rand uvm_reg_field UART_TX_STOP_MASK;
	rand uvm_reg_field UART_RX_STOP_MASK;
	rand uvm_reg_field UART_PERR_MASK;
	rand uvm_reg_field I2C_STOP_MASK;
	rand uvm_reg_field I2C_NACK_MASK;
	rand uvm_reg_field I2CM_LOSE_ARBI_MASK;
	rand uvm_reg_field I2CS_GCALL_MASK;
	rand uvm_reg_field I2C_AERR_MASK;
	rand uvm_reg_field SPI_STOP_MASK;

	function new(string name = "INTR_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_THOLD_MASK = uvm_reg_field::type_id::create("TX_THOLD_MASK",,get_full_name());
      this.TX_THOLD_MASK.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_EMPTY_MASK = uvm_reg_field::type_id::create("TX_EMPTY_MASK",,get_full_name());
      this.TX_EMPTY_MASK.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_FULL_MASK = uvm_reg_field::type_id::create("TX_FULL_MASK",,get_full_name());
      this.TX_FULL_MASK.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_RERR_MASK = uvm_reg_field::type_id::create("TX_RERR_MASK",,get_full_name());
      this.TX_RERR_MASK.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.TX_WERR_MASK = uvm_reg_field::type_id::create("TX_WERR_MASK",,get_full_name());
      this.TX_WERR_MASK.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_THOLD_MASK = uvm_reg_field::type_id::create("RX_THOLD_MASK",,get_full_name());
      this.RX_THOLD_MASK.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_EMPTY_MASK = uvm_reg_field::type_id::create("RX_EMPTY_MASK",,get_full_name());
      this.RX_EMPTY_MASK.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_FULL_MASK = uvm_reg_field::type_id::create("RX_FULL_MASK",,get_full_name());
      this.RX_FULL_MASK.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_RERR_MASK = uvm_reg_field::type_id::create("RX_RERR_MASK",,get_full_name());
      this.RX_RERR_MASK.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_WERR_MASK = uvm_reg_field::type_id::create("RX_WERR_MASK",,get_full_name());
      this.RX_WERR_MASK.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_TX_STOP_MASK = uvm_reg_field::type_id::create("UART_TX_STOP_MASK",,get_full_name());
      this.UART_TX_STOP_MASK.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_RX_STOP_MASK = uvm_reg_field::type_id::create("UART_RX_STOP_MASK",,get_full_name());
      this.UART_RX_STOP_MASK.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.UART_PERR_MASK = uvm_reg_field::type_id::create("UART_PERR_MASK",,get_full_name());
      this.UART_PERR_MASK.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_STOP_MASK = uvm_reg_field::type_id::create("I2C_STOP_MASK",,get_full_name());
      this.I2C_STOP_MASK.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_NACK_MASK = uvm_reg_field::type_id::create("I2C_NACK_MASK",,get_full_name());
      this.I2C_NACK_MASK.configure(this, 1, 14, "RW", 0, 1'b0, 1, 0, 0);
      this.I2CM_LOSE_ARBI_MASK = uvm_reg_field::type_id::create("I2CM_LOSE_ARBI_MASK",,get_full_name());
      this.I2CM_LOSE_ARBI_MASK.configure(this, 1, 15, "RW", 0, 1'b0, 1, 0, 0);
      this.I2CS_GCALL_MASK = uvm_reg_field::type_id::create("I2CS_GCALL_MASK",,get_full_name());
      this.I2CS_GCALL_MASK.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.I2C_AERR_MASK = uvm_reg_field::type_id::create("I2C_AERR_MASK",,get_full_name());
      this.I2C_AERR_MASK.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.SPI_STOP_MASK = uvm_reg_field::type_id::create("SPI_STOP_MASK",,get_full_name());
      this.SPI_STOP_MASK.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_INTR_MASK)

endclass : ral_reg_INTR_MASK


class ral_reg_INTR_CLR extends uvm_reg;
	rand uvm_reg_field TX_THOLD_CLR;
	rand uvm_reg_field TX_EMPTY_CLR;
	rand uvm_reg_field TX_FULL_CLR;
	rand uvm_reg_field TX_RERR_CLR;
	rand uvm_reg_field TX_WERR_CLR;
	rand uvm_reg_field RX_THOLD_CLR;
	rand uvm_reg_field RX_EMPTY_CLR;
	rand uvm_reg_field RX_FULL_CLR;
	rand uvm_reg_field RX_RERR_CLR;
	rand uvm_reg_field RX_WERR_CLR;
	rand uvm_reg_field UART_TX_STOP_CLR;
	rand uvm_reg_field UART_RX_STOP_CLR;
	rand uvm_reg_field UART_PERR_CLR;
	rand uvm_reg_field I2C_STOP_CLR;
	rand uvm_reg_field I2C_NACK_CLR;
	rand uvm_reg_field I2CM_LOSE_ARBI_CLR;
	rand uvm_reg_field I2CS_GCALL_CLR;
	rand uvm_reg_field I2C_AERR_CLR;
	rand uvm_reg_field SPI_STOP_CLR;

	function new(string name = "INTR_CLR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_THOLD_CLR = uvm_reg_field::type_id::create("TX_THOLD_CLR",,get_full_name());
      this.TX_THOLD_CLR.configure(this, 1, 0, "WO", 0, 1'b0, 1, 0, 0);
      this.TX_EMPTY_CLR = uvm_reg_field::type_id::create("TX_EMPTY_CLR",,get_full_name());
      this.TX_EMPTY_CLR.configure(this, 1, 1, "WO", 0, 1'b0, 1, 0, 0);
      this.TX_FULL_CLR = uvm_reg_field::type_id::create("TX_FULL_CLR",,get_full_name());
      this.TX_FULL_CLR.configure(this, 1, 2, "WO", 0, 1'b0, 1, 0, 0);
      this.TX_RERR_CLR = uvm_reg_field::type_id::create("TX_RERR_CLR",,get_full_name());
      this.TX_RERR_CLR.configure(this, 1, 3, "WO", 0, 1'b0, 1, 0, 0);
      this.TX_WERR_CLR = uvm_reg_field::type_id::create("TX_WERR_CLR",,get_full_name());
      this.TX_WERR_CLR.configure(this, 1, 4, "WO", 0, 1'b0, 1, 0, 0);
      this.RX_THOLD_CLR = uvm_reg_field::type_id::create("RX_THOLD_CLR",,get_full_name());
      this.RX_THOLD_CLR.configure(this, 1, 5, "WO", 0, 1'b0, 1, 0, 0);
      this.RX_EMPTY_CLR = uvm_reg_field::type_id::create("RX_EMPTY_CLR",,get_full_name());
      this.RX_EMPTY_CLR.configure(this, 1, 6, "WO", 0, 1'b0, 1, 0, 0);
      this.RX_FULL_CLR = uvm_reg_field::type_id::create("RX_FULL_CLR",,get_full_name());
      this.RX_FULL_CLR.configure(this, 1, 7, "WO", 0, 1'b0, 1, 0, 0);
      this.RX_RERR_CLR = uvm_reg_field::type_id::create("RX_RERR_CLR",,get_full_name());
      this.RX_RERR_CLR.configure(this, 1, 8, "WO", 0, 1'b0, 1, 0, 0);
      this.RX_WERR_CLR = uvm_reg_field::type_id::create("RX_WERR_CLR",,get_full_name());
      this.RX_WERR_CLR.configure(this, 1, 9, "WO", 0, 1'b0, 1, 0, 0);
      this.UART_TX_STOP_CLR = uvm_reg_field::type_id::create("UART_TX_STOP_CLR",,get_full_name());
      this.UART_TX_STOP_CLR.configure(this, 1, 10, "WO", 0, 1'b0, 1, 0, 0);
      this.UART_RX_STOP_CLR = uvm_reg_field::type_id::create("UART_RX_STOP_CLR",,get_full_name());
      this.UART_RX_STOP_CLR.configure(this, 1, 11, "WO", 0, 1'b0, 1, 0, 0);
      this.UART_PERR_CLR = uvm_reg_field::type_id::create("UART_PERR_CLR",,get_full_name());
      this.UART_PERR_CLR.configure(this, 1, 12, "WO", 0, 1'b0, 1, 0, 0);
      this.I2C_STOP_CLR = uvm_reg_field::type_id::create("I2C_STOP_CLR",,get_full_name());
      this.I2C_STOP_CLR.configure(this, 1, 13, "WO", 0, 1'b0, 1, 0, 0);
      this.I2C_NACK_CLR = uvm_reg_field::type_id::create("I2C_NACK_CLR",,get_full_name());
      this.I2C_NACK_CLR.configure(this, 1, 14, "WO", 0, 1'b0, 1, 0, 0);
      this.I2CM_LOSE_ARBI_CLR = uvm_reg_field::type_id::create("I2CM_LOSE_ARBI_CLR",,get_full_name());
      this.I2CM_LOSE_ARBI_CLR.configure(this, 1, 15, "WO", 0, 1'b0, 1, 0, 0);
      this.I2CS_GCALL_CLR = uvm_reg_field::type_id::create("I2CS_GCALL_CLR",,get_full_name());
      this.I2CS_GCALL_CLR.configure(this, 1, 16, "WO", 0, 1'b0, 1, 0, 0);
      this.I2C_AERR_CLR = uvm_reg_field::type_id::create("I2C_AERR_CLR",,get_full_name());
      this.I2C_AERR_CLR.configure(this, 1, 17, "WO", 0, 1'b0, 1, 0, 0);
      this.SPI_STOP_CLR = uvm_reg_field::type_id::create("SPI_STOP_CLR",,get_full_name());
      this.SPI_STOP_CLR.configure(this, 1, 18, "WO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_INTR_CLR)

endclass : ral_reg_INTR_CLR


class ral_reg_DMA_CTRL extends uvm_reg;
	rand uvm_reg_field TX_DMA_EN;
	rand uvm_reg_field RX_DMA_EN;

	function new(string name = "DMA_CTRL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_DMA_EN = uvm_reg_field::type_id::create("TX_DMA_EN",,get_full_name());
      this.TX_DMA_EN.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.RX_DMA_EN = uvm_reg_field::type_id::create("RX_DMA_EN",,get_full_name());
      this.RX_DMA_EN.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_DMA_CTRL)

endclass : ral_reg_DMA_CTRL


class ral_reg_DMA_THRESHOLD extends uvm_reg;
	rand uvm_reg_field TX_DMA_TH;
	rand uvm_reg_field RX_DMA_TH;

	function new(string name = "DMA_THRESHOLD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TX_DMA_TH = uvm_reg_field::type_id::create("TX_DMA_TH",,get_full_name());
      this.TX_DMA_TH.configure(this, 4, 0, "RW", 0, 4'h4, 1, 0, 1);
      this.RX_DMA_TH = uvm_reg_field::type_id::create("RX_DMA_TH",,get_full_name());
      this.RX_DMA_TH.configure(this, 4, 8, "RW", 0, 4'h4, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DMA_THRESHOLD)

endclass : ral_reg_DMA_THRESHOLD


class ral_reg_SPI_NSS_DATA extends uvm_reg;
	rand uvm_reg_field NSS_DATA;

	function new(string name = "SPI_NSS_DATA");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.NSS_DATA = uvm_reg_field::type_id::create("NSS_DATA",,get_full_name());
      this.NSS_DATA.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SPI_NSS_DATA)

endclass : ral_reg_SPI_NSS_DATA


class ral_block_usi0 extends uvm_reg_block;
	rand ral_reg_USI_CTRL USI_CTRL;
	rand ral_reg_MODE_SEL MODE_SEL;
	rand ral_reg_DATA_FIFO DATA_FIFO;
	rand ral_reg_FIFO_STA FIFO_STA;
	rand ral_reg_CLK_DIV0 CLK_DIV0;
	rand ral_reg_CLK_DIV1 CLK_DIV1;
	rand ral_reg_UART_CTRL UART_CTRL;
	rand ral_reg_UART_STA UART_STA;
	rand ral_reg_I2C_MODE I2C_MODE;
	rand ral_reg_I2C_ADDR I2C_ADDR;
	rand ral_reg_I2CM_CTRL I2CM_CTRL;
	rand ral_reg_I2CM_CODE I2CM_CODE;
	rand ral_reg_I2CS_CTRL I2CS_CTRL;
	rand ral_reg_I2C_FM_DIV I2C_FM_DIV;
	rand ral_reg_I2C_HOLD I2C_HOLD;
	rand ral_reg_I2C_STA I2C_STA;
	rand ral_reg_SPI_MODE SPI_MODE;
	rand ral_reg_SPI_CTRL SPI_CTRL;
	rand ral_reg_SPI_STA SPI_STA;
	rand ral_reg_INTR_CTRL INTR_CTRL;
	rand ral_reg_INTR_EN INTR_EN;
	rand ral_reg_INTR_STA INTR_STA;
	rand ral_reg_RAW_INTR_STA RAW_INTR_STA;
	rand ral_reg_INTR_MASK INTR_MASK;
	rand ral_reg_INTR_CLR INTR_CLR;
	rand ral_reg_DMA_CTRL DMA_CTRL;
	rand ral_reg_DMA_THRESHOLD DMA_THRESHOLD;
	rand ral_reg_SPI_NSS_DATA SPI_NSS_DATA;
	rand uvm_reg_field USI_CTRL_USI_EN;
	rand uvm_reg_field USI_EN;
	rand uvm_reg_field USI_CTRL_FM_EN;
	rand uvm_reg_field FM_EN;
	rand uvm_reg_field USI_CTRL_TX_FIFO_EN;
	rand uvm_reg_field TX_FIFO_EN;
	rand uvm_reg_field USI_CTRL_RX_FIFO_EN;
	rand uvm_reg_field RX_FIFO_EN;
	rand uvm_reg_field MODE_SEL_MODE_SEL;
	rand uvm_reg_field DATA_FIFO_DATA;
	rand uvm_reg_field DATA;
	uvm_reg_field FIFO_STA_TX_EMPTY;
	uvm_reg_field FIFO_STA_TX_FULL;
	uvm_reg_field FIFO_STA_RX_EMPTY;
	uvm_reg_field FIFO_STA_RX_FULL;
	uvm_reg_field FIFO_STA_TX_NUM;
	uvm_reg_field TX_NUM;
	uvm_reg_field FIFO_STA_RX_NUM;
	uvm_reg_field RX_NUM;
	rand uvm_reg_field CLK_DIV0_CLK_DIV0;
	rand uvm_reg_field CLK_DIV1_CLK_DIV1;
	rand uvm_reg_field UART_CTRL_DBIT;
	rand uvm_reg_field DBIT;
	rand uvm_reg_field UART_CTRL_PBIT;
	rand uvm_reg_field PBIT;
	rand uvm_reg_field UART_CTRL_PEN;
	rand uvm_reg_field PEN;
	rand uvm_reg_field UART_CTRL_EPS;
	rand uvm_reg_field EPS;
	uvm_reg_field UART_STA_TXD_WORK;
	uvm_reg_field TXD_WORK;
	uvm_reg_field UART_STA_RXD_WORK;
	uvm_reg_field RXD_WORK;
	rand uvm_reg_field I2C_MODE_MS_MODE;
	rand uvm_reg_field I2C_ADDR_I2C_ADDR;
	rand uvm_reg_field I2CM_CTRL_ADDR_MODE;
	rand uvm_reg_field ADDR_MODE;
	rand uvm_reg_field I2CM_CTRL_STOP;
	rand uvm_reg_field STOP;
	rand uvm_reg_field I2CM_CTRL_HS_MODE;
	rand uvm_reg_field HS_MODE;
	rand uvm_reg_field I2CM_CTRL_SBYTE;
	rand uvm_reg_field SBYTE;
	rand uvm_reg_field I2CM_CTRL_GCALL;
	rand uvm_reg_field GCALL;
	rand uvm_reg_field I2CM_CODE_MCODE;
	rand uvm_reg_field MCODE;
	rand uvm_reg_field I2CS_CTRL_GCALL_MODE;
	rand uvm_reg_field GCALL_MODE;
	rand uvm_reg_field I2C_FM_DIV_I2C_FM_DIV;
	rand uvm_reg_field I2C_HOLD_I2C_HOLD;
	uvm_reg_field I2C_STA_I2CM_WORK;
	uvm_reg_field I2CM_WORK;
	uvm_reg_field I2C_STA_I2CM_DATA;
	uvm_reg_field I2CM_DATA;
	uvm_reg_field I2C_STA_I2CS_WORK;
	uvm_reg_field I2CS_WORK;
	rand uvm_reg_field SPI_MODE_MS_MODE;
	rand uvm_reg_field SPI_CTRL_DATA_SIZE;
	rand uvm_reg_field DATA_SIZE;
	rand uvm_reg_field SPI_CTRL_TMOD;
	rand uvm_reg_field TMOD;
	rand uvm_reg_field SPI_CTRL_CPHA;
	rand uvm_reg_field CPHA;
	rand uvm_reg_field SPI_CTRL_CPOL;
	rand uvm_reg_field CPOL;
	rand uvm_reg_field SPI_CTRL_NSS_TOGGLE;
	rand uvm_reg_field NSS_TOGGLE;
	rand uvm_reg_field SPI_CTRL_NSS_CTRL;
	rand uvm_reg_field NSS_CTRL;
	uvm_reg_field SPI_STA_SPI_WORKING;
	uvm_reg_field SPI_WORKING;
	rand uvm_reg_field INTR_CTRL_TX_FIFO_TH;
	rand uvm_reg_field TX_FIFO_TH;
	rand uvm_reg_field INTR_CTRL_RX_FIFO_TH;
	rand uvm_reg_field RX_FIFO_TH;
	rand uvm_reg_field INTR_CTRL_TH_MODE;
	rand uvm_reg_field TH_MODE;
	rand uvm_reg_field INTR_EN_TX_THOLD_EN;
	rand uvm_reg_field TX_THOLD_EN;
	rand uvm_reg_field INTR_EN_TX_EMPTY_EN;
	rand uvm_reg_field TX_EMPTY_EN;
	rand uvm_reg_field INTR_EN_TX_FULL_EN;
	rand uvm_reg_field TX_FULL_EN;
	rand uvm_reg_field INTR_EN_TX_RERR_EN;
	rand uvm_reg_field TX_RERR_EN;
	rand uvm_reg_field INTR_EN_TX_WERR_EN;
	rand uvm_reg_field TX_WERR_EN;
	rand uvm_reg_field INTR_EN_RX_THOLD_EN;
	rand uvm_reg_field RX_THOLD_EN;
	rand uvm_reg_field INTR_EN_RX_EMPTY_EN;
	rand uvm_reg_field RX_EMPTY_EN;
	rand uvm_reg_field INTR_EN_RX_FULL_EN;
	rand uvm_reg_field RX_FULL_EN;
	rand uvm_reg_field INTR_EN_RX_RERR_EN;
	rand uvm_reg_field RX_RERR_EN;
	rand uvm_reg_field INTR_EN_RX_WERR_EN;
	rand uvm_reg_field RX_WERR_EN;
	rand uvm_reg_field INTR_EN_UART_TX_STOP_EN;
	rand uvm_reg_field UART_TX_STOP_EN;
	rand uvm_reg_field INTR_EN_UART_RX_STOP_EN;
	rand uvm_reg_field UART_RX_STOP_EN;
	rand uvm_reg_field INTR_EN_UART_PERR_EN;
	rand uvm_reg_field UART_PERR_EN;
	rand uvm_reg_field INTR_EN_I2C_STOP_EN;
	rand uvm_reg_field I2C_STOP_EN;
	rand uvm_reg_field INTR_EN_I2C_NACK_EN;
	rand uvm_reg_field I2C_NACK_EN;
	rand uvm_reg_field INTR_EN_I2CM_LOSE_ARBI_EN;
	rand uvm_reg_field I2CM_LOSE_ARBI_EN;
	rand uvm_reg_field INTR_EN_I2CS_GCALL_EN;
	rand uvm_reg_field I2CS_GCALL_EN;
	rand uvm_reg_field INTR_EN_I2C_AERR_EN;
	rand uvm_reg_field I2C_AERR_EN;
	rand uvm_reg_field INTR_EN_SPI_STOP_EN;
	rand uvm_reg_field SPI_STOP_EN;
	uvm_reg_field INTR_STA_TX_THOLD;
	uvm_reg_field TX_THOLD;
	uvm_reg_field INTR_STA_TX_EMPTY;
	uvm_reg_field INTR_STA_TX_FULL;
	uvm_reg_field INTR_STA_TX_RERR;
	uvm_reg_field TX_RERR;
	uvm_reg_field INTR_STA_TX_WERR;
	uvm_reg_field TX_WERR;
	uvm_reg_field INTR_STA_RX_THOLD;
	uvm_reg_field RX_THOLD;
	uvm_reg_field INTR_STA_RX_EMPTY;
	uvm_reg_field INTR_STA_RX_FULL;
	uvm_reg_field INTR_STA_RX_RERR;
	uvm_reg_field RX_RERR;
	uvm_reg_field INTR_STA_RX_WERR;
	uvm_reg_field RX_WERR;
	uvm_reg_field INTR_STA_UART_TX_STOP;
	uvm_reg_field UART_TX_STOP;
	uvm_reg_field INTR_STA_UART_RX_STOP;
	uvm_reg_field UART_RX_STOP;
	uvm_reg_field INTR_STA_UART_PERR;
	uvm_reg_field UART_PERR;
	uvm_reg_field INTR_STA_I2C_STOP;
	uvm_reg_field I2C_STOP;
	uvm_reg_field INTR_STA_I2C_NACK;
	uvm_reg_field I2C_NACK;
	uvm_reg_field INTR_STA_I2CM_LOSE_ARBI;
	uvm_reg_field I2CM_LOSE_ARBI;
	uvm_reg_field INTR_STA_I2CS_GCALL;
	uvm_reg_field I2CS_GCALL;
	uvm_reg_field INTR_STA_I2C_AERR;
	uvm_reg_field I2C_AERR;
	uvm_reg_field INTR_STA_SPI_STOP;
	uvm_reg_field SPI_STOP;
	uvm_reg_field RAW_INTR_STA_RAW_TX_THOLD;
	uvm_reg_field RAW_TX_THOLD;
	uvm_reg_field RAW_INTR_STA_RAW_TX_EMPTY;
	uvm_reg_field RAW_TX_EMPTY;
	uvm_reg_field RAW_INTR_STA_RAW_TX_FULL;
	uvm_reg_field RAW_TX_FULL;
	uvm_reg_field RAW_INTR_STA_RAW_TX_RERR;
	uvm_reg_field RAW_TX_RERR;
	uvm_reg_field RAW_INTR_STA_RAW_TX_WERR;
	uvm_reg_field RAW_TX_WERR;
	uvm_reg_field RAW_INTR_STA_RAW_RX_THOLD;
	uvm_reg_field RAW_RX_THOLD;
	uvm_reg_field RAW_INTR_STA_RAW_RX_EMPTY;
	uvm_reg_field RAW_RX_EMPTY;
	uvm_reg_field RAW_INTR_STA_RAW_RX_FULL;
	uvm_reg_field RAW_RX_FULL;
	uvm_reg_field RAW_INTR_STA_RAW_RX_RERR;
	uvm_reg_field RAW_RX_RERR;
	uvm_reg_field RAW_INTR_STA_RAW_RX_WERR;
	uvm_reg_field RAW_RX_WERR;
	uvm_reg_field RAW_INTR_STA_RAW_UART_TX_STOP;
	uvm_reg_field RAW_UART_TX_STOP;
	uvm_reg_field RAW_INTR_STA_RAW_UART_RX_STOP;
	uvm_reg_field RAW_UART_RX_STOP;
	uvm_reg_field RAW_INTR_STA_RAW_UART_PERR;
	uvm_reg_field RAW_UART_PERR;
	uvm_reg_field RAW_INTR_STA_RAW_I2C_STOP;
	uvm_reg_field RAW_I2C_STOP;
	uvm_reg_field RAW_INTR_STA_RAW_I2C_NACK;
	uvm_reg_field RAW_I2C_NACK;
	uvm_reg_field RAW_INTR_STA_RAW_I2CM_LOSE_ARBI;
	uvm_reg_field RAW_I2CM_LOSE_ARBI;
	uvm_reg_field RAW_INTR_STA_RAW_I2CS_GCALL;
	uvm_reg_field RAW_I2CS_GCALL;
	uvm_reg_field RAW_INTR_STA_RAW_I2C_AERR;
	uvm_reg_field RAW_I2C_AERR;
	uvm_reg_field RAW_INTR_STA_RAW_SPI_STOP;
	uvm_reg_field RAW_SPI_STOP;
	rand uvm_reg_field INTR_MASK_TX_THOLD_MASK;
	rand uvm_reg_field TX_THOLD_MASK;
	rand uvm_reg_field INTR_MASK_TX_EMPTY_MASK;
	rand uvm_reg_field TX_EMPTY_MASK;
	rand uvm_reg_field INTR_MASK_TX_FULL_MASK;
	rand uvm_reg_field TX_FULL_MASK;
	rand uvm_reg_field INTR_MASK_TX_RERR_MASK;
	rand uvm_reg_field TX_RERR_MASK;
	rand uvm_reg_field INTR_MASK_TX_WERR_MASK;
	rand uvm_reg_field TX_WERR_MASK;
	rand uvm_reg_field INTR_MASK_RX_THOLD_MASK;
	rand uvm_reg_field RX_THOLD_MASK;
	rand uvm_reg_field INTR_MASK_RX_EMPTY_MASK;
	rand uvm_reg_field RX_EMPTY_MASK;
	rand uvm_reg_field INTR_MASK_RX_FULL_MASK;
	rand uvm_reg_field RX_FULL_MASK;
	rand uvm_reg_field INTR_MASK_RX_RERR_MASK;
	rand uvm_reg_field RX_RERR_MASK;
	rand uvm_reg_field INTR_MASK_RX_WERR_MASK;
	rand uvm_reg_field RX_WERR_MASK;
	rand uvm_reg_field INTR_MASK_UART_TX_STOP_MASK;
	rand uvm_reg_field UART_TX_STOP_MASK;
	rand uvm_reg_field INTR_MASK_UART_RX_STOP_MASK;
	rand uvm_reg_field UART_RX_STOP_MASK;
	rand uvm_reg_field INTR_MASK_UART_PERR_MASK;
	rand uvm_reg_field UART_PERR_MASK;
	rand uvm_reg_field INTR_MASK_I2C_STOP_MASK;
	rand uvm_reg_field I2C_STOP_MASK;
	rand uvm_reg_field INTR_MASK_I2C_NACK_MASK;
	rand uvm_reg_field I2C_NACK_MASK;
	rand uvm_reg_field INTR_MASK_I2CM_LOSE_ARBI_MASK;
	rand uvm_reg_field I2CM_LOSE_ARBI_MASK;
	rand uvm_reg_field INTR_MASK_I2CS_GCALL_MASK;
	rand uvm_reg_field I2CS_GCALL_MASK;
	rand uvm_reg_field INTR_MASK_I2C_AERR_MASK;
	rand uvm_reg_field I2C_AERR_MASK;
	rand uvm_reg_field INTR_MASK_SPI_STOP_MASK;
	rand uvm_reg_field SPI_STOP_MASK;
	rand uvm_reg_field INTR_CLR_TX_THOLD_CLR;
	rand uvm_reg_field TX_THOLD_CLR;
	rand uvm_reg_field INTR_CLR_TX_EMPTY_CLR;
	rand uvm_reg_field TX_EMPTY_CLR;
	rand uvm_reg_field INTR_CLR_TX_FULL_CLR;
	rand uvm_reg_field TX_FULL_CLR;
	rand uvm_reg_field INTR_CLR_TX_RERR_CLR;
	rand uvm_reg_field TX_RERR_CLR;
	rand uvm_reg_field INTR_CLR_TX_WERR_CLR;
	rand uvm_reg_field TX_WERR_CLR;
	rand uvm_reg_field INTR_CLR_RX_THOLD_CLR;
	rand uvm_reg_field RX_THOLD_CLR;
	rand uvm_reg_field INTR_CLR_RX_EMPTY_CLR;
	rand uvm_reg_field RX_EMPTY_CLR;
	rand uvm_reg_field INTR_CLR_RX_FULL_CLR;
	rand uvm_reg_field RX_FULL_CLR;
	rand uvm_reg_field INTR_CLR_RX_RERR_CLR;
	rand uvm_reg_field RX_RERR_CLR;
	rand uvm_reg_field INTR_CLR_RX_WERR_CLR;
	rand uvm_reg_field RX_WERR_CLR;
	rand uvm_reg_field INTR_CLR_UART_TX_STOP_CLR;
	rand uvm_reg_field UART_TX_STOP_CLR;
	rand uvm_reg_field INTR_CLR_UART_RX_STOP_CLR;
	rand uvm_reg_field UART_RX_STOP_CLR;
	rand uvm_reg_field INTR_CLR_UART_PERR_CLR;
	rand uvm_reg_field UART_PERR_CLR;
	rand uvm_reg_field INTR_CLR_I2C_STOP_CLR;
	rand uvm_reg_field I2C_STOP_CLR;
	rand uvm_reg_field INTR_CLR_I2C_NACK_CLR;
	rand uvm_reg_field I2C_NACK_CLR;
	rand uvm_reg_field INTR_CLR_I2CM_LOSE_ARBI_CLR;
	rand uvm_reg_field I2CM_LOSE_ARBI_CLR;
	rand uvm_reg_field INTR_CLR_I2CS_GCALL_CLR;
	rand uvm_reg_field I2CS_GCALL_CLR;
	rand uvm_reg_field INTR_CLR_I2C_AERR_CLR;
	rand uvm_reg_field I2C_AERR_CLR;
	rand uvm_reg_field INTR_CLR_SPI_STOP_CLR;
	rand uvm_reg_field SPI_STOP_CLR;
	rand uvm_reg_field DMA_CTRL_TX_DMA_EN;
	rand uvm_reg_field TX_DMA_EN;
	rand uvm_reg_field DMA_CTRL_RX_DMA_EN;
	rand uvm_reg_field RX_DMA_EN;
	rand uvm_reg_field DMA_THRESHOLD_TX_DMA_TH;
	rand uvm_reg_field TX_DMA_TH;
	rand uvm_reg_field DMA_THRESHOLD_RX_DMA_TH;
	rand uvm_reg_field RX_DMA_TH;
	rand uvm_reg_field SPI_NSS_DATA_NSS_DATA;
	rand uvm_reg_field NSS_DATA;

	function new(string name = "usi0");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.USI_CTRL = ral_reg_USI_CTRL::type_id::create("USI_CTRL",,get_full_name());
      this.USI_CTRL.configure(this, null, "");
      this.USI_CTRL.build();
         this.USI_CTRL.add_hdl_path('{

            '{"USI_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.USI_CTRL, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.USI_CTRL_USI_EN = this.USI_CTRL.USI_EN;
		this.USI_EN = this.USI_CTRL.USI_EN;
		this.USI_CTRL_FM_EN = this.USI_CTRL.FM_EN;
		this.FM_EN = this.USI_CTRL.FM_EN;
		this.USI_CTRL_TX_FIFO_EN = this.USI_CTRL.TX_FIFO_EN;
		this.TX_FIFO_EN = this.USI_CTRL.TX_FIFO_EN;
		this.USI_CTRL_RX_FIFO_EN = this.USI_CTRL.RX_FIFO_EN;
		this.RX_FIFO_EN = this.USI_CTRL.RX_FIFO_EN;
      this.MODE_SEL = ral_reg_MODE_SEL::type_id::create("MODE_SEL",,get_full_name());
      this.MODE_SEL.configure(this, null, "");
      this.MODE_SEL.build();
         this.MODE_SEL.add_hdl_path('{

            '{"MODE_SEL", -1, -1}
         });
      this.default_map.add_reg(this.MODE_SEL, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.MODE_SEL_MODE_SEL = this.MODE_SEL.MODE_SEL;
      this.DATA_FIFO = ral_reg_DATA_FIFO::type_id::create("DATA_FIFO",,get_full_name());
      this.DATA_FIFO.configure(this, null, "");
      this.DATA_FIFO.build();
         this.DATA_FIFO.add_hdl_path('{

            '{"DATA_FIFO", -1, -1}
         });
      this.default_map.add_reg(this.DATA_FIFO, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.DATA_FIFO_DATA = this.DATA_FIFO.DATA;
		this.DATA = this.DATA_FIFO.DATA;
      this.FIFO_STA = ral_reg_FIFO_STA::type_id::create("FIFO_STA",,get_full_name());
      this.FIFO_STA.configure(this, null, "");
      this.FIFO_STA.build();
         this.FIFO_STA.add_hdl_path('{

            '{"FIFO_STA", -1, -1}
         });
      this.default_map.add_reg(this.FIFO_STA, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.FIFO_STA_TX_EMPTY = this.FIFO_STA.TX_EMPTY;
		this.FIFO_STA_TX_FULL = this.FIFO_STA.TX_FULL;
		this.FIFO_STA_RX_EMPTY = this.FIFO_STA.RX_EMPTY;
		this.FIFO_STA_RX_FULL = this.FIFO_STA.RX_FULL;
		this.FIFO_STA_TX_NUM = this.FIFO_STA.TX_NUM;
		this.TX_NUM = this.FIFO_STA.TX_NUM;
		this.FIFO_STA_RX_NUM = this.FIFO_STA.RX_NUM;
		this.RX_NUM = this.FIFO_STA.RX_NUM;
      this.CLK_DIV0 = ral_reg_CLK_DIV0::type_id::create("CLK_DIV0",,get_full_name());
      this.CLK_DIV0.configure(this, null, "");
      this.CLK_DIV0.build();
         this.CLK_DIV0.add_hdl_path('{

            '{"CLK_DIV0", -1, -1}
         });
      this.default_map.add_reg(this.CLK_DIV0, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.CLK_DIV0_CLK_DIV0 = this.CLK_DIV0.CLK_DIV0;
      this.CLK_DIV1 = ral_reg_CLK_DIV1::type_id::create("CLK_DIV1",,get_full_name());
      this.CLK_DIV1.configure(this, null, "");
      this.CLK_DIV1.build();
         this.CLK_DIV1.add_hdl_path('{

            '{"CLK_DIV1", -1, -1}
         });
      this.default_map.add_reg(this.CLK_DIV1, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.CLK_DIV1_CLK_DIV1 = this.CLK_DIV1.CLK_DIV1;
      this.UART_CTRL = ral_reg_UART_CTRL::type_id::create("UART_CTRL",,get_full_name());
      this.UART_CTRL.configure(this, null, "");
      this.UART_CTRL.build();
         this.UART_CTRL.add_hdl_path('{

            '{"UART_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.UART_CTRL, `UVM_REG_ADDR_WIDTH'h18, "RW", 0);
		this.UART_CTRL_DBIT = this.UART_CTRL.DBIT;
		this.DBIT = this.UART_CTRL.DBIT;
		this.UART_CTRL_PBIT = this.UART_CTRL.PBIT;
		this.PBIT = this.UART_CTRL.PBIT;
		this.UART_CTRL_PEN = this.UART_CTRL.PEN;
		this.PEN = this.UART_CTRL.PEN;
		this.UART_CTRL_EPS = this.UART_CTRL.EPS;
		this.EPS = this.UART_CTRL.EPS;
      this.UART_STA = ral_reg_UART_STA::type_id::create("UART_STA",,get_full_name());
      this.UART_STA.configure(this, null, "");
      this.UART_STA.build();
         this.UART_STA.add_hdl_path('{

            '{"UART_STA", -1, -1}
         });
      this.default_map.add_reg(this.UART_STA, `UVM_REG_ADDR_WIDTH'h1C, "RW", 0);
		this.UART_STA_TXD_WORK = this.UART_STA.TXD_WORK;
		this.TXD_WORK = this.UART_STA.TXD_WORK;
		this.UART_STA_RXD_WORK = this.UART_STA.RXD_WORK;
		this.RXD_WORK = this.UART_STA.RXD_WORK;
      this.I2C_MODE = ral_reg_I2C_MODE::type_id::create("I2C_MODE",,get_full_name());
      this.I2C_MODE.configure(this, null, "");
      this.I2C_MODE.build();
         this.I2C_MODE.add_hdl_path('{

            '{"I2C_MODE", -1, -1}
         });
      this.default_map.add_reg(this.I2C_MODE, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
		this.I2C_MODE_MS_MODE = this.I2C_MODE.MS_MODE;
      this.I2C_ADDR = ral_reg_I2C_ADDR::type_id::create("I2C_ADDR",,get_full_name());
      this.I2C_ADDR.configure(this, null, "");
      this.I2C_ADDR.build();
         this.I2C_ADDR.add_hdl_path('{

            '{"I2C_ADDR", -1, -1}
         });
      this.default_map.add_reg(this.I2C_ADDR, `UVM_REG_ADDR_WIDTH'h24, "RW", 0);
		this.I2C_ADDR_I2C_ADDR = this.I2C_ADDR.I2C_ADDR;
      this.I2CM_CTRL = ral_reg_I2CM_CTRL::type_id::create("I2CM_CTRL",,get_full_name());
      this.I2CM_CTRL.configure(this, null, "");
      this.I2CM_CTRL.build();
         this.I2CM_CTRL.add_hdl_path('{

            '{"I2CM_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.I2CM_CTRL, `UVM_REG_ADDR_WIDTH'h28, "RW", 0);
		this.I2CM_CTRL_ADDR_MODE = this.I2CM_CTRL.ADDR_MODE;
		this.ADDR_MODE = this.I2CM_CTRL.ADDR_MODE;
		this.I2CM_CTRL_STOP = this.I2CM_CTRL.STOP;
		this.STOP = this.I2CM_CTRL.STOP;
		this.I2CM_CTRL_HS_MODE = this.I2CM_CTRL.HS_MODE;
		this.HS_MODE = this.I2CM_CTRL.HS_MODE;
		this.I2CM_CTRL_SBYTE = this.I2CM_CTRL.SBYTE;
		this.SBYTE = this.I2CM_CTRL.SBYTE;
		this.I2CM_CTRL_GCALL = this.I2CM_CTRL.GCALL;
		this.GCALL = this.I2CM_CTRL.GCALL;
      this.I2CM_CODE = ral_reg_I2CM_CODE::type_id::create("I2CM_CODE",,get_full_name());
      this.I2CM_CODE.configure(this, null, "");
      this.I2CM_CODE.build();
         this.I2CM_CODE.add_hdl_path('{

            '{"I2CM_CODE", -1, -1}
         });
      this.default_map.add_reg(this.I2CM_CODE, `UVM_REG_ADDR_WIDTH'h2C, "RW", 0);
		this.I2CM_CODE_MCODE = this.I2CM_CODE.MCODE;
		this.MCODE = this.I2CM_CODE.MCODE;
      this.I2CS_CTRL = ral_reg_I2CS_CTRL::type_id::create("I2CS_CTRL",,get_full_name());
      this.I2CS_CTRL.configure(this, null, "");
      this.I2CS_CTRL.build();
         this.I2CS_CTRL.add_hdl_path('{

            '{"I2CS_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.I2CS_CTRL, `UVM_REG_ADDR_WIDTH'h30, "RW", 0);
		this.I2CS_CTRL_GCALL_MODE = this.I2CS_CTRL.GCALL_MODE;
		this.GCALL_MODE = this.I2CS_CTRL.GCALL_MODE;
      this.I2C_FM_DIV = ral_reg_I2C_FM_DIV::type_id::create("I2C_FM_DIV",,get_full_name());
      this.I2C_FM_DIV.configure(this, null, "");
      this.I2C_FM_DIV.build();
         this.I2C_FM_DIV.add_hdl_path('{

            '{"I2C_FM_DIV", -1, -1}
         });
      this.default_map.add_reg(this.I2C_FM_DIV, `UVM_REG_ADDR_WIDTH'h34, "RW", 0);
		this.I2C_FM_DIV_I2C_FM_DIV = this.I2C_FM_DIV.I2C_FM_DIV;
      this.I2C_HOLD = ral_reg_I2C_HOLD::type_id::create("I2C_HOLD",,get_full_name());
      this.I2C_HOLD.configure(this, null, "");
      this.I2C_HOLD.build();
         this.I2C_HOLD.add_hdl_path('{

            '{"I2C_HOLD", -1, -1}
         });
      this.default_map.add_reg(this.I2C_HOLD, `UVM_REG_ADDR_WIDTH'h38, "RW", 0);
		this.I2C_HOLD_I2C_HOLD = this.I2C_HOLD.I2C_HOLD;
      this.I2C_STA = ral_reg_I2C_STA::type_id::create("I2C_STA",,get_full_name());
      this.I2C_STA.configure(this, null, "");
      this.I2C_STA.build();
         this.I2C_STA.add_hdl_path('{

            '{"I2C_STA", -1, -1}
         });
      this.default_map.add_reg(this.I2C_STA, `UVM_REG_ADDR_WIDTH'h3C, "RW", 0);
		this.I2C_STA_I2CM_WORK = this.I2C_STA.I2CM_WORK;
		this.I2CM_WORK = this.I2C_STA.I2CM_WORK;
		this.I2C_STA_I2CM_DATA = this.I2C_STA.I2CM_DATA;
		this.I2CM_DATA = this.I2C_STA.I2CM_DATA;
		this.I2C_STA_I2CS_WORK = this.I2C_STA.I2CS_WORK;
		this.I2CS_WORK = this.I2C_STA.I2CS_WORK;
      this.SPI_MODE = ral_reg_SPI_MODE::type_id::create("SPI_MODE",,get_full_name());
      this.SPI_MODE.configure(this, null, "");
      this.SPI_MODE.build();
         this.SPI_MODE.add_hdl_path('{

            '{"SPI_MODE", -1, -1}
         });
      this.default_map.add_reg(this.SPI_MODE, `UVM_REG_ADDR_WIDTH'h40, "RW", 0);
		this.SPI_MODE_MS_MODE = this.SPI_MODE.MS_MODE;
      this.SPI_CTRL = ral_reg_SPI_CTRL::type_id::create("SPI_CTRL",,get_full_name());
      this.SPI_CTRL.configure(this, null, "");
      this.SPI_CTRL.build();
         this.SPI_CTRL.add_hdl_path('{

            '{"SPI_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.SPI_CTRL, `UVM_REG_ADDR_WIDTH'h44, "RW", 0);
		this.SPI_CTRL_DATA_SIZE = this.SPI_CTRL.DATA_SIZE;
		this.DATA_SIZE = this.SPI_CTRL.DATA_SIZE;
		this.SPI_CTRL_TMOD = this.SPI_CTRL.TMOD;
		this.TMOD = this.SPI_CTRL.TMOD;
		this.SPI_CTRL_CPHA = this.SPI_CTRL.CPHA;
		this.CPHA = this.SPI_CTRL.CPHA;
		this.SPI_CTRL_CPOL = this.SPI_CTRL.CPOL;
		this.CPOL = this.SPI_CTRL.CPOL;
		this.SPI_CTRL_NSS_TOGGLE = this.SPI_CTRL.NSS_TOGGLE;
		this.NSS_TOGGLE = this.SPI_CTRL.NSS_TOGGLE;
		this.SPI_CTRL_NSS_CTRL = this.SPI_CTRL.NSS_CTRL;
		this.NSS_CTRL = this.SPI_CTRL.NSS_CTRL;
      this.SPI_STA = ral_reg_SPI_STA::type_id::create("SPI_STA",,get_full_name());
      this.SPI_STA.configure(this, null, "");
      this.SPI_STA.build();
         this.SPI_STA.add_hdl_path('{

            '{"SPI_STA", -1, -1}
         });
      this.default_map.add_reg(this.SPI_STA, `UVM_REG_ADDR_WIDTH'h48, "RW", 0);
		this.SPI_STA_SPI_WORKING = this.SPI_STA.SPI_WORKING;
		this.SPI_WORKING = this.SPI_STA.SPI_WORKING;
      this.INTR_CTRL = ral_reg_INTR_CTRL::type_id::create("INTR_CTRL",,get_full_name());
      this.INTR_CTRL.configure(this, null, "");
      this.INTR_CTRL.build();
         this.INTR_CTRL.add_hdl_path('{

            '{"INTR_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.INTR_CTRL, `UVM_REG_ADDR_WIDTH'h4C, "RW", 0);
		this.INTR_CTRL_TX_FIFO_TH = this.INTR_CTRL.TX_FIFO_TH;
		this.TX_FIFO_TH = this.INTR_CTRL.TX_FIFO_TH;
		this.INTR_CTRL_RX_FIFO_TH = this.INTR_CTRL.RX_FIFO_TH;
		this.RX_FIFO_TH = this.INTR_CTRL.RX_FIFO_TH;
		this.INTR_CTRL_TH_MODE = this.INTR_CTRL.TH_MODE;
		this.TH_MODE = this.INTR_CTRL.TH_MODE;
      this.INTR_EN = ral_reg_INTR_EN::type_id::create("INTR_EN",,get_full_name());
      this.INTR_EN.configure(this, null, "");
      this.INTR_EN.build();
         this.INTR_EN.add_hdl_path('{

            '{"INTR_EN", -1, -1}
         });
      this.default_map.add_reg(this.INTR_EN, `UVM_REG_ADDR_WIDTH'h50, "RW", 0);
		this.INTR_EN_TX_THOLD_EN = this.INTR_EN.TX_THOLD_EN;
		this.TX_THOLD_EN = this.INTR_EN.TX_THOLD_EN;
		this.INTR_EN_TX_EMPTY_EN = this.INTR_EN.TX_EMPTY_EN;
		this.TX_EMPTY_EN = this.INTR_EN.TX_EMPTY_EN;
		this.INTR_EN_TX_FULL_EN = this.INTR_EN.TX_FULL_EN;
		this.TX_FULL_EN = this.INTR_EN.TX_FULL_EN;
		this.INTR_EN_TX_RERR_EN = this.INTR_EN.TX_RERR_EN;
		this.TX_RERR_EN = this.INTR_EN.TX_RERR_EN;
		this.INTR_EN_TX_WERR_EN = this.INTR_EN.TX_WERR_EN;
		this.TX_WERR_EN = this.INTR_EN.TX_WERR_EN;
		this.INTR_EN_RX_THOLD_EN = this.INTR_EN.RX_THOLD_EN;
		this.RX_THOLD_EN = this.INTR_EN.RX_THOLD_EN;
		this.INTR_EN_RX_EMPTY_EN = this.INTR_EN.RX_EMPTY_EN;
		this.RX_EMPTY_EN = this.INTR_EN.RX_EMPTY_EN;
		this.INTR_EN_RX_FULL_EN = this.INTR_EN.RX_FULL_EN;
		this.RX_FULL_EN = this.INTR_EN.RX_FULL_EN;
		this.INTR_EN_RX_RERR_EN = this.INTR_EN.RX_RERR_EN;
		this.RX_RERR_EN = this.INTR_EN.RX_RERR_EN;
		this.INTR_EN_RX_WERR_EN = this.INTR_EN.RX_WERR_EN;
		this.RX_WERR_EN = this.INTR_EN.RX_WERR_EN;
		this.INTR_EN_UART_TX_STOP_EN = this.INTR_EN.UART_TX_STOP_EN;
		this.UART_TX_STOP_EN = this.INTR_EN.UART_TX_STOP_EN;
		this.INTR_EN_UART_RX_STOP_EN = this.INTR_EN.UART_RX_STOP_EN;
		this.UART_RX_STOP_EN = this.INTR_EN.UART_RX_STOP_EN;
		this.INTR_EN_UART_PERR_EN = this.INTR_EN.UART_PERR_EN;
		this.UART_PERR_EN = this.INTR_EN.UART_PERR_EN;
		this.INTR_EN_I2C_STOP_EN = this.INTR_EN.I2C_STOP_EN;
		this.I2C_STOP_EN = this.INTR_EN.I2C_STOP_EN;
		this.INTR_EN_I2C_NACK_EN = this.INTR_EN.I2C_NACK_EN;
		this.I2C_NACK_EN = this.INTR_EN.I2C_NACK_EN;
		this.INTR_EN_I2CM_LOSE_ARBI_EN = this.INTR_EN.I2CM_LOSE_ARBI_EN;
		this.I2CM_LOSE_ARBI_EN = this.INTR_EN.I2CM_LOSE_ARBI_EN;
		this.INTR_EN_I2CS_GCALL_EN = this.INTR_EN.I2CS_GCALL_EN;
		this.I2CS_GCALL_EN = this.INTR_EN.I2CS_GCALL_EN;
		this.INTR_EN_I2C_AERR_EN = this.INTR_EN.I2C_AERR_EN;
		this.I2C_AERR_EN = this.INTR_EN.I2C_AERR_EN;
		this.INTR_EN_SPI_STOP_EN = this.INTR_EN.SPI_STOP_EN;
		this.SPI_STOP_EN = this.INTR_EN.SPI_STOP_EN;
      this.INTR_STA = ral_reg_INTR_STA::type_id::create("INTR_STA",,get_full_name());
      this.INTR_STA.configure(this, null, "");
      this.INTR_STA.build();
         this.INTR_STA.add_hdl_path('{

            '{"INTR_STA", -1, -1}
         });
      this.default_map.add_reg(this.INTR_STA, `UVM_REG_ADDR_WIDTH'h54, "RW", 0);
		this.INTR_STA_TX_THOLD = this.INTR_STA.TX_THOLD;
		this.TX_THOLD = this.INTR_STA.TX_THOLD;
		this.INTR_STA_TX_EMPTY = this.INTR_STA.TX_EMPTY;
		this.INTR_STA_TX_FULL = this.INTR_STA.TX_FULL;
		this.INTR_STA_TX_RERR = this.INTR_STA.TX_RERR;
		this.TX_RERR = this.INTR_STA.TX_RERR;
		this.INTR_STA_TX_WERR = this.INTR_STA.TX_WERR;
		this.TX_WERR = this.INTR_STA.TX_WERR;
		this.INTR_STA_RX_THOLD = this.INTR_STA.RX_THOLD;
		this.RX_THOLD = this.INTR_STA.RX_THOLD;
		this.INTR_STA_RX_EMPTY = this.INTR_STA.RX_EMPTY;
		this.INTR_STA_RX_FULL = this.INTR_STA.RX_FULL;
		this.INTR_STA_RX_RERR = this.INTR_STA.RX_RERR;
		this.RX_RERR = this.INTR_STA.RX_RERR;
		this.INTR_STA_RX_WERR = this.INTR_STA.RX_WERR;
		this.RX_WERR = this.INTR_STA.RX_WERR;
		this.INTR_STA_UART_TX_STOP = this.INTR_STA.UART_TX_STOP;
		this.UART_TX_STOP = this.INTR_STA.UART_TX_STOP;
		this.INTR_STA_UART_RX_STOP = this.INTR_STA.UART_RX_STOP;
		this.UART_RX_STOP = this.INTR_STA.UART_RX_STOP;
		this.INTR_STA_UART_PERR = this.INTR_STA.UART_PERR;
		this.UART_PERR = this.INTR_STA.UART_PERR;
		this.INTR_STA_I2C_STOP = this.INTR_STA.I2C_STOP;
		this.I2C_STOP = this.INTR_STA.I2C_STOP;
		this.INTR_STA_I2C_NACK = this.INTR_STA.I2C_NACK;
		this.I2C_NACK = this.INTR_STA.I2C_NACK;
		this.INTR_STA_I2CM_LOSE_ARBI = this.INTR_STA.I2CM_LOSE_ARBI;
		this.I2CM_LOSE_ARBI = this.INTR_STA.I2CM_LOSE_ARBI;
		this.INTR_STA_I2CS_GCALL = this.INTR_STA.I2CS_GCALL;
		this.I2CS_GCALL = this.INTR_STA.I2CS_GCALL;
		this.INTR_STA_I2C_AERR = this.INTR_STA.I2C_AERR;
		this.I2C_AERR = this.INTR_STA.I2C_AERR;
		this.INTR_STA_SPI_STOP = this.INTR_STA.SPI_STOP;
		this.SPI_STOP = this.INTR_STA.SPI_STOP;
      this.RAW_INTR_STA = ral_reg_RAW_INTR_STA::type_id::create("RAW_INTR_STA",,get_full_name());
      this.RAW_INTR_STA.configure(this, null, "");
      this.RAW_INTR_STA.build();
         this.RAW_INTR_STA.add_hdl_path('{

            '{"RAW_INTR_STA", -1, -1}
         });
      this.default_map.add_reg(this.RAW_INTR_STA, `UVM_REG_ADDR_WIDTH'h58, "RW", 0);
		this.RAW_INTR_STA_RAW_TX_THOLD = this.RAW_INTR_STA.RAW_TX_THOLD;
		this.RAW_TX_THOLD = this.RAW_INTR_STA.RAW_TX_THOLD;
		this.RAW_INTR_STA_RAW_TX_EMPTY = this.RAW_INTR_STA.RAW_TX_EMPTY;
		this.RAW_TX_EMPTY = this.RAW_INTR_STA.RAW_TX_EMPTY;
		this.RAW_INTR_STA_RAW_TX_FULL = this.RAW_INTR_STA.RAW_TX_FULL;
		this.RAW_TX_FULL = this.RAW_INTR_STA.RAW_TX_FULL;
		this.RAW_INTR_STA_RAW_TX_RERR = this.RAW_INTR_STA.RAW_TX_RERR;
		this.RAW_TX_RERR = this.RAW_INTR_STA.RAW_TX_RERR;
		this.RAW_INTR_STA_RAW_TX_WERR = this.RAW_INTR_STA.RAW_TX_WERR;
		this.RAW_TX_WERR = this.RAW_INTR_STA.RAW_TX_WERR;
		this.RAW_INTR_STA_RAW_RX_THOLD = this.RAW_INTR_STA.RAW_RX_THOLD;
		this.RAW_RX_THOLD = this.RAW_INTR_STA.RAW_RX_THOLD;
		this.RAW_INTR_STA_RAW_RX_EMPTY = this.RAW_INTR_STA.RAW_RX_EMPTY;
		this.RAW_RX_EMPTY = this.RAW_INTR_STA.RAW_RX_EMPTY;
		this.RAW_INTR_STA_RAW_RX_FULL = this.RAW_INTR_STA.RAW_RX_FULL;
		this.RAW_RX_FULL = this.RAW_INTR_STA.RAW_RX_FULL;
		this.RAW_INTR_STA_RAW_RX_RERR = this.RAW_INTR_STA.RAW_RX_RERR;
		this.RAW_RX_RERR = this.RAW_INTR_STA.RAW_RX_RERR;
		this.RAW_INTR_STA_RAW_RX_WERR = this.RAW_INTR_STA.RAW_RX_WERR;
		this.RAW_RX_WERR = this.RAW_INTR_STA.RAW_RX_WERR;
		this.RAW_INTR_STA_RAW_UART_TX_STOP = this.RAW_INTR_STA.RAW_UART_TX_STOP;
		this.RAW_UART_TX_STOP = this.RAW_INTR_STA.RAW_UART_TX_STOP;
		this.RAW_INTR_STA_RAW_UART_RX_STOP = this.RAW_INTR_STA.RAW_UART_RX_STOP;
		this.RAW_UART_RX_STOP = this.RAW_INTR_STA.RAW_UART_RX_STOP;
		this.RAW_INTR_STA_RAW_UART_PERR = this.RAW_INTR_STA.RAW_UART_PERR;
		this.RAW_UART_PERR = this.RAW_INTR_STA.RAW_UART_PERR;
		this.RAW_INTR_STA_RAW_I2C_STOP = this.RAW_INTR_STA.RAW_I2C_STOP;
		this.RAW_I2C_STOP = this.RAW_INTR_STA.RAW_I2C_STOP;
		this.RAW_INTR_STA_RAW_I2C_NACK = this.RAW_INTR_STA.RAW_I2C_NACK;
		this.RAW_I2C_NACK = this.RAW_INTR_STA.RAW_I2C_NACK;
		this.RAW_INTR_STA_RAW_I2CM_LOSE_ARBI = this.RAW_INTR_STA.RAW_I2CM_LOSE_ARBI;
		this.RAW_I2CM_LOSE_ARBI = this.RAW_INTR_STA.RAW_I2CM_LOSE_ARBI;
		this.RAW_INTR_STA_RAW_I2CS_GCALL = this.RAW_INTR_STA.RAW_I2CS_GCALL;
		this.RAW_I2CS_GCALL = this.RAW_INTR_STA.RAW_I2CS_GCALL;
		this.RAW_INTR_STA_RAW_I2C_AERR = this.RAW_INTR_STA.RAW_I2C_AERR;
		this.RAW_I2C_AERR = this.RAW_INTR_STA.RAW_I2C_AERR;
		this.RAW_INTR_STA_RAW_SPI_STOP = this.RAW_INTR_STA.RAW_SPI_STOP;
		this.RAW_SPI_STOP = this.RAW_INTR_STA.RAW_SPI_STOP;
      this.INTR_MASK = ral_reg_INTR_MASK::type_id::create("INTR_MASK",,get_full_name());
      this.INTR_MASK.configure(this, null, "");
      this.INTR_MASK.build();
         this.INTR_MASK.add_hdl_path('{

            '{"INTR_MASK", -1, -1}
         });
      this.default_map.add_reg(this.INTR_MASK, `UVM_REG_ADDR_WIDTH'h5C, "RW", 0);
		this.INTR_MASK_TX_THOLD_MASK = this.INTR_MASK.TX_THOLD_MASK;
		this.TX_THOLD_MASK = this.INTR_MASK.TX_THOLD_MASK;
		this.INTR_MASK_TX_EMPTY_MASK = this.INTR_MASK.TX_EMPTY_MASK;
		this.TX_EMPTY_MASK = this.INTR_MASK.TX_EMPTY_MASK;
		this.INTR_MASK_TX_FULL_MASK = this.INTR_MASK.TX_FULL_MASK;
		this.TX_FULL_MASK = this.INTR_MASK.TX_FULL_MASK;
		this.INTR_MASK_TX_RERR_MASK = this.INTR_MASK.TX_RERR_MASK;
		this.TX_RERR_MASK = this.INTR_MASK.TX_RERR_MASK;
		this.INTR_MASK_TX_WERR_MASK = this.INTR_MASK.TX_WERR_MASK;
		this.TX_WERR_MASK = this.INTR_MASK.TX_WERR_MASK;
		this.INTR_MASK_RX_THOLD_MASK = this.INTR_MASK.RX_THOLD_MASK;
		this.RX_THOLD_MASK = this.INTR_MASK.RX_THOLD_MASK;
		this.INTR_MASK_RX_EMPTY_MASK = this.INTR_MASK.RX_EMPTY_MASK;
		this.RX_EMPTY_MASK = this.INTR_MASK.RX_EMPTY_MASK;
		this.INTR_MASK_RX_FULL_MASK = this.INTR_MASK.RX_FULL_MASK;
		this.RX_FULL_MASK = this.INTR_MASK.RX_FULL_MASK;
		this.INTR_MASK_RX_RERR_MASK = this.INTR_MASK.RX_RERR_MASK;
		this.RX_RERR_MASK = this.INTR_MASK.RX_RERR_MASK;
		this.INTR_MASK_RX_WERR_MASK = this.INTR_MASK.RX_WERR_MASK;
		this.RX_WERR_MASK = this.INTR_MASK.RX_WERR_MASK;
		this.INTR_MASK_UART_TX_STOP_MASK = this.INTR_MASK.UART_TX_STOP_MASK;
		this.UART_TX_STOP_MASK = this.INTR_MASK.UART_TX_STOP_MASK;
		this.INTR_MASK_UART_RX_STOP_MASK = this.INTR_MASK.UART_RX_STOP_MASK;
		this.UART_RX_STOP_MASK = this.INTR_MASK.UART_RX_STOP_MASK;
		this.INTR_MASK_UART_PERR_MASK = this.INTR_MASK.UART_PERR_MASK;
		this.UART_PERR_MASK = this.INTR_MASK.UART_PERR_MASK;
		this.INTR_MASK_I2C_STOP_MASK = this.INTR_MASK.I2C_STOP_MASK;
		this.I2C_STOP_MASK = this.INTR_MASK.I2C_STOP_MASK;
		this.INTR_MASK_I2C_NACK_MASK = this.INTR_MASK.I2C_NACK_MASK;
		this.I2C_NACK_MASK = this.INTR_MASK.I2C_NACK_MASK;
		this.INTR_MASK_I2CM_LOSE_ARBI_MASK = this.INTR_MASK.I2CM_LOSE_ARBI_MASK;
		this.I2CM_LOSE_ARBI_MASK = this.INTR_MASK.I2CM_LOSE_ARBI_MASK;
		this.INTR_MASK_I2CS_GCALL_MASK = this.INTR_MASK.I2CS_GCALL_MASK;
		this.I2CS_GCALL_MASK = this.INTR_MASK.I2CS_GCALL_MASK;
		this.INTR_MASK_I2C_AERR_MASK = this.INTR_MASK.I2C_AERR_MASK;
		this.I2C_AERR_MASK = this.INTR_MASK.I2C_AERR_MASK;
		this.INTR_MASK_SPI_STOP_MASK = this.INTR_MASK.SPI_STOP_MASK;
		this.SPI_STOP_MASK = this.INTR_MASK.SPI_STOP_MASK;
      this.INTR_CLR = ral_reg_INTR_CLR::type_id::create("INTR_CLR",,get_full_name());
      this.INTR_CLR.configure(this, null, "");
      this.INTR_CLR.build();
         this.INTR_CLR.add_hdl_path('{

            '{"INTR_CLR", -1, -1}
         });
      this.default_map.add_reg(this.INTR_CLR, `UVM_REG_ADDR_WIDTH'h60, "RW", 0);
		this.INTR_CLR_TX_THOLD_CLR = this.INTR_CLR.TX_THOLD_CLR;
		this.TX_THOLD_CLR = this.INTR_CLR.TX_THOLD_CLR;
		this.INTR_CLR_TX_EMPTY_CLR = this.INTR_CLR.TX_EMPTY_CLR;
		this.TX_EMPTY_CLR = this.INTR_CLR.TX_EMPTY_CLR;
		this.INTR_CLR_TX_FULL_CLR = this.INTR_CLR.TX_FULL_CLR;
		this.TX_FULL_CLR = this.INTR_CLR.TX_FULL_CLR;
		this.INTR_CLR_TX_RERR_CLR = this.INTR_CLR.TX_RERR_CLR;
		this.TX_RERR_CLR = this.INTR_CLR.TX_RERR_CLR;
		this.INTR_CLR_TX_WERR_CLR = this.INTR_CLR.TX_WERR_CLR;
		this.TX_WERR_CLR = this.INTR_CLR.TX_WERR_CLR;
		this.INTR_CLR_RX_THOLD_CLR = this.INTR_CLR.RX_THOLD_CLR;
		this.RX_THOLD_CLR = this.INTR_CLR.RX_THOLD_CLR;
		this.INTR_CLR_RX_EMPTY_CLR = this.INTR_CLR.RX_EMPTY_CLR;
		this.RX_EMPTY_CLR = this.INTR_CLR.RX_EMPTY_CLR;
		this.INTR_CLR_RX_FULL_CLR = this.INTR_CLR.RX_FULL_CLR;
		this.RX_FULL_CLR = this.INTR_CLR.RX_FULL_CLR;
		this.INTR_CLR_RX_RERR_CLR = this.INTR_CLR.RX_RERR_CLR;
		this.RX_RERR_CLR = this.INTR_CLR.RX_RERR_CLR;
		this.INTR_CLR_RX_WERR_CLR = this.INTR_CLR.RX_WERR_CLR;
		this.RX_WERR_CLR = this.INTR_CLR.RX_WERR_CLR;
		this.INTR_CLR_UART_TX_STOP_CLR = this.INTR_CLR.UART_TX_STOP_CLR;
		this.UART_TX_STOP_CLR = this.INTR_CLR.UART_TX_STOP_CLR;
		this.INTR_CLR_UART_RX_STOP_CLR = this.INTR_CLR.UART_RX_STOP_CLR;
		this.UART_RX_STOP_CLR = this.INTR_CLR.UART_RX_STOP_CLR;
		this.INTR_CLR_UART_PERR_CLR = this.INTR_CLR.UART_PERR_CLR;
		this.UART_PERR_CLR = this.INTR_CLR.UART_PERR_CLR;
		this.INTR_CLR_I2C_STOP_CLR = this.INTR_CLR.I2C_STOP_CLR;
		this.I2C_STOP_CLR = this.INTR_CLR.I2C_STOP_CLR;
		this.INTR_CLR_I2C_NACK_CLR = this.INTR_CLR.I2C_NACK_CLR;
		this.I2C_NACK_CLR = this.INTR_CLR.I2C_NACK_CLR;
		this.INTR_CLR_I2CM_LOSE_ARBI_CLR = this.INTR_CLR.I2CM_LOSE_ARBI_CLR;
		this.I2CM_LOSE_ARBI_CLR = this.INTR_CLR.I2CM_LOSE_ARBI_CLR;
		this.INTR_CLR_I2CS_GCALL_CLR = this.INTR_CLR.I2CS_GCALL_CLR;
		this.I2CS_GCALL_CLR = this.INTR_CLR.I2CS_GCALL_CLR;
		this.INTR_CLR_I2C_AERR_CLR = this.INTR_CLR.I2C_AERR_CLR;
		this.I2C_AERR_CLR = this.INTR_CLR.I2C_AERR_CLR;
		this.INTR_CLR_SPI_STOP_CLR = this.INTR_CLR.SPI_STOP_CLR;
		this.SPI_STOP_CLR = this.INTR_CLR.SPI_STOP_CLR;
      this.DMA_CTRL = ral_reg_DMA_CTRL::type_id::create("DMA_CTRL",,get_full_name());
      this.DMA_CTRL.configure(this, null, "");
      this.DMA_CTRL.build();
         this.DMA_CTRL.add_hdl_path('{

            '{"DMA_CTRL", -1, -1}
         });
      this.default_map.add_reg(this.DMA_CTRL, `UVM_REG_ADDR_WIDTH'h64, "RW", 0);
		this.DMA_CTRL_TX_DMA_EN = this.DMA_CTRL.TX_DMA_EN;
		this.TX_DMA_EN = this.DMA_CTRL.TX_DMA_EN;
		this.DMA_CTRL_RX_DMA_EN = this.DMA_CTRL.RX_DMA_EN;
		this.RX_DMA_EN = this.DMA_CTRL.RX_DMA_EN;
      this.DMA_THRESHOLD = ral_reg_DMA_THRESHOLD::type_id::create("DMA_THRESHOLD",,get_full_name());
      this.DMA_THRESHOLD.configure(this, null, "");
      this.DMA_THRESHOLD.build();
         this.DMA_THRESHOLD.add_hdl_path('{

            '{"DMA_THRESHOLD", -1, -1}
         });
      this.default_map.add_reg(this.DMA_THRESHOLD, `UVM_REG_ADDR_WIDTH'h68, "RW", 0);
		this.DMA_THRESHOLD_TX_DMA_TH = this.DMA_THRESHOLD.TX_DMA_TH;
		this.TX_DMA_TH = this.DMA_THRESHOLD.TX_DMA_TH;
		this.DMA_THRESHOLD_RX_DMA_TH = this.DMA_THRESHOLD.RX_DMA_TH;
		this.RX_DMA_TH = this.DMA_THRESHOLD.RX_DMA_TH;
      this.SPI_NSS_DATA = ral_reg_SPI_NSS_DATA::type_id::create("SPI_NSS_DATA",,get_full_name());
      this.SPI_NSS_DATA.configure(this, null, "");
      this.SPI_NSS_DATA.build();
         this.SPI_NSS_DATA.add_hdl_path('{

            '{"SPI_NSS_DATA", -1, -1}
         });
      this.default_map.add_reg(this.SPI_NSS_DATA, `UVM_REG_ADDR_WIDTH'h6C, "RW", 0);
		this.SPI_NSS_DATA_NSS_DATA = this.SPI_NSS_DATA.NSS_DATA;
		this.NSS_DATA = this.SPI_NSS_DATA.NSS_DATA;
   endfunction : build

	`uvm_object_utils(ral_block_usi0)

endclass : ral_block_usi0



`endif
