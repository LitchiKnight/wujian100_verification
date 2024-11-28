`ifndef RAL_RTC
`define RAL_RTC

import uvm_pkg::*;

class ral_reg_RTC_current_value extends uvm_reg;
	uvm_reg_field Current_Counter_Value;

	function new(string name = "RTC_current_value");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Current_Counter_Value = uvm_reg_field::type_id::create("Current_Counter_Value",,get_full_name());
      this.Current_Counter_Value.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_current_value)

endclass : ral_reg_RTC_current_value


class ral_reg_RTC_match_value extends uvm_reg;
	rand uvm_reg_field Counter_Match;

	function new(string name = "RTC_match_value");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Counter_Match = uvm_reg_field::type_id::create("Counter_Match",,get_full_name());
      this.Counter_Match.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_match_value)

endclass : ral_reg_RTC_match_value


class ral_reg_RTC_load_value extends uvm_reg;
	rand uvm_reg_field Counter_Load;

	function new(string name = "RTC_load_value");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Counter_Load = uvm_reg_field::type_id::create("Counter_Load",,get_full_name());
      this.Counter_Load.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_load_value)

endclass : ral_reg_RTC_load_value


class ral_reg_RTC_CCR extends uvm_reg;
	rand uvm_reg_field rtc_ien;
	rand uvm_reg_field rtc_mask;
	rand uvm_reg_field rtc_en;
	rand uvm_reg_field rtc_wen;

	function new(string name = "RTC_CCR");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.rtc_ien = uvm_reg_field::type_id::create("rtc_ien",,get_full_name());
      this.rtc_ien.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.rtc_mask = uvm_reg_field::type_id::create("rtc_mask",,get_full_name());
      this.rtc_mask.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.rtc_en = uvm_reg_field::type_id::create("rtc_en",,get_full_name());
      this.rtc_en.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.rtc_wen = uvm_reg_field::type_id::create("rtc_wen",,get_full_name());
      this.rtc_wen.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_CCR)

endclass : ral_reg_RTC_CCR


class ral_reg_RTC_int_status extends uvm_reg;
	uvm_reg_field rtc_stat;

	function new(string name = "RTC_int_status");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.rtc_stat = uvm_reg_field::type_id::create("rtc_stat",,get_full_name());
      this.rtc_stat.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_int_status)

endclass : ral_reg_RTC_int_status


class ral_reg_RTC_raw_int_status extends uvm_reg;
	uvm_reg_field rtc_rstat;

	function new(string name = "RTC_raw_int_status");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.rtc_rstat = uvm_reg_field::type_id::create("rtc_rstat",,get_full_name());
      this.rtc_rstat.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_raw_int_status)

endclass : ral_reg_RTC_raw_int_status


class ral_reg_RTC_int_clr extends uvm_reg;
	uvm_reg_field rtc_int_clr;

	function new(string name = "RTC_int_clr");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.rtc_int_clr = uvm_reg_field::type_id::create("rtc_int_clr",,get_full_name());
      this.rtc_int_clr.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_int_clr)

endclass : ral_reg_RTC_int_clr


