`ifndef RAL_DMA
`define RAL_DMA

import uvm_pkg::*;

class ral_reg_SAR0 extends uvm_reg;
	rand uvm_reg_field SAR0;

	function new(string name = "SAR0");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR0 = uvm_reg_field::type_id::create("SAR0",,get_full_name());
      this.SAR0.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR0)

endclass : ral_reg_SAR0


class ral_reg_DAR0 extends uvm_reg;
	rand uvm_reg_field DAR0;

	function new(string name = "DAR0");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR0 = uvm_reg_field::type_id::create("DAR0",,get_full_name());
      this.DAR0.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR0)

endclass : ral_reg_DAR0


class ral_reg_CH0_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH0_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_CTRL_A)

endclass : ral_reg_CH0_CTRL_A


class ral_reg_CH0_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH0_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_CTRL_B)

endclass : ral_reg_CH0_CTRL_B


class ral_reg_CH0_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH0_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_INT_MASK)

endclass : ral_reg_CH0_INT_MASK


class ral_reg_CH0_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH0_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_INT_STATUS)

endclass : ral_reg_CH0_INT_STATUS


class ral_reg_CH0_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH0_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_INT_CLEAR)

endclass : ral_reg_CH0_INT_CLEAR


class ral_reg_CH0_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH0_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_SOFT_REQ)

endclass : ral_reg_CH0_SOFT_REQ


class ral_reg_CH0_EN extends uvm_reg;
	rand uvm_reg_field ch0_en;

	function new(string name = "CH0_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch0_en = uvm_reg_field::type_id::create("ch0_en",,get_full_name());
      this.ch0_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH0_EN)

endclass : ral_reg_CH0_EN


class ral_reg_SAR1 extends uvm_reg;
	rand uvm_reg_field SAR1;

	function new(string name = "SAR1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR1 = uvm_reg_field::type_id::create("SAR1",,get_full_name());
      this.SAR1.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR1)

endclass : ral_reg_SAR1


class ral_reg_DAR1 extends uvm_reg;
	rand uvm_reg_field DAR1;

	function new(string name = "DAR1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR1 = uvm_reg_field::type_id::create("DAR1",,get_full_name());
      this.DAR1.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR1)

endclass : ral_reg_DAR1


class ral_reg_CH1_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH1_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_CTRL_A)

endclass : ral_reg_CH1_CTRL_A


class ral_reg_CH1_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH1_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_CTRL_B)

endclass : ral_reg_CH1_CTRL_B


class ral_reg_CH1_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH1_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_INT_MASK)

endclass : ral_reg_CH1_INT_MASK


class ral_reg_CH1_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH1_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_INT_STATUS)

endclass : ral_reg_CH1_INT_STATUS


class ral_reg_CH1_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH1_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_INT_CLEAR)

endclass : ral_reg_CH1_INT_CLEAR


class ral_reg_CH1_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH1_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_SOFT_REQ)

endclass : ral_reg_CH1_SOFT_REQ


class ral_reg_CH1_EN extends uvm_reg;
	rand uvm_reg_field ch1_en;

	function new(string name = "CH1_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch1_en = uvm_reg_field::type_id::create("ch1_en",,get_full_name());
      this.ch1_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH1_EN)

endclass : ral_reg_CH1_EN


class ral_reg_SAR2 extends uvm_reg;
	rand uvm_reg_field SAR2;

	function new(string name = "SAR2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR2 = uvm_reg_field::type_id::create("SAR2",,get_full_name());
      this.SAR2.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR2)

endclass : ral_reg_SAR2


class ral_reg_DAR2 extends uvm_reg;
	rand uvm_reg_field DAR2;

	function new(string name = "DAR2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR2 = uvm_reg_field::type_id::create("DAR2",,get_full_name());
      this.DAR2.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR2)

endclass : ral_reg_DAR2


class ral_reg_CH2_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH2_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_CTRL_A)

endclass : ral_reg_CH2_CTRL_A


class ral_reg_CH2_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH2_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_CTRL_B)

endclass : ral_reg_CH2_CTRL_B


class ral_reg_CH2_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH2_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_INT_MASK)

endclass : ral_reg_CH2_INT_MASK


class ral_reg_CH2_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH2_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_INT_STATUS)

endclass : ral_reg_CH2_INT_STATUS


class ral_reg_CH2_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH2_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_INT_CLEAR)

endclass : ral_reg_CH2_INT_CLEAR


class ral_reg_CH2_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH2_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_SOFT_REQ)

endclass : ral_reg_CH2_SOFT_REQ


class ral_reg_CH2_EN extends uvm_reg;
	rand uvm_reg_field ch2_en;

	function new(string name = "CH2_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch2_en = uvm_reg_field::type_id::create("ch2_en",,get_full_name());
      this.ch2_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH2_EN)

endclass : ral_reg_CH2_EN


class ral_reg_SAR3 extends uvm_reg;
	rand uvm_reg_field SAR3;

	function new(string name = "SAR3");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR3 = uvm_reg_field::type_id::create("SAR3",,get_full_name());
      this.SAR3.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR3)

endclass : ral_reg_SAR3


class ral_reg_DAR3 extends uvm_reg;
	rand uvm_reg_field DAR3;

	function new(string name = "DAR3");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR3 = uvm_reg_field::type_id::create("DAR3",,get_full_name());
      this.DAR3.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR3)

endclass : ral_reg_DAR3


class ral_reg_CH3_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH3_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_CTRL_A)

endclass : ral_reg_CH3_CTRL_A


class ral_reg_CH3_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH3_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_CTRL_B)

endclass : ral_reg_CH3_CTRL_B


class ral_reg_CH3_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH3_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_INT_MASK)

endclass : ral_reg_CH3_INT_MASK


class ral_reg_CH3_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH3_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_INT_STATUS)

endclass : ral_reg_CH3_INT_STATUS


class ral_reg_CH3_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH3_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_INT_CLEAR)

endclass : ral_reg_CH3_INT_CLEAR


class ral_reg_CH3_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH3_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_SOFT_REQ)

endclass : ral_reg_CH3_SOFT_REQ


class ral_reg_CH3_EN extends uvm_reg;
	rand uvm_reg_field ch3_en;

	function new(string name = "CH3_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch3_en = uvm_reg_field::type_id::create("ch3_en",,get_full_name());
      this.ch3_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH3_EN)

endclass : ral_reg_CH3_EN


class ral_reg_SAR4 extends uvm_reg;
	rand uvm_reg_field SAR4;

	function new(string name = "SAR4");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR4 = uvm_reg_field::type_id::create("SAR4",,get_full_name());
      this.SAR4.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR4)

endclass : ral_reg_SAR4


class ral_reg_DAR4 extends uvm_reg;
	rand uvm_reg_field DAR4;

	function new(string name = "DAR4");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR4 = uvm_reg_field::type_id::create("DAR4",,get_full_name());
      this.DAR4.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR4)

endclass : ral_reg_DAR4


class ral_reg_CH4_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH4_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_CTRL_A)

endclass : ral_reg_CH4_CTRL_A


class ral_reg_CH4_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH4_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_CTRL_B)

endclass : ral_reg_CH4_CTRL_B


class ral_reg_CH4_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH4_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_INT_MASK)

endclass : ral_reg_CH4_INT_MASK


class ral_reg_CH4_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH4_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_INT_STATUS)

endclass : ral_reg_CH4_INT_STATUS


class ral_reg_CH4_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH4_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_INT_CLEAR)

endclass : ral_reg_CH4_INT_CLEAR


class ral_reg_CH4_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH4_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_SOFT_REQ)

endclass : ral_reg_CH4_SOFT_REQ


class ral_reg_CH4_EN extends uvm_reg;
	rand uvm_reg_field ch4_en;

	function new(string name = "CH4_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch4_en = uvm_reg_field::type_id::create("ch4_en",,get_full_name());
      this.ch4_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH4_EN)

endclass : ral_reg_CH4_EN


class ral_reg_SAR5 extends uvm_reg;
	rand uvm_reg_field SAR5;

	function new(string name = "SAR5");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR5 = uvm_reg_field::type_id::create("SAR5",,get_full_name());
      this.SAR5.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR5)

endclass : ral_reg_SAR5


class ral_reg_DAR5 extends uvm_reg;
	rand uvm_reg_field DAR5;

	function new(string name = "DAR5");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR5 = uvm_reg_field::type_id::create("DAR5",,get_full_name());
      this.DAR5.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR5)

endclass : ral_reg_DAR5


class ral_reg_CH5_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH5_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_CTRL_A)

endclass : ral_reg_CH5_CTRL_A


class ral_reg_CH5_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH5_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_CTRL_B)

endclass : ral_reg_CH5_CTRL_B


class ral_reg_CH5_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH5_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_INT_MASK)

endclass : ral_reg_CH5_INT_MASK


class ral_reg_CH5_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH5_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_INT_STATUS)

endclass : ral_reg_CH5_INT_STATUS


class ral_reg_CH5_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH5_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_INT_CLEAR)

endclass : ral_reg_CH5_INT_CLEAR


class ral_reg_CH5_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH5_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_SOFT_REQ)

endclass : ral_reg_CH5_SOFT_REQ


class ral_reg_CH5_EN extends uvm_reg;
	rand uvm_reg_field ch5_en;

	function new(string name = "CH5_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch5_en = uvm_reg_field::type_id::create("ch5_en",,get_full_name());
      this.ch5_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH5_EN)

endclass : ral_reg_CH5_EN


class ral_reg_SAR6 extends uvm_reg;
	rand uvm_reg_field SAR6;

	function new(string name = "SAR6");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR6 = uvm_reg_field::type_id::create("SAR6",,get_full_name());
      this.SAR6.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR6)

endclass : ral_reg_SAR6


class ral_reg_DAR6 extends uvm_reg;
	rand uvm_reg_field DAR6;

	function new(string name = "DAR6");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR6 = uvm_reg_field::type_id::create("DAR6",,get_full_name());
      this.DAR6.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR6)

endclass : ral_reg_DAR6


class ral_reg_CH6_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH6_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_CTRL_A)

endclass : ral_reg_CH6_CTRL_A


class ral_reg_CH6_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH6_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_CTRL_B)

endclass : ral_reg_CH6_CTRL_B


class ral_reg_CH6_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH6_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_INT_MASK)

endclass : ral_reg_CH6_INT_MASK


class ral_reg_CH6_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH6_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_INT_STATUS)

endclass : ral_reg_CH6_INT_STATUS


class ral_reg_CH6_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH6_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_INT_CLEAR)

endclass : ral_reg_CH6_INT_CLEAR


class ral_reg_CH6_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH6_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_SOFT_REQ)

endclass : ral_reg_CH6_SOFT_REQ


class ral_reg_CH6_EN extends uvm_reg;
	rand uvm_reg_field ch6_en;

	function new(string name = "CH6_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch6_en = uvm_reg_field::type_id::create("ch6_en",,get_full_name());
      this.ch6_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH6_EN)

endclass : ral_reg_CH6_EN


class ral_reg_SAR7 extends uvm_reg;
	rand uvm_reg_field SAR7;

	function new(string name = "SAR7");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR7 = uvm_reg_field::type_id::create("SAR7",,get_full_name());
      this.SAR7.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR7)

endclass : ral_reg_SAR7


class ral_reg_DAR7 extends uvm_reg;
	rand uvm_reg_field DAR7;

	function new(string name = "DAR7");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR7 = uvm_reg_field::type_id::create("DAR7",,get_full_name());
      this.DAR7.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR7)

endclass : ral_reg_DAR7


class ral_reg_CH7_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH7_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_CTRL_A)

endclass : ral_reg_CH7_CTRL_A


class ral_reg_CH7_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH7_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_CTRL_B)

endclass : ral_reg_CH7_CTRL_B


class ral_reg_CH7_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH7_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_INT_MASK)

endclass : ral_reg_CH7_INT_MASK


class ral_reg_CH7_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH7_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_INT_STATUS)

endclass : ral_reg_CH7_INT_STATUS


class ral_reg_CH7_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH7_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_INT_CLEAR)

endclass : ral_reg_CH7_INT_CLEAR


class ral_reg_CH7_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH7_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_SOFT_REQ)

endclass : ral_reg_CH7_SOFT_REQ


class ral_reg_CH7_EN extends uvm_reg;
	rand uvm_reg_field ch7_en;

	function new(string name = "CH7_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch7_en = uvm_reg_field::type_id::create("ch7_en",,get_full_name());
      this.ch7_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH7_EN)

endclass : ral_reg_CH7_EN


class ral_reg_SAR8 extends uvm_reg;
	rand uvm_reg_field SAR8;

	function new(string name = "SAR8");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR8 = uvm_reg_field::type_id::create("SAR8",,get_full_name());
      this.SAR8.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR8)

endclass : ral_reg_SAR8


class ral_reg_DAR8 extends uvm_reg;
	rand uvm_reg_field DAR8;

	function new(string name = "DAR8");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR8 = uvm_reg_field::type_id::create("DAR8",,get_full_name());
      this.DAR8.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR8)

endclass : ral_reg_DAR8


class ral_reg_CH8_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH8_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_CTRL_A)

endclass : ral_reg_CH8_CTRL_A


class ral_reg_CH8_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH8_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_CTRL_B)

endclass : ral_reg_CH8_CTRL_B


class ral_reg_CH8_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH8_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_INT_MASK)

endclass : ral_reg_CH8_INT_MASK


class ral_reg_CH8_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH8_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_INT_STATUS)

endclass : ral_reg_CH8_INT_STATUS


class ral_reg_CH8_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH8_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_INT_CLEAR)

endclass : ral_reg_CH8_INT_CLEAR


class ral_reg_CH8_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH8_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_SOFT_REQ)

endclass : ral_reg_CH8_SOFT_REQ


class ral_reg_CH8_EN extends uvm_reg;
	rand uvm_reg_field ch8_en;

	function new(string name = "CH8_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch8_en = uvm_reg_field::type_id::create("ch8_en",,get_full_name());
      this.ch8_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH8_EN)

endclass : ral_reg_CH8_EN


class ral_reg_SAR9 extends uvm_reg;
	rand uvm_reg_field SAR9;

	function new(string name = "SAR9");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR9 = uvm_reg_field::type_id::create("SAR9",,get_full_name());
      this.SAR9.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR9)

endclass : ral_reg_SAR9


class ral_reg_DAR9 extends uvm_reg;
	rand uvm_reg_field DAR9;

	function new(string name = "DAR9");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR9 = uvm_reg_field::type_id::create("DAR9",,get_full_name());
      this.DAR9.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR9)

endclass : ral_reg_DAR9


class ral_reg_CH9_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH9_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_CTRL_A)

endclass : ral_reg_CH9_CTRL_A


class ral_reg_CH9_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH9_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_CTRL_B)

endclass : ral_reg_CH9_CTRL_B


class ral_reg_CH9_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH9_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_INT_MASK)

endclass : ral_reg_CH9_INT_MASK


class ral_reg_CH9_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH9_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_INT_STATUS)

endclass : ral_reg_CH9_INT_STATUS


class ral_reg_CH9_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH9_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_INT_CLEAR)

endclass : ral_reg_CH9_INT_CLEAR


class ral_reg_CH9_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH9_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_SOFT_REQ)

endclass : ral_reg_CH9_SOFT_REQ


class ral_reg_CH9_EN extends uvm_reg;
	rand uvm_reg_field ch9_en;

	function new(string name = "CH9_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch9_en = uvm_reg_field::type_id::create("ch9_en",,get_full_name());
      this.ch9_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH9_EN)

endclass : ral_reg_CH9_EN


class ral_reg_SAR10 extends uvm_reg;
	rand uvm_reg_field SAR10;

	function new(string name = "SAR10");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR10 = uvm_reg_field::type_id::create("SAR10",,get_full_name());
      this.SAR10.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR10)

endclass : ral_reg_SAR10


class ral_reg_DAR10 extends uvm_reg;
	rand uvm_reg_field DAR10;

	function new(string name = "DAR10");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR10 = uvm_reg_field::type_id::create("DAR10",,get_full_name());
      this.DAR10.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR10)

endclass : ral_reg_DAR10


class ral_reg_CH10_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH10_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_CTRL_A)

endclass : ral_reg_CH10_CTRL_A


class ral_reg_CH10_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH10_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_CTRL_B)

endclass : ral_reg_CH10_CTRL_B


class ral_reg_CH10_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH10_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_INT_MASK)

endclass : ral_reg_CH10_INT_MASK


class ral_reg_CH10_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH10_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_INT_STATUS)

endclass : ral_reg_CH10_INT_STATUS


class ral_reg_CH10_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH10_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_INT_CLEAR)

endclass : ral_reg_CH10_INT_CLEAR


class ral_reg_CH10_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH10_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH10_SOFT_REQ)

endclass : ral_reg_CH10_SOFT_REQ


class ral_reg_C10_EN extends uvm_reg;
	rand uvm_reg_field ch10_en;

	function new(string name = "C10_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch10_en = uvm_reg_field::type_id::create("ch10_en",,get_full_name());
      this.ch10_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_C10_EN)

endclass : ral_reg_C10_EN


class ral_reg_SAR11 extends uvm_reg;
	rand uvm_reg_field SAR11;

	function new(string name = "SAR11");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR11 = uvm_reg_field::type_id::create("SAR11",,get_full_name());
      this.SAR11.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR11)

endclass : ral_reg_SAR11


class ral_reg_DAR11 extends uvm_reg;
	rand uvm_reg_field DAR11;

	function new(string name = "DAR11");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR11 = uvm_reg_field::type_id::create("DAR11",,get_full_name());
      this.DAR11.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR11)

endclass : ral_reg_DAR11


class ral_reg_CH11_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH11_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_CTRL_A)

endclass : ral_reg_CH11_CTRL_A


class ral_reg_CH11_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH11_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_CTRL_B)

endclass : ral_reg_CH11_CTRL_B


class ral_reg_CH11_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH11_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_INT_MASK)

endclass : ral_reg_CH11_INT_MASK


class ral_reg_CH11_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH11_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_INT_STATUS)

endclass : ral_reg_CH11_INT_STATUS


class ral_reg_CH11_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH11_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_INT_CLEAR)

endclass : ral_reg_CH11_INT_CLEAR


class ral_reg_CH11_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH11_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_SOFT_REQ)

endclass : ral_reg_CH11_SOFT_REQ


class ral_reg_CH11_EN extends uvm_reg;
	rand uvm_reg_field ch11_en;

	function new(string name = "CH11_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch11_en = uvm_reg_field::type_id::create("ch11_en",,get_full_name());
      this.ch11_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH11_EN)

endclass : ral_reg_CH11_EN


class ral_reg_SAR12 extends uvm_reg;
	rand uvm_reg_field SAR12;

	function new(string name = "SAR12");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR12 = uvm_reg_field::type_id::create("SAR12",,get_full_name());
      this.SAR12.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR12)

endclass : ral_reg_SAR12


class ral_reg_DAR12 extends uvm_reg;
	rand uvm_reg_field DAR12;

	function new(string name = "DAR12");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR12 = uvm_reg_field::type_id::create("DAR12",,get_full_name());
      this.DAR12.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR12)

endclass : ral_reg_DAR12


class ral_reg_CH12_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH12_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_CTRL_A)

endclass : ral_reg_CH12_CTRL_A


class ral_reg_CH12_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH12_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_CTRL_B)

endclass : ral_reg_CH12_CTRL_B


class ral_reg_CH12_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH12_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_INT_MASK)

endclass : ral_reg_CH12_INT_MASK


class ral_reg_CH12_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH12_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_INT_STATUS)

endclass : ral_reg_CH12_INT_STATUS


class ral_reg_CH12_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH12_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_INT_CLEAR)

endclass : ral_reg_CH12_INT_CLEAR


class ral_reg_CH12_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH12_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_SOFT_REQ)

endclass : ral_reg_CH12_SOFT_REQ


class ral_reg_CH12_EN extends uvm_reg;
	rand uvm_reg_field ch12_en;

	function new(string name = "CH12_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch12_en = uvm_reg_field::type_id::create("ch12_en",,get_full_name());
      this.ch12_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH12_EN)

endclass : ral_reg_CH12_EN


class ral_reg_SAR13 extends uvm_reg;
	rand uvm_reg_field SAR13;

	function new(string name = "SAR13");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR13 = uvm_reg_field::type_id::create("SAR13",,get_full_name());
      this.SAR13.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR13)

endclass : ral_reg_SAR13


class ral_reg_DAR13 extends uvm_reg;
	rand uvm_reg_field DAR13;

	function new(string name = "DAR13");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR13 = uvm_reg_field::type_id::create("DAR13",,get_full_name());
      this.DAR13.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR13)

endclass : ral_reg_DAR13


class ral_reg_CH13_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH13_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_CTRL_A)

endclass : ral_reg_CH13_CTRL_A


class ral_reg_CH13_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH13_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_CTRL_B)

endclass : ral_reg_CH13_CTRL_B


class ral_reg_CH13_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH13_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_INT_MASK)

endclass : ral_reg_CH13_INT_MASK


class ral_reg_CH13_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH13_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_INT_STATUS)

endclass : ral_reg_CH13_INT_STATUS


class ral_reg_CH13_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH13_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_INT_CLEAR)

