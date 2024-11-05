`ifndef RAL_WDT
`define RAL_WDT

import uvm_pkg::*;

class ral_reg_WDT_CR extends uvm_reg;
	rand uvm_reg_field WDT_EN;
	rand uvm_reg_field RMOD;
	rand uvm_reg_field RPL;

	function new(string name = "WDT_CR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.WDT_EN = uvm_reg_field::type_id::create("WDT_EN",,get_full_name());
      this.WDT_EN.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.RMOD = uvm_reg_field::type_id::create("RMOD",,get_full_name());
      this.RMOD.configure(this, 1, 1, "RW", 0, 1'b1, 1, 0, 0);
      this.RPL = uvm_reg_field::type_id::create("RPL",,get_full_name());
      this.RPL.configure(this, 3, 2, "RW", 0, 3'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_CR)

endclass : ral_reg_WDT_CR


class ral_reg_WDT_time_out extends uvm_reg;
	rand uvm_reg_field TOP;
	rand uvm_reg_field TOP_INIT;

	function new(string name = "WDT_time_out");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.TOP = uvm_reg_field::type_id::create("TOP",,get_full_name());
      this.TOP.configure(this, 4, 0, "RW", 0, 4'h0, 1, 0, 0);
      this.TOP_INIT = uvm_reg_field::type_id::create("TOP_INIT",,get_full_name());
      this.TOP_INIT.configure(this, 4, 4, "RW", 0, 4'h0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_time_out)

endclass : ral_reg_WDT_time_out


class ral_reg_WDT_current_value extends uvm_reg;
	uvm_reg_field CCV;

	function new(string name = "WDT_current_value");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CCV = uvm_reg_field::type_id::create("CCV",,get_full_name());
      this.CCV.configure(this, 32, 0, "RO", 0, 32'hffff, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_current_value)

endclass : ral_reg_WDT_current_value


class ral_reg_WDT_restart extends uvm_reg;
	uvm_reg_field CRR;

	function new(string name = "WDT_restart");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CRR = uvm_reg_field::type_id::create("CRR",,get_full_name());
      this.CRR.configure(this, 8, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_restart)

endclass : ral_reg_WDT_restart


class ral_reg_WDT_int_status extends uvm_reg;
	uvm_reg_field ISR;

	function new(string name = "WDT_int_status");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ISR = uvm_reg_field::type_id::create("ISR",,get_full_name());
      this.ISR.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_int_status)

endclass : ral_reg_WDT_int_status


class ral_reg_WDT_int_clr extends uvm_reg;
	uvm_reg_field ICR;

	function new(string name = "WDT_int_clr");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.ICR = uvm_reg_field::type_id::create("ICR",,get_full_name());
      this.ICR.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_WDT_int_clr)

endclass : ral_reg_WDT_int_clr


class ral_block_wdt extends uvm_reg_block;
	rand ral_reg_WDT_CR WDT_CR;
	rand ral_reg_WDT_time_out WDT_time_out;
	rand ral_reg_WDT_current_value WDT_current_value;
	rand ral_reg_WDT_restart WDT_restart;
	rand ral_reg_WDT_int_status WDT_int_status;
	rand ral_reg_WDT_int_clr WDT_int_clr;
	rand uvm_reg_field WDT_CR_WDT_EN;
	rand uvm_reg_field WDT_EN;
	rand uvm_reg_field WDT_CR_RMOD;
	rand uvm_reg_field RMOD;
	rand uvm_reg_field WDT_CR_RPL;
	rand uvm_reg_field RPL;
	rand uvm_reg_field WDT_time_out_TOP;
	rand uvm_reg_field TOP;
	rand uvm_reg_field WDT_time_out_TOP_INIT;
	rand uvm_reg_field TOP_INIT;
	uvm_reg_field WDT_current_value_CCV;
	uvm_reg_field CCV;
	uvm_reg_field WDT_restart_CRR;
	uvm_reg_field CRR;
	uvm_reg_field WDT_int_status_ISR;
	uvm_reg_field ISR;
	uvm_reg_field WDT_int_clr_ICR;
	uvm_reg_field ICR;

	function new(string name = "wdt");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.WDT_CR = ral_reg_WDT_CR::type_id::create("WDT_CR",,get_full_name());
      this.WDT_CR.configure(this, null, "");
      this.WDT_CR.build();
         this.WDT_CR.add_hdl_path('{

            '{"WDT_CR", -1, -1}
         });
      this.default_map.add_reg(this.WDT_CR, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.WDT_CR_WDT_EN = this.WDT_CR.WDT_EN;
		this.WDT_EN = this.WDT_CR.WDT_EN;
		this.WDT_CR_RMOD = this.WDT_CR.RMOD;
		this.RMOD = this.WDT_CR.RMOD;
		this.WDT_CR_RPL = this.WDT_CR.RPL;
		this.RPL = this.WDT_CR.RPL;
      this.WDT_time_out = ral_reg_WDT_time_out::type_id::create("WDT_time_out",,get_full_name());
      this.WDT_time_out.configure(this, null, "");
      this.WDT_time_out.build();
         this.WDT_time_out.add_hdl_path('{

            '{"WDT_time_out", -1, -1}
         });
      this.default_map.add_reg(this.WDT_time_out, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.WDT_time_out_TOP = this.WDT_time_out.TOP;
		this.TOP = this.WDT_time_out.TOP;
		this.WDT_time_out_TOP_INIT = this.WDT_time_out.TOP_INIT;
		this.TOP_INIT = this.WDT_time_out.TOP_INIT;
      this.WDT_current_value = ral_reg_WDT_current_value::type_id::create("WDT_current_value",,get_full_name());
      this.WDT_current_value.configure(this, null, "");
      this.WDT_current_value.build();
         this.WDT_current_value.add_hdl_path('{

            '{"WDT_current_value", -1, -1}
         });
      this.default_map.add_reg(this.WDT_current_value, `UVM_REG_ADDR_WIDTH'h8, "RO", 0);
		this.WDT_current_value_CCV = this.WDT_current_value.CCV;
		this.CCV = this.WDT_current_value.CCV;
      this.WDT_restart = ral_reg_WDT_restart::type_id::create("WDT_restart",,get_full_name());
      this.WDT_restart.configure(this, null, "");
      this.WDT_restart.build();
         this.WDT_restart.add_hdl_path('{

            '{"WDT_restart", -1, -1}
         });
      this.default_map.add_reg(this.WDT_restart, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.WDT_restart_CRR = this.WDT_restart.CRR;
		this.CRR = this.WDT_restart.CRR;
      this.WDT_int_status = ral_reg_WDT_int_status::type_id::create("WDT_int_status",,get_full_name());
      this.WDT_int_status.configure(this, null, "");
      this.WDT_int_status.build();
         this.WDT_int_status.add_hdl_path('{

            '{"WDT_int_status", -1, -1}
         });
      this.default_map.add_reg(this.WDT_int_status, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.WDT_int_status_ISR = this.WDT_int_status.ISR;
		this.ISR = this.WDT_int_status.ISR;
      this.WDT_int_clr = ral_reg_WDT_int_clr::type_id::create("WDT_int_clr",,get_full_name());
      this.WDT_int_clr.configure(this, null, "");
      this.WDT_int_clr.build();
         this.WDT_int_clr.add_hdl_path('{

            '{"WDT_int_clr", -1, -1}
         });
      this.default_map.add_reg(this.WDT_int_clr, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.WDT_int_clr_ICR = this.WDT_int_clr.ICR;
		this.ICR = this.WDT_int_clr.ICR;
   endfunction : build

	`uvm_object_utils(ral_block_wdt)

endclass : ral_block_wdt



`endif