class ral_reg_RTC_DIV extends uvm_reg;
	rand uvm_reg_field rtc_div;

	function new(string name = "RTC_DIV");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.rtc_div = uvm_reg_field::type_id::create("rtc_div",,get_full_name());
      this.rtc_div.configure(this, 20, 0, "RW", 0, 20'h4000, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_RTC_DIV)

endclass : ral_reg_RTC_DIV


class ral_block_rtc extends uvm_reg_block;
	rand ral_reg_RTC_current_value RTC_current_value;
	rand ral_reg_RTC_match_value RTC_match_value;
	rand ral_reg_RTC_load_value RTC_load_value;
	rand ral_reg_RTC_CCR RTC_CCR;
	rand ral_reg_RTC_int_status RTC_int_status;
	rand ral_reg_RTC_raw_int_status RTC_raw_int_status;
	rand ral_reg_RTC_int_clr RTC_int_clr;
	rand ral_reg_RTC_DIV RTC_DIV;
	uvm_reg_field RTC_current_value_Current_Counter_Value;
	uvm_reg_field Current_Counter_Value;
	rand uvm_reg_field RTC_match_value_Counter_Match;
	rand uvm_reg_field Counter_Match;
	rand uvm_reg_field RTC_load_value_Counter_Load;
	rand uvm_reg_field Counter_Load;
	rand uvm_reg_field RTC_CCR_rtc_ien;
	rand uvm_reg_field rtc_ien;
	rand uvm_reg_field RTC_CCR_rtc_mask;
	rand uvm_reg_field rtc_mask;
	rand uvm_reg_field RTC_CCR_rtc_en;
	rand uvm_reg_field rtc_en;
	rand uvm_reg_field RTC_CCR_rtc_wen;
	rand uvm_reg_field rtc_wen;
	uvm_reg_field RTC_int_status_rtc_stat;
	uvm_reg_field rtc_stat;
	uvm_reg_field RTC_raw_int_status_rtc_rstat;
	uvm_reg_field rtc_rstat;
	uvm_reg_field RTC_int_clr_rtc_int_clr;
	uvm_reg_field rtc_int_clr;
	rand uvm_reg_field RTC_DIV_rtc_div;
	rand uvm_reg_field rtc_div;

	function new(string name = "rtc");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.RTC_current_value = ral_reg_RTC_current_value::type_id::create("RTC_current_value",,get_full_name());
      this.RTC_current_value.configure(this, null, "");
      this.RTC_current_value.build();
         this.RTC_current_value.add_hdl_path('{

            '{"RTC_current_value", -1, -1}
         });
      this.default_map.add_reg(this.RTC_current_value, `UVM_REG_ADDR_WIDTH'h0, "RO", 0);
		this.RTC_current_value_Current_Counter_Value = this.RTC_current_value.Current_Counter_Value;
		this.Current_Counter_Value = this.RTC_current_value.Current_Counter_Value;
      this.RTC_match_value = ral_reg_RTC_match_value::type_id::create("RTC_match_value",,get_full_name());
      this.RTC_match_value.configure(this, null, "");
      this.RTC_match_value.build();
         this.RTC_match_value.add_hdl_path('{

            '{"RTC_match_value", -1, -1}
         });
      this.default_map.add_reg(this.RTC_match_value, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.RTC_match_value_Counter_Match = this.RTC_match_value.Counter_Match;
		this.Counter_Match = this.RTC_match_value.Counter_Match;
      this.RTC_load_value = ral_reg_RTC_load_value::type_id::create("RTC_load_value",,get_full_name());
      this.RTC_load_value.configure(this, null, "");
      this.RTC_load_value.build();
         this.RTC_load_value.add_hdl_path('{

            '{"RTC_load_value", -1, -1}
         });
      this.default_map.add_reg(this.RTC_load_value, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.RTC_load_value_Counter_Load = this.RTC_load_value.Counter_Load;
		this.Counter_Load = this.RTC_load_value.Counter_Load;
      this.RTC_CCR = ral_reg_RTC_CCR::type_id::create("RTC_CCR",,get_full_name());
      this.RTC_CCR.configure(this, null, "");
      this.RTC_CCR.build();
         this.RTC_CCR.add_hdl_path('{

            '{"RTC_CCR", -1, -1}
         });
      this.default_map.add_reg(this.RTC_CCR, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.RTC_CCR_rtc_ien = this.RTC_CCR.rtc_ien;
		this.rtc_ien = this.RTC_CCR.rtc_ien;
		this.RTC_CCR_rtc_mask = this.RTC_CCR.rtc_mask;
		this.rtc_mask = this.RTC_CCR.rtc_mask;
		this.RTC_CCR_rtc_en = this.RTC_CCR.rtc_en;
		this.rtc_en = this.RTC_CCR.rtc_en;
		this.RTC_CCR_rtc_wen = this.RTC_CCR.rtc_wen;
		this.rtc_wen = this.RTC_CCR.rtc_wen;
      this.RTC_int_status = ral_reg_RTC_int_status::type_id::create("RTC_int_status",,get_full_name());
      this.RTC_int_status.configure(this, null, "");
      this.RTC_int_status.build();
         this.RTC_int_status.add_hdl_path('{

            '{"RTC_int_status", -1, -1}
         });
      this.default_map.add_reg(this.RTC_int_status, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.RTC_int_status_rtc_stat = this.RTC_int_status.rtc_stat;
		this.rtc_stat = this.RTC_int_status.rtc_stat;
      this.RTC_raw_int_status = ral_reg_RTC_raw_int_status::type_id::create("RTC_raw_int_status",,get_full_name());
      this.RTC_raw_int_status.configure(this, null, "");
      this.RTC_raw_int_status.build();
         this.RTC_raw_int_status.add_hdl_path('{

            '{"RTC_raw_int_status", -1, -1}
         });
      this.default_map.add_reg(this.RTC_raw_int_status, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.RTC_raw_int_status_rtc_rstat = this.RTC_raw_int_status.rtc_rstat;
		this.rtc_rstat = this.RTC_raw_int_status.rtc_rstat;
      this.RTC_int_clr = ral_reg_RTC_int_clr::type_id::create("RTC_int_clr",,get_full_name());
      this.RTC_int_clr.configure(this, null, "");
      this.RTC_int_clr.build();
         this.RTC_int_clr.add_hdl_path('{

            '{"RTC_int_clr", -1, -1}
         });
      this.default_map.add_reg(this.RTC_int_clr, `UVM_REG_ADDR_WIDTH'h18, "RW", 0);
		this.RTC_int_clr_rtc_int_clr = this.RTC_int_clr.rtc_int_clr;
		this.rtc_int_clr = this.RTC_int_clr.rtc_int_clr;
      this.RTC_DIV = ral_reg_RTC_DIV::type_id::create("RTC_DIV",,get_full_name());
      this.RTC_DIV.configure(this, null, "");
      this.RTC_DIV.build();
         this.RTC_DIV.add_hdl_path('{

            '{"RTC_DIV", -1, -1}
         });
      this.default_map.add_reg(this.RTC_DIV, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
		this.RTC_DIV_rtc_div = this.RTC_DIV.rtc_div;
		this.rtc_div = this.RTC_DIV.rtc_div;
   endfunction : build

	`uvm_object_utils(ral_block_rtc)

endclass : ral_block_rtc



`endif