endclass : ral_reg_CH13_INT_CLEAR


class ral_reg_CH13_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH13_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_SOFT_REQ)

endclass : ral_reg_CH13_SOFT_REQ


class ral_reg_CH13_EN extends uvm_reg;
	rand uvm_reg_field ch13_en;

	function new(string name = "CH13_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch13_en = uvm_reg_field::type_id::create("ch13_en",,get_full_name());
      this.ch13_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH13_EN)

endclass : ral_reg_CH13_EN


class ral_reg_SAR14 extends uvm_reg;
	rand uvm_reg_field SAR14;

	function new(string name = "SAR14");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR14 = uvm_reg_field::type_id::create("SAR14",,get_full_name());
      this.SAR14.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR14)

endclass : ral_reg_SAR14


class ral_reg_DAR14 extends uvm_reg;
	rand uvm_reg_field DAR14;

	function new(string name = "DAR14");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR14 = uvm_reg_field::type_id::create("DAR14",,get_full_name());
      this.DAR14.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR14)

endclass : ral_reg_DAR14


class ral_reg_CH14_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH14_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_CTRL_A)

endclass : ral_reg_CH14_CTRL_A


class ral_reg_CH14_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH14_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_CTRL_B)

endclass : ral_reg_CH14_CTRL_B


class ral_reg_CH14_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH14_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_INT_MASK)

endclass : ral_reg_CH14_INT_MASK


class ral_reg_CH14_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH14_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_INT_STATUS)

endclass : ral_reg_CH14_INT_STATUS


class ral_reg_CH14_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH14_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_INT_CLEAR)

endclass : ral_reg_CH14_INT_CLEAR


class ral_reg_CH14_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH14_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_SOFT_REQ)

endclass : ral_reg_CH14_SOFT_REQ


class ral_reg_CH14_EN extends uvm_reg;
	rand uvm_reg_field ch14_en;

	function new(string name = "CH14_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch14_en = uvm_reg_field::type_id::create("ch14_en",,get_full_name());
      this.ch14_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH14_EN)

endclass : ral_reg_CH14_EN


class ral_reg_SAR15 extends uvm_reg;
	rand uvm_reg_field SAR15;

	function new(string name = "SAR15");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.SAR15 = uvm_reg_field::type_id::create("SAR15",,get_full_name());
      this.SAR15.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_SAR15)

endclass : ral_reg_SAR15


class ral_reg_DAR15 extends uvm_reg;
	rand uvm_reg_field DAR15;

	function new(string name = "DAR15");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DAR15 = uvm_reg_field::type_id::create("DAR15",,get_full_name());
      this.DAR15.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DAR15)

endclass : ral_reg_DAR15


