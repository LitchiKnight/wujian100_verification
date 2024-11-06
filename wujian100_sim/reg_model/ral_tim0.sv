`ifndef RAL_TIM0
`define RAL_TIM0

import uvm_pkg::*;

class ral_reg_Timer1LoadCount extends uvm_reg;
	rand uvm_reg_field tim1_load_cnt;

	function new(string name = "Timer1LoadCount");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim1_load_cnt = uvm_reg_field::type_id::create("tim1_load_cnt",,get_full_name());
      this.tim1_load_cnt.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer1LoadCount)

endclass : ral_reg_Timer1LoadCount


class ral_reg_Timer1CurrentValue extends uvm_reg;
	uvm_reg_field tim1_cur_var;

	function new(string name = "Timer1CurrentValue");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim1_cur_var = uvm_reg_field::type_id::create("tim1_cur_var",,get_full_name());
      this.tim1_cur_var.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer1CurrentValue)

endclass : ral_reg_Timer1CurrentValue


class ral_reg_Timer1Control extends uvm_reg;
	rand uvm_reg_field tim1_en_sel;
	rand uvm_reg_field tim1_mode_sel;
	rand uvm_reg_field tim1_int_mask;
	rand uvm_reg_field tim1_hw_trig_en;

	function new(string name = "Timer1Control");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim1_en_sel = uvm_reg_field::type_id::create("tim1_en_sel",,get_full_name());
      this.tim1_en_sel.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1_mode_sel = uvm_reg_field::type_id::create("tim1_mode_sel",,get_full_name());
      this.tim1_mode_sel.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1_int_mask = uvm_reg_field::type_id::create("tim1_int_mask",,get_full_name());
      this.tim1_int_mask.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1_hw_trig_en = uvm_reg_field::type_id::create("tim1_hw_trig_en",,get_full_name());
      this.tim1_hw_trig_en.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer1Control)

endclass : ral_reg_Timer1Control


class ral_reg_Timer1IntClr extends uvm_reg;
	uvm_reg_field tim1_int_clr;

	function new(string name = "Timer1IntClr");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim1_int_clr = uvm_reg_field::type_id::create("tim1_int_clr",,get_full_name());
      this.tim1_int_clr.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer1IntClr)

endclass : ral_reg_Timer1IntClr


class ral_reg_Timer1IntStatus extends uvm_reg;
	uvm_reg_field tim1_int_stat;

	function new(string name = "Timer1IntStatus");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim1_int_stat = uvm_reg_field::type_id::create("tim1_int_stat",,get_full_name());
      this.tim1_int_stat.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer1IntStatus)

endclass : ral_reg_Timer1IntStatus


class ral_reg_Timer2LoadCount extends uvm_reg;
	rand uvm_reg_field tim2_load_cnt;

	function new(string name = "Timer2LoadCount");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim2_load_cnt = uvm_reg_field::type_id::create("tim2_load_cnt",,get_full_name());
      this.tim2_load_cnt.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer2LoadCount)

endclass : ral_reg_Timer2LoadCount


class ral_reg_Timer2CurrentValue extends uvm_reg;
	uvm_reg_field tim2_cur_var;

	function new(string name = "Timer2CurrentValue");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim2_cur_var = uvm_reg_field::type_id::create("tim2_cur_var",,get_full_name());
      this.tim2_cur_var.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer2CurrentValue)

endclass : ral_reg_Timer2CurrentValue


class ral_reg_Timer2Control extends uvm_reg;
	rand uvm_reg_field tim2_en_sel;
	rand uvm_reg_field tim2_mode_sel;
	rand uvm_reg_field tim2_int_mask;
	rand uvm_reg_field tim2_hw_trig_en;

	function new(string name = "Timer2Control");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim2_en_sel = uvm_reg_field::type_id::create("tim2_en_sel",,get_full_name());
      this.tim2_en_sel.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2_mode_sel = uvm_reg_field::type_id::create("tim2_mode_sel",,get_full_name());
      this.tim2_mode_sel.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2_int_mask = uvm_reg_field::type_id::create("tim2_int_mask",,get_full_name());
      this.tim2_int_mask.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2_hw_trig_en = uvm_reg_field::type_id::create("tim2_hw_trig_en",,get_full_name());
      this.tim2_hw_trig_en.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer2Control)

endclass : ral_reg_Timer2Control


class ral_reg_Timer2IntClr extends uvm_reg;
	uvm_reg_field tim2_int_clr;

	function new(string name = "Timer2IntClr");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim2_int_clr = uvm_reg_field::type_id::create("tim2_int_clr",,get_full_name());
      this.tim2_int_clr.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer2IntClr)

endclass : ral_reg_Timer2IntClr


class ral_reg_Timer2IntStatus extends uvm_reg;
	uvm_reg_field tim2_int_stat;

	function new(string name = "Timer2IntStatus");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim2_int_stat = uvm_reg_field::type_id::create("tim2_int_stat",,get_full_name());
      this.tim2_int_stat.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_Timer2IntStatus)

endclass : ral_reg_Timer2IntStatus


