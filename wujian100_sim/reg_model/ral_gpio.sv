`ifndef RAL_GPIO
`define RAL_GPIO

import uvm_pkg::*;

class ral_reg_gpio_output_data extends uvm_reg;
	rand uvm_reg_field data;

	function new(string name = "gpio_output_data");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.data = uvm_reg_field::type_id::create("data",,get_full_name());
      this.data.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_output_data)

endclass : ral_reg_gpio_output_data


class ral_reg_gpio_direction extends uvm_reg;
	rand uvm_reg_field direction;

	function new(string name = "gpio_direction");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.direction = uvm_reg_field::type_id::create("direction",,get_full_name());
      this.direction.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_direction)

endclass : ral_reg_gpio_direction


class ral_reg_gpio_ctl extends uvm_reg;
	rand uvm_reg_field source;

	function new(string name = "gpio_ctl");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.source = uvm_reg_field::type_id::create("source",,get_full_name());
      this.source.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_ctl)

endclass : ral_reg_gpio_ctl


class ral_reg_gpio_inten extends uvm_reg;
	rand uvm_reg_field int_en;

	function new(string name = "gpio_inten");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.int_en = uvm_reg_field::type_id::create("int_en",,get_full_name());
      this.int_en.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_inten)

endclass : ral_reg_gpio_inten


class ral_reg_gpio_intmask extends uvm_reg;
	rand uvm_reg_field mask;

	function new(string name = "gpio_intmask");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.mask = uvm_reg_field::type_id::create("mask",,get_full_name());
      this.mask.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_intmask)

endclass : ral_reg_gpio_intmask


class ral_reg_gpio_inttype_level extends uvm_reg;
	rand uvm_reg_field int_level;

	function new(string name = "gpio_inttype_level");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.int_level = uvm_reg_field::type_id::create("int_level",,get_full_name());
      this.int_level.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_inttype_level)

endclass : ral_reg_gpio_inttype_level


class ral_reg_gpio_int_polarity extends uvm_reg;
	rand uvm_reg_field int_pol;

	function new(string name = "gpio_int_polarity");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.int_pol = uvm_reg_field::type_id::create("int_pol",,get_full_name());
      this.int_pol.configure(this, 32, 0, "RW", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_int_polarity)

endclass : ral_reg_gpio_int_polarity


class ral_reg_gpio_intstatus extends uvm_reg;
	uvm_reg_field int_stat;

	function new(string name = "gpio_intstatus");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.int_stat = uvm_reg_field::type_id::create("int_stat",,get_full_name());
      this.int_stat.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_intstatus)

endclass : ral_reg_gpio_intstatus


class ral_reg_gpio_rawintstatus extends uvm_reg;
	uvm_reg_field raw_int_stat;

	function new(string name = "gpio_rawintstatus");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.raw_int_stat = uvm_reg_field::type_id::create("raw_int_stat",,get_full_name());
      this.raw_int_stat.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_rawintstatus)

endclass : ral_reg_gpio_rawintstatus