class ral_reg_CH15_CTRL_A extends uvm_reg;
	rand uvm_reg_field DST_TR_WIDTH;
	rand uvm_reg_field SRC_TR_WIDTH;
	rand uvm_reg_field DINC;
	rand uvm_reg_field SINC;
	rand uvm_reg_field BLOCK_TL;

	function new(string name = "CH15_CTRL_A");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DST_TR_WIDTH = uvm_reg_field::type_id::create("DST_TR_WIDTH",,get_full_name());
      this.DST_TR_WIDTH.configure(this, 2, 0, "RW", 0, 2'h0, 1, 0, 0);
      this.SRC_TR_WIDTH = uvm_reg_field::type_id::create("SRC_TR_WIDTH",,get_full_name());
      this.SRC_TR_WIDTH.configure(this, 2, 2, "RW", 0, 2'h0, 1, 0, 0);
      this.DINC = uvm_reg_field::type_id::create("DINC",,get_full_name());
      this.DINC.configure(this, 2, 4, "RW", 0, 2'h0, 1, 0, 0);
      this.SINC = uvm_reg_field::type_id::create("SINC",,get_full_name());
      this.SINC.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.BLOCK_TL = uvm_reg_field::type_id::create("BLOCK_TL",,get_full_name());
      this.BLOCK_TL.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_CTRL_A)

endclass : ral_reg_CH15_CTRL_A


class ral_reg_CH15_CTRL_B extends uvm_reg;
	rand uvm_reg_field INT_EN;
	rand uvm_reg_field TRGTMDC;
	rand uvm_reg_field SRCDTLGC;
	rand uvm_reg_field DSTDTLGC;
	rand uvm_reg_field PROTCTL;

	function new(string name = "CH15_CTRL_B");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.INT_EN = uvm_reg_field::type_id::create("INT_EN",,get_full_name());
      this.INT_EN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.TRGTMDC = uvm_reg_field::type_id::create("TRGTMDC",,get_full_name());
      this.TRGTMDC.configure(this, 2, 1, "RW", 0, 2'h0, 1, 0, 0);
      this.SRCDTLGC = uvm_reg_field::type_id::create("SRCDTLGC",,get_full_name());
      this.SRCDTLGC.configure(this, 1, 13, "RW", 0, 1'h0, 1, 0, 0);
      this.DSTDTLGC = uvm_reg_field::type_id::create("DSTDTLGC",,get_full_name());
      this.DSTDTLGC.configure(this, 1, 14, "RW", 0, 1'h0, 1, 0, 0);
      this.PROTCTL = uvm_reg_field::type_id::create("PROTCTL",,get_full_name());
      this.PROTCTL.configure(this, 4, 15, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_CTRL_B)

endclass : ral_reg_CH15_CTRL_B


class ral_reg_CH15_INT_MASK extends uvm_reg;
	rand uvm_reg_field maskErr;
	rand uvm_reg_field masktfr;
	rand uvm_reg_field maskhtfr;
	rand uvm_reg_field masktrgetcmpfr;

	function new(string name = "CH15_INT_MASK");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.maskErr = uvm_reg_field::type_id::create("maskErr",,get_full_name());
      this.maskErr.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 0);
      this.masktfr = uvm_reg_field::type_id::create("masktfr",,get_full_name());
      this.masktfr.configure(this, 1, 1, "RW", 0, 1'h0, 1, 0, 0);
      this.maskhtfr = uvm_reg_field::type_id::create("maskhtfr",,get_full_name());
      this.maskhtfr.configure(this, 1, 2, "RW", 0, 1'h0, 1, 0, 0);
      this.masktrgetcmpfr = uvm_reg_field::type_id::create("masktrgetcmpfr",,get_full_name());
      this.masktrgetcmpfr.configure(this, 1, 3, "RW", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_INT_MASK)

endclass : ral_reg_CH15_INT_MASK


class ral_reg_CH15_INT_STATUS extends uvm_reg;
	uvm_reg_field statusErr;
	uvm_reg_field statusfr;
	uvm_reg_field statushtfr;
	uvm_reg_field statustrgetcmpfr;

	function new(string name = "CH15_INT_STATUS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.statusErr = uvm_reg_field::type_id::create("statusErr",,get_full_name());
      this.statusErr.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.statusfr = uvm_reg_field::type_id::create("statusfr",,get_full_name());
      this.statusfr.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.statushtfr = uvm_reg_field::type_id::create("statushtfr",,get_full_name());
      this.statushtfr.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.statustrgetcmpfr = uvm_reg_field::type_id::create("statustrgetcmpfr",,get_full_name());
      this.statustrgetcmpfr.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_INT_STATUS)

endclass : ral_reg_CH15_INT_STATUS


class ral_reg_CH15_INT_CLEAR extends uvm_reg;
	rand uvm_reg_field clearErr;
	rand uvm_reg_field cleartfr;
	rand uvm_reg_field clearhtfr;
	rand uvm_reg_field cleartrgetcmpfr;

	function new(string name = "CH15_INT_CLEAR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clearErr = uvm_reg_field::type_id::create("clearErr",,get_full_name());
      this.clearErr.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartfr = uvm_reg_field::type_id::create("cleartfr",,get_full_name());
      this.cleartfr.configure(this, 1, 1, "WO", 0, 1'h0, 1, 0, 0);
      this.clearhtfr = uvm_reg_field::type_id::create("clearhtfr",,get_full_name());
      this.clearhtfr.configure(this, 1, 2, "WO", 0, 1'h0, 1, 0, 0);
      this.cleartrgetcmpfr = uvm_reg_field::type_id::create("cleartrgetcmpfr",,get_full_name());
      this.cleartrgetcmpfr.configure(this, 1, 3, "WO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_INT_CLEAR)

endclass : ral_reg_CH15_INT_CLEAR


class ral_reg_CH15_SOFT_REQ extends uvm_reg;
	rand uvm_reg_field soft_req;

	function new(string name = "CH15_SOFT_REQ");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.soft_req = uvm_reg_field::type_id::create("soft_req",,get_full_name());
      this.soft_req.configure(this, 1, 0, "WO", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_SOFT_REQ)

endclass : ral_reg_CH15_SOFT_REQ


class ral_reg_CH15_EN extends uvm_reg;
	rand uvm_reg_field ch15_en;

	function new(string name = "CH15_EN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ch15_en = uvm_reg_field::type_id::create("ch15_en",,get_full_name());
      this.ch15_en.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CH15_EN)

endclass : ral_reg_CH15_EN


class ral_reg_CHSR extends uvm_reg;
	uvm_reg_field Ch0bsy;
	uvm_reg_field Ch1bsy;
	uvm_reg_field Ch2bsy;
	uvm_reg_field Ch3bsy;
	uvm_reg_field Ch4bsy;
	uvm_reg_field Ch5bsy;
	uvm_reg_field Ch6bsy;
	uvm_reg_field Ch7bsy;
	uvm_reg_field Ch8bsy;
	uvm_reg_field Ch9bsy;
	uvm_reg_field Ch10bsy;
	uvm_reg_field Ch11bsy;
	uvm_reg_field Ch12bsy;
	uvm_reg_field Ch13bsy;
	uvm_reg_field Ch14bsy;
	uvm_reg_field Ch15bsy;

	function new(string name = "CHSR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Ch0bsy = uvm_reg_field::type_id::create("Ch0bsy",,get_full_name());
      this.Ch0bsy.configure(this, 1, 0, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch1bsy = uvm_reg_field::type_id::create("Ch1bsy",,get_full_name());
      this.Ch1bsy.configure(this, 1, 1, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch2bsy = uvm_reg_field::type_id::create("Ch2bsy",,get_full_name());
      this.Ch2bsy.configure(this, 1, 2, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch3bsy = uvm_reg_field::type_id::create("Ch3bsy",,get_full_name());
      this.Ch3bsy.configure(this, 1, 3, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch4bsy = uvm_reg_field::type_id::create("Ch4bsy",,get_full_name());
      this.Ch4bsy.configure(this, 1, 4, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch5bsy = uvm_reg_field::type_id::create("Ch5bsy",,get_full_name());
      this.Ch5bsy.configure(this, 1, 5, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch6bsy = uvm_reg_field::type_id::create("Ch6bsy",,get_full_name());
      this.Ch6bsy.configure(this, 1, 6, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch7bsy = uvm_reg_field::type_id::create("Ch7bsy",,get_full_name());
      this.Ch7bsy.configure(this, 1, 7, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch8bsy = uvm_reg_field::type_id::create("Ch8bsy",,get_full_name());
      this.Ch8bsy.configure(this, 1, 8, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch9bsy = uvm_reg_field::type_id::create("Ch9bsy",,get_full_name());
      this.Ch9bsy.configure(this, 1, 9, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch10bsy = uvm_reg_field::type_id::create("Ch10bsy",,get_full_name());
      this.Ch10bsy.configure(this, 1, 10, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch11bsy = uvm_reg_field::type_id::create("Ch11bsy",,get_full_name());
      this.Ch11bsy.configure(this, 1, 11, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch12bsy = uvm_reg_field::type_id::create("Ch12bsy",,get_full_name());
      this.Ch12bsy.configure(this, 1, 12, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch13bsy = uvm_reg_field::type_id::create("Ch13bsy",,get_full_name());
      this.Ch13bsy.configure(this, 1, 13, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch14bsy = uvm_reg_field::type_id::create("Ch14bsy",,get_full_name());
      this.Ch14bsy.configure(this, 1, 14, "RO", 0, 1'h0, 1, 0, 0);
      this.Ch15bsy = uvm_reg_field::type_id::create("Ch15bsy",,get_full_name());
      this.Ch15bsy.configure(this, 1, 15, "RO", 0, 1'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CHSR)

endclass : ral_reg_CHSR


class ral_reg_DMACCFG extends uvm_reg;
	rand uvm_reg_field DMACEN;

	function new(string name = "DMACCFG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.DMACEN = uvm_reg_field::type_id::create("DMACEN",,get_full_name());
      this.DMACEN.configure(this, 1, 0, "RW", 0, 1'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_DMACCFG)

endclass : ral_reg_DMACCFG


class ral_block_dma extends uvm_reg_block;
	rand ral_reg_SAR0 SAR0;
	rand ral_reg_DAR0 DAR0;
	rand ral_reg_CH0_CTRL_A CH0_CTRL_A;
	rand ral_reg_CH0_CTRL_B CH0_CTRL_B;
	rand ral_reg_CH0_INT_MASK CH0_INT_MASK;
	rand ral_reg_CH0_INT_STATUS CH0_INT_STATUS;
	rand ral_reg_CH0_INT_CLEAR CH0_INT_CLEAR;
	rand ral_reg_CH0_SOFT_REQ CH0_SOFT_REQ;
	rand ral_reg_CH0_EN CH0_EN;
	rand ral_reg_SAR1 SAR1;
	rand ral_reg_DAR1 DAR1;
	rand ral_reg_CH1_CTRL_A CH1_CTRL_A;
	rand ral_reg_CH1_CTRL_B CH1_CTRL_B;
	rand ral_reg_CH1_INT_MASK CH1_INT_MASK;
	rand ral_reg_CH1_INT_STATUS CH1_INT_STATUS;
	rand ral_reg_CH1_INT_CLEAR CH1_INT_CLEAR;
	rand ral_reg_CH1_SOFT_REQ CH1_SOFT_REQ;
	rand ral_reg_CH1_EN CH1_EN;
	rand ral_reg_SAR2 SAR2;
	rand ral_reg_DAR2 DAR2;
	rand ral_reg_CH2_CTRL_A CH2_CTRL_A;
	rand ral_reg_CH2_CTRL_B CH2_CTRL_B;
	rand ral_reg_CH2_INT_MASK CH2_INT_MASK;
	rand ral_reg_CH2_INT_STATUS CH2_INT_STATUS;
	rand ral_reg_CH2_INT_CLEAR CH2_INT_CLEAR;
	rand ral_reg_CH2_SOFT_REQ CH2_SOFT_REQ;
	rand ral_reg_CH2_EN CH2_EN;
	rand ral_reg_SAR3 SAR3;
	rand ral_reg_DAR3 DAR3;
	rand ral_reg_CH3_CTRL_A CH3_CTRL_A;
	rand ral_reg_CH3_CTRL_B CH3_CTRL_B;
	rand ral_reg_CH3_INT_MASK CH3_INT_MASK;
	rand ral_reg_CH3_INT_STATUS CH3_INT_STATUS;
	rand ral_reg_CH3_INT_CLEAR CH3_INT_CLEAR;
	rand ral_reg_CH3_SOFT_REQ CH3_SOFT_REQ;
	rand ral_reg_CH3_EN CH3_EN;
	rand ral_reg_SAR4 SAR4;
	rand ral_reg_DAR4 DAR4;
	rand ral_reg_CH4_CTRL_A CH4_CTRL_A;
	rand ral_reg_CH4_CTRL_B CH4_CTRL_B;
	rand ral_reg_CH4_INT_MASK CH4_INT_MASK;
	rand ral_reg_CH4_INT_STATUS CH4_INT_STATUS;
	rand ral_reg_CH4_INT_CLEAR CH4_INT_CLEAR;
	rand ral_reg_CH4_SOFT_REQ CH4_SOFT_REQ;
	rand ral_reg_CH4_EN CH4_EN;
	rand ral_reg_SAR5 SAR5;
	rand ral_reg_DAR5 DAR5;
	rand ral_reg_CH5_CTRL_A CH5_CTRL_A;
	rand ral_reg_CH5_CTRL_B CH5_CTRL_B;
	rand ral_reg_CH5_INT_MASK CH5_INT_MASK;
	rand ral_reg_CH5_INT_STATUS CH5_INT_STATUS;
	rand ral_reg_CH5_INT_CLEAR CH5_INT_CLEAR;
	rand ral_reg_CH5_SOFT_REQ CH5_SOFT_REQ;
	rand ral_reg_CH5_EN CH5_EN;
	rand ral_reg_SAR6 SAR6;
	rand ral_reg_DAR6 DAR6;
	rand ral_reg_CH6_CTRL_A CH6_CTRL_A;
	rand ral_reg_CH6_CTRL_B CH6_CTRL_B;
	rand ral_reg_CH6_INT_MASK CH6_INT_MASK;
	rand ral_reg_CH6_INT_STATUS CH6_INT_STATUS;
	rand ral_reg_CH6_INT_CLEAR CH6_INT_CLEAR;
	rand ral_reg_CH6_SOFT_REQ CH6_SOFT_REQ;
	rand ral_reg_CH6_EN CH6_EN;
	rand ral_reg_SAR7 SAR7;
	rand ral_reg_DAR7 DAR7;
	rand ral_reg_CH7_CTRL_A CH7_CTRL_A;
	rand ral_reg_CH7_CTRL_B CH7_CTRL_B;
	rand ral_reg_CH7_INT_MASK CH7_INT_MASK;
	rand ral_reg_CH7_INT_STATUS CH7_INT_STATUS;
	rand ral_reg_CH7_INT_CLEAR CH7_INT_CLEAR;
	rand ral_reg_CH7_SOFT_REQ CH7_SOFT_REQ;
	rand ral_reg_CH7_EN CH7_EN;
	rand ral_reg_SAR8 SAR8;
	rand ral_reg_DAR8 DAR8;
	rand ral_reg_CH8_CTRL_A CH8_CTRL_A;
	rand ral_reg_CH8_CTRL_B CH8_CTRL_B;
	rand ral_reg_CH8_INT_MASK CH8_INT_MASK;
	rand ral_reg_CH8_INT_STATUS CH8_INT_STATUS;
	rand ral_reg_CH8_INT_CLEAR CH8_INT_CLEAR;
	rand ral_reg_CH8_SOFT_REQ CH8_SOFT_REQ;
	rand ral_reg_CH8_EN CH8_EN;
	rand ral_reg_SAR9 SAR9;
	rand ral_reg_DAR9 DAR9;
	rand ral_reg_CH9_CTRL_A CH9_CTRL_A;
	rand ral_reg_CH9_CTRL_B CH9_CTRL_B;
	rand ral_reg_CH9_INT_MASK CH9_INT_MASK;
	rand ral_reg_CH9_INT_STATUS CH9_INT_STATUS;
	rand ral_reg_CH9_INT_CLEAR CH9_INT_CLEAR;
	rand ral_reg_CH9_SOFT_REQ CH9_SOFT_REQ;
	rand ral_reg_CH9_EN CH9_EN;
	rand ral_reg_SAR10 SAR10;
	rand ral_reg_DAR10 DAR10;
	rand ral_reg_CH10_CTRL_A CH10_CTRL_A;
	rand ral_reg_CH10_CTRL_B CH10_CTRL_B;
	rand ral_reg_CH10_INT_MASK CH10_INT_MASK;
	rand ral_reg_CH10_INT_STATUS CH10_INT_STATUS;
	rand ral_reg_CH10_INT_CLEAR CH10_INT_CLEAR;
	rand ral_reg_CH10_SOFT_REQ CH10_SOFT_REQ;
	rand ral_reg_C10_EN C10_EN;
	rand ral_reg_SAR11 SAR11;
	rand ral_reg_DAR11 DAR11;
	rand ral_reg_CH11_CTRL_A CH11_CTRL_A;
	rand ral_reg_CH11_CTRL_B CH11_CTRL_B;
	rand ral_reg_CH11_INT_MASK CH11_INT_MASK;
	rand ral_reg_CH11_INT_STATUS CH11_INT_STATUS;
	rand ral_reg_CH11_INT_CLEAR CH11_INT_CLEAR;
	rand ral_reg_CH11_SOFT_REQ CH11_SOFT_REQ;
	rand ral_reg_CH11_EN CH11_EN;
	rand ral_reg_SAR12 SAR12;
	rand ral_reg_DAR12 DAR12;
	rand ral_reg_CH12_CTRL_A CH12_CTRL_A;
	rand ral_reg_CH12_CTRL_B CH12_CTRL_B;
	rand ral_reg_CH12_INT_MASK CH12_INT_MASK;
	rand ral_reg_CH12_INT_STATUS CH12_INT_STATUS;
	rand ral_reg_CH12_INT_CLEAR CH12_INT_CLEAR;
	rand ral_reg_CH12_SOFT_REQ CH12_SOFT_REQ;
	rand ral_reg_CH12_EN CH12_EN;
	rand ral_reg_SAR13 SAR13;
	rand ral_reg_DAR13 DAR13;
	rand ral_reg_CH13_CTRL_A CH13_CTRL_A;
	rand ral_reg_CH13_CTRL_B CH13_CTRL_B;
	rand ral_reg_CH13_INT_MASK CH13_INT_MASK;
	rand ral_reg_CH13_INT_STATUS CH13_INT_STATUS;
	rand ral_reg_CH13_INT_CLEAR CH13_INT_CLEAR;
	rand ral_reg_CH13_SOFT_REQ CH13_SOFT_REQ;
	rand ral_reg_CH13_EN CH13_EN;
	rand ral_reg_SAR14 SAR14;
	rand ral_reg_DAR14 DAR14;
	rand ral_reg_CH14_CTRL_A CH14_CTRL_A;
	rand ral_reg_CH14_CTRL_B CH14_CTRL_B;
	rand ral_reg_CH14_INT_MASK CH14_INT_MASK;
	rand ral_reg_CH14_INT_STATUS CH14_INT_STATUS;
	rand ral_reg_CH14_INT_CLEAR CH14_INT_CLEAR;
	rand ral_reg_CH14_SOFT_REQ CH14_SOFT_REQ;
	rand ral_reg_CH14_EN CH14_EN;
	rand ral_reg_SAR15 SAR15;
	rand ral_reg_DAR15 DAR15;
	rand ral_reg_CH15_CTRL_A CH15_CTRL_A;
	rand ral_reg_CH15_CTRL_B CH15_CTRL_B;
	rand ral_reg_CH15_INT_MASK CH15_INT_MASK;
	rand ral_reg_CH15_INT_STATUS CH15_INT_STATUS;
	rand ral_reg_CH15_INT_CLEAR CH15_INT_CLEAR;
	rand ral_reg_CH15_SOFT_REQ CH15_SOFT_REQ;
	rand ral_reg_CH15_EN CH15_EN;
	rand ral_reg_CHSR CHSR;
	rand ral_reg_DMACCFG DMACCFG;
	rand uvm_reg_field SAR0_SAR0;
	rand uvm_reg_field DAR0_DAR0;
	rand uvm_reg_field CH0_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH0_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH0_CTRL_A_DINC;
	rand uvm_reg_field CH0_CTRL_A_SINC;
	rand uvm_reg_field CH0_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH0_CTRL_B_INT_EN;
	rand uvm_reg_field CH0_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH0_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH0_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH0_CTRL_B_PROTCTL;
	rand uvm_reg_field CH0_INT_MASK_maskErr;
	rand uvm_reg_field CH0_INT_MASK_masktfr;
	rand uvm_reg_field CH0_INT_MASK_maskhtfr;
	rand uvm_reg_field CH0_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH0_INT_STATUS_statusErr;
	uvm_reg_field CH0_INT_STATUS_statusfr;
	uvm_reg_field CH0_INT_STATUS_statushtfr;
	uvm_reg_field CH0_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH0_INT_CLEAR_clearErr;
	rand uvm_reg_field CH0_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH0_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH0_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH0_SOFT_REQ_soft_req;
	rand uvm_reg_field CH0_EN_ch0_en;
	rand uvm_reg_field ch0_en;
	rand uvm_reg_field SAR1_SAR1;
	rand uvm_reg_field DAR1_DAR1;
	rand uvm_reg_field CH1_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH1_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH1_CTRL_A_DINC;
	rand uvm_reg_field CH1_CTRL_A_SINC;
	rand uvm_reg_field CH1_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH1_CTRL_B_INT_EN;
	rand uvm_reg_field CH1_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH1_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH1_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH1_CTRL_B_PROTCTL;
	rand uvm_reg_field CH1_INT_MASK_maskErr;
	rand uvm_reg_field CH1_INT_MASK_masktfr;
	rand uvm_reg_field CH1_INT_MASK_maskhtfr;
	rand uvm_reg_field CH1_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH1_INT_STATUS_statusErr;
	uvm_reg_field CH1_INT_STATUS_statusfr;
	uvm_reg_field CH1_INT_STATUS_statushtfr;
	uvm_reg_field CH1_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH1_INT_CLEAR_clearErr;
	rand uvm_reg_field CH1_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH1_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH1_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH1_SOFT_REQ_soft_req;
	rand uvm_reg_field CH1_EN_ch1_en;
	rand uvm_reg_field ch1_en;
	rand uvm_reg_field SAR2_SAR2;
	rand uvm_reg_field DAR2_DAR2;
	rand uvm_reg_field CH2_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH2_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH2_CTRL_A_DINC;
	rand uvm_reg_field CH2_CTRL_A_SINC;
	rand uvm_reg_field CH2_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH2_CTRL_B_INT_EN;
	rand uvm_reg_field CH2_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH2_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH2_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH2_CTRL_B_PROTCTL;
	rand uvm_reg_field CH2_INT_MASK_maskErr;
	rand uvm_reg_field CH2_INT_MASK_masktfr;
	rand uvm_reg_field CH2_INT_MASK_maskhtfr;
	rand uvm_reg_field CH2_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH2_INT_STATUS_statusErr;
	uvm_reg_field CH2_INT_STATUS_statusfr;
	uvm_reg_field CH2_INT_STATUS_statushtfr;
	uvm_reg_field CH2_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH2_INT_CLEAR_clearErr;
	rand uvm_reg_field CH2_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH2_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH2_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH2_SOFT_REQ_soft_req;
	rand uvm_reg_field CH2_EN_ch2_en;
	rand uvm_reg_field ch2_en;
	rand uvm_reg_field SAR3_SAR3;
	rand uvm_reg_field DAR3_DAR3;
	rand uvm_reg_field CH3_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH3_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH3_CTRL_A_DINC;
	rand uvm_reg_field CH3_CTRL_A_SINC;
	rand uvm_reg_field CH3_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH3_CTRL_B_INT_EN;
	rand uvm_reg_field CH3_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH3_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH3_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH3_CTRL_B_PROTCTL;
	rand uvm_reg_field CH3_INT_MASK_maskErr;
	rand uvm_reg_field CH3_INT_MASK_masktfr;
	rand uvm_reg_field CH3_INT_MASK_maskhtfr;
	rand uvm_reg_field CH3_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH3_INT_STATUS_statusErr;
	uvm_reg_field CH3_INT_STATUS_statusfr;
	uvm_reg_field CH3_INT_STATUS_statushtfr;
	uvm_reg_field CH3_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH3_INT_CLEAR_clearErr;
	rand uvm_reg_field CH3_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH3_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH3_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH3_SOFT_REQ_soft_req;
	rand uvm_reg_field CH3_EN_ch3_en;
	rand uvm_reg_field ch3_en;
	rand uvm_reg_field SAR4_SAR4;
	rand uvm_reg_field DAR4_DAR4;
	rand uvm_reg_field CH4_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH4_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH4_CTRL_A_DINC;
	rand uvm_reg_field CH4_CTRL_A_SINC;
	rand uvm_reg_field CH4_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH4_CTRL_B_INT_EN;
	rand uvm_reg_field CH4_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH4_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH4_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH4_CTRL_B_PROTCTL;
	rand uvm_reg_field CH4_INT_MASK_maskErr;
	rand uvm_reg_field CH4_INT_MASK_masktfr;
	rand uvm_reg_field CH4_INT_MASK_maskhtfr;
	rand uvm_reg_field CH4_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH4_INT_STATUS_statusErr;
	uvm_reg_field CH4_INT_STATUS_statusfr;
	uvm_reg_field CH4_INT_STATUS_statushtfr;
	uvm_reg_field CH4_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH4_INT_CLEAR_clearErr;
	rand uvm_reg_field CH4_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH4_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH4_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH4_SOFT_REQ_soft_req;
	rand uvm_reg_field CH4_EN_ch4_en;
	rand uvm_reg_field ch4_en;
	rand uvm_reg_field SAR5_SAR5;
	rand uvm_reg_field DAR5_DAR5;
	rand uvm_reg_field CH5_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH5_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH5_CTRL_A_DINC;
	rand uvm_reg_field CH5_CTRL_A_SINC;
	rand uvm_reg_field CH5_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH5_CTRL_B_INT_EN;
	rand uvm_reg_field CH5_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH5_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH5_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH5_CTRL_B_PROTCTL;
	rand uvm_reg_field CH5_INT_MASK_maskErr;
	rand uvm_reg_field CH5_INT_MASK_masktfr;
	rand uvm_reg_field CH5_INT_MASK_maskhtfr;
	rand uvm_reg_field CH5_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH5_INT_STATUS_statusErr;
	uvm_reg_field CH5_INT_STATUS_statusfr;
	uvm_reg_field CH5_INT_STATUS_statushtfr;
	uvm_reg_field CH5_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH5_INT_CLEAR_clearErr;
	rand uvm_reg_field CH5_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH5_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH5_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH5_SOFT_REQ_soft_req;
	rand uvm_reg_field CH5_EN_ch5_en;
	rand uvm_reg_field ch5_en;
	rand uvm_reg_field SAR6_SAR6;
	rand uvm_reg_field DAR6_DAR6;
	rand uvm_reg_field CH6_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH6_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH6_CTRL_A_DINC;
	rand uvm_reg_field CH6_CTRL_A_SINC;
	rand uvm_reg_field CH6_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH6_CTRL_B_INT_EN;
	rand uvm_reg_field CH6_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH6_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH6_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH6_CTRL_B_PROTCTL;
	rand uvm_reg_field CH6_INT_MASK_maskErr;
	rand uvm_reg_field CH6_INT_MASK_masktfr;
	rand uvm_reg_field CH6_INT_MASK_maskhtfr;
	rand uvm_reg_field CH6_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH6_INT_STATUS_statusErr;
	uvm_reg_field CH6_INT_STATUS_statusfr;
	uvm_reg_field CH6_INT_STATUS_statushtfr;
	uvm_reg_field CH6_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH6_INT_CLEAR_clearErr;
	rand uvm_reg_field CH6_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH6_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH6_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH6_SOFT_REQ_soft_req;
	rand uvm_reg_field CH6_EN_ch6_en;
	rand uvm_reg_field ch6_en;
	rand uvm_reg_field SAR7_SAR7;
	rand uvm_reg_field DAR7_DAR7;
	rand uvm_reg_field CH7_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH7_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH7_CTRL_A_DINC;
	rand uvm_reg_field CH7_CTRL_A_SINC;
	rand uvm_reg_field CH7_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH7_CTRL_B_INT_EN;
	rand uvm_reg_field CH7_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH7_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH7_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH7_CTRL_B_PROTCTL;
	rand uvm_reg_field CH7_INT_MASK_maskErr;
	rand uvm_reg_field CH7_INT_MASK_masktfr;
	rand uvm_reg_field CH7_INT_MASK_maskhtfr;
	rand uvm_reg_field CH7_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH7_INT_STATUS_statusErr;
	uvm_reg_field CH7_INT_STATUS_statusfr;
	uvm_reg_field CH7_INT_STATUS_statushtfr;
	uvm_reg_field CH7_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH7_INT_CLEAR_clearErr;
	rand uvm_reg_field CH7_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH7_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH7_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH7_SOFT_REQ_soft_req;
	rand uvm_reg_field CH7_EN_ch7_en;
	rand uvm_reg_field ch7_en;
	rand uvm_reg_field SAR8_SAR8;
	rand uvm_reg_field DAR8_DAR8;
	rand uvm_reg_field CH8_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH8_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH8_CTRL_A_DINC;
	rand uvm_reg_field CH8_CTRL_A_SINC;
	rand uvm_reg_field CH8_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH8_CTRL_B_INT_EN;
	rand uvm_reg_field CH8_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH8_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH8_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH8_CTRL_B_PROTCTL;
	rand uvm_reg_field CH8_INT_MASK_maskErr;
	rand uvm_reg_field CH8_INT_MASK_masktfr;
	rand uvm_reg_field CH8_INT_MASK_maskhtfr;
	rand uvm_reg_field CH8_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH8_INT_STATUS_statusErr;
	uvm_reg_field CH8_INT_STATUS_statusfr;
	uvm_reg_field CH8_INT_STATUS_statushtfr;
	uvm_reg_field CH8_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH8_INT_CLEAR_clearErr;
	rand uvm_reg_field CH8_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH8_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH8_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH8_SOFT_REQ_soft_req;
	rand uvm_reg_field CH8_EN_ch8_en;
	rand uvm_reg_field ch8_en;
	rand uvm_reg_field SAR9_SAR9;
	rand uvm_reg_field DAR9_DAR9;
	rand uvm_reg_field CH9_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH9_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH9_CTRL_A_DINC;
	rand uvm_reg_field CH9_CTRL_A_SINC;
	rand uvm_reg_field CH9_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH9_CTRL_B_INT_EN;
	rand uvm_reg_field CH9_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH9_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH9_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH9_CTRL_B_PROTCTL;
	rand uvm_reg_field CH9_INT_MASK_maskErr;
	rand uvm_reg_field CH9_INT_MASK_masktfr;
	rand uvm_reg_field CH9_INT_MASK_maskhtfr;
	rand uvm_reg_field CH9_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH9_INT_STATUS_statusErr;
	uvm_reg_field CH9_INT_STATUS_statusfr;
	uvm_reg_field CH9_INT_STATUS_statushtfr;
	uvm_reg_field CH9_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH9_INT_CLEAR_clearErr;
	rand uvm_reg_field CH9_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH9_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH9_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH9_SOFT_REQ_soft_req;
	rand uvm_reg_field CH9_EN_ch9_en;
	rand uvm_reg_field ch9_en;
	rand uvm_reg_field SAR10_SAR10;
	rand uvm_reg_field DAR10_DAR10;
	rand uvm_reg_field CH10_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH10_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH10_CTRL_A_DINC;
	rand uvm_reg_field CH10_CTRL_A_SINC;
	rand uvm_reg_field CH10_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH10_CTRL_B_INT_EN;
	rand uvm_reg_field CH10_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH10_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH10_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH10_CTRL_B_PROTCTL;
	rand uvm_reg_field CH10_INT_MASK_maskErr;
	rand uvm_reg_field CH10_INT_MASK_masktfr;
	rand uvm_reg_field CH10_INT_MASK_maskhtfr;
	rand uvm_reg_field CH10_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH10_INT_STATUS_statusErr;
	uvm_reg_field CH10_INT_STATUS_statusfr;
	uvm_reg_field CH10_INT_STATUS_statushtfr;
	uvm_reg_field CH10_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH10_INT_CLEAR_clearErr;
	rand uvm_reg_field CH10_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH10_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH10_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH10_SOFT_REQ_soft_req;
	rand uvm_reg_field C10_EN_ch10_en;
	rand uvm_reg_field ch10_en;
	rand uvm_reg_field SAR11_SAR11;
	rand uvm_reg_field DAR11_DAR11;
	rand uvm_reg_field CH11_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH11_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH11_CTRL_A_DINC;
	rand uvm_reg_field CH11_CTRL_A_SINC;
	rand uvm_reg_field CH11_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH11_CTRL_B_INT_EN;
	rand uvm_reg_field CH11_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH11_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH11_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH11_CTRL_B_PROTCTL;
	rand uvm_reg_field CH11_INT_MASK_maskErr;
	rand uvm_reg_field CH11_INT_MASK_masktfr;
	rand uvm_reg_field CH11_INT_MASK_maskhtfr;
	rand uvm_reg_field CH11_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH11_INT_STATUS_statusErr;
	uvm_reg_field CH11_INT_STATUS_statusfr;
	uvm_reg_field CH11_INT_STATUS_statushtfr;
	uvm_reg_field CH11_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH11_INT_CLEAR_clearErr;
	rand uvm_reg_field CH11_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH11_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH11_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH11_SOFT_REQ_soft_req;
	rand uvm_reg_field CH11_EN_ch11_en;
	rand uvm_reg_field ch11_en;
	rand uvm_reg_field SAR12_SAR12;
	rand uvm_reg_field DAR12_DAR12;
	rand uvm_reg_field CH12_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH12_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH12_CTRL_A_DINC;
	rand uvm_reg_field CH12_CTRL_A_SINC;
	rand uvm_reg_field CH12_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH12_CTRL_B_INT_EN;
	rand uvm_reg_field CH12_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH12_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH12_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH12_CTRL_B_PROTCTL;
	rand uvm_reg_field CH12_INT_MASK_maskErr;
	rand uvm_reg_field CH12_INT_MASK_masktfr;
	rand uvm_reg_field CH12_INT_MASK_maskhtfr;
	rand uvm_reg_field CH12_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH12_INT_STATUS_statusErr;
	uvm_reg_field CH12_INT_STATUS_statusfr;
	uvm_reg_field CH12_INT_STATUS_statushtfr;
	uvm_reg_field CH12_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH12_INT_CLEAR_clearErr;
	rand uvm_reg_field CH12_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH12_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH12_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH12_SOFT_REQ_soft_req;
	rand uvm_reg_field CH12_EN_ch12_en;
	rand uvm_reg_field ch12_en;
	rand uvm_reg_field SAR13_SAR13;
	rand uvm_reg_field DAR13_DAR13;
	rand uvm_reg_field CH13_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH13_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH13_CTRL_A_DINC;
	rand uvm_reg_field CH13_CTRL_A_SINC;
	rand uvm_reg_field CH13_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH13_CTRL_B_INT_EN;
	rand uvm_reg_field CH13_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH13_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH13_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH13_CTRL_B_PROTCTL;
	rand uvm_reg_field CH13_INT_MASK_maskErr;
	rand uvm_reg_field CH13_INT_MASK_masktfr;
	rand uvm_reg_field CH13_INT_MASK_maskhtfr;
	rand uvm_reg_field CH13_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH13_INT_STATUS_statusErr;
	uvm_reg_field CH13_INT_STATUS_statusfr;
	uvm_reg_field CH13_INT_STATUS_statushtfr;
	uvm_reg_field CH13_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH13_INT_CLEAR_clearErr;
	rand uvm_reg_field CH13_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH13_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH13_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH13_SOFT_REQ_soft_req;
	rand uvm_reg_field CH13_EN_ch13_en;
	rand uvm_reg_field ch13_en;
	rand uvm_reg_field SAR14_SAR14;
	rand uvm_reg_field DAR14_DAR14;
	rand uvm_reg_field CH14_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH14_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH14_CTRL_A_DINC;
	rand uvm_reg_field CH14_CTRL_A_SINC;
	rand uvm_reg_field CH14_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH14_CTRL_B_INT_EN;
	rand uvm_reg_field CH14_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH14_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH14_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH14_CTRL_B_PROTCTL;
	rand uvm_reg_field CH14_INT_MASK_maskErr;
	rand uvm_reg_field CH14_INT_MASK_masktfr;
	rand uvm_reg_field CH14_INT_MASK_maskhtfr;
	rand uvm_reg_field CH14_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH14_INT_STATUS_statusErr;
	uvm_reg_field CH14_INT_STATUS_statusfr;
	uvm_reg_field CH14_INT_STATUS_statushtfr;
	uvm_reg_field CH14_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH14_INT_CLEAR_clearErr;
	rand uvm_reg_field CH14_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH14_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH14_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH14_SOFT_REQ_soft_req;
	rand uvm_reg_field CH14_EN_ch14_en;
	rand uvm_reg_field ch14_en;
	rand uvm_reg_field SAR15_SAR15;
	rand uvm_reg_field DAR15_DAR15;
	rand uvm_reg_field CH15_CTRL_A_DST_TR_WIDTH;
	rand uvm_reg_field CH15_CTRL_A_SRC_TR_WIDTH;
	rand uvm_reg_field CH15_CTRL_A_DINC;
	rand uvm_reg_field CH15_CTRL_A_SINC;
	rand uvm_reg_field CH15_CTRL_A_BLOCK_TL;
	rand uvm_reg_field CH15_CTRL_B_INT_EN;
	rand uvm_reg_field CH15_CTRL_B_TRGTMDC;
	rand uvm_reg_field CH15_CTRL_B_SRCDTLGC;
	rand uvm_reg_field CH15_CTRL_B_DSTDTLGC;
	rand uvm_reg_field CH15_CTRL_B_PROTCTL;
	rand uvm_reg_field CH15_INT_MASK_maskErr;
	rand uvm_reg_field CH15_INT_MASK_masktfr;
	rand uvm_reg_field CH15_INT_MASK_maskhtfr;
	rand uvm_reg_field CH15_INT_MASK_masktrgetcmpfr;
	uvm_reg_field CH15_INT_STATUS_statusErr;
	uvm_reg_field CH15_INT_STATUS_statusfr;
	uvm_reg_field CH15_INT_STATUS_statushtfr;
	uvm_reg_field CH15_INT_STATUS_statustrgetcmpfr;
	rand uvm_reg_field CH15_INT_CLEAR_clearErr;
	rand uvm_reg_field CH15_INT_CLEAR_cleartfr;
	rand uvm_reg_field CH15_INT_CLEAR_clearhtfr;
	rand uvm_reg_field CH15_INT_CLEAR_cleartrgetcmpfr;
	rand uvm_reg_field CH15_SOFT_REQ_soft_req;
	rand uvm_reg_field CH15_EN_ch15_en;
	rand uvm_reg_field ch15_en;
	uvm_reg_field CHSR_Ch0bsy;
	uvm_reg_field Ch0bsy;
	uvm_reg_field CHSR_Ch1bsy;
	uvm_reg_field Ch1bsy;
	uvm_reg_field CHSR_Ch2bsy;
	uvm_reg_field Ch2bsy;
	uvm_reg_field CHSR_Ch3bsy;
	uvm_reg_field Ch3bsy;
	uvm_reg_field CHSR_Ch4bsy;
	uvm_reg_field Ch4bsy;
	uvm_reg_field CHSR_Ch5bsy;
	uvm_reg_field Ch5bsy;
	uvm_reg_field CHSR_Ch6bsy;
	uvm_reg_field Ch6bsy;
	uvm_reg_field CHSR_Ch7bsy;
	uvm_reg_field Ch7bsy;
	uvm_reg_field CHSR_Ch8bsy;
	uvm_reg_field Ch8bsy;
	uvm_reg_field CHSR_Ch9bsy;
	uvm_reg_field Ch9bsy;
	uvm_reg_field CHSR_Ch10bsy;
	uvm_reg_field Ch10bsy;
	uvm_reg_field CHSR_Ch11bsy;
	uvm_reg_field Ch11bsy;
	uvm_reg_field CHSR_Ch12bsy;
	uvm_reg_field Ch12bsy;
	uvm_reg_field CHSR_Ch13bsy;
	uvm_reg_field Ch13bsy;
	uvm_reg_field CHSR_Ch14bsy;
	uvm_reg_field Ch14bsy;
	uvm_reg_field CHSR_Ch15bsy;
	uvm_reg_field Ch15bsy;
	rand uvm_reg_field DMACCFG_DMACEN;
	rand uvm_reg_field DMACEN;

	function new(string name = "dma");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.SAR0 = ral_reg_SAR0::type_id::create("SAR0",,get_full_name());
      this.SAR0.configure(this, null, "");
      this.SAR0.build();
         this.SAR0.add_hdl_path('{

            '{"SAR0", -1, -1}
         });
      this.default_map.add_reg(this.SAR0, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.SAR0_SAR0 = this.SAR0.SAR0;
      this.DAR0 = ral_reg_DAR0::type_id::create("DAR0",,get_full_name());
      this.DAR0.configure(this, null, "");
      this.DAR0.build();
         this.DAR0.add_hdl_path('{

            '{"DAR0", -1, -1}
         });
      this.default_map.add_reg(this.DAR0, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.DAR0_DAR0 = this.DAR0.DAR0;
      this.CH0_CTRL_A = ral_reg_CH0_CTRL_A::type_id::create("CH0_CTRL_A",,get_full_name());
      this.CH0_CTRL_A.configure(this, null, "");
      this.CH0_CTRL_A.build();
         this.CH0_CTRL_A.add_hdl_path('{

            '{"CH0_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH0_CTRL_A, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.CH0_CTRL_A_DST_TR_WIDTH = this.CH0_CTRL_A.DST_TR_WIDTH;
		this.CH0_CTRL_A_SRC_TR_WIDTH = this.CH0_CTRL_A.SRC_TR_WIDTH;
		this.CH0_CTRL_A_DINC = this.CH0_CTRL_A.DINC;
		this.CH0_CTRL_A_SINC = this.CH0_CTRL_A.SINC;
		this.CH0_CTRL_A_BLOCK_TL = this.CH0_CTRL_A.BLOCK_TL;
      this.CH0_CTRL_B = ral_reg_CH0_CTRL_B::type_id::create("CH0_CTRL_B",,get_full_name());
      this.CH0_CTRL_B.configure(this, null, "");
      this.CH0_CTRL_B.build();
         this.CH0_CTRL_B.add_hdl_path('{

            '{"CH0_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH0_CTRL_B, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.CH0_CTRL_B_INT_EN = this.CH0_CTRL_B.INT_EN;
		this.CH0_CTRL_B_TRGTMDC = this.CH0_CTRL_B.TRGTMDC;
		this.CH0_CTRL_B_SRCDTLGC = this.CH0_CTRL_B.SRCDTLGC;
		this.CH0_CTRL_B_DSTDTLGC = this.CH0_CTRL_B.DSTDTLGC;
		this.CH0_CTRL_B_PROTCTL = this.CH0_CTRL_B.PROTCTL;
      this.CH0_INT_MASK = ral_reg_CH0_INT_MASK::type_id::create("CH0_INT_MASK",,get_full_name());
      this.CH0_INT_MASK.configure(this, null, "");
      this.CH0_INT_MASK.build();
         this.CH0_INT_MASK.add_hdl_path('{

            '{"CH0_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH0_INT_MASK, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.CH0_INT_MASK_maskErr = this.CH0_INT_MASK.maskErr;
		this.CH0_INT_MASK_masktfr = this.CH0_INT_MASK.masktfr;
		this.CH0_INT_MASK_maskhtfr = this.CH0_INT_MASK.maskhtfr;
		this.CH0_INT_MASK_masktrgetcmpfr = this.CH0_INT_MASK.masktrgetcmpfr;
      this.CH0_INT_STATUS = ral_reg_CH0_INT_STATUS::type_id::create("CH0_INT_STATUS",,get_full_name());
      this.CH0_INT_STATUS.configure(this, null, "");
      this.CH0_INT_STATUS.build();
         this.CH0_INT_STATUS.add_hdl_path('{

            '{"CH0_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH0_INT_STATUS, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.CH0_INT_STATUS_statusErr = this.CH0_INT_STATUS.statusErr;
		this.CH0_INT_STATUS_statusfr = this.CH0_INT_STATUS.statusfr;
		this.CH0_INT_STATUS_statushtfr = this.CH0_INT_STATUS.statushtfr;
		this.CH0_INT_STATUS_statustrgetcmpfr = this.CH0_INT_STATUS.statustrgetcmpfr;
      this.CH0_INT_CLEAR = ral_reg_CH0_INT_CLEAR::type_id::create("CH0_INT_CLEAR",,get_full_name());
      this.CH0_INT_CLEAR.configure(this, null, "");
      this.CH0_INT_CLEAR.build();
         this.CH0_INT_CLEAR.add_hdl_path('{

            '{"CH0_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH0_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h18, "RW", 0);
		this.CH0_INT_CLEAR_clearErr = this.CH0_INT_CLEAR.clearErr;
		this.CH0_INT_CLEAR_cleartfr = this.CH0_INT_CLEAR.cleartfr;
		this.CH0_INT_CLEAR_clearhtfr = this.CH0_INT_CLEAR.clearhtfr;
		this.CH0_INT_CLEAR_cleartrgetcmpfr = this.CH0_INT_CLEAR.cleartrgetcmpfr;
      this.CH0_SOFT_REQ = ral_reg_CH0_SOFT_REQ::type_id::create("CH0_SOFT_REQ",,get_full_name());
      this.CH0_SOFT_REQ.configure(this, null, "");
      this.CH0_SOFT_REQ.build();
         this.CH0_SOFT_REQ.add_hdl_path('{

            '{"CH0_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH0_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h1C, "RW", 0);
		this.CH0_SOFT_REQ_soft_req = this.CH0_SOFT_REQ.soft_req;
      this.CH0_EN = ral_reg_CH0_EN::type_id::create("CH0_EN",,get_full_name());
      this.CH0_EN.configure(this, null, "");
      this.CH0_EN.build();
         this.CH0_EN.add_hdl_path('{

            '{"CH0_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH0_EN, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
		this.CH0_EN_ch0_en = this.CH0_EN.ch0_en;
		this.ch0_en = this.CH0_EN.ch0_en;
      this.SAR1 = ral_reg_SAR1::type_id::create("SAR1",,get_full_name());
      this.SAR1.configure(this, null, "");
      this.SAR1.build();
         this.SAR1.add_hdl_path('{

            '{"SAR1", -1, -1}
         });
      this.default_map.add_reg(this.SAR1, `UVM_REG_ADDR_WIDTH'h30, "RW", 0);
		this.SAR1_SAR1 = this.SAR1.SAR1;
      this.DAR1 = ral_reg_DAR1::type_id::create("DAR1",,get_full_name());
      this.DAR1.configure(this, null, "");
      this.DAR1.build();
         this.DAR1.add_hdl_path('{

            '{"DAR1", -1, -1}
         });
      this.default_map.add_reg(this.DAR1, `UVM_REG_ADDR_WIDTH'h34, "RW", 0);
		this.DAR1_DAR1 = this.DAR1.DAR1;
      this.CH1_CTRL_A = ral_reg_CH1_CTRL_A::type_id::create("CH1_CTRL_A",,get_full_name());
      this.CH1_CTRL_A.configure(this, null, "");
      this.CH1_CTRL_A.build();
         this.CH1_CTRL_A.add_hdl_path('{

            '{"CH1_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH1_CTRL_A, `UVM_REG_ADDR_WIDTH'h38, "RW", 0);
		this.CH1_CTRL_A_DST_TR_WIDTH = this.CH1_CTRL_A.DST_TR_WIDTH;
		this.CH1_CTRL_A_SRC_TR_WIDTH = this.CH1_CTRL_A.SRC_TR_WIDTH;
		this.CH1_CTRL_A_DINC = this.CH1_CTRL_A.DINC;
		this.CH1_CTRL_A_SINC = this.CH1_CTRL_A.SINC;
		this.CH1_CTRL_A_BLOCK_TL = this.CH1_CTRL_A.BLOCK_TL;
      this.CH1_CTRL_B = ral_reg_CH1_CTRL_B::type_id::create("CH1_CTRL_B",,get_full_name());
      this.CH1_CTRL_B.configure(this, null, "");
      this.CH1_CTRL_B.build();
         this.CH1_CTRL_B.add_hdl_path('{

            '{"CH1_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH1_CTRL_B, `UVM_REG_ADDR_WIDTH'h3C, "RW", 0);
		this.CH1_CTRL_B_INT_EN = this.CH1_CTRL_B.INT_EN;
		this.CH1_CTRL_B_TRGTMDC = this.CH1_CTRL_B.TRGTMDC;
		this.CH1_CTRL_B_SRCDTLGC = this.CH1_CTRL_B.SRCDTLGC;
		this.CH1_CTRL_B_DSTDTLGC = this.CH1_CTRL_B.DSTDTLGC;
		this.CH1_CTRL_B_PROTCTL = this.CH1_CTRL_B.PROTCTL;
      this.CH1_INT_MASK = ral_reg_CH1_INT_MASK::type_id::create("CH1_INT_MASK",,get_full_name());
      this.CH1_INT_MASK.configure(this, null, "");
      this.CH1_INT_MASK.build();
         this.CH1_INT_MASK.add_hdl_path('{

            '{"CH1_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH1_INT_MASK, `UVM_REG_ADDR_WIDTH'h40, "RW", 0);
		this.CH1_INT_MASK_maskErr = this.CH1_INT_MASK.maskErr;
		this.CH1_INT_MASK_masktfr = this.CH1_INT_MASK.masktfr;
		this.CH1_INT_MASK_maskhtfr = this.CH1_INT_MASK.maskhtfr;
		this.CH1_INT_MASK_masktrgetcmpfr = this.CH1_INT_MASK.masktrgetcmpfr;
      this.CH1_INT_STATUS = ral_reg_CH1_INT_STATUS::type_id::create("CH1_INT_STATUS",,get_full_name());
      this.CH1_INT_STATUS.configure(this, null, "");
      this.CH1_INT_STATUS.build();
         this.CH1_INT_STATUS.add_hdl_path('{

            '{"CH1_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH1_INT_STATUS, `UVM_REG_ADDR_WIDTH'h44, "RW", 0);
		this.CH1_INT_STATUS_statusErr = this.CH1_INT_STATUS.statusErr;
		this.CH1_INT_STATUS_statusfr = this.CH1_INT_STATUS.statusfr;
		this.CH1_INT_STATUS_statushtfr = this.CH1_INT_STATUS.statushtfr;
		this.CH1_INT_STATUS_statustrgetcmpfr = this.CH1_INT_STATUS.statustrgetcmpfr;
      this.CH1_INT_CLEAR = ral_reg_CH1_INT_CLEAR::type_id::create("CH1_INT_CLEAR",,get_full_name());
      this.CH1_INT_CLEAR.configure(this, null, "");
      this.CH1_INT_CLEAR.build();
         this.CH1_INT_CLEAR.add_hdl_path('{

            '{"CH1_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH1_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h48, "RW", 0);
		this.CH1_INT_CLEAR_clearErr = this.CH1_INT_CLEAR.clearErr;
		this.CH1_INT_CLEAR_cleartfr = this.CH1_INT_CLEAR.cleartfr;
		this.CH1_INT_CLEAR_clearhtfr = this.CH1_INT_CLEAR.clearhtfr;
		this.CH1_INT_CLEAR_cleartrgetcmpfr = this.CH1_INT_CLEAR.cleartrgetcmpfr;
      this.CH1_SOFT_REQ = ral_reg_CH1_SOFT_REQ::type_id::create("CH1_SOFT_REQ",,get_full_name());
      this.CH1_SOFT_REQ.configure(this, null, "");
      this.CH1_SOFT_REQ.build();
         this.CH1_SOFT_REQ.add_hdl_path('{

            '{"CH1_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH1_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h4C, "RW", 0);
		this.CH1_SOFT_REQ_soft_req = this.CH1_SOFT_REQ.soft_req;
      this.CH1_EN = ral_reg_CH1_EN::type_id::create("CH1_EN",,get_full_name());
      this.CH1_EN.configure(this, null, "");
      this.CH1_EN.build();
         this.CH1_EN.add_hdl_path('{

            '{"CH1_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH1_EN, `UVM_REG_ADDR_WIDTH'h50, "RW", 0);
		this.CH1_EN_ch1_en = this.CH1_EN.ch1_en;
		this.ch1_en = this.CH1_EN.ch1_en;
      this.SAR2 = ral_reg_SAR2::type_id::create("SAR2",,get_full_name());
      this.SAR2.configure(this, null, "");
      this.SAR2.build();
         this.SAR2.add_hdl_path('{

            '{"SAR2", -1, -1}
         });
      this.default_map.add_reg(this.SAR2, `UVM_REG_ADDR_WIDTH'h60, "RW", 0);
		this.SAR2_SAR2 = this.SAR2.SAR2;
      this.DAR2 = ral_reg_DAR2::type_id::create("DAR2",,get_full_name());
      this.DAR2.configure(this, null, "");
      this.DAR2.build();
         this.DAR2.add_hdl_path('{

            '{"DAR2", -1, -1}
         });
      this.default_map.add_reg(this.DAR2, `UVM_REG_ADDR_WIDTH'h64, "RW", 0);
		this.DAR2_DAR2 = this.DAR2.DAR2;
      this.CH2_CTRL_A = ral_reg_CH2_CTRL_A::type_id::create("CH2_CTRL_A",,get_full_name());
      this.CH2_CTRL_A.configure(this, null, "");
      this.CH2_CTRL_A.build();
         this.CH2_CTRL_A.add_hdl_path('{

            '{"CH2_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH2_CTRL_A, `UVM_REG_ADDR_WIDTH'h68, "RW", 0);
		this.CH2_CTRL_A_DST_TR_WIDTH = this.CH2_CTRL_A.DST_TR_WIDTH;
		this.CH2_CTRL_A_SRC_TR_WIDTH = this.CH2_CTRL_A.SRC_TR_WIDTH;
		this.CH2_CTRL_A_DINC = this.CH2_CTRL_A.DINC;
		this.CH2_CTRL_A_SINC = this.CH2_CTRL_A.SINC;
		this.CH2_CTRL_A_BLOCK_TL = this.CH2_CTRL_A.BLOCK_TL;
      this.CH2_CTRL_B = ral_reg_CH2_CTRL_B::type_id::create("CH2_CTRL_B",,get_full_name());
      this.CH2_CTRL_B.configure(this, null, "");
      this.CH2_CTRL_B.build();
         this.CH2_CTRL_B.add_hdl_path('{

            '{"CH2_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH2_CTRL_B, `UVM_REG_ADDR_WIDTH'h6C, "RW", 0);
		this.CH2_CTRL_B_INT_EN = this.CH2_CTRL_B.INT_EN;
		this.CH2_CTRL_B_TRGTMDC = this.CH2_CTRL_B.TRGTMDC;
		this.CH2_CTRL_B_SRCDTLGC = this.CH2_CTRL_B.SRCDTLGC;
		this.CH2_CTRL_B_DSTDTLGC = this.CH2_CTRL_B.DSTDTLGC;
		this.CH2_CTRL_B_PROTCTL = this.CH2_CTRL_B.PROTCTL;
      this.CH2_INT_MASK = ral_reg_CH2_INT_MASK::type_id::create("CH2_INT_MASK",,get_full_name());
      this.CH2_INT_MASK.configure(this, null, "");
      this.CH2_INT_MASK.build();
         this.CH2_INT_MASK.add_hdl_path('{

            '{"CH2_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH2_INT_MASK, `UVM_REG_ADDR_WIDTH'h70, "RW", 0);
		this.CH2_INT_MASK_maskErr = this.CH2_INT_MASK.maskErr;
		this.CH2_INT_MASK_masktfr = this.CH2_INT_MASK.masktfr;
		this.CH2_INT_MASK_maskhtfr = this.CH2_INT_MASK.maskhtfr;
		this.CH2_INT_MASK_masktrgetcmpfr = this.CH2_INT_MASK.masktrgetcmpfr;
      this.CH2_INT_STATUS = ral_reg_CH2_INT_STATUS::type_id::create("CH2_INT_STATUS",,get_full_name());
      this.CH2_INT_STATUS.configure(this, null, "");
      this.CH2_INT_STATUS.build();
         this.CH2_INT_STATUS.add_hdl_path('{

            '{"CH2_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH2_INT_STATUS, `UVM_REG_ADDR_WIDTH'h74, "RW", 0);
		this.CH2_INT_STATUS_statusErr = this.CH2_INT_STATUS.statusErr;
		this.CH2_INT_STATUS_statusfr = this.CH2_INT_STATUS.statusfr;
		this.CH2_INT_STATUS_statushtfr = this.CH2_INT_STATUS.statushtfr;
		this.CH2_INT_STATUS_statustrgetcmpfr = this.CH2_INT_STATUS.statustrgetcmpfr;
      this.CH2_INT_CLEAR = ral_reg_CH2_INT_CLEAR::type_id::create("CH2_INT_CLEAR",,get_full_name());
      this.CH2_INT_CLEAR.configure(this, null, "");
      this.CH2_INT_CLEAR.build();
         this.CH2_INT_CLEAR.add_hdl_path('{

            '{"CH2_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH2_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h78, "RW", 0);
		this.CH2_INT_CLEAR_clearErr = this.CH2_INT_CLEAR.clearErr;
		this.CH2_INT_CLEAR_cleartfr = this.CH2_INT_CLEAR.cleartfr;
		this.CH2_INT_CLEAR_clearhtfr = this.CH2_INT_CLEAR.clearhtfr;
		this.CH2_INT_CLEAR_cleartrgetcmpfr = this.CH2_INT_CLEAR.cleartrgetcmpfr;
      this.CH2_SOFT_REQ = ral_reg_CH2_SOFT_REQ::type_id::create("CH2_SOFT_REQ",,get_full_name());
      this.CH2_SOFT_REQ.configure(this, null, "");
      this.CH2_SOFT_REQ.build();
         this.CH2_SOFT_REQ.add_hdl_path('{

            '{"CH2_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH2_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h7C, "RW", 0);
		this.CH2_SOFT_REQ_soft_req = this.CH2_SOFT_REQ.soft_req;
      this.CH2_EN = ral_reg_CH2_EN::type_id::create("CH2_EN",,get_full_name());
      this.CH2_EN.configure(this, null, "");
      this.CH2_EN.build();
         this.CH2_EN.add_hdl_path('{

            '{"CH2_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH2_EN, `UVM_REG_ADDR_WIDTH'h80, "RW", 0);
		this.CH2_EN_ch2_en = this.CH2_EN.ch2_en;
		this.ch2_en = this.CH2_EN.ch2_en;
      this.SAR3 = ral_reg_SAR3::type_id::create("SAR3",,get_full_name());
      this.SAR3.configure(this, null, "");
      this.SAR3.build();
         this.SAR3.add_hdl_path('{

            '{"SAR3", -1, -1}
         });
      this.default_map.add_reg(this.SAR3, `UVM_REG_ADDR_WIDTH'h90, "RW", 0);
		this.SAR3_SAR3 = this.SAR3.SAR3;
      this.DAR3 = ral_reg_DAR3::type_id::create("DAR3",,get_full_name());
      this.DAR3.configure(this, null, "");
      this.DAR3.build();
         this.DAR3.add_hdl_path('{

            '{"DAR3", -1, -1}
         });
      this.default_map.add_reg(this.DAR3, `UVM_REG_ADDR_WIDTH'h94, "RW", 0);
		this.DAR3_DAR3 = this.DAR3.DAR3;
      this.CH3_CTRL_A = ral_reg_CH3_CTRL_A::type_id::create("CH3_CTRL_A",,get_full_name());
      this.CH3_CTRL_A.configure(this, null, "");
      this.CH3_CTRL_A.build();
         this.CH3_CTRL_A.add_hdl_path('{

            '{"CH3_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH3_CTRL_A, `UVM_REG_ADDR_WIDTH'h98, "RW", 0);
		this.CH3_CTRL_A_DST_TR_WIDTH = this.CH3_CTRL_A.DST_TR_WIDTH;
		this.CH3_CTRL_A_SRC_TR_WIDTH = this.CH3_CTRL_A.SRC_TR_WIDTH;
		this.CH3_CTRL_A_DINC = this.CH3_CTRL_A.DINC;
		this.CH3_CTRL_A_SINC = this.CH3_CTRL_A.SINC;
		this.CH3_CTRL_A_BLOCK_TL = this.CH3_CTRL_A.BLOCK_TL;
      this.CH3_CTRL_B = ral_reg_CH3_CTRL_B::type_id::create("CH3_CTRL_B",,get_full_name());
      this.CH3_CTRL_B.configure(this, null, "");
      this.CH3_CTRL_B.build();
         this.CH3_CTRL_B.add_hdl_path('{

            '{"CH3_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH3_CTRL_B, `UVM_REG_ADDR_WIDTH'h9C, "RW", 0);
		this.CH3_CTRL_B_INT_EN = this.CH3_CTRL_B.INT_EN;
		this.CH3_CTRL_B_TRGTMDC = this.CH3_CTRL_B.TRGTMDC;
		this.CH3_CTRL_B_SRCDTLGC = this.CH3_CTRL_B.SRCDTLGC;
		this.CH3_CTRL_B_DSTDTLGC = this.CH3_CTRL_B.DSTDTLGC;
		this.CH3_CTRL_B_PROTCTL = this.CH3_CTRL_B.PROTCTL;
      this.CH3_INT_MASK = ral_reg_CH3_INT_MASK::type_id::create("CH3_INT_MASK",,get_full_name());
      this.CH3_INT_MASK.configure(this, null, "");
      this.CH3_INT_MASK.build();
         this.CH3_INT_MASK.add_hdl_path('{

            '{"CH3_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH3_INT_MASK, `UVM_REG_ADDR_WIDTH'hA0, "RW", 0);
		this.CH3_INT_MASK_maskErr = this.CH3_INT_MASK.maskErr;
		this.CH3_INT_MASK_masktfr = this.CH3_INT_MASK.masktfr;
		this.CH3_INT_MASK_maskhtfr = this.CH3_INT_MASK.maskhtfr;
		this.CH3_INT_MASK_masktrgetcmpfr = this.CH3_INT_MASK.masktrgetcmpfr;
      this.CH3_INT_STATUS = ral_reg_CH3_INT_STATUS::type_id::create("CH3_INT_STATUS",,get_full_name());
      this.CH3_INT_STATUS.configure(this, null, "");
      this.CH3_INT_STATUS.build();
         this.CH3_INT_STATUS.add_hdl_path('{

            '{"CH3_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH3_INT_STATUS, `UVM_REG_ADDR_WIDTH'hA4, "RW", 0);
		this.CH3_INT_STATUS_statusErr = this.CH3_INT_STATUS.statusErr;
		this.CH3_INT_STATUS_statusfr = this.CH3_INT_STATUS.statusfr;
		this.CH3_INT_STATUS_statushtfr = this.CH3_INT_STATUS.statushtfr;
		this.CH3_INT_STATUS_statustrgetcmpfr = this.CH3_INT_STATUS.statustrgetcmpfr;
      this.CH3_INT_CLEAR = ral_reg_CH3_INT_CLEAR::type_id::create("CH3_INT_CLEAR",,get_full_name());
      this.CH3_INT_CLEAR.configure(this, null, "");
      this.CH3_INT_CLEAR.build();
         this.CH3_INT_CLEAR.add_hdl_path('{

            '{"CH3_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH3_INT_CLEAR, `UVM_REG_ADDR_WIDTH'hA8, "RW", 0);
		this.CH3_INT_CLEAR_clearErr = this.CH3_INT_CLEAR.clearErr;
		this.CH3_INT_CLEAR_cleartfr = this.CH3_INT_CLEAR.cleartfr;
		this.CH3_INT_CLEAR_clearhtfr = this.CH3_INT_CLEAR.clearhtfr;
		this.CH3_INT_CLEAR_cleartrgetcmpfr = this.CH3_INT_CLEAR.cleartrgetcmpfr;
      this.CH3_SOFT_REQ = ral_reg_CH3_SOFT_REQ::type_id::create("CH3_SOFT_REQ",,get_full_name());
      this.CH3_SOFT_REQ.configure(this, null, "");
      this.CH3_SOFT_REQ.build();
         this.CH3_SOFT_REQ.add_hdl_path('{

            '{"CH3_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH3_SOFT_REQ, `UVM_REG_ADDR_WIDTH'hAC, "RW", 0);
		this.CH3_SOFT_REQ_soft_req = this.CH3_SOFT_REQ.soft_req;
      this.CH3_EN = ral_reg_CH3_EN::type_id::create("CH3_EN",,get_full_name());
      this.CH3_EN.configure(this, null, "");
      this.CH3_EN.build();
         this.CH3_EN.add_hdl_path('{

            '{"CH3_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH3_EN, `UVM_REG_ADDR_WIDTH'hB0, "RW", 0);
		this.CH3_EN_ch3_en = this.CH3_EN.ch3_en;
		this.ch3_en = this.CH3_EN.ch3_en;
      this.SAR4 = ral_reg_SAR4::type_id::create("SAR4",,get_full_name());
      this.SAR4.configure(this, null, "");
      this.SAR4.build();
         this.SAR4.add_hdl_path('{

            '{"SAR4", -1, -1}
         });
      this.default_map.add_reg(this.SAR4, `UVM_REG_ADDR_WIDTH'hC0, "RW", 0);
		this.SAR4_SAR4 = this.SAR4.SAR4;
      this.DAR4 = ral_reg_DAR4::type_id::create("DAR4",,get_full_name());
      this.DAR4.configure(this, null, "");
      this.DAR4.build();
         this.DAR4.add_hdl_path('{

            '{"DAR4", -1, -1}
         });
      this.default_map.add_reg(this.DAR4, `UVM_REG_ADDR_WIDTH'hC4, "RW", 0);
		this.DAR4_DAR4 = this.DAR4.DAR4;
      this.CH4_CTRL_A = ral_reg_CH4_CTRL_A::type_id::create("CH4_CTRL_A",,get_full_name());
      this.CH4_CTRL_A.configure(this, null, "");
      this.CH4_CTRL_A.build();
         this.CH4_CTRL_A.add_hdl_path('{

            '{"CH4_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH4_CTRL_A, `UVM_REG_ADDR_WIDTH'hC8, "RW", 0);
		this.CH4_CTRL_A_DST_TR_WIDTH = this.CH4_CTRL_A.DST_TR_WIDTH;
		this.CH4_CTRL_A_SRC_TR_WIDTH = this.CH4_CTRL_A.SRC_TR_WIDTH;
		this.CH4_CTRL_A_DINC = this.CH4_CTRL_A.DINC;
		this.CH4_CTRL_A_SINC = this.CH4_CTRL_A.SINC;
		this.CH4_CTRL_A_BLOCK_TL = this.CH4_CTRL_A.BLOCK_TL;
      this.CH4_CTRL_B = ral_reg_CH4_CTRL_B::type_id::create("CH4_CTRL_B",,get_full_name());
      this.CH4_CTRL_B.configure(this, null, "");
      this.CH4_CTRL_B.build();
         this.CH4_CTRL_B.add_hdl_path('{

            '{"CH4_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH4_CTRL_B, `UVM_REG_ADDR_WIDTH'hCC, "RW", 0);
		this.CH4_CTRL_B_INT_EN = this.CH4_CTRL_B.INT_EN;
		this.CH4_CTRL_B_TRGTMDC = this.CH4_CTRL_B.TRGTMDC;
		this.CH4_CTRL_B_SRCDTLGC = this.CH4_CTRL_B.SRCDTLGC;
		this.CH4_CTRL_B_DSTDTLGC = this.CH4_CTRL_B.DSTDTLGC;
		this.CH4_CTRL_B_PROTCTL = this.CH4_CTRL_B.PROTCTL;
      this.CH4_INT_MASK = ral_reg_CH4_INT_MASK::type_id::create("CH4_INT_MASK",,get_full_name());
      this.CH4_INT_MASK.configure(this, null, "");
      this.CH4_INT_MASK.build();
         this.CH4_INT_MASK.add_hdl_path('{

            '{"CH4_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH4_INT_MASK, `UVM_REG_ADDR_WIDTH'hD0, "RW", 0);
		this.CH4_INT_MASK_maskErr = this.CH4_INT_MASK.maskErr;
		this.CH4_INT_MASK_masktfr = this.CH4_INT_MASK.masktfr;
		this.CH4_INT_MASK_maskhtfr = this.CH4_INT_MASK.maskhtfr;
		this.CH4_INT_MASK_masktrgetcmpfr = this.CH4_INT_MASK.masktrgetcmpfr;
      this.CH4_INT_STATUS = ral_reg_CH4_INT_STATUS::type_id::create("CH4_INT_STATUS",,get_full_name());
      this.CH4_INT_STATUS.configure(this, null, "");
      this.CH4_INT_STATUS.build();
         this.CH4_INT_STATUS.add_hdl_path('{

            '{"CH4_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH4_INT_STATUS, `UVM_REG_ADDR_WIDTH'hD4, "RW", 0);
		this.CH4_INT_STATUS_statusErr = this.CH4_INT_STATUS.statusErr;
		this.CH4_INT_STATUS_statusfr = this.CH4_INT_STATUS.statusfr;
		this.CH4_INT_STATUS_statushtfr = this.CH4_INT_STATUS.statushtfr;
		this.CH4_INT_STATUS_statustrgetcmpfr = this.CH4_INT_STATUS.statustrgetcmpfr;
      this.CH4_INT_CLEAR = ral_reg_CH4_INT_CLEAR::type_id::create("CH4_INT_CLEAR",,get_full_name());
      this.CH4_INT_CLEAR.configure(this, null, "");
      this.CH4_INT_CLEAR.build();
         this.CH4_INT_CLEAR.add_hdl_path('{

            '{"CH4_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH4_INT_CLEAR, `UVM_REG_ADDR_WIDTH'hD8, "RW", 0);
		this.CH4_INT_CLEAR_clearErr = this.CH4_INT_CLEAR.clearErr;
		this.CH4_INT_CLEAR_cleartfr = this.CH4_INT_CLEAR.cleartfr;
		this.CH4_INT_CLEAR_clearhtfr = this.CH4_INT_CLEAR.clearhtfr;
		this.CH4_INT_CLEAR_cleartrgetcmpfr = this.CH4_INT_CLEAR.cleartrgetcmpfr;
      this.CH4_SOFT_REQ = ral_reg_CH4_SOFT_REQ::type_id::create("CH4_SOFT_REQ",,get_full_name());
      this.CH4_SOFT_REQ.configure(this, null, "");
      this.CH4_SOFT_REQ.build();
         this.CH4_SOFT_REQ.add_hdl_path('{

            '{"CH4_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH4_SOFT_REQ, `UVM_REG_ADDR_WIDTH'hDC, "RW", 0);
		this.CH4_SOFT_REQ_soft_req = this.CH4_SOFT_REQ.soft_req;
      this.CH4_EN = ral_reg_CH4_EN::type_id::create("CH4_EN",,get_full_name());
      this.CH4_EN.configure(this, null, "");
      this.CH4_EN.build();
         this.CH4_EN.add_hdl_path('{

            '{"CH4_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH4_EN, `UVM_REG_ADDR_WIDTH'hE0, "RW", 0);
		this.CH4_EN_ch4_en = this.CH4_EN.ch4_en;
		this.ch4_en = this.CH4_EN.ch4_en;
      this.SAR5 = ral_reg_SAR5::type_id::create("SAR5",,get_full_name());
      this.SAR5.configure(this, null, "");
      this.SAR5.build();
         this.SAR5.add_hdl_path('{

            '{"SAR5", -1, -1}
         });
      this.default_map.add_reg(this.SAR5, `UVM_REG_ADDR_WIDTH'hF0, "RW", 0);
		this.SAR5_SAR5 = this.SAR5.SAR5;
      this.DAR5 = ral_reg_DAR5::type_id::create("DAR5",,get_full_name());
      this.DAR5.configure(this, null, "");
      this.DAR5.build();
         this.DAR5.add_hdl_path('{

            '{"DAR5", -1, -1}
         });
      this.default_map.add_reg(this.DAR5, `UVM_REG_ADDR_WIDTH'hF4, "RW", 0);
		this.DAR5_DAR5 = this.DAR5.DAR5;
      this.CH5_CTRL_A = ral_reg_CH5_CTRL_A::type_id::create("CH5_CTRL_A",,get_full_name());
      this.CH5_CTRL_A.configure(this, null, "");
      this.CH5_CTRL_A.build();
         this.CH5_CTRL_A.add_hdl_path('{

            '{"CH5_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH5_CTRL_A, `UVM_REG_ADDR_WIDTH'hF8, "RW", 0);
		this.CH5_CTRL_A_DST_TR_WIDTH = this.CH5_CTRL_A.DST_TR_WIDTH;
		this.CH5_CTRL_A_SRC_TR_WIDTH = this.CH5_CTRL_A.SRC_TR_WIDTH;
		this.CH5_CTRL_A_DINC = this.CH5_CTRL_A.DINC;
		this.CH5_CTRL_A_SINC = this.CH5_CTRL_A.SINC;
		this.CH5_CTRL_A_BLOCK_TL = this.CH5_CTRL_A.BLOCK_TL;
      this.CH5_CTRL_B = ral_reg_CH5_CTRL_B::type_id::create("CH5_CTRL_B",,get_full_name());
      this.CH5_CTRL_B.configure(this, null, "");
      this.CH5_CTRL_B.build();
         this.CH5_CTRL_B.add_hdl_path('{

            '{"CH5_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH5_CTRL_B, `UVM_REG_ADDR_WIDTH'hFC, "RW", 0);
		this.CH5_CTRL_B_INT_EN = this.CH5_CTRL_B.INT_EN;
		this.CH5_CTRL_B_TRGTMDC = this.CH5_CTRL_B.TRGTMDC;
		this.CH5_CTRL_B_SRCDTLGC = this.CH5_CTRL_B.SRCDTLGC;
		this.CH5_CTRL_B_DSTDTLGC = this.CH5_CTRL_B.DSTDTLGC;
		this.CH5_CTRL_B_PROTCTL = this.CH5_CTRL_B.PROTCTL;
      this.CH5_INT_MASK = ral_reg_CH5_INT_MASK::type_id::create("CH5_INT_MASK",,get_full_name());
      this.CH5_INT_MASK.configure(this, null, "");
      this.CH5_INT_MASK.build();
         this.CH5_INT_MASK.add_hdl_path('{

            '{"CH5_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH5_INT_MASK, `UVM_REG_ADDR_WIDTH'h100, "RW", 0);
		this.CH5_INT_MASK_maskErr = this.CH5_INT_MASK.maskErr;
		this.CH5_INT_MASK_masktfr = this.CH5_INT_MASK.masktfr;
		this.CH5_INT_MASK_maskhtfr = this.CH5_INT_MASK.maskhtfr;
		this.CH5_INT_MASK_masktrgetcmpfr = this.CH5_INT_MASK.masktrgetcmpfr;
      this.CH5_INT_STATUS = ral_reg_CH5_INT_STATUS::type_id::create("CH5_INT_STATUS",,get_full_name());
      this.CH5_INT_STATUS.configure(this, null, "");
      this.CH5_INT_STATUS.build();
         this.CH5_INT_STATUS.add_hdl_path('{

            '{"CH5_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH5_INT_STATUS, `UVM_REG_ADDR_WIDTH'h104, "RW", 0);
		this.CH5_INT_STATUS_statusErr = this.CH5_INT_STATUS.statusErr;
		this.CH5_INT_STATUS_statusfr = this.CH5_INT_STATUS.statusfr;
		this.CH5_INT_STATUS_statushtfr = this.CH5_INT_STATUS.statushtfr;
		this.CH5_INT_STATUS_statustrgetcmpfr = this.CH5_INT_STATUS.statustrgetcmpfr;
      this.CH5_INT_CLEAR = ral_reg_CH5_INT_CLEAR::type_id::create("CH5_INT_CLEAR",,get_full_name());
      this.CH5_INT_CLEAR.configure(this, null, "");
      this.CH5_INT_CLEAR.build();
         this.CH5_INT_CLEAR.add_hdl_path('{

            '{"CH5_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH5_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h108, "RW", 0);
		this.CH5_INT_CLEAR_clearErr = this.CH5_INT_CLEAR.clearErr;
		this.CH5_INT_CLEAR_cleartfr = this.CH5_INT_CLEAR.cleartfr;
		this.CH5_INT_CLEAR_clearhtfr = this.CH5_INT_CLEAR.clearhtfr;
		this.CH5_INT_CLEAR_cleartrgetcmpfr = this.CH5_INT_CLEAR.cleartrgetcmpfr;
      this.CH5_SOFT_REQ = ral_reg_CH5_SOFT_REQ::type_id::create("CH5_SOFT_REQ",,get_full_name());
      this.CH5_SOFT_REQ.configure(this, null, "");
      this.CH5_SOFT_REQ.build();
         this.CH5_SOFT_REQ.add_hdl_path('{

            '{"CH5_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH5_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h10C, "RW", 0);
		this.CH5_SOFT_REQ_soft_req = this.CH5_SOFT_REQ.soft_req;
      this.CH5_EN = ral_reg_CH5_EN::type_id::create("CH5_EN",,get_full_name());
      this.CH5_EN.configure(this, null, "");
      this.CH5_EN.build();
         this.CH5_EN.add_hdl_path('{

            '{"CH5_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH5_EN, `UVM_REG_ADDR_WIDTH'h110, "RW", 0);
		this.CH5_EN_ch5_en = this.CH5_EN.ch5_en;
		this.ch5_en = this.CH5_EN.ch5_en;
      this.SAR6 = ral_reg_SAR6::type_id::create("SAR6",,get_full_name());
      this.SAR6.configure(this, null, "");
      this.SAR6.build();
         this.SAR6.add_hdl_path('{

            '{"SAR6", -1, -1}
         });
      this.default_map.add_reg(this.SAR6, `UVM_REG_ADDR_WIDTH'h120, "RW", 0);
		this.SAR6_SAR6 = this.SAR6.SAR6;
      this.DAR6 = ral_reg_DAR6::type_id::create("DAR6",,get_full_name());
      this.DAR6.configure(this, null, "");
      this.DAR6.build();
         this.DAR6.add_hdl_path('{

            '{"DAR6", -1, -1}
         });
      this.default_map.add_reg(this.DAR6, `UVM_REG_ADDR_WIDTH'h124, "RW", 0);
		this.DAR6_DAR6 = this.DAR6.DAR6;
      this.CH6_CTRL_A = ral_reg_CH6_CTRL_A::type_id::create("CH6_CTRL_A",,get_full_name());
      this.CH6_CTRL_A.configure(this, null, "");
      this.CH6_CTRL_A.build();
         this.CH6_CTRL_A.add_hdl_path('{

            '{"CH6_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH6_CTRL_A, `UVM_REG_ADDR_WIDTH'h128, "RW", 0);
		this.CH6_CTRL_A_DST_TR_WIDTH = this.CH6_CTRL_A.DST_TR_WIDTH;
		this.CH6_CTRL_A_SRC_TR_WIDTH = this.CH6_CTRL_A.SRC_TR_WIDTH;
		this.CH6_CTRL_A_DINC = this.CH6_CTRL_A.DINC;
		this.CH6_CTRL_A_SINC = this.CH6_CTRL_A.SINC;
		this.CH6_CTRL_A_BLOCK_TL = this.CH6_CTRL_A.BLOCK_TL;
      this.CH6_CTRL_B = ral_reg_CH6_CTRL_B::type_id::create("CH6_CTRL_B",,get_full_name());
      this.CH6_CTRL_B.configure(this, null, "");
      this.CH6_CTRL_B.build();
         this.CH6_CTRL_B.add_hdl_path('{

            '{"CH6_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH6_CTRL_B, `UVM_REG_ADDR_WIDTH'h12C, "RW", 0);
		this.CH6_CTRL_B_INT_EN = this.CH6_CTRL_B.INT_EN;
		this.CH6_CTRL_B_TRGTMDC = this.CH6_CTRL_B.TRGTMDC;
		this.CH6_CTRL_B_SRCDTLGC = this.CH6_CTRL_B.SRCDTLGC;
		this.CH6_CTRL_B_DSTDTLGC = this.CH6_CTRL_B.DSTDTLGC;
		this.CH6_CTRL_B_PROTCTL = this.CH6_CTRL_B.PROTCTL;
      this.CH6_INT_MASK = ral_reg_CH6_INT_MASK::type_id::create("CH6_INT_MASK",,get_full_name());
      this.CH6_INT_MASK.configure(this, null, "");
      this.CH6_INT_MASK.build();
         this.CH6_INT_MASK.add_hdl_path('{

            '{"CH6_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH6_INT_MASK, `UVM_REG_ADDR_WIDTH'h130, "RW", 0);
		this.CH6_INT_MASK_maskErr = this.CH6_INT_MASK.maskErr;
		this.CH6_INT_MASK_masktfr = this.CH6_INT_MASK.masktfr;
		this.CH6_INT_MASK_maskhtfr = this.CH6_INT_MASK.maskhtfr;
		this.CH6_INT_MASK_masktrgetcmpfr = this.CH6_INT_MASK.masktrgetcmpfr;
      this.CH6_INT_STATUS = ral_reg_CH6_INT_STATUS::type_id::create("CH6_INT_STATUS",,get_full_name());
      this.CH6_INT_STATUS.configure(this, null, "");
      this.CH6_INT_STATUS.build();
         this.CH6_INT_STATUS.add_hdl_path('{

            '{"CH6_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH6_INT_STATUS, `UVM_REG_ADDR_WIDTH'h134, "RW", 0);
		this.CH6_INT_STATUS_statusErr = this.CH6_INT_STATUS.statusErr;
		this.CH6_INT_STATUS_statusfr = this.CH6_INT_STATUS.statusfr;
		this.CH6_INT_STATUS_statushtfr = this.CH6_INT_STATUS.statushtfr;
		this.CH6_INT_STATUS_statustrgetcmpfr = this.CH6_INT_STATUS.statustrgetcmpfr;
      this.CH6_INT_CLEAR = ral_reg_CH6_INT_CLEAR::type_id::create("CH6_INT_CLEAR",,get_full_name());
      this.CH6_INT_CLEAR.configure(this, null, "");
      this.CH6_INT_CLEAR.build();
         this.CH6_INT_CLEAR.add_hdl_path('{

            '{"CH6_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH6_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h138, "RW", 0);
		this.CH6_INT_CLEAR_clearErr = this.CH6_INT_CLEAR.clearErr;
		this.CH6_INT_CLEAR_cleartfr = this.CH6_INT_CLEAR.cleartfr;
		this.CH6_INT_CLEAR_clearhtfr = this.CH6_INT_CLEAR.clearhtfr;
		this.CH6_INT_CLEAR_cleartrgetcmpfr = this.CH6_INT_CLEAR.cleartrgetcmpfr;
      this.CH6_SOFT_REQ = ral_reg_CH6_SOFT_REQ::type_id::create("CH6_SOFT_REQ",,get_full_name());
      this.CH6_SOFT_REQ.configure(this, null, "");
      this.CH6_SOFT_REQ.build();
         this.CH6_SOFT_REQ.add_hdl_path('{

            '{"CH6_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH6_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h13C, "RW", 0);
		this.CH6_SOFT_REQ_soft_req = this.CH6_SOFT_REQ.soft_req;
      this.CH6_EN = ral_reg_CH6_EN::type_id::create("CH6_EN",,get_full_name());
      this.CH6_EN.configure(this, null, "");
      this.CH6_EN.build();
         this.CH6_EN.add_hdl_path('{

            '{"CH6_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH6_EN, `UVM_REG_ADDR_WIDTH'h140, "RW", 0);
		this.CH6_EN_ch6_en = this.CH6_EN.ch6_en;
		this.ch6_en = this.CH6_EN.ch6_en;
      this.SAR7 = ral_reg_SAR7::type_id::create("SAR7",,get_full_name());
      this.SAR7.configure(this, null, "");
      this.SAR7.build();
         this.SAR7.add_hdl_path('{

            '{"SAR7", -1, -1}
         });
      this.default_map.add_reg(this.SAR7, `UVM_REG_ADDR_WIDTH'h150, "RW", 0);
		this.SAR7_SAR7 = this.SAR7.SAR7;
      this.DAR7 = ral_reg_DAR7::type_id::create("DAR7",,get_full_name());
      this.DAR7.configure(this, null, "");
      this.DAR7.build();
         this.DAR7.add_hdl_path('{

            '{"DAR7", -1, -1}
         });
      this.default_map.add_reg(this.DAR7, `UVM_REG_ADDR_WIDTH'h154, "RW", 0);
		this.DAR7_DAR7 = this.DAR7.DAR7;
      this.CH7_CTRL_A = ral_reg_CH7_CTRL_A::type_id::create("CH7_CTRL_A",,get_full_name());
      this.CH7_CTRL_A.configure(this, null, "");
      this.CH7_CTRL_A.build();
         this.CH7_CTRL_A.add_hdl_path('{

            '{"CH7_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH7_CTRL_A, `UVM_REG_ADDR_WIDTH'h158, "RW", 0);
		this.CH7_CTRL_A_DST_TR_WIDTH = this.CH7_CTRL_A.DST_TR_WIDTH;
		this.CH7_CTRL_A_SRC_TR_WIDTH = this.CH7_CTRL_A.SRC_TR_WIDTH;
		this.CH7_CTRL_A_DINC = this.CH7_CTRL_A.DINC;
		this.CH7_CTRL_A_SINC = this.CH7_CTRL_A.SINC;
		this.CH7_CTRL_A_BLOCK_TL = this.CH7_CTRL_A.BLOCK_TL;
      this.CH7_CTRL_B = ral_reg_CH7_CTRL_B::type_id::create("CH7_CTRL_B",,get_full_name());
      this.CH7_CTRL_B.configure(this, null, "");
      this.CH7_CTRL_B.build();
         this.CH7_CTRL_B.add_hdl_path('{

            '{"CH7_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH7_CTRL_B, `UVM_REG_ADDR_WIDTH'h15C, "RW", 0);
		this.CH7_CTRL_B_INT_EN = this.CH7_CTRL_B.INT_EN;
		this.CH7_CTRL_B_TRGTMDC = this.CH7_CTRL_B.TRGTMDC;
		this.CH7_CTRL_B_SRCDTLGC = this.CH7_CTRL_B.SRCDTLGC;
		this.CH7_CTRL_B_DSTDTLGC = this.CH7_CTRL_B.DSTDTLGC;
		this.CH7_CTRL_B_PROTCTL = this.CH7_CTRL_B.PROTCTL;
      this.CH7_INT_MASK = ral_reg_CH7_INT_MASK::type_id::create("CH7_INT_MASK",,get_full_name());
      this.CH7_INT_MASK.configure(this, null, "");
      this.CH7_INT_MASK.build();
         this.CH7_INT_MASK.add_hdl_path('{

            '{"CH7_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH7_INT_MASK, `UVM_REG_ADDR_WIDTH'h160, "RW", 0);
		this.CH7_INT_MASK_maskErr = this.CH7_INT_MASK.maskErr;
		this.CH7_INT_MASK_masktfr = this.CH7_INT_MASK.masktfr;
		this.CH7_INT_MASK_maskhtfr = this.CH7_INT_MASK.maskhtfr;
		this.CH7_INT_MASK_masktrgetcmpfr = this.CH7_INT_MASK.masktrgetcmpfr;
      this.CH7_INT_STATUS = ral_reg_CH7_INT_STATUS::type_id::create("CH7_INT_STATUS",,get_full_name());
      this.CH7_INT_STATUS.configure(this, null, "");
      this.CH7_INT_STATUS.build();
         this.CH7_INT_STATUS.add_hdl_path('{

            '{"CH7_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH7_INT_STATUS, `UVM_REG_ADDR_WIDTH'h164, "RW", 0);
		this.CH7_INT_STATUS_statusErr = this.CH7_INT_STATUS.statusErr;
		this.CH7_INT_STATUS_statusfr = this.CH7_INT_STATUS.statusfr;
		this.CH7_INT_STATUS_statushtfr = this.CH7_INT_STATUS.statushtfr;
		this.CH7_INT_STATUS_statustrgetcmpfr = this.CH7_INT_STATUS.statustrgetcmpfr;
      this.CH7_INT_CLEAR = ral_reg_CH7_INT_CLEAR::type_id::create("CH7_INT_CLEAR",,get_full_name());
      this.CH7_INT_CLEAR.configure(this, null, "");
      this.CH7_INT_CLEAR.build();
         this.CH7_INT_CLEAR.add_hdl_path('{

            '{"CH7_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH7_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h168, "RW", 0);
		this.CH7_INT_CLEAR_clearErr = this.CH7_INT_CLEAR.clearErr;
		this.CH7_INT_CLEAR_cleartfr = this.CH7_INT_CLEAR.cleartfr;
		this.CH7_INT_CLEAR_clearhtfr = this.CH7_INT_CLEAR.clearhtfr;
		this.CH7_INT_CLEAR_cleartrgetcmpfr = this.CH7_INT_CLEAR.cleartrgetcmpfr;
      this.CH7_SOFT_REQ = ral_reg_CH7_SOFT_REQ::type_id::create("CH7_SOFT_REQ",,get_full_name());
      this.CH7_SOFT_REQ.configure(this, null, "");
      this.CH7_SOFT_REQ.build();
         this.CH7_SOFT_REQ.add_hdl_path('{

            '{"CH7_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH7_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h16C, "RW", 0);
		this.CH7_SOFT_REQ_soft_req = this.CH7_SOFT_REQ.soft_req;
      this.CH7_EN = ral_reg_CH7_EN::type_id::create("CH7_EN",,get_full_name());
      this.CH7_EN.configure(this, null, "");
      this.CH7_EN.build();
         this.CH7_EN.add_hdl_path('{

            '{"CH7_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH7_EN, `UVM_REG_ADDR_WIDTH'h170, "RW", 0);
		this.CH7_EN_ch7_en = this.CH7_EN.ch7_en;
		this.ch7_en = this.CH7_EN.ch7_en;
      this.SAR8 = ral_reg_SAR8::type_id::create("SAR8",,get_full_name());
      this.SAR8.configure(this, null, "");
      this.SAR8.build();
         this.SAR8.add_hdl_path('{

            '{"SAR8", -1, -1}
         });
      this.default_map.add_reg(this.SAR8, `UVM_REG_ADDR_WIDTH'h180, "RW", 0);
		this.SAR8_SAR8 = this.SAR8.SAR8;
      this.DAR8 = ral_reg_DAR8::type_id::create("DAR8",,get_full_name());
      this.DAR8.configure(this, null, "");
      this.DAR8.build();
         this.DAR8.add_hdl_path('{

            '{"DAR8", -1, -1}
         });
      this.default_map.add_reg(this.DAR8, `UVM_REG_ADDR_WIDTH'h184, "RW", 0);
		this.DAR8_DAR8 = this.DAR8.DAR8;
      this.CH8_CTRL_A = ral_reg_CH8_CTRL_A::type_id::create("CH8_CTRL_A",,get_full_name());
      this.CH8_CTRL_A.configure(this, null, "");
      this.CH8_CTRL_A.build();
         this.CH8_CTRL_A.add_hdl_path('{

            '{"CH8_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH8_CTRL_A, `UVM_REG_ADDR_WIDTH'h188, "RW", 0);
		this.CH8_CTRL_A_DST_TR_WIDTH = this.CH8_CTRL_A.DST_TR_WIDTH;
		this.CH8_CTRL_A_SRC_TR_WIDTH = this.CH8_CTRL_A.SRC_TR_WIDTH;
		this.CH8_CTRL_A_DINC = this.CH8_CTRL_A.DINC;
		this.CH8_CTRL_A_SINC = this.CH8_CTRL_A.SINC;
		this.CH8_CTRL_A_BLOCK_TL = this.CH8_CTRL_A.BLOCK_TL;
      this.CH8_CTRL_B = ral_reg_CH8_CTRL_B::type_id::create("CH8_CTRL_B",,get_full_name());
      this.CH8_CTRL_B.configure(this, null, "");
      this.CH8_CTRL_B.build();
         this.CH8_CTRL_B.add_hdl_path('{

            '{"CH8_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH8_CTRL_B, `UVM_REG_ADDR_WIDTH'h18C, "RW", 0);
		this.CH8_CTRL_B_INT_EN = this.CH8_CTRL_B.INT_EN;
		this.CH8_CTRL_B_TRGTMDC = this.CH8_CTRL_B.TRGTMDC;
		this.CH8_CTRL_B_SRCDTLGC = this.CH8_CTRL_B.SRCDTLGC;
		this.CH8_CTRL_B_DSTDTLGC = this.CH8_CTRL_B.DSTDTLGC;
		this.CH8_CTRL_B_PROTCTL = this.CH8_CTRL_B.PROTCTL;
      this.CH8_INT_MASK = ral_reg_CH8_INT_MASK::type_id::create("CH8_INT_MASK",,get_full_name());
      this.CH8_INT_MASK.configure(this, null, "");
      this.CH8_INT_MASK.build();
         this.CH8_INT_MASK.add_hdl_path('{

            '{"CH8_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH8_INT_MASK, `UVM_REG_ADDR_WIDTH'h190, "RW", 0);
		this.CH8_INT_MASK_maskErr = this.CH8_INT_MASK.maskErr;
		this.CH8_INT_MASK_masktfr = this.CH8_INT_MASK.masktfr;
		this.CH8_INT_MASK_maskhtfr = this.CH8_INT_MASK.maskhtfr;
		this.CH8_INT_MASK_masktrgetcmpfr = this.CH8_INT_MASK.masktrgetcmpfr;
      this.CH8_INT_STATUS = ral_reg_CH8_INT_STATUS::type_id::create("CH8_INT_STATUS",,get_full_name());
      this.CH8_INT_STATUS.configure(this, null, "");
      this.CH8_INT_STATUS.build();
         this.CH8_INT_STATUS.add_hdl_path('{

            '{"CH8_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH8_INT_STATUS, `UVM_REG_ADDR_WIDTH'h194, "RW", 0);
		this.CH8_INT_STATUS_statusErr = this.CH8_INT_STATUS.statusErr;
		this.CH8_INT_STATUS_statusfr = this.CH8_INT_STATUS.statusfr;
		this.CH8_INT_STATUS_statushtfr = this.CH8_INT_STATUS.statushtfr;
		this.CH8_INT_STATUS_statustrgetcmpfr = this.CH8_INT_STATUS.statustrgetcmpfr;
      this.CH8_INT_CLEAR = ral_reg_CH8_INT_CLEAR::type_id::create("CH8_INT_CLEAR",,get_full_name());
      this.CH8_INT_CLEAR.configure(this, null, "");
      this.CH8_INT_CLEAR.build();
         this.CH8_INT_CLEAR.add_hdl_path('{

            '{"CH8_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH8_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h198, "RW", 0);
		this.CH8_INT_CLEAR_clearErr = this.CH8_INT_CLEAR.clearErr;
		this.CH8_INT_CLEAR_cleartfr = this.CH8_INT_CLEAR.cleartfr;
		this.CH8_INT_CLEAR_clearhtfr = this.CH8_INT_CLEAR.clearhtfr;
		this.CH8_INT_CLEAR_cleartrgetcmpfr = this.CH8_INT_CLEAR.cleartrgetcmpfr;
      this.CH8_SOFT_REQ = ral_reg_CH8_SOFT_REQ::type_id::create("CH8_SOFT_REQ",,get_full_name());
      this.CH8_SOFT_REQ.configure(this, null, "");
      this.CH8_SOFT_REQ.build();
         this.CH8_SOFT_REQ.add_hdl_path('{

            '{"CH8_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH8_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h19C, "RW", 0);
		this.CH8_SOFT_REQ_soft_req = this.CH8_SOFT_REQ.soft_req;
      this.CH8_EN = ral_reg_CH8_EN::type_id::create("CH8_EN",,get_full_name());
      this.CH8_EN.configure(this, null, "");
      this.CH8_EN.build();
         this.CH8_EN.add_hdl_path('{

            '{"CH8_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH8_EN, `UVM_REG_ADDR_WIDTH'h1A0, "RW", 0);
		this.CH8_EN_ch8_en = this.CH8_EN.ch8_en;
		this.ch8_en = this.CH8_EN.ch8_en;
      this.SAR9 = ral_reg_SAR9::type_id::create("SAR9",,get_full_name());
      this.SAR9.configure(this, null, "");
      this.SAR9.build();
         this.SAR9.add_hdl_path('{

            '{"SAR9", -1, -1}
         });
      this.default_map.add_reg(this.SAR9, `UVM_REG_ADDR_WIDTH'h1B0, "RW", 0);
		this.SAR9_SAR9 = this.SAR9.SAR9;
      this.DAR9 = ral_reg_DAR9::type_id::create("DAR9",,get_full_name());
      this.DAR9.configure(this, null, "");
      this.DAR9.build();
         this.DAR9.add_hdl_path('{

            '{"DAR9", -1, -1}
         });
      this.default_map.add_reg(this.DAR9, `UVM_REG_ADDR_WIDTH'h1B4, "RW", 0);
		this.DAR9_DAR9 = this.DAR9.DAR9;
      this.CH9_CTRL_A = ral_reg_CH9_CTRL_A::type_id::create("CH9_CTRL_A",,get_full_name());
      this.CH9_CTRL_A.configure(this, null, "");
      this.CH9_CTRL_A.build();
         this.CH9_CTRL_A.add_hdl_path('{

            '{"CH9_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH9_CTRL_A, `UVM_REG_ADDR_WIDTH'h1B8, "RW", 0);
		this.CH9_CTRL_A_DST_TR_WIDTH = this.CH9_CTRL_A.DST_TR_WIDTH;
		this.CH9_CTRL_A_SRC_TR_WIDTH = this.CH9_CTRL_A.SRC_TR_WIDTH;
		this.CH9_CTRL_A_DINC = this.CH9_CTRL_A.DINC;
		this.CH9_CTRL_A_SINC = this.CH9_CTRL_A.SINC;
		this.CH9_CTRL_A_BLOCK_TL = this.CH9_CTRL_A.BLOCK_TL;
      this.CH9_CTRL_B = ral_reg_CH9_CTRL_B::type_id::create("CH9_CTRL_B",,get_full_name());
      this.CH9_CTRL_B.configure(this, null, "");
      this.CH9_CTRL_B.build();
         this.CH9_CTRL_B.add_hdl_path('{

            '{"CH9_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH9_CTRL_B, `UVM_REG_ADDR_WIDTH'h1BC, "RW", 0);
		this.CH9_CTRL_B_INT_EN = this.CH9_CTRL_B.INT_EN;
		this.CH9_CTRL_B_TRGTMDC = this.CH9_CTRL_B.TRGTMDC;
		this.CH9_CTRL_B_SRCDTLGC = this.CH9_CTRL_B.SRCDTLGC;
		this.CH9_CTRL_B_DSTDTLGC = this.CH9_CTRL_B.DSTDTLGC;
		this.CH9_CTRL_B_PROTCTL = this.CH9_CTRL_B.PROTCTL;
      this.CH9_INT_MASK = ral_reg_CH9_INT_MASK::type_id::create("CH9_INT_MASK",,get_full_name());
      this.CH9_INT_MASK.configure(this, null, "");
      this.CH9_INT_MASK.build();
         this.CH9_INT_MASK.add_hdl_path('{

            '{"CH9_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH9_INT_MASK, `UVM_REG_ADDR_WIDTH'h1C0, "RW", 0);
		this.CH9_INT_MASK_maskErr = this.CH9_INT_MASK.maskErr;
		this.CH9_INT_MASK_masktfr = this.CH9_INT_MASK.masktfr;
		this.CH9_INT_MASK_maskhtfr = this.CH9_INT_MASK.maskhtfr;
		this.CH9_INT_MASK_masktrgetcmpfr = this.CH9_INT_MASK.masktrgetcmpfr;
      this.CH9_INT_STATUS = ral_reg_CH9_INT_STATUS::type_id::create("CH9_INT_STATUS",,get_full_name());
      this.CH9_INT_STATUS.configure(this, null, "");
      this.CH9_INT_STATUS.build();
         this.CH9_INT_STATUS.add_hdl_path('{

            '{"CH9_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH9_INT_STATUS, `UVM_REG_ADDR_WIDTH'h1C4, "RW", 0);
		this.CH9_INT_STATUS_statusErr = this.CH9_INT_STATUS.statusErr;
		this.CH9_INT_STATUS_statusfr = this.CH9_INT_STATUS.statusfr;
		this.CH9_INT_STATUS_statushtfr = this.CH9_INT_STATUS.statushtfr;
		this.CH9_INT_STATUS_statustrgetcmpfr = this.CH9_INT_STATUS.statustrgetcmpfr;
      this.CH9_INT_CLEAR = ral_reg_CH9_INT_CLEAR::type_id::create("CH9_INT_CLEAR",,get_full_name());
      this.CH9_INT_CLEAR.configure(this, null, "");
      this.CH9_INT_CLEAR.build();
         this.CH9_INT_CLEAR.add_hdl_path('{

            '{"CH9_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH9_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h1C8, "RW", 0);
		this.CH9_INT_CLEAR_clearErr = this.CH9_INT_CLEAR.clearErr;
		this.CH9_INT_CLEAR_cleartfr = this.CH9_INT_CLEAR.cleartfr;
		this.CH9_INT_CLEAR_clearhtfr = this.CH9_INT_CLEAR.clearhtfr;
		this.CH9_INT_CLEAR_cleartrgetcmpfr = this.CH9_INT_CLEAR.cleartrgetcmpfr;
      this.CH9_SOFT_REQ = ral_reg_CH9_SOFT_REQ::type_id::create("CH9_SOFT_REQ",,get_full_name());
      this.CH9_SOFT_REQ.configure(this, null, "");
      this.CH9_SOFT_REQ.build();
         this.CH9_SOFT_REQ.add_hdl_path('{

            '{"CH9_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH9_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h1CC, "RW", 0);
		this.CH9_SOFT_REQ_soft_req = this.CH9_SOFT_REQ.soft_req;
      this.CH9_EN = ral_reg_CH9_EN::type_id::create("CH9_EN",,get_full_name());
      this.CH9_EN.configure(this, null, "");
      this.CH9_EN.build();
         this.CH9_EN.add_hdl_path('{

            '{"CH9_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH9_EN, `UVM_REG_ADDR_WIDTH'h1D0, "RW", 0);
		this.CH9_EN_ch9_en = this.CH9_EN.ch9_en;
		this.ch9_en = this.CH9_EN.ch9_en;
      this.SAR10 = ral_reg_SAR10::type_id::create("SAR10",,get_full_name());
      this.SAR10.configure(this, null, "");
      this.SAR10.build();
         this.SAR10.add_hdl_path('{

            '{"SAR10", -1, -1}
         });
      this.default_map.add_reg(this.SAR10, `UVM_REG_ADDR_WIDTH'h1E0, "RW", 0);
		this.SAR10_SAR10 = this.SAR10.SAR10;
      this.DAR10 = ral_reg_DAR10::type_id::create("DAR10",,get_full_name());
      this.DAR10.configure(this, null, "");
      this.DAR10.build();
         this.DAR10.add_hdl_path('{

            '{"DAR10", -1, -1}
         });
      this.default_map.add_reg(this.DAR10, `UVM_REG_ADDR_WIDTH'h1E4, "RW", 0);
		this.DAR10_DAR10 = this.DAR10.DAR10;
      this.CH10_CTRL_A = ral_reg_CH10_CTRL_A::type_id::create("CH10_CTRL_A",,get_full_name());
      this.CH10_CTRL_A.configure(this, null, "");
      this.CH10_CTRL_A.build();
         this.CH10_CTRL_A.add_hdl_path('{

            '{"CH10_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH10_CTRL_A, `UVM_REG_ADDR_WIDTH'h1E8, "RW", 0);
		this.CH10_CTRL_A_DST_TR_WIDTH = this.CH10_CTRL_A.DST_TR_WIDTH;
		this.CH10_CTRL_A_SRC_TR_WIDTH = this.CH10_CTRL_A.SRC_TR_WIDTH;
		this.CH10_CTRL_A_DINC = this.CH10_CTRL_A.DINC;
		this.CH10_CTRL_A_SINC = this.CH10_CTRL_A.SINC;
		this.CH10_CTRL_A_BLOCK_TL = this.CH10_CTRL_A.BLOCK_TL;
      this.CH10_CTRL_B = ral_reg_CH10_CTRL_B::type_id::create("CH10_CTRL_B",,get_full_name());
      this.CH10_CTRL_B.configure(this, null, "");
      this.CH10_CTRL_B.build();
         this.CH10_CTRL_B.add_hdl_path('{

            '{"CH10_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH10_CTRL_B, `UVM_REG_ADDR_WIDTH'h1EC, "RW", 0);
		this.CH10_CTRL_B_INT_EN = this.CH10_CTRL_B.INT_EN;
		this.CH10_CTRL_B_TRGTMDC = this.CH10_CTRL_B.TRGTMDC;
		this.CH10_CTRL_B_SRCDTLGC = this.CH10_CTRL_B.SRCDTLGC;
		this.CH10_CTRL_B_DSTDTLGC = this.CH10_CTRL_B.DSTDTLGC;
		this.CH10_CTRL_B_PROTCTL = this.CH10_CTRL_B.PROTCTL;
      this.CH10_INT_MASK = ral_reg_CH10_INT_MASK::type_id::create("CH10_INT_MASK",,get_full_name());
      this.CH10_INT_MASK.configure(this, null, "");
      this.CH10_INT_MASK.build();
         this.CH10_INT_MASK.add_hdl_path('{

            '{"CH10_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH10_INT_MASK, `UVM_REG_ADDR_WIDTH'h1F0, "RW", 0);
		this.CH10_INT_MASK_maskErr = this.CH10_INT_MASK.maskErr;
		this.CH10_INT_MASK_masktfr = this.CH10_INT_MASK.masktfr;
		this.CH10_INT_MASK_maskhtfr = this.CH10_INT_MASK.maskhtfr;
		this.CH10_INT_MASK_masktrgetcmpfr = this.CH10_INT_MASK.masktrgetcmpfr;
      this.CH10_INT_STATUS = ral_reg_CH10_INT_STATUS::type_id::create("CH10_INT_STATUS",,get_full_name());
      this.CH10_INT_STATUS.configure(this, null, "");
      this.CH10_INT_STATUS.build();
         this.CH10_INT_STATUS.add_hdl_path('{

            '{"CH10_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH10_INT_STATUS, `UVM_REG_ADDR_WIDTH'h1F4, "RW", 0);
		this.CH10_INT_STATUS_statusErr = this.CH10_INT_STATUS.statusErr;
		this.CH10_INT_STATUS_statusfr = this.CH10_INT_STATUS.statusfr;
		this.CH10_INT_STATUS_statushtfr = this.CH10_INT_STATUS.statushtfr;
		this.CH10_INT_STATUS_statustrgetcmpfr = this.CH10_INT_STATUS.statustrgetcmpfr;
      this.CH10_INT_CLEAR = ral_reg_CH10_INT_CLEAR::type_id::create("CH10_INT_CLEAR",,get_full_name());
      this.CH10_INT_CLEAR.configure(this, null, "");
      this.CH10_INT_CLEAR.build();
         this.CH10_INT_CLEAR.add_hdl_path('{

            '{"CH10_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH10_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h1F8, "RW", 0);
		this.CH10_INT_CLEAR_clearErr = this.CH10_INT_CLEAR.clearErr;
		this.CH10_INT_CLEAR_cleartfr = this.CH10_INT_CLEAR.cleartfr;
		this.CH10_INT_CLEAR_clearhtfr = this.CH10_INT_CLEAR.clearhtfr;
		this.CH10_INT_CLEAR_cleartrgetcmpfr = this.CH10_INT_CLEAR.cleartrgetcmpfr;
      this.CH10_SOFT_REQ = ral_reg_CH10_SOFT_REQ::type_id::create("CH10_SOFT_REQ",,get_full_name());
      this.CH10_SOFT_REQ.configure(this, null, "");
      this.CH10_SOFT_REQ.build();
         this.CH10_SOFT_REQ.add_hdl_path('{

            '{"CH10_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH10_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h1FC, "RW", 0);
		this.CH10_SOFT_REQ_soft_req = this.CH10_SOFT_REQ.soft_req;
      this.C10_EN = ral_reg_C10_EN::type_id::create("C10_EN",,get_full_name());
      this.C10_EN.configure(this, null, "");
      this.C10_EN.build();
         this.C10_EN.add_hdl_path('{

            '{"C10_EN", -1, -1}
         });
      this.default_map.add_reg(this.C10_EN, `UVM_REG_ADDR_WIDTH'h200, "RW", 0);
		this.C10_EN_ch10_en = this.C10_EN.ch10_en;
		this.ch10_en = this.C10_EN.ch10_en;
      this.SAR11 = ral_reg_SAR11::type_id::create("SAR11",,get_full_name());
      this.SAR11.configure(this, null, "");
      this.SAR11.build();
         this.SAR11.add_hdl_path('{

            '{"SAR11", -1, -1}
         });
      this.default_map.add_reg(this.SAR11, `UVM_REG_ADDR_WIDTH'h210, "RW", 0);
		this.SAR11_SAR11 = this.SAR11.SAR11;
      this.DAR11 = ral_reg_DAR11::type_id::create("DAR11",,get_full_name());
      this.DAR11.configure(this, null, "");
      this.DAR11.build();
         this.DAR11.add_hdl_path('{

            '{"DAR11", -1, -1}
         });
      this.default_map.add_reg(this.DAR11, `UVM_REG_ADDR_WIDTH'h214, "RW", 0);
		this.DAR11_DAR11 = this.DAR11.DAR11;
      this.CH11_CTRL_A = ral_reg_CH11_CTRL_A::type_id::create("CH11_CTRL_A",,get_full_name());
      this.CH11_CTRL_A.configure(this, null, "");
      this.CH11_CTRL_A.build();
         this.CH11_CTRL_A.add_hdl_path('{

            '{"CH11_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH11_CTRL_A, `UVM_REG_ADDR_WIDTH'h218, "RW", 0);
		this.CH11_CTRL_A_DST_TR_WIDTH = this.CH11_CTRL_A.DST_TR_WIDTH;
		this.CH11_CTRL_A_SRC_TR_WIDTH = this.CH11_CTRL_A.SRC_TR_WIDTH;
		this.CH11_CTRL_A_DINC = this.CH11_CTRL_A.DINC;
		this.CH11_CTRL_A_SINC = this.CH11_CTRL_A.SINC;
		this.CH11_CTRL_A_BLOCK_TL = this.CH11_CTRL_A.BLOCK_TL;
      this.CH11_CTRL_B = ral_reg_CH11_CTRL_B::type_id::create("CH11_CTRL_B",,get_full_name());
      this.CH11_CTRL_B.configure(this, null, "");
      this.CH11_CTRL_B.build();
         this.CH11_CTRL_B.add_hdl_path('{

            '{"CH11_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH11_CTRL_B, `UVM_REG_ADDR_WIDTH'h21C, "RW", 0);
		this.CH11_CTRL_B_INT_EN = this.CH11_CTRL_B.INT_EN;
		this.CH11_CTRL_B_TRGTMDC = this.CH11_CTRL_B.TRGTMDC;
		this.CH11_CTRL_B_SRCDTLGC = this.CH11_CTRL_B.SRCDTLGC;
		this.CH11_CTRL_B_DSTDTLGC = this.CH11_CTRL_B.DSTDTLGC;
		this.CH11_CTRL_B_PROTCTL = this.CH11_CTRL_B.PROTCTL;
      this.CH11_INT_MASK = ral_reg_CH11_INT_MASK::type_id::create("CH11_INT_MASK",,get_full_name());
      this.CH11_INT_MASK.configure(this, null, "");
      this.CH11_INT_MASK.build();
         this.CH11_INT_MASK.add_hdl_path('{

            '{"CH11_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH11_INT_MASK, `UVM_REG_ADDR_WIDTH'h220, "RW", 0);
		this.CH11_INT_MASK_maskErr = this.CH11_INT_MASK.maskErr;
		this.CH11_INT_MASK_masktfr = this.CH11_INT_MASK.masktfr;
		this.CH11_INT_MASK_maskhtfr = this.CH11_INT_MASK.maskhtfr;
		this.CH11_INT_MASK_masktrgetcmpfr = this.CH11_INT_MASK.masktrgetcmpfr;
      this.CH11_INT_STATUS = ral_reg_CH11_INT_STATUS::type_id::create("CH11_INT_STATUS",,get_full_name());
      this.CH11_INT_STATUS.configure(this, null, "");
      this.CH11_INT_STATUS.build();
         this.CH11_INT_STATUS.add_hdl_path('{

            '{"CH11_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH11_INT_STATUS, `UVM_REG_ADDR_WIDTH'h224, "RW", 0);
		this.CH11_INT_STATUS_statusErr = this.CH11_INT_STATUS.statusErr;
		this.CH11_INT_STATUS_statusfr = this.CH11_INT_STATUS.statusfr;
		this.CH11_INT_STATUS_statushtfr = this.CH11_INT_STATUS.statushtfr;
		this.CH11_INT_STATUS_statustrgetcmpfr = this.CH11_INT_STATUS.statustrgetcmpfr;
      this.CH11_INT_CLEAR = ral_reg_CH11_INT_CLEAR::type_id::create("CH11_INT_CLEAR",,get_full_name());
      this.CH11_INT_CLEAR.configure(this, null, "");
      this.CH11_INT_CLEAR.build();
         this.CH11_INT_CLEAR.add_hdl_path('{

            '{"CH11_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH11_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h228, "RW", 0);
		this.CH11_INT_CLEAR_clearErr = this.CH11_INT_CLEAR.clearErr;
		this.CH11_INT_CLEAR_cleartfr = this.CH11_INT_CLEAR.cleartfr;
		this.CH11_INT_CLEAR_clearhtfr = this.CH11_INT_CLEAR.clearhtfr;
		this.CH11_INT_CLEAR_cleartrgetcmpfr = this.CH11_INT_CLEAR.cleartrgetcmpfr;
      this.CH11_SOFT_REQ = ral_reg_CH11_SOFT_REQ::type_id::create("CH11_SOFT_REQ",,get_full_name());
      this.CH11_SOFT_REQ.configure(this, null, "");
      this.CH11_SOFT_REQ.build();
         this.CH11_SOFT_REQ.add_hdl_path('{

            '{"CH11_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH11_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h22C, "RW", 0);
		this.CH11_SOFT_REQ_soft_req = this.CH11_SOFT_REQ.soft_req;
      this.CH11_EN = ral_reg_CH11_EN::type_id::create("CH11_EN",,get_full_name());
      this.CH11_EN.configure(this, null, "");
      this.CH11_EN.build();
         this.CH11_EN.add_hdl_path('{

            '{"CH11_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH11_EN, `UVM_REG_ADDR_WIDTH'h230, "RW", 0);
		this.CH11_EN_ch11_en = this.CH11_EN.ch11_en;
		this.ch11_en = this.CH11_EN.ch11_en;
      this.SAR12 = ral_reg_SAR12::type_id::create("SAR12",,get_full_name());
      this.SAR12.configure(this, null, "");
      this.SAR12.build();
         this.SAR12.add_hdl_path('{

            '{"SAR12", -1, -1}
         });
      this.default_map.add_reg(this.SAR12, `UVM_REG_ADDR_WIDTH'h240, "RW", 0);
		this.SAR12_SAR12 = this.SAR12.SAR12;
      this.DAR12 = ral_reg_DAR12::type_id::create("DAR12",,get_full_name());
      this.DAR12.configure(this, null, "");
      this.DAR12.build();
         this.DAR12.add_hdl_path('{

            '{"DAR12", -1, -1}
         });
      this.default_map.add_reg(this.DAR12, `UVM_REG_ADDR_WIDTH'h244, "RW", 0);
		this.DAR12_DAR12 = this.DAR12.DAR12;
      this.CH12_CTRL_A = ral_reg_CH12_CTRL_A::type_id::create("CH12_CTRL_A",,get_full_name());
      this.CH12_CTRL_A.configure(this, null, "");
      this.CH12_CTRL_A.build();
         this.CH12_CTRL_A.add_hdl_path('{

            '{"CH12_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH12_CTRL_A, `UVM_REG_ADDR_WIDTH'h248, "RW", 0);
		this.CH12_CTRL_A_DST_TR_WIDTH = this.CH12_CTRL_A.DST_TR_WIDTH;
		this.CH12_CTRL_A_SRC_TR_WIDTH = this.CH12_CTRL_A.SRC_TR_WIDTH;
		this.CH12_CTRL_A_DINC = this.CH12_CTRL_A.DINC;
		this.CH12_CTRL_A_SINC = this.CH12_CTRL_A.SINC;
		this.CH12_CTRL_A_BLOCK_TL = this.CH12_CTRL_A.BLOCK_TL;
      this.CH12_CTRL_B = ral_reg_CH12_CTRL_B::type_id::create("CH12_CTRL_B",,get_full_name());
      this.CH12_CTRL_B.configure(this, null, "");
      this.CH12_CTRL_B.build();
         this.CH12_CTRL_B.add_hdl_path('{

            '{"CH12_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH12_CTRL_B, `UVM_REG_ADDR_WIDTH'h24C, "RW", 0);
		this.CH12_CTRL_B_INT_EN = this.CH12_CTRL_B.INT_EN;
		this.CH12_CTRL_B_TRGTMDC = this.CH12_CTRL_B.TRGTMDC;
		this.CH12_CTRL_B_SRCDTLGC = this.CH12_CTRL_B.SRCDTLGC;
		this.CH12_CTRL_B_DSTDTLGC = this.CH12_CTRL_B.DSTDTLGC;
		this.CH12_CTRL_B_PROTCTL = this.CH12_CTRL_B.PROTCTL;
      this.CH12_INT_MASK = ral_reg_CH12_INT_MASK::type_id::create("CH12_INT_MASK",,get_full_name());
      this.CH12_INT_MASK.configure(this, null, "");
      this.CH12_INT_MASK.build();
         this.CH12_INT_MASK.add_hdl_path('{

            '{"CH12_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH12_INT_MASK, `UVM_REG_ADDR_WIDTH'h250, "RW", 0);
		this.CH12_INT_MASK_maskErr = this.CH12_INT_MASK.maskErr;
		this.CH12_INT_MASK_masktfr = this.CH12_INT_MASK.masktfr;
		this.CH12_INT_MASK_maskhtfr = this.CH12_INT_MASK.maskhtfr;
		this.CH12_INT_MASK_masktrgetcmpfr = this.CH12_INT_MASK.masktrgetcmpfr;
      this.CH12_INT_STATUS = ral_reg_CH12_INT_STATUS::type_id::create("CH12_INT_STATUS",,get_full_name());
      this.CH12_INT_STATUS.configure(this, null, "");
      this.CH12_INT_STATUS.build();
         this.CH12_INT_STATUS.add_hdl_path('{

            '{"CH12_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH12_INT_STATUS, `UVM_REG_ADDR_WIDTH'h254, "RW", 0);
		this.CH12_INT_STATUS_statusErr = this.CH12_INT_STATUS.statusErr;
		this.CH12_INT_STATUS_statusfr = this.CH12_INT_STATUS.statusfr;
		this.CH12_INT_STATUS_statushtfr = this.CH12_INT_STATUS.statushtfr;
		this.CH12_INT_STATUS_statustrgetcmpfr = this.CH12_INT_STATUS.statustrgetcmpfr;
      this.CH12_INT_CLEAR = ral_reg_CH12_INT_CLEAR::type_id::create("CH12_INT_CLEAR",,get_full_name());
      this.CH12_INT_CLEAR.configure(this, null, "");
      this.CH12_INT_CLEAR.build();
         this.CH12_INT_CLEAR.add_hdl_path('{

            '{"CH12_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH12_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h258, "RW", 0);
		this.CH12_INT_CLEAR_clearErr = this.CH12_INT_CLEAR.clearErr;
		this.CH12_INT_CLEAR_cleartfr = this.CH12_INT_CLEAR.cleartfr;
		this.CH12_INT_CLEAR_clearhtfr = this.CH12_INT_CLEAR.clearhtfr;
		this.CH12_INT_CLEAR_cleartrgetcmpfr = this.CH12_INT_CLEAR.cleartrgetcmpfr;
      this.CH12_SOFT_REQ = ral_reg_CH12_SOFT_REQ::type_id::create("CH12_SOFT_REQ",,get_full_name());
      this.CH12_SOFT_REQ.configure(this, null, "");
      this.CH12_SOFT_REQ.build();
         this.CH12_SOFT_REQ.add_hdl_path('{

            '{"CH12_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH12_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h25C, "RW", 0);
		this.CH12_SOFT_REQ_soft_req = this.CH12_SOFT_REQ.soft_req;
      this.CH12_EN = ral_reg_CH12_EN::type_id::create("CH12_EN",,get_full_name());
      this.CH12_EN.configure(this, null, "");
      this.CH12_EN.build();
         this.CH12_EN.add_hdl_path('{

            '{"CH12_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH12_EN, `UVM_REG_ADDR_WIDTH'h260, "RW", 0);
		this.CH12_EN_ch12_en = this.CH12_EN.ch12_en;
		this.ch12_en = this.CH12_EN.ch12_en;
      this.SAR13 = ral_reg_SAR13::type_id::create("SAR13",,get_full_name());
      this.SAR13.configure(this, null, "");
      this.SAR13.build();
         this.SAR13.add_hdl_path('{

            '{"SAR13", -1, -1}
         });
      this.default_map.add_reg(this.SAR13, `UVM_REG_ADDR_WIDTH'h270, "RW", 0);
		this.SAR13_SAR13 = this.SAR13.SAR13;
      this.DAR13 = ral_reg_DAR13::type_id::create("DAR13",,get_full_name());
      this.DAR13.configure(this, null, "");
      this.DAR13.build();
         this.DAR13.add_hdl_path('{

            '{"DAR13", -1, -1}
         });
      this.default_map.add_reg(this.DAR13, `UVM_REG_ADDR_WIDTH'h274, "RW", 0);
		this.DAR13_DAR13 = this.DAR13.DAR13;
      this.CH13_CTRL_A = ral_reg_CH13_CTRL_A::type_id::create("CH13_CTRL_A",,get_full_name());
      this.CH13_CTRL_A.configure(this, null, "");
      this.CH13_CTRL_A.build();
         this.CH13_CTRL_A.add_hdl_path('{

            '{"CH13_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH13_CTRL_A, `UVM_REG_ADDR_WIDTH'h278, "RW", 0);
		this.CH13_CTRL_A_DST_TR_WIDTH = this.CH13_CTRL_A.DST_TR_WIDTH;
		this.CH13_CTRL_A_SRC_TR_WIDTH = this.CH13_CTRL_A.SRC_TR_WIDTH;
		this.CH13_CTRL_A_DINC = this.CH13_CTRL_A.DINC;
		this.CH13_CTRL_A_SINC = this.CH13_CTRL_A.SINC;
		this.CH13_CTRL_A_BLOCK_TL = this.CH13_CTRL_A.BLOCK_TL;
      this.CH13_CTRL_B = ral_reg_CH13_CTRL_B::type_id::create("CH13_CTRL_B",,get_full_name());
      this.CH13_CTRL_B.configure(this, null, "");
      this.CH13_CTRL_B.build();
         this.CH13_CTRL_B.add_hdl_path('{

            '{"CH13_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH13_CTRL_B, `UVM_REG_ADDR_WIDTH'h27C, "RW", 0);
		this.CH13_CTRL_B_INT_EN = this.CH13_CTRL_B.INT_EN;
		this.CH13_CTRL_B_TRGTMDC = this.CH13_CTRL_B.TRGTMDC;
		this.CH13_CTRL_B_SRCDTLGC = this.CH13_CTRL_B.SRCDTLGC;
		this.CH13_CTRL_B_DSTDTLGC = this.CH13_CTRL_B.DSTDTLGC;
		this.CH13_CTRL_B_PROTCTL = this.CH13_CTRL_B.PROTCTL;
      this.CH13_INT_MASK = ral_reg_CH13_INT_MASK::type_id::create("CH13_INT_MASK",,get_full_name());
      this.CH13_INT_MASK.configure(this, null, "");
      this.CH13_INT_MASK.build();
         this.CH13_INT_MASK.add_hdl_path('{

            '{"CH13_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH13_INT_MASK, `UVM_REG_ADDR_WIDTH'h280, "RW", 0);
		this.CH13_INT_MASK_maskErr = this.CH13_INT_MASK.maskErr;
		this.CH13_INT_MASK_masktfr = this.CH13_INT_MASK.masktfr;
		this.CH13_INT_MASK_maskhtfr = this.CH13_INT_MASK.maskhtfr;
		this.CH13_INT_MASK_masktrgetcmpfr = this.CH13_INT_MASK.masktrgetcmpfr;
      this.CH13_INT_STATUS = ral_reg_CH13_INT_STATUS::type_id::create("CH13_INT_STATUS",,get_full_name());
      this.CH13_INT_STATUS.configure(this, null, "");
      this.CH13_INT_STATUS.build();
         this.CH13_INT_STATUS.add_hdl_path('{

            '{"CH13_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH13_INT_STATUS, `UVM_REG_ADDR_WIDTH'h284, "RW", 0);
		this.CH13_INT_STATUS_statusErr = this.CH13_INT_STATUS.statusErr;
		this.CH13_INT_STATUS_statusfr = this.CH13_INT_STATUS.statusfr;
		this.CH13_INT_STATUS_statushtfr = this.CH13_INT_STATUS.statushtfr;
		this.CH13_INT_STATUS_statustrgetcmpfr = this.CH13_INT_STATUS.statustrgetcmpfr;
      this.CH13_INT_CLEAR = ral_reg_CH13_INT_CLEAR::type_id::create("CH13_INT_CLEAR",,get_full_name());
      this.CH13_INT_CLEAR.configure(this, null, "");
      this.CH13_INT_CLEAR.build();
         this.CH13_INT_CLEAR.add_hdl_path('{

            '{"CH13_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH13_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h288, "RW", 0);
		this.CH13_INT_CLEAR_clearErr = this.CH13_INT_CLEAR.clearErr;
		this.CH13_INT_CLEAR_cleartfr = this.CH13_INT_CLEAR.cleartfr;
		this.CH13_INT_CLEAR_clearhtfr = this.CH13_INT_CLEAR.clearhtfr;
		this.CH13_INT_CLEAR_cleartrgetcmpfr = this.CH13_INT_CLEAR.cleartrgetcmpfr;
      this.CH13_SOFT_REQ = ral_reg_CH13_SOFT_REQ::type_id::create("CH13_SOFT_REQ",,get_full_name());
      this.CH13_SOFT_REQ.configure(this, null, "");
      this.CH13_SOFT_REQ.build();
         this.CH13_SOFT_REQ.add_hdl_path('{

            '{"CH13_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH13_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h28C, "RW", 0);
		this.CH13_SOFT_REQ_soft_req = this.CH13_SOFT_REQ.soft_req;
      this.CH13_EN = ral_reg_CH13_EN::type_id::create("CH13_EN",,get_full_name());
      this.CH13_EN.configure(this, null, "");
      this.CH13_EN.build();
         this.CH13_EN.add_hdl_path('{

            '{"CH13_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH13_EN, `UVM_REG_ADDR_WIDTH'h290, "RW", 0);
		this.CH13_EN_ch13_en = this.CH13_EN.ch13_en;
		this.ch13_en = this.CH13_EN.ch13_en;
      this.SAR14 = ral_reg_SAR14::type_id::create("SAR14",,get_full_name());
      this.SAR14.configure(this, null, "");
      this.SAR14.build();
         this.SAR14.add_hdl_path('{

            '{"SAR14", -1, -1}
         });
      this.default_map.add_reg(this.SAR14, `UVM_REG_ADDR_WIDTH'h2A0, "RW", 0);
		this.SAR14_SAR14 = this.SAR14.SAR14;
      this.DAR14 = ral_reg_DAR14::type_id::create("DAR14",,get_full_name());
      this.DAR14.configure(this, null, "");
      this.DAR14.build();
         this.DAR14.add_hdl_path('{

            '{"DAR14", -1, -1}
         });
      this.default_map.add_reg(this.DAR14, `UVM_REG_ADDR_WIDTH'h2A4, "RW", 0);
		this.DAR14_DAR14 = this.DAR14.DAR14;
      this.CH14_CTRL_A = ral_reg_CH14_CTRL_A::type_id::create("CH14_CTRL_A",,get_full_name());
      this.CH14_CTRL_A.configure(this, null, "");
      this.CH14_CTRL_A.build();
         this.CH14_CTRL_A.add_hdl_path('{

            '{"CH14_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH14_CTRL_A, `UVM_REG_ADDR_WIDTH'h2A8, "RW", 0);
		this.CH14_CTRL_A_DST_TR_WIDTH = this.CH14_CTRL_A.DST_TR_WIDTH;
		this.CH14_CTRL_A_SRC_TR_WIDTH = this.CH14_CTRL_A.SRC_TR_WIDTH;
		this.CH14_CTRL_A_DINC = this.CH14_CTRL_A.DINC;
		this.CH14_CTRL_A_SINC = this.CH14_CTRL_A.SINC;
		this.CH14_CTRL_A_BLOCK_TL = this.CH14_CTRL_A.BLOCK_TL;
      this.CH14_CTRL_B = ral_reg_CH14_CTRL_B::type_id::create("CH14_CTRL_B",,get_full_name());
      this.CH14_CTRL_B.configure(this, null, "");
      this.CH14_CTRL_B.build();
         this.CH14_CTRL_B.add_hdl_path('{

            '{"CH14_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH14_CTRL_B, `UVM_REG_ADDR_WIDTH'h2AC, "RW", 0);
		this.CH14_CTRL_B_INT_EN = this.CH14_CTRL_B.INT_EN;
		this.CH14_CTRL_B_TRGTMDC = this.CH14_CTRL_B.TRGTMDC;
		this.CH14_CTRL_B_SRCDTLGC = this.CH14_CTRL_B.SRCDTLGC;
		this.CH14_CTRL_B_DSTDTLGC = this.CH14_CTRL_B.DSTDTLGC;
		this.CH14_CTRL_B_PROTCTL = this.CH14_CTRL_B.PROTCTL;
      this.CH14_INT_MASK = ral_reg_CH14_INT_MASK::type_id::create("CH14_INT_MASK",,get_full_name());
      this.CH14_INT_MASK.configure(this, null, "");
      this.CH14_INT_MASK.build();
         this.CH14_INT_MASK.add_hdl_path('{

            '{"CH14_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH14_INT_MASK, `UVM_REG_ADDR_WIDTH'h2B0, "RW", 0);
		this.CH14_INT_MASK_maskErr = this.CH14_INT_MASK.maskErr;
		this.CH14_INT_MASK_masktfr = this.CH14_INT_MASK.masktfr;
		this.CH14_INT_MASK_maskhtfr = this.CH14_INT_MASK.maskhtfr;
		this.CH14_INT_MASK_masktrgetcmpfr = this.CH14_INT_MASK.masktrgetcmpfr;
      this.CH14_INT_STATUS = ral_reg_CH14_INT_STATUS::type_id::create("CH14_INT_STATUS",,get_full_name());
      this.CH14_INT_STATUS.configure(this, null, "");
      this.CH14_INT_STATUS.build();
         this.CH14_INT_STATUS.add_hdl_path('{

            '{"CH14_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH14_INT_STATUS, `UVM_REG_ADDR_WIDTH'h2B4, "RW", 0);
		this.CH14_INT_STATUS_statusErr = this.CH14_INT_STATUS.statusErr;
		this.CH14_INT_STATUS_statusfr = this.CH14_INT_STATUS.statusfr;
		this.CH14_INT_STATUS_statushtfr = this.CH14_INT_STATUS.statushtfr;
		this.CH14_INT_STATUS_statustrgetcmpfr = this.CH14_INT_STATUS.statustrgetcmpfr;
      this.CH14_INT_CLEAR = ral_reg_CH14_INT_CLEAR::type_id::create("CH14_INT_CLEAR",,get_full_name());
      this.CH14_INT_CLEAR.configure(this, null, "");
      this.CH14_INT_CLEAR.build();
         this.CH14_INT_CLEAR.add_hdl_path('{

            '{"CH14_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH14_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h2B8, "RW", 0);
		this.CH14_INT_CLEAR_clearErr = this.CH14_INT_CLEAR.clearErr;
		this.CH14_INT_CLEAR_cleartfr = this.CH14_INT_CLEAR.cleartfr;
		this.CH14_INT_CLEAR_clearhtfr = this.CH14_INT_CLEAR.clearhtfr;
		this.CH14_INT_CLEAR_cleartrgetcmpfr = this.CH14_INT_CLEAR.cleartrgetcmpfr;
      this.CH14_SOFT_REQ = ral_reg_CH14_SOFT_REQ::type_id::create("CH14_SOFT_REQ",,get_full_name());
      this.CH14_SOFT_REQ.configure(this, null, "");
      this.CH14_SOFT_REQ.build();
         this.CH14_SOFT_REQ.add_hdl_path('{

            '{"CH14_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH14_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h2BC, "RW", 0);
		this.CH14_SOFT_REQ_soft_req = this.CH14_SOFT_REQ.soft_req;
      this.CH14_EN = ral_reg_CH14_EN::type_id::create("CH14_EN",,get_full_name());
      this.CH14_EN.configure(this, null, "");
      this.CH14_EN.build();
         this.CH14_EN.add_hdl_path('{

            '{"CH14_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH14_EN, `UVM_REG_ADDR_WIDTH'h2C0, "RW", 0);
		this.CH14_EN_ch14_en = this.CH14_EN.ch14_en;
		this.ch14_en = this.CH14_EN.ch14_en;
      this.SAR15 = ral_reg_SAR15::type_id::create("SAR15",,get_full_name());
      this.SAR15.configure(this, null, "");
      this.SAR15.build();
         this.SAR15.add_hdl_path('{

            '{"SAR15", -1, -1}
         });
      this.default_map.add_reg(this.SAR15, `UVM_REG_ADDR_WIDTH'h2D0, "RW", 0);
		this.SAR15_SAR15 = this.SAR15.SAR15;
      this.DAR15 = ral_reg_DAR15::type_id::create("DAR15",,get_full_name());
      this.DAR15.configure(this, null, "");
      this.DAR15.build();
         this.DAR15.add_hdl_path('{

            '{"DAR15", -1, -1}
         });
      this.default_map.add_reg(this.DAR15, `UVM_REG_ADDR_WIDTH'h2D4, "RW", 0);
		this.DAR15_DAR15 = this.DAR15.DAR15;
      this.CH15_CTRL_A = ral_reg_CH15_CTRL_A::type_id::create("CH15_CTRL_A",,get_full_name());
      this.CH15_CTRL_A.configure(this, null, "");
      this.CH15_CTRL_A.build();
         this.CH15_CTRL_A.add_hdl_path('{

            '{"CH15_CTRL_A", -1, -1}
         });
      this.default_map.add_reg(this.CH15_CTRL_A, `UVM_REG_ADDR_WIDTH'h2D8, "RW", 0);
		this.CH15_CTRL_A_DST_TR_WIDTH = this.CH15_CTRL_A.DST_TR_WIDTH;
		this.CH15_CTRL_A_SRC_TR_WIDTH = this.CH15_CTRL_A.SRC_TR_WIDTH;
		this.CH15_CTRL_A_DINC = this.CH15_CTRL_A.DINC;
		this.CH15_CTRL_A_SINC = this.CH15_CTRL_A.SINC;
		this.CH15_CTRL_A_BLOCK_TL = this.CH15_CTRL_A.BLOCK_TL;
      this.CH15_CTRL_B = ral_reg_CH15_CTRL_B::type_id::create("CH15_CTRL_B",,get_full_name());
      this.CH15_CTRL_B.configure(this, null, "");
      this.CH15_CTRL_B.build();
         this.CH15_CTRL_B.add_hdl_path('{

            '{"CH15_CTRL_B", -1, -1}
         });
      this.default_map.add_reg(this.CH15_CTRL_B, `UVM_REG_ADDR_WIDTH'h2DC, "RW", 0);
		this.CH15_CTRL_B_INT_EN = this.CH15_CTRL_B.INT_EN;
		this.CH15_CTRL_B_TRGTMDC = this.CH15_CTRL_B.TRGTMDC;
		this.CH15_CTRL_B_SRCDTLGC = this.CH15_CTRL_B.SRCDTLGC;
		this.CH15_CTRL_B_DSTDTLGC = this.CH15_CTRL_B.DSTDTLGC;
		this.CH15_CTRL_B_PROTCTL = this.CH15_CTRL_B.PROTCTL;
      this.CH15_INT_MASK = ral_reg_CH15_INT_MASK::type_id::create("CH15_INT_MASK",,get_full_name());
      this.CH15_INT_MASK.configure(this, null, "");
      this.CH15_INT_MASK.build();
         this.CH15_INT_MASK.add_hdl_path('{

            '{"CH15_INT_MASK", -1, -1}
         });
      this.default_map.add_reg(this.CH15_INT_MASK, `UVM_REG_ADDR_WIDTH'h2F0, "RW", 0);
		this.CH15_INT_MASK_maskErr = this.CH15_INT_MASK.maskErr;
		this.CH15_INT_MASK_masktfr = this.CH15_INT_MASK.masktfr;
		this.CH15_INT_MASK_maskhtfr = this.CH15_INT_MASK.maskhtfr;
		this.CH15_INT_MASK_masktrgetcmpfr = this.CH15_INT_MASK.masktrgetcmpfr;
      this.CH15_INT_STATUS = ral_reg_CH15_INT_STATUS::type_id::create("CH15_INT_STATUS",,get_full_name());
      this.CH15_INT_STATUS.configure(this, null, "");
      this.CH15_INT_STATUS.build();
         this.CH15_INT_STATUS.add_hdl_path('{

            '{"CH15_INT_STATUS", -1, -1}
         });
      this.default_map.add_reg(this.CH15_INT_STATUS, `UVM_REG_ADDR_WIDTH'h2F4, "RW", 0);
		this.CH15_INT_STATUS_statusErr = this.CH15_INT_STATUS.statusErr;
		this.CH15_INT_STATUS_statusfr = this.CH15_INT_STATUS.statusfr;
		this.CH15_INT_STATUS_statushtfr = this.CH15_INT_STATUS.statushtfr;
		this.CH15_INT_STATUS_statustrgetcmpfr = this.CH15_INT_STATUS.statustrgetcmpfr;
      this.CH15_INT_CLEAR = ral_reg_CH15_INT_CLEAR::type_id::create("CH15_INT_CLEAR",,get_full_name());
      this.CH15_INT_CLEAR.configure(this, null, "");
      this.CH15_INT_CLEAR.build();
         this.CH15_INT_CLEAR.add_hdl_path('{

            '{"CH15_INT_CLEAR", -1, -1}
         });
      this.default_map.add_reg(this.CH15_INT_CLEAR, `UVM_REG_ADDR_WIDTH'h2F8, "RW", 0);
		this.CH15_INT_CLEAR_clearErr = this.CH15_INT_CLEAR.clearErr;
		this.CH15_INT_CLEAR_cleartfr = this.CH15_INT_CLEAR.cleartfr;
		this.CH15_INT_CLEAR_clearhtfr = this.CH15_INT_CLEAR.clearhtfr;
		this.CH15_INT_CLEAR_cleartrgetcmpfr = this.CH15_INT_CLEAR.cleartrgetcmpfr;
      this.CH15_SOFT_REQ = ral_reg_CH15_SOFT_REQ::type_id::create("CH15_SOFT_REQ",,get_full_name());
      this.CH15_SOFT_REQ.configure(this, null, "");
      this.CH15_SOFT_REQ.build();
         this.CH15_SOFT_REQ.add_hdl_path('{

            '{"CH15_SOFT_REQ", -1, -1}
         });
      this.default_map.add_reg(this.CH15_SOFT_REQ, `UVM_REG_ADDR_WIDTH'h2FC, "RW", 0);
		this.CH15_SOFT_REQ_soft_req = this.CH15_SOFT_REQ.soft_req;
      this.CH15_EN = ral_reg_CH15_EN::type_id::create("CH15_EN",,get_full_name());
      this.CH15_EN.configure(this, null, "");
      this.CH15_EN.build();
         this.CH15_EN.add_hdl_path('{

            '{"CH15_EN", -1, -1}
         });
      this.default_map.add_reg(this.CH15_EN, `UVM_REG_ADDR_WIDTH'h300, "RW", 0);
		this.CH15_EN_ch15_en = this.CH15_EN.ch15_en;
		this.ch15_en = this.CH15_EN.ch15_en;
      this.CHSR = ral_reg_CHSR::type_id::create("CHSR",,get_full_name());
      this.CHSR.configure(this, null, "");
      this.CHSR.build();
         this.CHSR.add_hdl_path('{

            '{"CHSR", -1, -1}
         });
      this.default_map.add_reg(this.CHSR, `UVM_REG_ADDR_WIDTH'h338, "RW", 0);
		this.CHSR_Ch0bsy = this.CHSR.Ch0bsy;
		this.Ch0bsy = this.CHSR.Ch0bsy;
		this.CHSR_Ch1bsy = this.CHSR.Ch1bsy;
		this.Ch1bsy = this.CHSR.Ch1bsy;
		this.CHSR_Ch2bsy = this.CHSR.Ch2bsy;
		this.Ch2bsy = this.CHSR.Ch2bsy;
		this.CHSR_Ch3bsy = this.CHSR.Ch3bsy;
		this.Ch3bsy = this.CHSR.Ch3bsy;
		this.CHSR_Ch4bsy = this.CHSR.Ch4bsy;
		this.Ch4bsy = this.CHSR.Ch4bsy;
		this.CHSR_Ch5bsy = this.CHSR.Ch5bsy;
		this.Ch5bsy = this.CHSR.Ch5bsy;
		this.CHSR_Ch6bsy = this.CHSR.Ch6bsy;
		this.Ch6bsy = this.CHSR.Ch6bsy;
		this.CHSR_Ch7bsy = this.CHSR.Ch7bsy;
		this.Ch7bsy = this.CHSR.Ch7bsy;
		this.CHSR_Ch8bsy = this.CHSR.Ch8bsy;
		this.Ch8bsy = this.CHSR.Ch8bsy;
		this.CHSR_Ch9bsy = this.CHSR.Ch9bsy;
		this.Ch9bsy = this.CHSR.Ch9bsy;
		this.CHSR_Ch10bsy = this.CHSR.Ch10bsy;
		this.Ch10bsy = this.CHSR.Ch10bsy;
		this.CHSR_Ch11bsy = this.CHSR.Ch11bsy;
		this.Ch11bsy = this.CHSR.Ch11bsy;
		this.CHSR_Ch12bsy = this.CHSR.Ch12bsy;
		this.Ch12bsy = this.CHSR.Ch12bsy;
		this.CHSR_Ch13bsy = this.CHSR.Ch13bsy;
		this.Ch13bsy = this.CHSR.Ch13bsy;
		this.CHSR_Ch14bsy = this.CHSR.Ch14bsy;
		this.Ch14bsy = this.CHSR.Ch14bsy;
		this.CHSR_Ch15bsy = this.CHSR.Ch15bsy;
		this.Ch15bsy = this.CHSR.Ch15bsy;
      this.DMACCFG = ral_reg_DMACCFG::type_id::create("DMACCFG",,get_full_name());
      this.DMACCFG.configure(this, null, "");
      this.DMACCFG.build();
         this.DMACCFG.add_hdl_path('{

            '{"DMACCFG", -1, -1}
         });
      this.default_map.add_reg(this.DMACCFG, `UVM_REG_ADDR_WIDTH'h33C, "RW", 0);
		this.DMACCFG_DMACEN = this.DMACCFG.DMACEN;
		this.DMACEN = this.DMACCFG.DMACEN;
   endfunction : build

	`uvm_object_utils(ral_block_dma)

endclass : ral_block_dma



`endif