class ral_block_tim0 extends uvm_reg_block;
	rand ral_reg_Timer1LoadCount Timer1LoadCount;
	rand ral_reg_Timer1CurrentValue Timer1CurrentValue;
	rand ral_reg_Timer1Control Timer1Control;
	rand ral_reg_Timer1IntClr Timer1IntClr;
	rand ral_reg_Timer1IntStatus Timer1IntStatus;
	rand ral_reg_Timer2LoadCount Timer2LoadCount;
	rand ral_reg_Timer2CurrentValue Timer2CurrentValue;
	rand ral_reg_Timer2Control Timer2Control;
	rand ral_reg_Timer2IntClr Timer2IntClr;
	rand ral_reg_Timer2IntStatus Timer2IntStatus;
	rand uvm_reg_field Timer1LoadCount_tim1_load_cnt;
	rand uvm_reg_field tim1_load_cnt;
	uvm_reg_field Timer1CurrentValue_tim1_cur_var;
	uvm_reg_field tim1_cur_var;
	rand uvm_reg_field Timer1Control_tim1_en_sel;
	rand uvm_reg_field tim1_en_sel;
	rand uvm_reg_field Timer1Control_tim1_mode_sel;
	rand uvm_reg_field tim1_mode_sel;
	rand uvm_reg_field Timer1Control_tim1_int_mask;
	rand uvm_reg_field tim1_int_mask;
	rand uvm_reg_field Timer1Control_tim1_hw_trig_en;
	rand uvm_reg_field tim1_hw_trig_en;
	uvm_reg_field Timer1IntClr_tim1_int_clr;
	uvm_reg_field tim1_int_clr;
	uvm_reg_field Timer1IntStatus_tim1_int_stat;
	uvm_reg_field tim1_int_stat;
	rand uvm_reg_field Timer2LoadCount_tim2_load_cnt;
	rand uvm_reg_field tim2_load_cnt;
	uvm_reg_field Timer2CurrentValue_tim2_cur_var;
	uvm_reg_field tim2_cur_var;
	rand uvm_reg_field Timer2Control_tim2_en_sel;
	rand uvm_reg_field tim2_en_sel;
	rand uvm_reg_field Timer2Control_tim2_mode_sel;
	rand uvm_reg_field tim2_mode_sel;
	rand uvm_reg_field Timer2Control_tim2_int_mask;
	rand uvm_reg_field tim2_int_mask;
	rand uvm_reg_field Timer2Control_tim2_hw_trig_en;
	rand uvm_reg_field tim2_hw_trig_en;
	uvm_reg_field Timer2IntClr_tim2_int_clr;
	uvm_reg_field tim2_int_clr;
	uvm_reg_field Timer2IntStatus_tim2_int_stat;
	uvm_reg_field tim2_int_stat;

	function new(string name = "tim0");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.Timer1LoadCount = ral_reg_Timer1LoadCount::type_id::create("Timer1LoadCount",,get_full_name());
      this.Timer1LoadCount.configure(this, null, "");
      this.Timer1LoadCount.build();
         this.Timer1LoadCount.add_hdl_path('{

            '{"Timer1LoadCount", -1, -1}
         });
      this.default_map.add_reg(this.Timer1LoadCount, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.Timer1LoadCount_tim1_load_cnt = this.Timer1LoadCount.tim1_load_cnt;
		this.tim1_load_cnt = this.Timer1LoadCount.tim1_load_cnt;
      this.Timer1CurrentValue = ral_reg_Timer1CurrentValue::type_id::create("Timer1CurrentValue",,get_full_name());
      this.Timer1CurrentValue.configure(this, null, "");
      this.Timer1CurrentValue.build();
         this.Timer1CurrentValue.add_hdl_path('{

            '{"Timer1CurrentValue", -1, -1}
         });
      this.default_map.add_reg(this.Timer1CurrentValue, `UVM_REG_ADDR_WIDTH'h4, "RO", 0);
		this.Timer1CurrentValue_tim1_cur_var = this.Timer1CurrentValue.tim1_cur_var;
		this.tim1_cur_var = this.Timer1CurrentValue.tim1_cur_var;
      this.Timer1Control = ral_reg_Timer1Control::type_id::create("Timer1Control",,get_full_name());
      this.Timer1Control.configure(this, null, "");
      this.Timer1Control.build();
         this.Timer1Control.add_hdl_path('{

            '{"Timer1Control", -1, -1}
         });
      this.default_map.add_reg(this.Timer1Control, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.Timer1Control_tim1_en_sel = this.Timer1Control.tim1_en_sel;
		this.tim1_en_sel = this.Timer1Control.tim1_en_sel;
		this.Timer1Control_tim1_mode_sel = this.Timer1Control.tim1_mode_sel;
		this.tim1_mode_sel = this.Timer1Control.tim1_mode_sel;
		this.Timer1Control_tim1_int_mask = this.Timer1Control.tim1_int_mask;
		this.tim1_int_mask = this.Timer1Control.tim1_int_mask;
		this.Timer1Control_tim1_hw_trig_en = this.Timer1Control.tim1_hw_trig_en;
		this.tim1_hw_trig_en = this.Timer1Control.tim1_hw_trig_en;
      this.Timer1IntClr = ral_reg_Timer1IntClr::type_id::create("Timer1IntClr",,get_full_name());
      this.Timer1IntClr.configure(this, null, "");
      this.Timer1IntClr.build();
         this.Timer1IntClr.add_hdl_path('{

            '{"Timer1IntClr", -1, -1}
         });
      this.default_map.add_reg(this.Timer1IntClr, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.Timer1IntClr_tim1_int_clr = this.Timer1IntClr.tim1_int_clr;
		this.tim1_int_clr = this.Timer1IntClr.tim1_int_clr;
      this.Timer1IntStatus = ral_reg_Timer1IntStatus::type_id::create("Timer1IntStatus",,get_full_name());
      this.Timer1IntStatus.configure(this, null, "");
      this.Timer1IntStatus.build();
         this.Timer1IntStatus.add_hdl_path('{

            '{"Timer1IntStatus", -1, -1}
         });
      this.default_map.add_reg(this.Timer1IntStatus, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.Timer1IntStatus_tim1_int_stat = this.Timer1IntStatus.tim1_int_stat;
		this.tim1_int_stat = this.Timer1IntStatus.tim1_int_stat;
      this.Timer2LoadCount = ral_reg_Timer2LoadCount::type_id::create("Timer2LoadCount",,get_full_name());
      this.Timer2LoadCount.configure(this, null, "");
      this.Timer2LoadCount.build();
         this.Timer2LoadCount.add_hdl_path('{

            '{"Timer2LoadCount", -1, -1}
         });
      this.default_map.add_reg(this.Timer2LoadCount, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.Timer2LoadCount_tim2_load_cnt = this.Timer2LoadCount.tim2_load_cnt;
		this.tim2_load_cnt = this.Timer2LoadCount.tim2_load_cnt;
      this.Timer2CurrentValue = ral_reg_Timer2CurrentValue::type_id::create("Timer2CurrentValue",,get_full_name());
      this.Timer2CurrentValue.configure(this, null, "");
      this.Timer2CurrentValue.build();
         this.Timer2CurrentValue.add_hdl_path('{

            '{"Timer2CurrentValue", -1, -1}
         });
      this.default_map.add_reg(this.Timer2CurrentValue, `UVM_REG_ADDR_WIDTH'h18, "RO", 0);
		this.Timer2CurrentValue_tim2_cur_var = this.Timer2CurrentValue.tim2_cur_var;
		this.tim2_cur_var = this.Timer2CurrentValue.tim2_cur_var;
      this.Timer2Control = ral_reg_Timer2Control::type_id::create("Timer2Control",,get_full_name());
      this.Timer2Control.configure(this, null, "");
      this.Timer2Control.build();
         this.Timer2Control.add_hdl_path('{

            '{"Timer2Control", -1, -1}
         });
      this.default_map.add_reg(this.Timer2Control, `UVM_REG_ADDR_WIDTH'h1C, "RW", 0);
		this.Timer2Control_tim2_en_sel = this.Timer2Control.tim2_en_sel;
		this.tim2_en_sel = this.Timer2Control.tim2_en_sel;
		this.Timer2Control_tim2_mode_sel = this.Timer2Control.tim2_mode_sel;
		this.tim2_mode_sel = this.Timer2Control.tim2_mode_sel;
		this.Timer2Control_tim2_int_mask = this.Timer2Control.tim2_int_mask;
		this.tim2_int_mask = this.Timer2Control.tim2_int_mask;
		this.Timer2Control_tim2_hw_trig_en = this.Timer2Control.tim2_hw_trig_en;
		this.tim2_hw_trig_en = this.Timer2Control.tim2_hw_trig_en;
      this.Timer2IntClr = ral_reg_Timer2IntClr::type_id::create("Timer2IntClr",,get_full_name());
      this.Timer2IntClr.configure(this, null, "");
      this.Timer2IntClr.build();
         this.Timer2IntClr.add_hdl_path('{

            '{"Timer2IntClr", -1, -1}
         });
      this.default_map.add_reg(this.Timer2IntClr, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
		this.Timer2IntClr_tim2_int_clr = this.Timer2IntClr.tim2_int_clr;
		this.tim2_int_clr = this.Timer2IntClr.tim2_int_clr;
      this.Timer2IntStatus = ral_reg_Timer2IntStatus::type_id::create("Timer2IntStatus",,get_full_name());
      this.Timer2IntStatus.configure(this, null, "");
      this.Timer2IntStatus.build();
         this.Timer2IntStatus.add_hdl_path('{

            '{"Timer2IntStatus", -1, -1}
         });
      this.default_map.add_reg(this.Timer2IntStatus, `UVM_REG_ADDR_WIDTH'h24, "RW", 0);
		this.Timer2IntStatus_tim2_int_stat = this.Timer2IntStatus.tim2_int_stat;
		this.tim2_int_stat = this.Timer2IntStatus.tim2_int_stat;
   endfunction : build

	`uvm_object_utils(ral_block_tim0)

endclass : ral_block_tim0



`endif