class ral_reg_gpio_int_clr extends uvm_reg;
	rand uvm_reg_field clr_int;

	function new(string name = "gpio_int_clr");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.clr_int = uvm_reg_field::type_id::create("clr_int",,get_full_name());
      this.clr_int.configure(this, 32, 0, "WO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_int_clr)

endclass : ral_reg_gpio_int_clr


class ral_reg_gpio_input_data extends uvm_reg;
	uvm_reg_field external;

	function new(string name = "gpio_input_data");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.external = uvm_reg_field::type_id::create("external",,get_full_name());
      this.external.configure(this, 32, 0, "RO", 0, 32'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_gpio_input_data)

endclass : ral_reg_gpio_input_data


class ral_block_gpio extends uvm_reg_block;
	rand ral_reg_gpio_output_data gpio_output_data;
	rand ral_reg_gpio_direction gpio_direction;
	rand ral_reg_gpio_ctl gpio_ctl;
	rand ral_reg_gpio_inten gpio_inten;
	rand ral_reg_gpio_intmask gpio_intmask;
	rand ral_reg_gpio_inttype_level gpio_inttype_level;
	rand ral_reg_gpio_int_polarity gpio_int_polarity;
	rand ral_reg_gpio_intstatus gpio_intstatus;
	rand ral_reg_gpio_rawintstatus gpio_rawintstatus;
	rand ral_reg_gpio_int_clr gpio_int_clr;
	rand ral_reg_gpio_input_data gpio_input_data;
	rand uvm_reg_field gpio_output_data_data;
	rand uvm_reg_field data;
	rand uvm_reg_field gpio_direction_direction;
	rand uvm_reg_field direction;
	rand uvm_reg_field gpio_ctl_source;
	rand uvm_reg_field source;
	rand uvm_reg_field gpio_inten_int_en;
	rand uvm_reg_field int_en;
	rand uvm_reg_field gpio_intmask_mask;
	rand uvm_reg_field mask;
	rand uvm_reg_field gpio_inttype_level_int_level;
	rand uvm_reg_field int_level;
	rand uvm_reg_field gpio_int_polarity_int_pol;
	rand uvm_reg_field int_pol;
	uvm_reg_field gpio_intstatus_int_stat;
	uvm_reg_field int_stat;
	uvm_reg_field gpio_rawintstatus_raw_int_stat;
	uvm_reg_field raw_int_stat;
	rand uvm_reg_field gpio_int_clr_clr_int;
	rand uvm_reg_field clr_int;
	uvm_reg_field gpio_input_data_external;
	uvm_reg_field external;

	function new(string name = "gpio");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.gpio_output_data = ral_reg_gpio_output_data::type_id::create("gpio_output_data",,get_full_name());
      this.gpio_output_data.configure(this, null, "");
      this.gpio_output_data.build();
         this.gpio_output_data.add_hdl_path('{

            '{"gpio_output_data", -1, -1}
         });
      this.default_map.add_reg(this.gpio_output_data, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.gpio_output_data_data = this.gpio_output_data.data;
		this.data = this.gpio_output_data.data;
      this.gpio_direction = ral_reg_gpio_direction::type_id::create("gpio_direction",,get_full_name());
      this.gpio_direction.configure(this, null, "");
      this.gpio_direction.build();
         this.gpio_direction.add_hdl_path('{

            '{"gpio_direction", -1, -1}
         });
      this.default_map.add_reg(this.gpio_direction, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.gpio_direction_direction = this.gpio_direction.direction;
		this.direction = this.gpio_direction.direction;
      this.gpio_ctl = ral_reg_gpio_ctl::type_id::create("gpio_ctl",,get_full_name());
      this.gpio_ctl.configure(this, null, "");
      this.gpio_ctl.build();
         this.gpio_ctl.add_hdl_path('{

            '{"gpio_ctl", -1, -1}
         });
      this.default_map.add_reg(this.gpio_ctl, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.gpio_ctl_source = this.gpio_ctl.source;
		this.source = this.gpio_ctl.source;
      this.gpio_inten = ral_reg_gpio_inten::type_id::create("gpio_inten",,get_full_name());
      this.gpio_inten.configure(this, null, "");
      this.gpio_inten.build();
         this.gpio_inten.add_hdl_path('{

            '{"gpio_inten", -1, -1}
         });
      this.default_map.add_reg(this.gpio_inten, `UVM_REG_ADDR_WIDTH'h30, "RW", 0);
		this.gpio_inten_int_en = this.gpio_inten.int_en;
		this.int_en = this.gpio_inten.int_en;
      this.gpio_intmask = ral_reg_gpio_intmask::type_id::create("gpio_intmask",,get_full_name());
      this.gpio_intmask.configure(this, null, "");
      this.gpio_intmask.build();
         this.gpio_intmask.add_hdl_path('{

            '{"gpio_intmask", -1, -1}
         });
      this.default_map.add_reg(this.gpio_intmask, `UVM_REG_ADDR_WIDTH'h34, "RW", 0);
		this.gpio_intmask_mask = this.gpio_intmask.mask;
		this.mask = this.gpio_intmask.mask;
      this.gpio_inttype_level = ral_reg_gpio_inttype_level::type_id::create("gpio_inttype_level",,get_full_name());
      this.gpio_inttype_level.configure(this, null, "");
      this.gpio_inttype_level.build();
         this.gpio_inttype_level.add_hdl_path('{

            '{"gpio_inttype_level", -1, -1}
         });
      this.default_map.add_reg(this.gpio_inttype_level, `UVM_REG_ADDR_WIDTH'h38, "RW", 0);
		this.gpio_inttype_level_int_level = this.gpio_inttype_level.int_level;
		this.int_level = this.gpio_inttype_level.int_level;
      this.gpio_int_polarity = ral_reg_gpio_int_polarity::type_id::create("gpio_int_polarity",,get_full_name());
      this.gpio_int_polarity.configure(this, null, "");
      this.gpio_int_polarity.build();
         this.gpio_int_polarity.add_hdl_path('{

            '{"gpio_int_polarity", -1, -1}
         });
      this.default_map.add_reg(this.gpio_int_polarity, `UVM_REG_ADDR_WIDTH'h3C, "RW", 0);
		this.gpio_int_polarity_int_pol = this.gpio_int_polarity.int_pol;
		this.int_pol = this.gpio_int_polarity.int_pol;
      this.gpio_intstatus = ral_reg_gpio_intstatus::type_id::create("gpio_intstatus",,get_full_name());
      this.gpio_intstatus.configure(this, null, "");
      this.gpio_intstatus.build();
         this.gpio_intstatus.add_hdl_path('{

            '{"gpio_intstatus", -1, -1}
         });
      this.default_map.add_reg(this.gpio_intstatus, `UVM_REG_ADDR_WIDTH'h40, "RO", 0);
		this.gpio_intstatus_int_stat = this.gpio_intstatus.int_stat;
		this.int_stat = this.gpio_intstatus.int_stat;
      this.gpio_rawintstatus = ral_reg_gpio_rawintstatus::type_id::create("gpio_rawintstatus",,get_full_name());
      this.gpio_rawintstatus.configure(this, null, "");
      this.gpio_rawintstatus.build();
         this.gpio_rawintstatus.add_hdl_path('{

            '{"gpio_rawintstatus", -1, -1}
         });
      this.default_map.add_reg(this.gpio_rawintstatus, `UVM_REG_ADDR_WIDTH'h44, "RO", 0);
		this.gpio_rawintstatus_raw_int_stat = this.gpio_rawintstatus.raw_int_stat;
		this.raw_int_stat = this.gpio_rawintstatus.raw_int_stat;
      this.gpio_int_clr = ral_reg_gpio_int_clr::type_id::create("gpio_int_clr",,get_full_name());
      this.gpio_int_clr.configure(this, null, "");
      this.gpio_int_clr.build();
         this.gpio_int_clr.add_hdl_path('{

            '{"gpio_int_clr", -1, -1}
         });
      this.default_map.add_reg(this.gpio_int_clr, `UVM_REG_ADDR_WIDTH'h4C, "RW", 0);
		this.gpio_int_clr_clr_int = this.gpio_int_clr.clr_int;
		this.clr_int = this.gpio_int_clr.clr_int;
      this.gpio_input_data = ral_reg_gpio_input_data::type_id::create("gpio_input_data",,get_full_name());
      this.gpio_input_data.configure(this, null, "");
      this.gpio_input_data.build();
         this.gpio_input_data.add_hdl_path('{

            '{"gpio_input_data", -1, -1}
         });
      this.default_map.add_reg(this.gpio_input_data, `UVM_REG_ADDR_WIDTH'h50, "RO", 0);
		this.gpio_input_data_external = this.gpio_input_data.external;
		this.external = this.gpio_input_data.external;
   endfunction : build

	`uvm_object_utils(ral_block_gpio)

endclass : ral_block_gpio



`endif
