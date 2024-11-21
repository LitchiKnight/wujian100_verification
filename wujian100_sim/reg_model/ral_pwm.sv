`ifndef RAL_PWM
`define RAL_PWM

import uvm_pkg::*;

class ral_reg_PWMCFG extends uvm_reg;
	rand uvm_reg_field pwm0en;
	rand uvm_reg_field pwm1en;
	rand uvm_reg_field pwm2en;
	rand uvm_reg_field pwm3en;
	rand uvm_reg_field pwm4en;
	rand uvm_reg_field pwm5en;
	rand uvm_reg_field pwm6en;
	rand uvm_reg_field pwm7en;
	rand uvm_reg_field pwm8en;
	rand uvm_reg_field pwm9en;
	rand uvm_reg_field pwm10en;
	rand uvm_reg_field pwm11en;
	rand uvm_reg_field cap0en;
	rand uvm_reg_field cap1en;
	rand uvm_reg_field cap2en;
	rand uvm_reg_field cap3en;
	rand uvm_reg_field cap4en;
	rand uvm_reg_field cap5en;
	rand uvm_reg_field tim0en;
	rand uvm_reg_field tim1en;
	rand uvm_reg_field tim2en;
	rand uvm_reg_field tim3en;
	rand uvm_reg_field tim4en;
	rand uvm_reg_field tim5en;
	rand uvm_reg_field cntdiv;
	rand uvm_reg_field cntdiven;

	function new(string name = "PWMCFG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm0en = uvm_reg_field::type_id::create("pwm0en",,get_full_name());
      this.pwm0en.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm1en = uvm_reg_field::type_id::create("pwm1en",,get_full_name());
      this.pwm1en.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm2en = uvm_reg_field::type_id::create("pwm2en",,get_full_name());
      this.pwm2en.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm3en = uvm_reg_field::type_id::create("pwm3en",,get_full_name());
      this.pwm3en.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm4en = uvm_reg_field::type_id::create("pwm4en",,get_full_name());
      this.pwm4en.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm5en = uvm_reg_field::type_id::create("pwm5en",,get_full_name());
      this.pwm5en.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm6en = uvm_reg_field::type_id::create("pwm6en",,get_full_name());
      this.pwm6en.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm7en = uvm_reg_field::type_id::create("pwm7en",,get_full_name());
      this.pwm7en.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm8en = uvm_reg_field::type_id::create("pwm8en",,get_full_name());
      this.pwm8en.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm9en = uvm_reg_field::type_id::create("pwm9en",,get_full_name());
      this.pwm9en.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm10en = uvm_reg_field::type_id::create("pwm10en",,get_full_name());
      this.pwm10en.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm11en = uvm_reg_field::type_id::create("pwm11en",,get_full_name());
      this.pwm11en.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.cap0en = uvm_reg_field::type_id::create("cap0en",,get_full_name());
      this.cap0en.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1en = uvm_reg_field::type_id::create("cap1en",,get_full_name());
      this.cap1en.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2en = uvm_reg_field::type_id::create("cap2en",,get_full_name());
      this.cap2en.configure(this, 1, 14, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3en = uvm_reg_field::type_id::create("cap3en",,get_full_name());
      this.cap3en.configure(this, 1, 15, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4en = uvm_reg_field::type_id::create("cap4en",,get_full_name());
      this.cap4en.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5en = uvm_reg_field::type_id::create("cap5en",,get_full_name());
      this.cap5en.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.tim0en = uvm_reg_field::type_id::create("tim0en",,get_full_name());
      this.tim0en.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1en = uvm_reg_field::type_id::create("tim1en",,get_full_name());
      this.tim1en.configure(this, 1, 19, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2en = uvm_reg_field::type_id::create("tim2en",,get_full_name());
      this.tim2en.configure(this, 1, 20, "RW", 0, 1'b0, 1, 0, 0);
      this.tim3en = uvm_reg_field::type_id::create("tim3en",,get_full_name());
      this.tim3en.configure(this, 1, 21, "RW", 0, 1'b0, 1, 0, 0);
      this.tim4en = uvm_reg_field::type_id::create("tim4en",,get_full_name());
      this.tim4en.configure(this, 1, 22, "RW", 0, 1'b0, 1, 0, 0);
      this.tim5en = uvm_reg_field::type_id::create("tim5en",,get_full_name());
      this.tim5en.configure(this, 1, 23, "RW", 0, 1'b0, 1, 0, 0);
      this.cntdiv = uvm_reg_field::type_id::create("cntdiv",,get_full_name());
      this.cntdiv.configure(this, 3, 24, "RW", 0, 3'h0, 1, 0, 0);
      this.cntdiven = uvm_reg_field::type_id::create("cntdiven",,get_full_name());
      this.cntdiven.configure(this, 1, 27, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMCFG)

endclass : ral_reg_PWMCFG


class ral_reg_PWMINVERTTRIG extends uvm_reg;
	rand uvm_reg_field pwm0inv;
	rand uvm_reg_field pwm1inv;
	rand uvm_reg_field pwm2inv;
	rand uvm_reg_field pwm3inv;
	rand uvm_reg_field pwm4inv;
	rand uvm_reg_field pwm5inv;
	rand uvm_reg_field pwm6inv;
	rand uvm_reg_field pwm7inv;
	rand uvm_reg_field pwm8inv;
	rand uvm_reg_field pwm9inv;
	rand uvm_reg_field pwm10inv;
	rand uvm_reg_field pwm11inv;

	function new(string name = "PWMINVERTTRIG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm0inv = uvm_reg_field::type_id::create("pwm0inv",,get_full_name());
      this.pwm0inv.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm1inv = uvm_reg_field::type_id::create("pwm1inv",,get_full_name());
      this.pwm1inv.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm2inv = uvm_reg_field::type_id::create("pwm2inv",,get_full_name());
      this.pwm2inv.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm3inv = uvm_reg_field::type_id::create("pwm3inv",,get_full_name());
      this.pwm3inv.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm4inv = uvm_reg_field::type_id::create("pwm4inv",,get_full_name());
      this.pwm4inv.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm5inv = uvm_reg_field::type_id::create("pwm5inv",,get_full_name());
      this.pwm5inv.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm6inv = uvm_reg_field::type_id::create("pwm6inv",,get_full_name());
      this.pwm6inv.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm7inv = uvm_reg_field::type_id::create("pwm7inv",,get_full_name());
      this.pwm7inv.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm8inv = uvm_reg_field::type_id::create("pwm8inv",,get_full_name());
      this.pwm8inv.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm9inv = uvm_reg_field::type_id::create("pwm9inv",,get_full_name());
      this.pwm9inv.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm10inv = uvm_reg_field::type_id::create("pwm10inv",,get_full_name());
      this.pwm10inv.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm11inv = uvm_reg_field::type_id::create("pwm11inv",,get_full_name());
      this.pwm11inv.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMINVERTTRIG)

endclass : ral_reg_PWMINVERTTRIG


class ral_reg_PWM01TRIG extends uvm_reg;
	rand uvm_reg_field pwm0trig;
	rand uvm_reg_field pwm1trig;

	function new(string name = "PWM01TRIG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm0trig = uvm_reg_field::type_id::create("pwm0trig",,get_full_name());
      this.pwm0trig.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.pwm1trig = uvm_reg_field::type_id::create("pwm1trig",,get_full_name());
      this.pwm1trig.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM01TRIG)

endclass : ral_reg_PWM01TRIG


class ral_reg_PWM23TRIG extends uvm_reg;
	rand uvm_reg_field pwm2trig;
	rand uvm_reg_field pwm3trig;

	function new(string name = "PWM23TRIG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm2trig = uvm_reg_field::type_id::create("pwm2trig",,get_full_name());
      this.pwm2trig.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.pwm3trig = uvm_reg_field::type_id::create("pwm3trig",,get_full_name());
      this.pwm3trig.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM23TRIG)

endclass : ral_reg_PWM23TRIG


class ral_reg_PWM45TRIG extends uvm_reg;
	rand uvm_reg_field pwm4trig;
	rand uvm_reg_field pwm5trig;

	function new(string name = "PWM45TRIG");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm4trig = uvm_reg_field::type_id::create("pwm4trig",,get_full_name());
      this.pwm4trig.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.pwm5trig = uvm_reg_field::type_id::create("pwm5trig",,get_full_name());
      this.pwm5trig.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM45TRIG)

endclass : ral_reg_PWM45TRIG


class ral_reg_PWMINTEN1 extends uvm_reg;
	rand uvm_reg_field Int0encntzero;
	rand uvm_reg_field Int0encntload;
	rand uvm_reg_field Int0encmpau;
	rand uvm_reg_field Int0encmpbu;
	rand uvm_reg_field Int0encmpad;
	rand uvm_reg_field Int0encmpbd;
	rand uvm_reg_field Int1encntzero;
	rand uvm_reg_field Int1encntload;
	rand uvm_reg_field Int1encmpau;
	rand uvm_reg_field Int1encmpbu;
	rand uvm_reg_field Int1encmpad;
	rand uvm_reg_field Int1encmpbd;
	rand uvm_reg_field Int2encntzero;
	rand uvm_reg_field Int2encntload;
	rand uvm_reg_field Int2encmpau;
	rand uvm_reg_field Int2encmpbu;
	rand uvm_reg_field Int2encmpad;
	rand uvm_reg_field Int2encmpbd;

	function new(string name = "PWMINTEN1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Int0encntzero = uvm_reg_field::type_id::create("Int0encntzero",,get_full_name());
      this.Int0encntzero.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.Int0encntload = uvm_reg_field::type_id::create("Int0encntload",,get_full_name());
      this.Int0encntload.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.Int0encmpau = uvm_reg_field::type_id::create("Int0encmpau",,get_full_name());
      this.Int0encmpau.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.Int0encmpbu = uvm_reg_field::type_id::create("Int0encmpbu",,get_full_name());
      this.Int0encmpbu.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.Int0encmpad = uvm_reg_field::type_id::create("Int0encmpad",,get_full_name());
      this.Int0encmpad.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.Int0encmpbd = uvm_reg_field::type_id::create("Int0encmpbd",,get_full_name());
      this.Int0encmpbd.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encntzero = uvm_reg_field::type_id::create("Int1encntzero",,get_full_name());
      this.Int1encntzero.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encntload = uvm_reg_field::type_id::create("Int1encntload",,get_full_name());
      this.Int1encntload.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encmpau = uvm_reg_field::type_id::create("Int1encmpau",,get_full_name());
      this.Int1encmpau.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encmpbu = uvm_reg_field::type_id::create("Int1encmpbu",,get_full_name());
      this.Int1encmpbu.configure(this, 1, 19, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encmpad = uvm_reg_field::type_id::create("Int1encmpad",,get_full_name());
      this.Int1encmpad.configure(this, 1, 20, "RW", 0, 1'b0, 1, 0, 0);
      this.Int1encmpbd = uvm_reg_field::type_id::create("Int1encmpbd",,get_full_name());
      this.Int1encmpbd.configure(this, 1, 21, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encntzero = uvm_reg_field::type_id::create("Int2encntzero",,get_full_name());
      this.Int2encntzero.configure(this, 1, 24, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encntload = uvm_reg_field::type_id::create("Int2encntload",,get_full_name());
      this.Int2encntload.configure(this, 1, 25, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encmpau = uvm_reg_field::type_id::create("Int2encmpau",,get_full_name());
      this.Int2encmpau.configure(this, 1, 26, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encmpbu = uvm_reg_field::type_id::create("Int2encmpbu",,get_full_name());
      this.Int2encmpbu.configure(this, 1, 27, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encmpad = uvm_reg_field::type_id::create("Int2encmpad",,get_full_name());
      this.Int2encmpad.configure(this, 1, 28, "RW", 0, 1'b0, 1, 0, 0);
      this.Int2encmpbd = uvm_reg_field::type_id::create("Int2encmpbd",,get_full_name());
      this.Int2encmpbd.configure(this, 1, 29, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMINTEN1)

endclass : ral_reg_PWMINTEN1


class ral_reg_PWMINTEN2 extends uvm_reg;
	rand uvm_reg_field Int3encntzero;
	rand uvm_reg_field Int3encntload;
	rand uvm_reg_field Int3encmpau;
	rand uvm_reg_field Int3encmpbu;
	rand uvm_reg_field Int3encmpad;
	rand uvm_reg_field Int3encmpbd;
	rand uvm_reg_field Int4encntzero;
	rand uvm_reg_field Int4encntload;
	rand uvm_reg_field Int4encmpau;
	rand uvm_reg_field Int4encmpbu;
	rand uvm_reg_field Int4encmpad;
	rand uvm_reg_field Int4encmpbd;
	rand uvm_reg_field Int5encntzero;
	rand uvm_reg_field Int5encntload;
	rand uvm_reg_field Int5encmpau;
	rand uvm_reg_field Int5encmpbu;
	rand uvm_reg_field Int5encmpad;
	rand uvm_reg_field Int5encmpbd;

	function new(string name = "PWMINTEN2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Int3encntzero = uvm_reg_field::type_id::create("Int3encntzero",,get_full_name());
      this.Int3encntzero.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.Int3encntload = uvm_reg_field::type_id::create("Int3encntload",,get_full_name());
      this.Int3encntload.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.Int3encmpau = uvm_reg_field::type_id::create("Int3encmpau",,get_full_name());
      this.Int3encmpau.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.Int3encmpbu = uvm_reg_field::type_id::create("Int3encmpbu",,get_full_name());
      this.Int3encmpbu.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.Int3encmpad = uvm_reg_field::type_id::create("Int3encmpad",,get_full_name());
      this.Int3encmpad.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.Int3encmpbd = uvm_reg_field::type_id::create("Int3encmpbd",,get_full_name());
      this.Int3encmpbd.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encntzero = uvm_reg_field::type_id::create("Int4encntzero",,get_full_name());
      this.Int4encntzero.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encntload = uvm_reg_field::type_id::create("Int4encntload",,get_full_name());
      this.Int4encntload.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encmpau = uvm_reg_field::type_id::create("Int4encmpau",,get_full_name());
      this.Int4encmpau.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encmpbu = uvm_reg_field::type_id::create("Int4encmpbu",,get_full_name());
      this.Int4encmpbu.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encmpad = uvm_reg_field::type_id::create("Int4encmpad",,get_full_name());
      this.Int4encmpad.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.Int4encmpbd = uvm_reg_field::type_id::create("Int4encmpbd",,get_full_name());
      this.Int4encmpbd.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encntzero = uvm_reg_field::type_id::create("Int5encntzero",,get_full_name());
      this.Int5encntzero.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encntload = uvm_reg_field::type_id::create("Int5encntload",,get_full_name());
      this.Int5encntload.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encmpau = uvm_reg_field::type_id::create("Int5encmpau",,get_full_name());
      this.Int5encmpau.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encmpbu = uvm_reg_field::type_id::create("Int5encmpbu",,get_full_name());
      this.Int5encmpbu.configure(this, 1, 19, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encmpad = uvm_reg_field::type_id::create("Int5encmpad",,get_full_name());
      this.Int5encmpad.configure(this, 1, 20, "RW", 0, 1'b0, 1, 0, 0);
      this.Int5encmpbd = uvm_reg_field::type_id::create("Int5encmpbd",,get_full_name());
      this.Int5encmpbd.configure(this, 1, 21, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMINTEN2)

endclass : ral_reg_PWMINTEN2


class ral_reg_PWMRIS1 extends uvm_reg;
	uvm_reg_field Intris0cntzero;
	uvm_reg_field Intris0cntload;
	uvm_reg_field Intris0cmpau;
	uvm_reg_field Intris0cmpbu;
	uvm_reg_field Intris0cmpad;
	uvm_reg_field Intris0cmpbd;
	uvm_reg_field Intris1cntzero;
	uvm_reg_field Intris1cntload;
	uvm_reg_field Intris1cmpau;
	uvm_reg_field Intris1cmpbu;
	uvm_reg_field Intris1cmpad;
	uvm_reg_field Intris1cmpbd;
	uvm_reg_field Intris2cntzero;
	uvm_reg_field Intris2cntload;
	uvm_reg_field Intris2cmpau;
	uvm_reg_field Intris2cmpbu;
	uvm_reg_field Intris2cmpad;
	uvm_reg_field Intris2cmpbd;

	function new(string name = "PWMRIS1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intris0cntzero = uvm_reg_field::type_id::create("Intris0cntzero",,get_full_name());
      this.Intris0cntzero.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris0cntload = uvm_reg_field::type_id::create("Intris0cntload",,get_full_name());
      this.Intris0cntload.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris0cmpau = uvm_reg_field::type_id::create("Intris0cmpau",,get_full_name());
      this.Intris0cmpau.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris0cmpbu = uvm_reg_field::type_id::create("Intris0cmpbu",,get_full_name());
      this.Intris0cmpbu.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris0cmpad = uvm_reg_field::type_id::create("Intris0cmpad",,get_full_name());
      this.Intris0cmpad.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris0cmpbd = uvm_reg_field::type_id::create("Intris0cmpbd",,get_full_name());
      this.Intris0cmpbd.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cntzero = uvm_reg_field::type_id::create("Intris1cntzero",,get_full_name());
      this.Intris1cntzero.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cntload = uvm_reg_field::type_id::create("Intris1cntload",,get_full_name());
      this.Intris1cntload.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cmpau = uvm_reg_field::type_id::create("Intris1cmpau",,get_full_name());
      this.Intris1cmpau.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cmpbu = uvm_reg_field::type_id::create("Intris1cmpbu",,get_full_name());
      this.Intris1cmpbu.configure(this, 1, 19, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cmpad = uvm_reg_field::type_id::create("Intris1cmpad",,get_full_name());
      this.Intris1cmpad.configure(this, 1, 20, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris1cmpbd = uvm_reg_field::type_id::create("Intris1cmpbd",,get_full_name());
      this.Intris1cmpbd.configure(this, 1, 21, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cntzero = uvm_reg_field::type_id::create("Intris2cntzero",,get_full_name());
      this.Intris2cntzero.configure(this, 1, 24, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cntload = uvm_reg_field::type_id::create("Intris2cntload",,get_full_name());
      this.Intris2cntload.configure(this, 1, 25, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cmpau = uvm_reg_field::type_id::create("Intris2cmpau",,get_full_name());
      this.Intris2cmpau.configure(this, 1, 26, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cmpbu = uvm_reg_field::type_id::create("Intris2cmpbu",,get_full_name());
      this.Intris2cmpbu.configure(this, 1, 27, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cmpad = uvm_reg_field::type_id::create("Intris2cmpad",,get_full_name());
      this.Intris2cmpad.configure(this, 1, 28, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris2cmpbd = uvm_reg_field::type_id::create("Intris2cmpbd",,get_full_name());
      this.Intris2cmpbd.configure(this, 1, 29, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMRIS1)

endclass : ral_reg_PWMRIS1


class ral_reg_PWMRIS2 extends uvm_reg;
	uvm_reg_field Intris3cntzero;
	uvm_reg_field Intris3cntload;
	uvm_reg_field Intris3cmpau;
	uvm_reg_field Intris3cmpbu;
	uvm_reg_field Intris3cmpad;
	uvm_reg_field Intris3cmpbd;
	uvm_reg_field Intris4cntzero;
	uvm_reg_field Intris4cntload;
	uvm_reg_field Intris4cmpau;
	uvm_reg_field Intris4cmpbu;
	uvm_reg_field Intris4cmpad;
	uvm_reg_field Intris4cmpbd;
	uvm_reg_field Intris5cntzero;
	uvm_reg_field Intris5cntload;
	uvm_reg_field Intris5cmpau;
	uvm_reg_field Intris5cmpbu;
	uvm_reg_field Intris5cmpad;
	uvm_reg_field Intris5cmpbd;

	function new(string name = "PWMRIS2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intris3cntzero = uvm_reg_field::type_id::create("Intris3cntzero",,get_full_name());
      this.Intris3cntzero.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris3cntload = uvm_reg_field::type_id::create("Intris3cntload",,get_full_name());
      this.Intris3cntload.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris3cmpau = uvm_reg_field::type_id::create("Intris3cmpau",,get_full_name());
      this.Intris3cmpau.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris3cmpbu = uvm_reg_field::type_id::create("Intris3cmpbu",,get_full_name());
      this.Intris3cmpbu.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris3cmpad = uvm_reg_field::type_id::create("Intris3cmpad",,get_full_name());
      this.Intris3cmpad.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris3cmpbd = uvm_reg_field::type_id::create("Intris3cmpbd",,get_full_name());
      this.Intris3cmpbd.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cntzero = uvm_reg_field::type_id::create("Intris4cntzero",,get_full_name());
      this.Intris4cntzero.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cntload = uvm_reg_field::type_id::create("Intris4cntload",,get_full_name());
      this.Intris4cntload.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cmpau = uvm_reg_field::type_id::create("Intris4cmpau",,get_full_name());
      this.Intris4cmpau.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cmpbu = uvm_reg_field::type_id::create("Intris4cmpbu",,get_full_name());
      this.Intris4cmpbu.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cmpad = uvm_reg_field::type_id::create("Intris4cmpad",,get_full_name());
      this.Intris4cmpad.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris4cmpbd = uvm_reg_field::type_id::create("Intris4cmpbd",,get_full_name());
      this.Intris4cmpbd.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cntzero = uvm_reg_field::type_id::create("Intris5cntzero",,get_full_name());
      this.Intris5cntzero.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cntload = uvm_reg_field::type_id::create("Intris5cntload",,get_full_name());
      this.Intris5cntload.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cmpau = uvm_reg_field::type_id::create("Intris5cmpau",,get_full_name());
      this.Intris5cmpau.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cmpbu = uvm_reg_field::type_id::create("Intris5cmpbu",,get_full_name());
      this.Intris5cmpbu.configure(this, 1, 19, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cmpad = uvm_reg_field::type_id::create("Intris5cmpad",,get_full_name());
      this.Intris5cmpad.configure(this, 1, 20, "RO", 0, 1'b0, 1, 0, 0);
      this.Intris5cmpbd = uvm_reg_field::type_id::create("Intris5cmpbd",,get_full_name());
      this.Intris5cmpbd.configure(this, 1, 21, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMRIS2)

endclass : ral_reg_PWMRIS2


class ral_reg_PWMIC1 extends uvm_reg;
	rand uvm_reg_field Intic0cntzero;
	rand uvm_reg_field Intic0cntload;
	rand uvm_reg_field Intic0cmpau;
	rand uvm_reg_field Intic0cmpbu;
	rand uvm_reg_field Intic0cmpad;
	rand uvm_reg_field Intic0cmpbd;
	rand uvm_reg_field Intic1cntzero;
	rand uvm_reg_field Intic1cntload;
	rand uvm_reg_field Intic1cmpau;
	rand uvm_reg_field Intic1cmpbu;
	rand uvm_reg_field Intic1cmpad;
	rand uvm_reg_field Intic1cmpbd;
	rand uvm_reg_field Intic2cntzero;
	rand uvm_reg_field Intic2cntload;
	rand uvm_reg_field Intic2cmpau;
	rand uvm_reg_field Intic2cmpbu;
	rand uvm_reg_field Intic2cmpad;
	rand uvm_reg_field Intic2cmpbd;

	function new(string name = "PWMIC1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intic0cntzero = uvm_reg_field::type_id::create("Intic0cntzero",,get_full_name());
      this.Intic0cntzero.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic0cntload = uvm_reg_field::type_id::create("Intic0cntload",,get_full_name());
      this.Intic0cntload.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic0cmpau = uvm_reg_field::type_id::create("Intic0cmpau",,get_full_name());
      this.Intic0cmpau.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic0cmpbu = uvm_reg_field::type_id::create("Intic0cmpbu",,get_full_name());
      this.Intic0cmpbu.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic0cmpad = uvm_reg_field::type_id::create("Intic0cmpad",,get_full_name());
      this.Intic0cmpad.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic0cmpbd = uvm_reg_field::type_id::create("Intic0cmpbd",,get_full_name());
      this.Intic0cmpbd.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cntzero = uvm_reg_field::type_id::create("Intic1cntzero",,get_full_name());
      this.Intic1cntzero.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cntload = uvm_reg_field::type_id::create("Intic1cntload",,get_full_name());
      this.Intic1cntload.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cmpau = uvm_reg_field::type_id::create("Intic1cmpau",,get_full_name());
      this.Intic1cmpau.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cmpbu = uvm_reg_field::type_id::create("Intic1cmpbu",,get_full_name());
      this.Intic1cmpbu.configure(this, 1, 19, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cmpad = uvm_reg_field::type_id::create("Intic1cmpad",,get_full_name());
      this.Intic1cmpad.configure(this, 1, 20, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic1cmpbd = uvm_reg_field::type_id::create("Intic1cmpbd",,get_full_name());
      this.Intic1cmpbd.configure(this, 1, 21, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cntzero = uvm_reg_field::type_id::create("Intic2cntzero",,get_full_name());
      this.Intic2cntzero.configure(this, 1, 24, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cntload = uvm_reg_field::type_id::create("Intic2cntload",,get_full_name());
      this.Intic2cntload.configure(this, 1, 25, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cmpau = uvm_reg_field::type_id::create("Intic2cmpau",,get_full_name());
      this.Intic2cmpau.configure(this, 1, 26, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cmpbu = uvm_reg_field::type_id::create("Intic2cmpbu",,get_full_name());
      this.Intic2cmpbu.configure(this, 1, 27, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cmpad = uvm_reg_field::type_id::create("Intic2cmpad",,get_full_name());
      this.Intic2cmpad.configure(this, 1, 28, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic2cmpbd = uvm_reg_field::type_id::create("Intic2cmpbd",,get_full_name());
      this.Intic2cmpbd.configure(this, 1, 29, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMIC1)

endclass : ral_reg_PWMIC1


class ral_reg_PWMIC2 extends uvm_reg;
	rand uvm_reg_field Intic3cntzero;
	rand uvm_reg_field Intic3cntload;
	rand uvm_reg_field Intic3cmpau;
	rand uvm_reg_field Intic3cmpbu;
	rand uvm_reg_field Intic3cmpad;
	rand uvm_reg_field Intic3cmpbd;
	rand uvm_reg_field Intic4cntzero;
	rand uvm_reg_field Intic4cntload;
	rand uvm_reg_field Intic4cmpau;
	rand uvm_reg_field Intic4cmpbu;
	rand uvm_reg_field Intic4cmpad;
	rand uvm_reg_field Intic4cmpbd;
	rand uvm_reg_field Intic5cntzero;
	rand uvm_reg_field Intic5cntload;
	rand uvm_reg_field Intic5cmpau;
	rand uvm_reg_field Intic5cmpbu;
	rand uvm_reg_field Intic5cmpad;
	rand uvm_reg_field Intic5cmpbd;

	function new(string name = "PWMIC2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intic3cntzero = uvm_reg_field::type_id::create("Intic3cntzero",,get_full_name());
      this.Intic3cntzero.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic3cntload = uvm_reg_field::type_id::create("Intic3cntload",,get_full_name());
      this.Intic3cntload.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic3cmpau = uvm_reg_field::type_id::create("Intic3cmpau",,get_full_name());
      this.Intic3cmpau.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic3cmpbu = uvm_reg_field::type_id::create("Intic3cmpbu",,get_full_name());
      this.Intic3cmpbu.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic3cmpad = uvm_reg_field::type_id::create("Intic3cmpad",,get_full_name());
      this.Intic3cmpad.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic3cmpbd = uvm_reg_field::type_id::create("Intic3cmpbd",,get_full_name());
      this.Intic3cmpbd.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cntzero = uvm_reg_field::type_id::create("Intic4cntzero",,get_full_name());
      this.Intic4cntzero.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cntload = uvm_reg_field::type_id::create("Intic4cntload",,get_full_name());
      this.Intic4cntload.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cmpau = uvm_reg_field::type_id::create("Intic4cmpau",,get_full_name());
      this.Intic4cmpau.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cmpbu = uvm_reg_field::type_id::create("Intic4cmpbu",,get_full_name());
      this.Intic4cmpbu.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cmpad = uvm_reg_field::type_id::create("Intic4cmpad",,get_full_name());
      this.Intic4cmpad.configure(this, 1, 12, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic4cmpbd = uvm_reg_field::type_id::create("Intic4cmpbd",,get_full_name());
      this.Intic4cmpbd.configure(this, 1, 13, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cntzero = uvm_reg_field::type_id::create("Intic5cntzero",,get_full_name());
      this.Intic5cntzero.configure(this, 1, 16, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cntload = uvm_reg_field::type_id::create("Intic5cntload",,get_full_name());
      this.Intic5cntload.configure(this, 1, 17, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cmpau = uvm_reg_field::type_id::create("Intic5cmpau",,get_full_name());
      this.Intic5cmpau.configure(this, 1, 18, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cmpbu = uvm_reg_field::type_id::create("Intic5cmpbu",,get_full_name());
      this.Intic5cmpbu.configure(this, 1, 19, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cmpad = uvm_reg_field::type_id::create("Intic5cmpad",,get_full_name());
      this.Intic5cmpad.configure(this, 1, 20, "RW", 0, 1'b0, 1, 0, 0);
      this.Intic5cmpbd = uvm_reg_field::type_id::create("Intic5cmpbd",,get_full_name());
      this.Intic5cmpbd.configure(this, 1, 21, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMIC2)

endclass : ral_reg_PWMIC2


class ral_reg_PWMIS1 extends uvm_reg;
	uvm_reg_field Intis0cntzero;
	uvm_reg_field Intis0cntload;
	uvm_reg_field Intis0cmpau;
	uvm_reg_field Intis0cmpbu;
	uvm_reg_field Intis0cmpad;
	uvm_reg_field Intis0cmpbd;
	uvm_reg_field Intis1cntzero;
	uvm_reg_field Intis1cntload;
	uvm_reg_field Intis1cmpau;
	uvm_reg_field Intis1cmpbu;
	uvm_reg_field Intis1cmpad;
	uvm_reg_field Intis1cmpbd;
	uvm_reg_field Intis2cntzero;
	uvm_reg_field Intis2cntload;
	uvm_reg_field Intis2cmpau;
	uvm_reg_field Intis2cmpbu;
	uvm_reg_field Intis2cmpad;
	uvm_reg_field Intis2cmpbd;

	function new(string name = "PWMIS1");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intis0cntzero = uvm_reg_field::type_id::create("Intis0cntzero",,get_full_name());
      this.Intis0cntzero.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis0cntload = uvm_reg_field::type_id::create("Intis0cntload",,get_full_name());
      this.Intis0cntload.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis0cmpau = uvm_reg_field::type_id::create("Intis0cmpau",,get_full_name());
      this.Intis0cmpau.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis0cmpbu = uvm_reg_field::type_id::create("Intis0cmpbu",,get_full_name());
      this.Intis0cmpbu.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis0cmpad = uvm_reg_field::type_id::create("Intis0cmpad",,get_full_name());
      this.Intis0cmpad.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis0cmpbd = uvm_reg_field::type_id::create("Intis0cmpbd",,get_full_name());
      this.Intis0cmpbd.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cntzero = uvm_reg_field::type_id::create("Intis1cntzero",,get_full_name());
      this.Intis1cntzero.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cntload = uvm_reg_field::type_id::create("Intis1cntload",,get_full_name());
      this.Intis1cntload.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cmpau = uvm_reg_field::type_id::create("Intis1cmpau",,get_full_name());
      this.Intis1cmpau.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cmpbu = uvm_reg_field::type_id::create("Intis1cmpbu",,get_full_name());
      this.Intis1cmpbu.configure(this, 1, 19, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cmpad = uvm_reg_field::type_id::create("Intis1cmpad",,get_full_name());
      this.Intis1cmpad.configure(this, 1, 20, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis1cmpbd = uvm_reg_field::type_id::create("Intis1cmpbd",,get_full_name());
      this.Intis1cmpbd.configure(this, 1, 21, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cntzero = uvm_reg_field::type_id::create("Intis2cntzero",,get_full_name());
      this.Intis2cntzero.configure(this, 1, 24, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cntload = uvm_reg_field::type_id::create("Intis2cntload",,get_full_name());
      this.Intis2cntload.configure(this, 1, 25, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cmpau = uvm_reg_field::type_id::create("Intis2cmpau",,get_full_name());
      this.Intis2cmpau.configure(this, 1, 26, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cmpbu = uvm_reg_field::type_id::create("Intis2cmpbu",,get_full_name());
      this.Intis2cmpbu.configure(this, 1, 27, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cmpad = uvm_reg_field::type_id::create("Intis2cmpad",,get_full_name());
      this.Intis2cmpad.configure(this, 1, 28, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis2cmpbd = uvm_reg_field::type_id::create("Intis2cmpbd",,get_full_name());
      this.Intis2cmpbd.configure(this, 1, 29, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMIS1)

endclass : ral_reg_PWMIS1


class ral_reg_PWMIS2 extends uvm_reg;
	uvm_reg_field Intis3cntzero;
	uvm_reg_field Intis3cntload;
	uvm_reg_field Intis3cmpau;
	uvm_reg_field Intis3cmpbu;
	uvm_reg_field Intis3cmpad;
	uvm_reg_field Intis3cmpbd;
	uvm_reg_field Intis4cntzero;
	uvm_reg_field Intis4cntload;
	uvm_reg_field Intis4cmpau;
	uvm_reg_field Intis4cmpbu;
	uvm_reg_field Intis4cmpad;
	uvm_reg_field Intis4cmpbd;
	uvm_reg_field Intis5cntzero;
	uvm_reg_field Intis5cntload;
	uvm_reg_field Intis5cmpau;
	uvm_reg_field Intis5cmpbu;
	uvm_reg_field Intis5cmpad;
	uvm_reg_field Intis5cmpbd;

	function new(string name = "PWMIS2");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Intis3cntzero = uvm_reg_field::type_id::create("Intis3cntzero",,get_full_name());
      this.Intis3cntzero.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis3cntload = uvm_reg_field::type_id::create("Intis3cntload",,get_full_name());
      this.Intis3cntload.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis3cmpau = uvm_reg_field::type_id::create("Intis3cmpau",,get_full_name());
      this.Intis3cmpau.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis3cmpbu = uvm_reg_field::type_id::create("Intis3cmpbu",,get_full_name());
      this.Intis3cmpbu.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis3cmpad = uvm_reg_field::type_id::create("Intis3cmpad",,get_full_name());
      this.Intis3cmpad.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis3cmpbd = uvm_reg_field::type_id::create("Intis3cmpbd",,get_full_name());
      this.Intis3cmpbd.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cntzero = uvm_reg_field::type_id::create("Intis4cntzero",,get_full_name());
      this.Intis4cntzero.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cntload = uvm_reg_field::type_id::create("Intis4cntload",,get_full_name());
      this.Intis4cntload.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cmpau = uvm_reg_field::type_id::create("Intis4cmpau",,get_full_name());
      this.Intis4cmpau.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cmpbu = uvm_reg_field::type_id::create("Intis4cmpbu",,get_full_name());
      this.Intis4cmpbu.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cmpad = uvm_reg_field::type_id::create("Intis4cmpad",,get_full_name());
      this.Intis4cmpad.configure(this, 1, 12, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis4cmpbd = uvm_reg_field::type_id::create("Intis4cmpbd",,get_full_name());
      this.Intis4cmpbd.configure(this, 1, 13, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cntzero = uvm_reg_field::type_id::create("Intis5cntzero",,get_full_name());
      this.Intis5cntzero.configure(this, 1, 16, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cntload = uvm_reg_field::type_id::create("Intis5cntload",,get_full_name());
      this.Intis5cntload.configure(this, 1, 17, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cmpau = uvm_reg_field::type_id::create("Intis5cmpau",,get_full_name());
      this.Intis5cmpau.configure(this, 1, 18, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cmpbu = uvm_reg_field::type_id::create("Intis5cmpbu",,get_full_name());
      this.Intis5cmpbu.configure(this, 1, 19, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cmpad = uvm_reg_field::type_id::create("Intis5cmpad",,get_full_name());
      this.Intis5cmpad.configure(this, 1, 20, "RO", 0, 1'b0, 1, 0, 0);
      this.Intis5cmpbd = uvm_reg_field::type_id::create("Intis5cmpbd",,get_full_name());
      this.Intis5cmpbd.configure(this, 1, 21, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMIS2)

endclass : ral_reg_PWMIS2


class ral_reg_PWMCTL extends uvm_reg;
	rand uvm_reg_field pwm0mode;
	rand uvm_reg_field pwm1mode;
	rand uvm_reg_field pwm2mode;
	rand uvm_reg_field pwm3mode;
	rand uvm_reg_field pwm4mode;
	rand uvm_reg_field pwm5mode;
	rand uvm_reg_field sync0mode;
	rand uvm_reg_field sync1mode;
	rand uvm_reg_field sync2mode;
	rand uvm_reg_field Sync3mode;
	rand uvm_reg_field Sync4mode;
	rand uvm_reg_field Sync5mode;

	function new(string name = "PWMCTL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.pwm0mode = uvm_reg_field::type_id::create("pwm0mode",,get_full_name());
      this.pwm0mode.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm1mode = uvm_reg_field::type_id::create("pwm1mode",,get_full_name());
      this.pwm1mode.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm2mode = uvm_reg_field::type_id::create("pwm2mode",,get_full_name());
      this.pwm2mode.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm3mode = uvm_reg_field::type_id::create("pwm3mode",,get_full_name());
      this.pwm3mode.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm4mode = uvm_reg_field::type_id::create("pwm4mode",,get_full_name());
      this.pwm4mode.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.pwm5mode = uvm_reg_field::type_id::create("pwm5mode",,get_full_name());
      this.pwm5mode.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.sync0mode = uvm_reg_field::type_id::create("sync0mode",,get_full_name());
      this.sync0mode.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.sync1mode = uvm_reg_field::type_id::create("sync1mode",,get_full_name());
      this.sync1mode.configure(this, 2, 8, "RW", 0, 2'h0, 1, 0, 0);
      this.sync2mode = uvm_reg_field::type_id::create("sync2mode",,get_full_name());
      this.sync2mode.configure(this, 2, 10, "RW", 0, 2'h0, 1, 0, 0);
      this.Sync3mode = uvm_reg_field::type_id::create("Sync3mode",,get_full_name());
      this.Sync3mode.configure(this, 2, 12, "RW", 0, 2'h0, 1, 0, 0);
      this.Sync4mode = uvm_reg_field::type_id::create("Sync4mode",,get_full_name());
      this.Sync4mode.configure(this, 2, 14, "RW", 0, 2'h0, 1, 0, 0);
      this.Sync5mode = uvm_reg_field::type_id::create("Sync5mode",,get_full_name());
      this.Sync5mode.configure(this, 2, 16, "RW", 0, 2'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWMCTL)

endclass : ral_reg_PWMCTL


class ral_reg_PWM01LOAD extends uvm_reg;
	rand uvm_reg_field loadn;
	rand uvm_reg_field loadm;

	function new(string name = "PWM01LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.loadn = uvm_reg_field::type_id::create("loadn",,get_full_name());
      this.loadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.loadm = uvm_reg_field::type_id::create("loadm",,get_full_name());
      this.loadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM01LOAD)

endclass : ral_reg_PWM01LOAD


class ral_reg_PWM23LOAD extends uvm_reg;
	rand uvm_reg_field loadn;
	rand uvm_reg_field loadm;

	function new(string name = "PWM23LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.loadn = uvm_reg_field::type_id::create("loadn",,get_full_name());
      this.loadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.loadm = uvm_reg_field::type_id::create("loadm",,get_full_name());
      this.loadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM23LOAD)

endclass : ral_reg_PWM23LOAD


class ral_reg_PWM45LOAD extends uvm_reg;
	rand uvm_reg_field loadn;
	rand uvm_reg_field loadm;

	function new(string name = "PWM45LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.loadn = uvm_reg_field::type_id::create("loadn",,get_full_name());
      this.loadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.loadm = uvm_reg_field::type_id::create("loadm",,get_full_name());
      this.loadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM45LOAD)

endclass : ral_reg_PWM45LOAD


class ral_reg_PWM01COUNT extends uvm_reg;
	uvm_reg_field countn;
	uvm_reg_field countm;

	function new(string name = "PWM01COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.countn = uvm_reg_field::type_id::create("countn",,get_full_name());
      this.countn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.countm = uvm_reg_field::type_id::create("countm",,get_full_name());
      this.countm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM01COUNT)

endclass : ral_reg_PWM01COUNT


class ral_reg_PWM23COUNT extends uvm_reg;
	uvm_reg_field countn;
	uvm_reg_field countm;

	function new(string name = "PWM23COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.countn = uvm_reg_field::type_id::create("countn",,get_full_name());
      this.countn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.countm = uvm_reg_field::type_id::create("countm",,get_full_name());
      this.countm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM23COUNT)

endclass : ral_reg_PWM23COUNT


class ral_reg_PWM45COUNT extends uvm_reg;
	uvm_reg_field countn;
	uvm_reg_field countm;

	function new(string name = "PWM45COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.countn = uvm_reg_field::type_id::create("countn",,get_full_name());
      this.countn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.countm = uvm_reg_field::type_id::create("countm",,get_full_name());
      this.countm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM45COUNT)

endclass : ral_reg_PWM45COUNT


class ral_reg_PWM0CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM0CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM0CMP)

endclass : ral_reg_PWM0CMP


class ral_reg_PWM1CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM1CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM1CMP)

endclass : ral_reg_PWM1CMP


class ral_reg_PWM2CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM2CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM2CMP)

endclass : ral_reg_PWM2CMP


class ral_reg_PWM3CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM3CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM3CMP)

endclass : ral_reg_PWM3CMP


class ral_reg_PWM4CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM4CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM4CMP)

endclass : ral_reg_PWM4CMP


class ral_reg_PWM5CMP extends uvm_reg;
	rand uvm_reg_field compna;
	rand uvm_reg_field compnb;

	function new(string name = "PWM5CMP");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.compna = uvm_reg_field::type_id::create("compna",,get_full_name());
      this.compna.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.compnb = uvm_reg_field::type_id::create("compnb",,get_full_name());
      this.compnb.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM5CMP)

endclass : ral_reg_PWM5CMP


class ral_reg_PWM01DB extends uvm_reg;
	rand uvm_reg_field delayn;
	rand uvm_reg_field delaym;
	rand uvm_reg_field dbnen;
	rand uvm_reg_field dbmen;

	function new(string name = "PWM01DB");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.delayn = uvm_reg_field::type_id::create("delayn",,get_full_name());
      this.delayn.configure(this, 12, 0, "RW", 0, 12'h0, 1, 0, 0);
      this.delaym = uvm_reg_field::type_id::create("delaym",,get_full_name());
      this.delaym.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 0);
      this.dbnen = uvm_reg_field::type_id::create("dbnen",,get_full_name());
      this.dbnen.configure(this, 1, 24, "RW", 0, 1'b0, 1, 0, 0);
      this.dbmen = uvm_reg_field::type_id::create("dbmen",,get_full_name());
      this.dbmen.configure(this, 1, 25, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM01DB)

endclass : ral_reg_PWM01DB


class ral_reg_PWM23DB extends uvm_reg;
	rand uvm_reg_field delayn;
	rand uvm_reg_field delaym;
	rand uvm_reg_field dbnen;
	rand uvm_reg_field dbmen;

	function new(string name = "PWM23DB");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.delayn = uvm_reg_field::type_id::create("delayn",,get_full_name());
      this.delayn.configure(this, 12, 0, "RW", 0, 12'h0, 1, 0, 0);
      this.delaym = uvm_reg_field::type_id::create("delaym",,get_full_name());
      this.delaym.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 0);
      this.dbnen = uvm_reg_field::type_id::create("dbnen",,get_full_name());
      this.dbnen.configure(this, 1, 24, "RW", 0, 1'b0, 1, 0, 0);
      this.dbmen = uvm_reg_field::type_id::create("dbmen",,get_full_name());
      this.dbmen.configure(this, 1, 25, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM23DB)

endclass : ral_reg_PWM23DB


class ral_reg_PWM45DB extends uvm_reg;
	rand uvm_reg_field delayn;
	rand uvm_reg_field delaym;
	rand uvm_reg_field dbnen;
	rand uvm_reg_field dbmen;

	function new(string name = "PWM45DB");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.delayn = uvm_reg_field::type_id::create("delayn",,get_full_name());
      this.delayn.configure(this, 12, 0, "RW", 0, 12'h0, 1, 0, 0);
      this.delaym = uvm_reg_field::type_id::create("delaym",,get_full_name());
      this.delaym.configure(this, 12, 12, "RW", 0, 12'h0, 1, 0, 0);
      this.dbnen = uvm_reg_field::type_id::create("dbnen",,get_full_name());
      this.dbnen.configure(this, 1, 24, "RW", 0, 1'b0, 1, 0, 0);
      this.dbmen = uvm_reg_field::type_id::create("dbmen",,get_full_name());
      this.dbmen.configure(this, 1, 25, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_PWM45DB)

endclass : ral_reg_PWM45DB


class ral_reg_CAPCTL extends uvm_reg;
	rand uvm_reg_field cap0mode;
	rand uvm_reg_field cap1mode;
	rand uvm_reg_field cap2mode;
	rand uvm_reg_field cap3mode;
	rand uvm_reg_field cap4mode;
	rand uvm_reg_field cap5mode;
	rand uvm_reg_field cap0event;
	rand uvm_reg_field cap1event;
	rand uvm_reg_field cap2event;
	rand uvm_reg_field cap3event;
	rand uvm_reg_field cap4event;
	rand uvm_reg_field cap5event;

	function new(string name = "CAPCTL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.cap0mode = uvm_reg_field::type_id::create("cap0mode",,get_full_name());
      this.cap0mode.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1mode = uvm_reg_field::type_id::create("cap1mode",,get_full_name());
      this.cap1mode.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2mode = uvm_reg_field::type_id::create("cap2mode",,get_full_name());
      this.cap2mode.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3mode = uvm_reg_field::type_id::create("cap3mode",,get_full_name());
      this.cap3mode.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4mode = uvm_reg_field::type_id::create("cap4mode",,get_full_name());
      this.cap4mode.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5mode = uvm_reg_field::type_id::create("cap5mode",,get_full_name());
      this.cap5mode.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.cap0event = uvm_reg_field::type_id::create("cap0event",,get_full_name());
      this.cap0event.configure(this, 2, 6, "RW", 0, 2'h0, 1, 0, 0);
      this.cap1event = uvm_reg_field::type_id::create("cap1event",,get_full_name());
      this.cap1event.configure(this, 2, 8, "RW", 0, 2'h0, 1, 0, 0);
      this.cap2event = uvm_reg_field::type_id::create("cap2event",,get_full_name());
      this.cap2event.configure(this, 2, 10, "RW", 0, 2'h0, 1, 0, 0);
      this.cap3event = uvm_reg_field::type_id::create("cap3event",,get_full_name());
      this.cap3event.configure(this, 2, 12, "RW", 0, 2'h0, 1, 0, 0);
      this.cap4event = uvm_reg_field::type_id::create("cap4event",,get_full_name());
      this.cap4event.configure(this, 2, 14, "RW", 0, 2'h0, 1, 0, 0);
      this.cap5event = uvm_reg_field::type_id::create("cap5event",,get_full_name());
      this.cap5event.configure(this, 2, 16, "RW", 0, 2'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAPCTL)

endclass : ral_reg_CAPCTL


class ral_reg_CAPINTEN extends uvm_reg;
	rand uvm_reg_field cap0cntie;
	rand uvm_reg_field cap1cntie;
	rand uvm_reg_field cap2cntie;
	rand uvm_reg_field cap3cntie;
	rand uvm_reg_field cap4cntie;
	rand uvm_reg_field cap5cntie;
	rand uvm_reg_field cap0timie;
	rand uvm_reg_field cap1timie;
	rand uvm_reg_field cap2timie;
	rand uvm_reg_field cap3timie;
	rand uvm_reg_field cap4timie;
	rand uvm_reg_field cap5timie;

	function new(string name = "CAPINTEN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.cap0cntie = uvm_reg_field::type_id::create("cap0cntie",,get_full_name());
      this.cap0cntie.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1cntie = uvm_reg_field::type_id::create("cap1cntie",,get_full_name());
      this.cap1cntie.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2cntie = uvm_reg_field::type_id::create("cap2cntie",,get_full_name());
      this.cap2cntie.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3cntie = uvm_reg_field::type_id::create("cap3cntie",,get_full_name());
      this.cap3cntie.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4cntie = uvm_reg_field::type_id::create("cap4cntie",,get_full_name());
      this.cap4cntie.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5cntie = uvm_reg_field::type_id::create("cap5cntie",,get_full_name());
      this.cap5cntie.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.cap0timie = uvm_reg_field::type_id::create("cap0timie",,get_full_name());
      this.cap0timie.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1timie = uvm_reg_field::type_id::create("cap1timie",,get_full_name());
      this.cap1timie.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2timie = uvm_reg_field::type_id::create("cap2timie",,get_full_name());
      this.cap2timie.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3timie = uvm_reg_field::type_id::create("cap3timie",,get_full_name());
      this.cap3timie.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4timie = uvm_reg_field::type_id::create("cap4timie",,get_full_name());
      this.cap4timie.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5timie = uvm_reg_field::type_id::create("cap5timie",,get_full_name());
      this.cap5timie.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CAPINTEN)

endclass : ral_reg_CAPINTEN


class ral_reg_CAPRIS extends uvm_reg;
	uvm_reg_field cap0cntris;
	uvm_reg_field cap1cntris;
	uvm_reg_field cap2cntris;
	uvm_reg_field cap3cntris;
	uvm_reg_field cap4cntris;
	uvm_reg_field cap5cntris;
	uvm_reg_field cap0timris;
	uvm_reg_field cap1timris;
	uvm_reg_field cap2timris;
	uvm_reg_field cap3timris;
	uvm_reg_field cap4timris;
	uvm_reg_field cap5timris;

	function new(string name = "CAPRIS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.cap0cntris = uvm_reg_field::type_id::create("cap0cntris",,get_full_name());
      this.cap0cntris.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.cap1cntris = uvm_reg_field::type_id::create("cap1cntris",,get_full_name());
      this.cap1cntris.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.cap2cntris = uvm_reg_field::type_id::create("cap2cntris",,get_full_name());
      this.cap2cntris.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.cap3cntris = uvm_reg_field::type_id::create("cap3cntris",,get_full_name());
      this.cap3cntris.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.cap4cntris = uvm_reg_field::type_id::create("cap4cntris",,get_full_name());
      this.cap4cntris.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.cap5cntris = uvm_reg_field::type_id::create("cap5cntris",,get_full_name());
      this.cap5cntris.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.cap0timris = uvm_reg_field::type_id::create("cap0timris",,get_full_name());
      this.cap0timris.configure(this, 1, 6, "RO", 0, 1'b0, 1, 0, 0);
      this.cap1timris = uvm_reg_field::type_id::create("cap1timris",,get_full_name());
      this.cap1timris.configure(this, 1, 7, "RO", 0, 1'b0, 1, 0, 0);
      this.cap2timris = uvm_reg_field::type_id::create("cap2timris",,get_full_name());
      this.cap2timris.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.cap3timris = uvm_reg_field::type_id::create("cap3timris",,get_full_name());
      this.cap3timris.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.cap4timris = uvm_reg_field::type_id::create("cap4timris",,get_full_name());
      this.cap4timris.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.cap5timris = uvm_reg_field::type_id::create("cap5timris",,get_full_name());
      this.cap5timris.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CAPRIS)

endclass : ral_reg_CAPRIS


class ral_reg_CAPIC extends uvm_reg;
	rand uvm_reg_field cap0cntic;
	rand uvm_reg_field cap1cntic;
	rand uvm_reg_field cap2cntic;
	rand uvm_reg_field cap3cntic;
	rand uvm_reg_field cap4cntic;
	rand uvm_reg_field cap5cntic;
	rand uvm_reg_field cap0timic;
	rand uvm_reg_field cap1timic;
	rand uvm_reg_field cap2timic;
	rand uvm_reg_field cap3timic;
	rand uvm_reg_field cap4timic;
	rand uvm_reg_field cap5timic;

	function new(string name = "CAPIC");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.cap0cntic = uvm_reg_field::type_id::create("cap0cntic",,get_full_name());
      this.cap0cntic.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1cntic = uvm_reg_field::type_id::create("cap1cntic",,get_full_name());
      this.cap1cntic.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2cntic = uvm_reg_field::type_id::create("cap2cntic",,get_full_name());
      this.cap2cntic.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3cntic = uvm_reg_field::type_id::create("cap3cntic",,get_full_name());
      this.cap3cntic.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4cntic = uvm_reg_field::type_id::create("cap4cntic",,get_full_name());
      this.cap4cntic.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5cntic = uvm_reg_field::type_id::create("cap5cntic",,get_full_name());
      this.cap5cntic.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
      this.cap0timic = uvm_reg_field::type_id::create("cap0timic",,get_full_name());
      this.cap0timic.configure(this, 1, 6, "RW", 0, 1'b0, 1, 0, 0);
      this.cap1timic = uvm_reg_field::type_id::create("cap1timic",,get_full_name());
      this.cap1timic.configure(this, 1, 7, "RW", 0, 1'b0, 1, 0, 0);
      this.cap2timic = uvm_reg_field::type_id::create("cap2timic",,get_full_name());
      this.cap2timic.configure(this, 1, 8, "RW", 0, 1'b0, 1, 0, 0);
      this.cap3timic = uvm_reg_field::type_id::create("cap3timic",,get_full_name());
      this.cap3timic.configure(this, 1, 9, "RW", 0, 1'b0, 1, 0, 0);
      this.cap4timic = uvm_reg_field::type_id::create("cap4timic",,get_full_name());
      this.cap4timic.configure(this, 1, 10, "RW", 0, 1'b0, 1, 0, 0);
      this.cap5timic = uvm_reg_field::type_id::create("cap5timic",,get_full_name());
      this.cap5timic.configure(this, 1, 11, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CAPIC)

endclass : ral_reg_CAPIC


class ral_reg_CAPIS extends uvm_reg;
	uvm_reg_field cap0cntis;
	uvm_reg_field cap1cntis;
	uvm_reg_field cap2cntis;
	uvm_reg_field cap3cntis;
	uvm_reg_field cap4cntis;
	uvm_reg_field cap5cntis;
	uvm_reg_field cap0timis;
	uvm_reg_field cap1timis;
	uvm_reg_field cap2timis;
	uvm_reg_field cap3timis;
	uvm_reg_field cap4timis;
	uvm_reg_field cap5timis;

	function new(string name = "CAPIS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.cap0cntis = uvm_reg_field::type_id::create("cap0cntis",,get_full_name());
      this.cap0cntis.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.cap1cntis = uvm_reg_field::type_id::create("cap1cntis",,get_full_name());
      this.cap1cntis.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.cap2cntis = uvm_reg_field::type_id::create("cap2cntis",,get_full_name());
      this.cap2cntis.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.cap3cntis = uvm_reg_field::type_id::create("cap3cntis",,get_full_name());
      this.cap3cntis.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.cap4cntis = uvm_reg_field::type_id::create("cap4cntis",,get_full_name());
      this.cap4cntis.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.cap5cntis = uvm_reg_field::type_id::create("cap5cntis",,get_full_name());
      this.cap5cntis.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
      this.cap0timis = uvm_reg_field::type_id::create("cap0timis",,get_full_name());
      this.cap0timis.configure(this, 1, 6, "RO", 0, 1'b0, 1, 0, 0);
      this.cap1timis = uvm_reg_field::type_id::create("cap1timis",,get_full_name());
      this.cap1timis.configure(this, 1, 7, "RO", 0, 1'b0, 1, 0, 0);
      this.cap2timis = uvm_reg_field::type_id::create("cap2timis",,get_full_name());
      this.cap2timis.configure(this, 1, 8, "RO", 0, 1'b0, 1, 0, 0);
      this.cap3timis = uvm_reg_field::type_id::create("cap3timis",,get_full_name());
      this.cap3timis.configure(this, 1, 9, "RO", 0, 1'b0, 1, 0, 0);
      this.cap4timis = uvm_reg_field::type_id::create("cap4timis",,get_full_name());
      this.cap4timis.configure(this, 1, 10, "RO", 0, 1'b0, 1, 0, 0);
      this.cap5timis = uvm_reg_field::type_id::create("cap5timis",,get_full_name());
      this.cap5timis.configure(this, 1, 11, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_CAPIS)

endclass : ral_reg_CAPIS


class ral_reg_CAP01T extends uvm_reg;
	uvm_reg_field CAPnmTn;
	uvm_reg_field CAPnmTm;

	function new(string name = "CAP01T");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmTn = uvm_reg_field::type_id::create("CAPnmTn",,get_full_name());
      this.CAPnmTn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.CAPnmTm = uvm_reg_field::type_id::create("CAPnmTm",,get_full_name());
      this.CAPnmTm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP01T)

endclass : ral_reg_CAP01T


class ral_reg_CAP23T extends uvm_reg;
	uvm_reg_field CAPnmTn;
	uvm_reg_field CAPnmTm;

	function new(string name = "CAP23T");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmTn = uvm_reg_field::type_id::create("CAPnmTn",,get_full_name());
      this.CAPnmTn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.CAPnmTm = uvm_reg_field::type_id::create("CAPnmTm",,get_full_name());
      this.CAPnmTm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP23T)

endclass : ral_reg_CAP23T


class ral_reg_CAP45T extends uvm_reg;
	uvm_reg_field CAPnmTn;
	uvm_reg_field CAPnmTm;

	function new(string name = "CAP45T");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmTn = uvm_reg_field::type_id::create("CAPnmTn",,get_full_name());
      this.CAPnmTn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.CAPnmTm = uvm_reg_field::type_id::create("CAPnmTm",,get_full_name());
      this.CAPnmTm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP45T)

endclass : ral_reg_CAP45T


class ral_reg_CAP01MATCH extends uvm_reg;
	rand uvm_reg_field CAPnmMATCHn;
	rand uvm_reg_field CAPnmMATCHm;

	function new(string name = "CAP01MATCH");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmMATCHn = uvm_reg_field::type_id::create("CAPnmMATCHn",,get_full_name());
      this.CAPnmMATCHn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.CAPnmMATCHm = uvm_reg_field::type_id::create("CAPnmMATCHm",,get_full_name());
      this.CAPnmMATCHm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP01MATCH)

endclass : ral_reg_CAP01MATCH


class ral_reg_CAP23MATCH extends uvm_reg;
	rand uvm_reg_field CAPnmMATCHn;
	rand uvm_reg_field CAPnmMATCHm;

	function new(string name = "CAP23MATCH");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmMATCHn = uvm_reg_field::type_id::create("CAPnmMATCHn",,get_full_name());
      this.CAPnmMATCHn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.CAPnmMATCHm = uvm_reg_field::type_id::create("CAPnmMATCHm",,get_full_name());
      this.CAPnmMATCHm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP23MATCH)

endclass : ral_reg_CAP23MATCH


class ral_reg_CAP45MATCH extends uvm_reg;
	rand uvm_reg_field CAPnmMATCHn;
	rand uvm_reg_field CAPnmMATCHm;

	function new(string name = "CAP45MATCH");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.CAPnmMATCHn = uvm_reg_field::type_id::create("CAPnmMATCHn",,get_full_name());
      this.CAPnmMATCHn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.CAPnmMATCHm = uvm_reg_field::type_id::create("CAPnmMATCHm",,get_full_name());
      this.CAPnmMATCHm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CAP45MATCH)

endclass : ral_reg_CAP45MATCH


class ral_reg_TIMINTEN extends uvm_reg;
	rand uvm_reg_field tim0ie;
	rand uvm_reg_field tim1ie;
	rand uvm_reg_field tim2ie;
	rand uvm_reg_field tim3ie;
	rand uvm_reg_field tim4ie;
	rand uvm_reg_field tim5ie;

	function new(string name = "TIMINTEN");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim0ie = uvm_reg_field::type_id::create("tim0ie",,get_full_name());
      this.tim0ie.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1ie = uvm_reg_field::type_id::create("tim1ie",,get_full_name());
      this.tim1ie.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2ie = uvm_reg_field::type_id::create("tim2ie",,get_full_name());
      this.tim2ie.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.tim3ie = uvm_reg_field::type_id::create("tim3ie",,get_full_name());
      this.tim3ie.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.tim4ie = uvm_reg_field::type_id::create("tim4ie",,get_full_name());
      this.tim4ie.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.tim5ie = uvm_reg_field::type_id::create("tim5ie",,get_full_name());
      this.tim5ie.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_TIMINTEN)

endclass : ral_reg_TIMINTEN


class ral_reg_TIMRIS extends uvm_reg;
	uvm_reg_field tim0ris;
	uvm_reg_field tim1ris;
	uvm_reg_field tim2ris;
	uvm_reg_field tim3ris;
	uvm_reg_field tim4ris;
	uvm_reg_field tim5ris;

	function new(string name = "TIMRIS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim0ris = uvm_reg_field::type_id::create("tim0ris",,get_full_name());
      this.tim0ris.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.tim1ris = uvm_reg_field::type_id::create("tim1ris",,get_full_name());
      this.tim1ris.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.tim2ris = uvm_reg_field::type_id::create("tim2ris",,get_full_name());
      this.tim2ris.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.tim3ris = uvm_reg_field::type_id::create("tim3ris",,get_full_name());
      this.tim3ris.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.tim4ris = uvm_reg_field::type_id::create("tim4ris",,get_full_name());
      this.tim4ris.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.tim5ris = uvm_reg_field::type_id::create("tim5ris",,get_full_name());
      this.tim5ris.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_TIMRIS)

endclass : ral_reg_TIMRIS


class ral_reg_TIMIC extends uvm_reg;
	rand uvm_reg_field tim0ic;
	rand uvm_reg_field tim1ic;
	rand uvm_reg_field tim2ic;
	rand uvm_reg_field tim3ic;
	rand uvm_reg_field tim4ic;
	rand uvm_reg_field tim5ic;

	function new(string name = "TIMIC");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim0ic = uvm_reg_field::type_id::create("tim0ic",,get_full_name());
      this.tim0ic.configure(this, 1, 0, "RW", 0, 1'b0, 1, 0, 0);
      this.tim1ic = uvm_reg_field::type_id::create("tim1ic",,get_full_name());
      this.tim1ic.configure(this, 1, 1, "RW", 0, 1'b0, 1, 0, 0);
      this.tim2ic = uvm_reg_field::type_id::create("tim2ic",,get_full_name());
      this.tim2ic.configure(this, 1, 2, "RW", 0, 1'b0, 1, 0, 0);
      this.tim3ic = uvm_reg_field::type_id::create("tim3ic",,get_full_name());
      this.tim3ic.configure(this, 1, 3, "RW", 0, 1'b0, 1, 0, 0);
      this.tim4ic = uvm_reg_field::type_id::create("tim4ic",,get_full_name());
      this.tim4ic.configure(this, 1, 4, "RW", 0, 1'b0, 1, 0, 0);
      this.tim5ic = uvm_reg_field::type_id::create("tim5ic",,get_full_name());
      this.tim5ic.configure(this, 1, 5, "RW", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_TIMIC)

endclass : ral_reg_TIMIC


class ral_reg_TIMIS extends uvm_reg;
	uvm_reg_field tim0is;
	uvm_reg_field tim1is;
	uvm_reg_field tim2is;
	uvm_reg_field tim3is;
	uvm_reg_field tim4is;
	uvm_reg_field tim5is;

	function new(string name = "TIMIS");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.tim0is = uvm_reg_field::type_id::create("tim0is",,get_full_name());
      this.tim0is.configure(this, 1, 0, "RO", 0, 1'b0, 1, 0, 0);
      this.tim1is = uvm_reg_field::type_id::create("tim1is",,get_full_name());
      this.tim1is.configure(this, 1, 1, "RO", 0, 1'b0, 1, 0, 0);
      this.tim2is = uvm_reg_field::type_id::create("tim2is",,get_full_name());
      this.tim2is.configure(this, 1, 2, "RO", 0, 1'b0, 1, 0, 0);
      this.tim3is = uvm_reg_field::type_id::create("tim3is",,get_full_name());
      this.tim3is.configure(this, 1, 3, "RO", 0, 1'b0, 1, 0, 0);
      this.tim4is = uvm_reg_field::type_id::create("tim4is",,get_full_name());
      this.tim4is.configure(this, 1, 4, "RO", 0, 1'b0, 1, 0, 0);
      this.tim5is = uvm_reg_field::type_id::create("tim5is",,get_full_name());
      this.tim5is.configure(this, 1, 5, "RO", 0, 1'b0, 1, 0, 0);
   endfunction: build

	`uvm_object_utils(ral_reg_TIMIS)

endclass : ral_reg_TIMIS


class ral_reg_TIM01LOAD extends uvm_reg;
	rand uvm_reg_field timloadn;
	rand uvm_reg_field timloadm;

	function new(string name = "TIM01LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timloadn = uvm_reg_field::type_id::create("timloadn",,get_full_name());
      this.timloadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.timloadm = uvm_reg_field::type_id::create("timloadm",,get_full_name());
      this.timloadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM01LOAD)

endclass : ral_reg_TIM01LOAD


class ral_reg_TIM23LOAD extends uvm_reg;
	rand uvm_reg_field timloadn;
	rand uvm_reg_field timloadm;

	function new(string name = "TIM23LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timloadn = uvm_reg_field::type_id::create("timloadn",,get_full_name());
      this.timloadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.timloadm = uvm_reg_field::type_id::create("timloadm",,get_full_name());
      this.timloadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM23LOAD)

endclass : ral_reg_TIM23LOAD


class ral_reg_TIM45LOAD extends uvm_reg;
	rand uvm_reg_field timloadn;
	rand uvm_reg_field timloadm;

	function new(string name = "TIM45LOAD");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timloadn = uvm_reg_field::type_id::create("timloadn",,get_full_name());
      this.timloadn.configure(this, 16, 0, "RW", 0, 16'h0, 1, 0, 1);
      this.timloadm = uvm_reg_field::type_id::create("timloadm",,get_full_name());
      this.timloadm.configure(this, 16, 16, "RW", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM45LOAD)

endclass : ral_reg_TIM45LOAD


class ral_reg_TIM01COUNT extends uvm_reg;
	uvm_reg_field timcntn;
	uvm_reg_field timcntm;

	function new(string name = "TIM01COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timcntn = uvm_reg_field::type_id::create("timcntn",,get_full_name());
      this.timcntn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.timcntm = uvm_reg_field::type_id::create("timcntm",,get_full_name());
      this.timcntm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM01COUNT)

endclass : ral_reg_TIM01COUNT


class ral_reg_TIM23COUNT extends uvm_reg;
	uvm_reg_field timcntn;
	uvm_reg_field timcntm;

	function new(string name = "TIM23COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timcntn = uvm_reg_field::type_id::create("timcntn",,get_full_name());
      this.timcntn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.timcntm = uvm_reg_field::type_id::create("timcntm",,get_full_name());
      this.timcntm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM23COUNT)

endclass : ral_reg_TIM23COUNT


class ral_reg_TIM45COUNT extends uvm_reg;
	uvm_reg_field timcntn;
	uvm_reg_field timcntm;

	function new(string name = "TIM45COUNT");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.timcntn = uvm_reg_field::type_id::create("timcntn",,get_full_name());
      this.timcntn.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.timcntm = uvm_reg_field::type_id::create("timcntm",,get_full_name());
      this.timcntm.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_TIM45COUNT)

endclass : ral_reg_TIM45COUNT


class ral_reg_CNT01VAL extends uvm_reg;
	uvm_reg_field Cntnval;
	uvm_reg_field Cntmval;

	function new(string name = "CNT01VAL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Cntnval = uvm_reg_field::type_id::create("Cntnval",,get_full_name());
      this.Cntnval.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.Cntmval = uvm_reg_field::type_id::create("Cntmval",,get_full_name());
      this.Cntmval.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CNT01VAL)

endclass : ral_reg_CNT01VAL


class ral_reg_CNT23VAL extends uvm_reg;
	uvm_reg_field Cntnval;
	uvm_reg_field Cntmval;

	function new(string name = "CNT23VAL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Cntnval = uvm_reg_field::type_id::create("Cntnval",,get_full_name());
      this.Cntnval.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.Cntmval = uvm_reg_field::type_id::create("Cntmval",,get_full_name());
      this.Cntmval.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CNT23VAL)

endclass : ral_reg_CNT23VAL


class ral_reg_CNT45VAL extends uvm_reg;
	uvm_reg_field Cntnval;
	uvm_reg_field Cntmval;

	function new(string name = "CNT45VAL");
		super.new(name, 32,build_coverage(UVM_NO_COVERAGE));
	endfunction: new
   virtual function void build();
      this.Cntnval = uvm_reg_field::type_id::create("Cntnval",,get_full_name());
      this.Cntnval.configure(this, 16, 0, "RO", 0, 16'h0, 1, 0, 1);
      this.Cntmval = uvm_reg_field::type_id::create("Cntmval",,get_full_name());
      this.Cntmval.configure(this, 16, 16, "RO", 0, 16'h0, 1, 0, 1);
   endfunction: build

	`uvm_object_utils(ral_reg_CNT45VAL)

endclass : ral_reg_CNT45VAL


class ral_block_pwm extends uvm_reg_block;
	rand ral_reg_PWMCFG PWMCFG;
	rand ral_reg_PWMINVERTTRIG PWMINVERTTRIG;
	rand ral_reg_PWM01TRIG PWM01TRIG;
	rand ral_reg_PWM23TRIG PWM23TRIG;
	rand ral_reg_PWM45TRIG PWM45TRIG;
	rand ral_reg_PWMINTEN1 PWMINTEN1;
	rand ral_reg_PWMINTEN2 PWMINTEN2;
	rand ral_reg_PWMRIS1 PWMRIS1;
	rand ral_reg_PWMRIS2 PWMRIS2;
	rand ral_reg_PWMIC1 PWMIC1;
	rand ral_reg_PWMIC2 PWMIC2;
	rand ral_reg_PWMIS1 PWMIS1;
	rand ral_reg_PWMIS2 PWMIS2;
	rand ral_reg_PWMCTL PWMCTL;
	rand ral_reg_PWM01LOAD PWM01LOAD;
	rand ral_reg_PWM23LOAD PWM23LOAD;
	rand ral_reg_PWM45LOAD PWM45LOAD;
	rand ral_reg_PWM01COUNT PWM01COUNT;
	rand ral_reg_PWM23COUNT PWM23COUNT;
	rand ral_reg_PWM45COUNT PWM45COUNT;
	rand ral_reg_PWM0CMP PWM0CMP;
	rand ral_reg_PWM1CMP PWM1CMP;
	rand ral_reg_PWM2CMP PWM2CMP;
	rand ral_reg_PWM3CMP PWM3CMP;
	rand ral_reg_PWM4CMP PWM4CMP;
	rand ral_reg_PWM5CMP PWM5CMP;
	rand ral_reg_PWM01DB PWM01DB;
	rand ral_reg_PWM23DB PWM23DB;
	rand ral_reg_PWM45DB PWM45DB;
	rand ral_reg_CAPCTL CAPCTL;
	rand ral_reg_CAPINTEN CAPINTEN;
	rand ral_reg_CAPRIS CAPRIS;
	rand ral_reg_CAPIC CAPIC;
	rand ral_reg_CAPIS CAPIS;
	rand ral_reg_CAP01T CAP01T;
	rand ral_reg_CAP23T CAP23T;
	rand ral_reg_CAP45T CAP45T;
	rand ral_reg_CAP01MATCH CAP01MATCH;
	rand ral_reg_CAP23MATCH CAP23MATCH;
	rand ral_reg_CAP45MATCH CAP45MATCH;
	rand ral_reg_TIMINTEN TIMINTEN;
	rand ral_reg_TIMRIS TIMRIS;
	rand ral_reg_TIMIC TIMIC;
	rand ral_reg_TIMIS TIMIS;
	rand ral_reg_TIM01LOAD TIM01LOAD;
	rand ral_reg_TIM23LOAD TIM23LOAD;
	rand ral_reg_TIM45LOAD TIM45LOAD;
	rand ral_reg_TIM01COUNT TIM01COUNT;
	rand ral_reg_TIM23COUNT TIM23COUNT;
	rand ral_reg_TIM45COUNT TIM45COUNT;
	rand ral_reg_CNT01VAL CNT01VAL;
	rand ral_reg_CNT23VAL CNT23VAL;
	rand ral_reg_CNT45VAL CNT45VAL;
	rand uvm_reg_field PWMCFG_pwm0en;
	rand uvm_reg_field pwm0en;
	rand uvm_reg_field PWMCFG_pwm1en;
	rand uvm_reg_field pwm1en;
	rand uvm_reg_field PWMCFG_pwm2en;
	rand uvm_reg_field pwm2en;
	rand uvm_reg_field PWMCFG_pwm3en;
	rand uvm_reg_field pwm3en;
	rand uvm_reg_field PWMCFG_pwm4en;
	rand uvm_reg_field pwm4en;
	rand uvm_reg_field PWMCFG_pwm5en;
	rand uvm_reg_field pwm5en;
	rand uvm_reg_field PWMCFG_pwm6en;
	rand uvm_reg_field pwm6en;
	rand uvm_reg_field PWMCFG_pwm7en;
	rand uvm_reg_field pwm7en;
	rand uvm_reg_field PWMCFG_pwm8en;
	rand uvm_reg_field pwm8en;
	rand uvm_reg_field PWMCFG_pwm9en;
	rand uvm_reg_field pwm9en;
	rand uvm_reg_field PWMCFG_pwm10en;
	rand uvm_reg_field pwm10en;
	rand uvm_reg_field PWMCFG_pwm11en;
	rand uvm_reg_field pwm11en;
	rand uvm_reg_field PWMCFG_cap0en;
	rand uvm_reg_field cap0en;
	rand uvm_reg_field PWMCFG_cap1en;
	rand uvm_reg_field cap1en;
	rand uvm_reg_field PWMCFG_cap2en;
	rand uvm_reg_field cap2en;
	rand uvm_reg_field PWMCFG_cap3en;
	rand uvm_reg_field cap3en;
	rand uvm_reg_field PWMCFG_cap4en;
	rand uvm_reg_field cap4en;
	rand uvm_reg_field PWMCFG_cap5en;
	rand uvm_reg_field cap5en;
	rand uvm_reg_field PWMCFG_tim0en;
	rand uvm_reg_field tim0en;
	rand uvm_reg_field PWMCFG_tim1en;
	rand uvm_reg_field tim1en;
	rand uvm_reg_field PWMCFG_tim2en;
	rand uvm_reg_field tim2en;
	rand uvm_reg_field PWMCFG_tim3en;
	rand uvm_reg_field tim3en;
	rand uvm_reg_field PWMCFG_tim4en;
	rand uvm_reg_field tim4en;
	rand uvm_reg_field PWMCFG_tim5en;
	rand uvm_reg_field tim5en;
	rand uvm_reg_field PWMCFG_cntdiv;
	rand uvm_reg_field cntdiv;
	rand uvm_reg_field PWMCFG_cntdiven;
	rand uvm_reg_field cntdiven;
	rand uvm_reg_field PWMINVERTTRIG_pwm0inv;
	rand uvm_reg_field pwm0inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm1inv;
	rand uvm_reg_field pwm1inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm2inv;
	rand uvm_reg_field pwm2inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm3inv;
	rand uvm_reg_field pwm3inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm4inv;
	rand uvm_reg_field pwm4inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm5inv;
	rand uvm_reg_field pwm5inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm6inv;
	rand uvm_reg_field pwm6inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm7inv;
	rand uvm_reg_field pwm7inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm8inv;
	rand uvm_reg_field pwm8inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm9inv;
	rand uvm_reg_field pwm9inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm10inv;
	rand uvm_reg_field pwm10inv;
	rand uvm_reg_field PWMINVERTTRIG_pwm11inv;
	rand uvm_reg_field pwm11inv;
	rand uvm_reg_field PWM01TRIG_pwm0trig;
	rand uvm_reg_field pwm0trig;
	rand uvm_reg_field PWM01TRIG_pwm1trig;
	rand uvm_reg_field pwm1trig;
	rand uvm_reg_field PWM23TRIG_pwm2trig;
	rand uvm_reg_field pwm2trig;
	rand uvm_reg_field PWM23TRIG_pwm3trig;
	rand uvm_reg_field pwm3trig;
	rand uvm_reg_field PWM45TRIG_pwm4trig;
	rand uvm_reg_field pwm4trig;
	rand uvm_reg_field PWM45TRIG_pwm5trig;
	rand uvm_reg_field pwm5trig;
	rand uvm_reg_field PWMINTEN1_Int0encntzero;
	rand uvm_reg_field Int0encntzero;
	rand uvm_reg_field PWMINTEN1_Int0encntload;
	rand uvm_reg_field Int0encntload;
	rand uvm_reg_field PWMINTEN1_Int0encmpau;
	rand uvm_reg_field Int0encmpau;
	rand uvm_reg_field PWMINTEN1_Int0encmpbu;
	rand uvm_reg_field Int0encmpbu;
	rand uvm_reg_field PWMINTEN1_Int0encmpad;
	rand uvm_reg_field Int0encmpad;
	rand uvm_reg_field PWMINTEN1_Int0encmpbd;
	rand uvm_reg_field Int0encmpbd;
	rand uvm_reg_field PWMINTEN1_Int1encntzero;
	rand uvm_reg_field Int1encntzero;
	rand uvm_reg_field PWMINTEN1_Int1encntload;
	rand uvm_reg_field Int1encntload;
	rand uvm_reg_field PWMINTEN1_Int1encmpau;
	rand uvm_reg_field Int1encmpau;
	rand uvm_reg_field PWMINTEN1_Int1encmpbu;
	rand uvm_reg_field Int1encmpbu;
	rand uvm_reg_field PWMINTEN1_Int1encmpad;
	rand uvm_reg_field Int1encmpad;
	rand uvm_reg_field PWMINTEN1_Int1encmpbd;
	rand uvm_reg_field Int1encmpbd;
	rand uvm_reg_field PWMINTEN1_Int2encntzero;
	rand uvm_reg_field Int2encntzero;
	rand uvm_reg_field PWMINTEN1_Int2encntload;
	rand uvm_reg_field Int2encntload;
	rand uvm_reg_field PWMINTEN1_Int2encmpau;
	rand uvm_reg_field Int2encmpau;
	rand uvm_reg_field PWMINTEN1_Int2encmpbu;
	rand uvm_reg_field Int2encmpbu;
	rand uvm_reg_field PWMINTEN1_Int2encmpad;
	rand uvm_reg_field Int2encmpad;
	rand uvm_reg_field PWMINTEN1_Int2encmpbd;
	rand uvm_reg_field Int2encmpbd;
	rand uvm_reg_field PWMINTEN2_Int3encntzero;
	rand uvm_reg_field Int3encntzero;
	rand uvm_reg_field PWMINTEN2_Int3encntload;
	rand uvm_reg_field Int3encntload;
	rand uvm_reg_field PWMINTEN2_Int3encmpau;
	rand uvm_reg_field Int3encmpau;
	rand uvm_reg_field PWMINTEN2_Int3encmpbu;
	rand uvm_reg_field Int3encmpbu;
	rand uvm_reg_field PWMINTEN2_Int3encmpad;
	rand uvm_reg_field Int3encmpad;
	rand uvm_reg_field PWMINTEN2_Int3encmpbd;
	rand uvm_reg_field Int3encmpbd;
	rand uvm_reg_field PWMINTEN2_Int4encntzero;
	rand uvm_reg_field Int4encntzero;
	rand uvm_reg_field PWMINTEN2_Int4encntload;
	rand uvm_reg_field Int4encntload;
	rand uvm_reg_field PWMINTEN2_Int4encmpau;
	rand uvm_reg_field Int4encmpau;
	rand uvm_reg_field PWMINTEN2_Int4encmpbu;
	rand uvm_reg_field Int4encmpbu;
	rand uvm_reg_field PWMINTEN2_Int4encmpad;
	rand uvm_reg_field Int4encmpad;
	rand uvm_reg_field PWMINTEN2_Int4encmpbd;
	rand uvm_reg_field Int4encmpbd;
	rand uvm_reg_field PWMINTEN2_Int5encntzero;
	rand uvm_reg_field Int5encntzero;
	rand uvm_reg_field PWMINTEN2_Int5encntload;
	rand uvm_reg_field Int5encntload;
	rand uvm_reg_field PWMINTEN2_Int5encmpau;
	rand uvm_reg_field Int5encmpau;
	rand uvm_reg_field PWMINTEN2_Int5encmpbu;
	rand uvm_reg_field Int5encmpbu;
	rand uvm_reg_field PWMINTEN2_Int5encmpad;
	rand uvm_reg_field Int5encmpad;
	rand uvm_reg_field PWMINTEN2_Int5encmpbd;
	rand uvm_reg_field Int5encmpbd;
	uvm_reg_field PWMRIS1_Intris0cntzero;
	uvm_reg_field Intris0cntzero;
	uvm_reg_field PWMRIS1_Intris0cntload;
	uvm_reg_field Intris0cntload;
	uvm_reg_field PWMRIS1_Intris0cmpau;
	uvm_reg_field Intris0cmpau;
	uvm_reg_field PWMRIS1_Intris0cmpbu;
	uvm_reg_field Intris0cmpbu;
	uvm_reg_field PWMRIS1_Intris0cmpad;
	uvm_reg_field Intris0cmpad;
	uvm_reg_field PWMRIS1_Intris0cmpbd;
	uvm_reg_field Intris0cmpbd;
	uvm_reg_field PWMRIS1_Intris1cntzero;
	uvm_reg_field Intris1cntzero;
	uvm_reg_field PWMRIS1_Intris1cntload;
	uvm_reg_field Intris1cntload;
	uvm_reg_field PWMRIS1_Intris1cmpau;
	uvm_reg_field Intris1cmpau;
	uvm_reg_field PWMRIS1_Intris1cmpbu;
	uvm_reg_field Intris1cmpbu;
	uvm_reg_field PWMRIS1_Intris1cmpad;
	uvm_reg_field Intris1cmpad;
	uvm_reg_field PWMRIS1_Intris1cmpbd;
	uvm_reg_field Intris1cmpbd;
	uvm_reg_field PWMRIS1_Intris2cntzero;
	uvm_reg_field Intris2cntzero;
	uvm_reg_field PWMRIS1_Intris2cntload;
	uvm_reg_field Intris2cntload;
	uvm_reg_field PWMRIS1_Intris2cmpau;
	uvm_reg_field Intris2cmpau;
	uvm_reg_field PWMRIS1_Intris2cmpbu;
	uvm_reg_field Intris2cmpbu;
	uvm_reg_field PWMRIS1_Intris2cmpad;
	uvm_reg_field Intris2cmpad;
	uvm_reg_field PWMRIS1_Intris2cmpbd;
	uvm_reg_field Intris2cmpbd;
	uvm_reg_field PWMRIS2_Intris3cntzero;
	uvm_reg_field Intris3cntzero;
	uvm_reg_field PWMRIS2_Intris3cntload;
	uvm_reg_field Intris3cntload;
	uvm_reg_field PWMRIS2_Intris3cmpau;
	uvm_reg_field Intris3cmpau;
	uvm_reg_field PWMRIS2_Intris3cmpbu;
	uvm_reg_field Intris3cmpbu;
	uvm_reg_field PWMRIS2_Intris3cmpad;
	uvm_reg_field Intris3cmpad;
	uvm_reg_field PWMRIS2_Intris3cmpbd;
	uvm_reg_field Intris3cmpbd;
	uvm_reg_field PWMRIS2_Intris4cntzero;
	uvm_reg_field Intris4cntzero;
	uvm_reg_field PWMRIS2_Intris4cntload;
	uvm_reg_field Intris4cntload;
	uvm_reg_field PWMRIS2_Intris4cmpau;
	uvm_reg_field Intris4cmpau;
	uvm_reg_field PWMRIS2_Intris4cmpbu;
	uvm_reg_field Intris4cmpbu;
	uvm_reg_field PWMRIS2_Intris4cmpad;
	uvm_reg_field Intris4cmpad;
	uvm_reg_field PWMRIS2_Intris4cmpbd;
	uvm_reg_field Intris4cmpbd;
	uvm_reg_field PWMRIS2_Intris5cntzero;
	uvm_reg_field Intris5cntzero;
	uvm_reg_field PWMRIS2_Intris5cntload;
	uvm_reg_field Intris5cntload;
	uvm_reg_field PWMRIS2_Intris5cmpau;
	uvm_reg_field Intris5cmpau;
	uvm_reg_field PWMRIS2_Intris5cmpbu;
	uvm_reg_field Intris5cmpbu;
	uvm_reg_field PWMRIS2_Intris5cmpad;
	uvm_reg_field Intris5cmpad;
	uvm_reg_field PWMRIS2_Intris5cmpbd;
	uvm_reg_field Intris5cmpbd;
	rand uvm_reg_field PWMIC1_Intic0cntzero;
	rand uvm_reg_field Intic0cntzero;
	rand uvm_reg_field PWMIC1_Intic0cntload;
	rand uvm_reg_field Intic0cntload;
	rand uvm_reg_field PWMIC1_Intic0cmpau;
	rand uvm_reg_field Intic0cmpau;
	rand uvm_reg_field PWMIC1_Intic0cmpbu;
	rand uvm_reg_field Intic0cmpbu;
	rand uvm_reg_field PWMIC1_Intic0cmpad;
	rand uvm_reg_field Intic0cmpad;
	rand uvm_reg_field PWMIC1_Intic0cmpbd;
	rand uvm_reg_field Intic0cmpbd;
	rand uvm_reg_field PWMIC1_Intic1cntzero;
	rand uvm_reg_field Intic1cntzero;
	rand uvm_reg_field PWMIC1_Intic1cntload;
	rand uvm_reg_field Intic1cntload;
	rand uvm_reg_field PWMIC1_Intic1cmpau;
	rand uvm_reg_field Intic1cmpau;
	rand uvm_reg_field PWMIC1_Intic1cmpbu;
	rand uvm_reg_field Intic1cmpbu;
	rand uvm_reg_field PWMIC1_Intic1cmpad;
	rand uvm_reg_field Intic1cmpad;
	rand uvm_reg_field PWMIC1_Intic1cmpbd;
	rand uvm_reg_field Intic1cmpbd;
	rand uvm_reg_field PWMIC1_Intic2cntzero;
	rand uvm_reg_field Intic2cntzero;
	rand uvm_reg_field PWMIC1_Intic2cntload;
	rand uvm_reg_field Intic2cntload;
	rand uvm_reg_field PWMIC1_Intic2cmpau;
	rand uvm_reg_field Intic2cmpau;
	rand uvm_reg_field PWMIC1_Intic2cmpbu;
	rand uvm_reg_field Intic2cmpbu;
	rand uvm_reg_field PWMIC1_Intic2cmpad;
	rand uvm_reg_field Intic2cmpad;
	rand uvm_reg_field PWMIC1_Intic2cmpbd;
	rand uvm_reg_field Intic2cmpbd;
	rand uvm_reg_field PWMIC2_Intic3cntzero;
	rand uvm_reg_field Intic3cntzero;
	rand uvm_reg_field PWMIC2_Intic3cntload;
	rand uvm_reg_field Intic3cntload;
	rand uvm_reg_field PWMIC2_Intic3cmpau;
	rand uvm_reg_field Intic3cmpau;
	rand uvm_reg_field PWMIC2_Intic3cmpbu;
	rand uvm_reg_field Intic3cmpbu;
	rand uvm_reg_field PWMIC2_Intic3cmpad;
	rand uvm_reg_field Intic3cmpad;
	rand uvm_reg_field PWMIC2_Intic3cmpbd;
	rand uvm_reg_field Intic3cmpbd;
	rand uvm_reg_field PWMIC2_Intic4cntzero;
	rand uvm_reg_field Intic4cntzero;
	rand uvm_reg_field PWMIC2_Intic4cntload;
	rand uvm_reg_field Intic4cntload;
	rand uvm_reg_field PWMIC2_Intic4cmpau;
	rand uvm_reg_field Intic4cmpau;
	rand uvm_reg_field PWMIC2_Intic4cmpbu;
	rand uvm_reg_field Intic4cmpbu;
	rand uvm_reg_field PWMIC2_Intic4cmpad;
	rand uvm_reg_field Intic4cmpad;
	rand uvm_reg_field PWMIC2_Intic4cmpbd;
	rand uvm_reg_field Intic4cmpbd;
	rand uvm_reg_field PWMIC2_Intic5cntzero;
	rand uvm_reg_field Intic5cntzero;
	rand uvm_reg_field PWMIC2_Intic5cntload;
	rand uvm_reg_field Intic5cntload;
	rand uvm_reg_field PWMIC2_Intic5cmpau;
	rand uvm_reg_field Intic5cmpau;
	rand uvm_reg_field PWMIC2_Intic5cmpbu;
	rand uvm_reg_field Intic5cmpbu;
	rand uvm_reg_field PWMIC2_Intic5cmpad;
	rand uvm_reg_field Intic5cmpad;
	rand uvm_reg_field PWMIC2_Intic5cmpbd;
	rand uvm_reg_field Intic5cmpbd;
	uvm_reg_field PWMIS1_Intis0cntzero;
	uvm_reg_field Intis0cntzero;
	uvm_reg_field PWMIS1_Intis0cntload;
	uvm_reg_field Intis0cntload;
	uvm_reg_field PWMIS1_Intis0cmpau;
	uvm_reg_field Intis0cmpau;
	uvm_reg_field PWMIS1_Intis0cmpbu;
	uvm_reg_field Intis0cmpbu;
	uvm_reg_field PWMIS1_Intis0cmpad;
	uvm_reg_field Intis0cmpad;
	uvm_reg_field PWMIS1_Intis0cmpbd;
	uvm_reg_field Intis0cmpbd;
	uvm_reg_field PWMIS1_Intis1cntzero;
	uvm_reg_field Intis1cntzero;
	uvm_reg_field PWMIS1_Intis1cntload;
	uvm_reg_field Intis1cntload;
	uvm_reg_field PWMIS1_Intis1cmpau;
	uvm_reg_field Intis1cmpau;
	uvm_reg_field PWMIS1_Intis1cmpbu;
	uvm_reg_field Intis1cmpbu;
	uvm_reg_field PWMIS1_Intis1cmpad;
	uvm_reg_field Intis1cmpad;
	uvm_reg_field PWMIS1_Intis1cmpbd;
	uvm_reg_field Intis1cmpbd;
	uvm_reg_field PWMIS1_Intis2cntzero;
	uvm_reg_field Intis2cntzero;
	uvm_reg_field PWMIS1_Intis2cntload;
	uvm_reg_field Intis2cntload;
	uvm_reg_field PWMIS1_Intis2cmpau;
	uvm_reg_field Intis2cmpau;
	uvm_reg_field PWMIS1_Intis2cmpbu;
	uvm_reg_field Intis2cmpbu;
	uvm_reg_field PWMIS1_Intis2cmpad;
	uvm_reg_field Intis2cmpad;
	uvm_reg_field PWMIS1_Intis2cmpbd;
	uvm_reg_field Intis2cmpbd;
	uvm_reg_field PWMIS2_Intis3cntzero;
	uvm_reg_field Intis3cntzero;
	uvm_reg_field PWMIS2_Intis3cntload;
	uvm_reg_field Intis3cntload;
	uvm_reg_field PWMIS2_Intis3cmpau;
	uvm_reg_field Intis3cmpau;
	uvm_reg_field PWMIS2_Intis3cmpbu;
	uvm_reg_field Intis3cmpbu;
	uvm_reg_field PWMIS2_Intis3cmpad;
	uvm_reg_field Intis3cmpad;
	uvm_reg_field PWMIS2_Intis3cmpbd;
	uvm_reg_field Intis3cmpbd;
	uvm_reg_field PWMIS2_Intis4cntzero;
	uvm_reg_field Intis4cntzero;
	uvm_reg_field PWMIS2_Intis4cntload;
	uvm_reg_field Intis4cntload;
	uvm_reg_field PWMIS2_Intis4cmpau;
	uvm_reg_field Intis4cmpau;
	uvm_reg_field PWMIS2_Intis4cmpbu;
	uvm_reg_field Intis4cmpbu;
	uvm_reg_field PWMIS2_Intis4cmpad;
	uvm_reg_field Intis4cmpad;
	uvm_reg_field PWMIS2_Intis4cmpbd;
	uvm_reg_field Intis4cmpbd;
	uvm_reg_field PWMIS2_Intis5cntzero;
	uvm_reg_field Intis5cntzero;
	uvm_reg_field PWMIS2_Intis5cntload;
	uvm_reg_field Intis5cntload;
	uvm_reg_field PWMIS2_Intis5cmpau;
	uvm_reg_field Intis5cmpau;
	uvm_reg_field PWMIS2_Intis5cmpbu;
	uvm_reg_field Intis5cmpbu;
	uvm_reg_field PWMIS2_Intis5cmpad;
	uvm_reg_field Intis5cmpad;
	uvm_reg_field PWMIS2_Intis5cmpbd;
	uvm_reg_field Intis5cmpbd;
	rand uvm_reg_field PWMCTL_pwm0mode;
	rand uvm_reg_field pwm0mode;
	rand uvm_reg_field PWMCTL_pwm1mode;
	rand uvm_reg_field pwm1mode;
	rand uvm_reg_field PWMCTL_pwm2mode;
	rand uvm_reg_field pwm2mode;
	rand uvm_reg_field PWMCTL_pwm3mode;
	rand uvm_reg_field pwm3mode;
	rand uvm_reg_field PWMCTL_pwm4mode;
	rand uvm_reg_field pwm4mode;
	rand uvm_reg_field PWMCTL_pwm5mode;
	rand uvm_reg_field pwm5mode;
	rand uvm_reg_field PWMCTL_sync0mode;
	rand uvm_reg_field sync0mode;
	rand uvm_reg_field PWMCTL_sync1mode;
	rand uvm_reg_field sync1mode;
	rand uvm_reg_field PWMCTL_sync2mode;
	rand uvm_reg_field sync2mode;
	rand uvm_reg_field PWMCTL_Sync3mode;
	rand uvm_reg_field Sync3mode;
	rand uvm_reg_field PWMCTL_Sync4mode;
	rand uvm_reg_field Sync4mode;
	rand uvm_reg_field PWMCTL_Sync5mode;
	rand uvm_reg_field Sync5mode;
	rand uvm_reg_field PWM01LOAD_loadn;
	rand uvm_reg_field PWM01LOAD_loadm;
	rand uvm_reg_field PWM23LOAD_loadn;
	rand uvm_reg_field PWM23LOAD_loadm;
	rand uvm_reg_field PWM45LOAD_loadn;
	rand uvm_reg_field PWM45LOAD_loadm;
	uvm_reg_field PWM01COUNT_countn;
	uvm_reg_field PWM01COUNT_countm;
	uvm_reg_field PWM23COUNT_countn;
	uvm_reg_field PWM23COUNT_countm;
	uvm_reg_field PWM45COUNT_countn;
	uvm_reg_field PWM45COUNT_countm;
	rand uvm_reg_field PWM0CMP_compna;
	rand uvm_reg_field PWM0CMP_compnb;
	rand uvm_reg_field PWM1CMP_compna;
	rand uvm_reg_field PWM1CMP_compnb;
	rand uvm_reg_field PWM2CMP_compna;
	rand uvm_reg_field PWM2CMP_compnb;
	rand uvm_reg_field PWM3CMP_compna;
	rand uvm_reg_field PWM3CMP_compnb;
	rand uvm_reg_field PWM4CMP_compna;
	rand uvm_reg_field PWM4CMP_compnb;
	rand uvm_reg_field PWM5CMP_compna;
	rand uvm_reg_field PWM5CMP_compnb;
	rand uvm_reg_field PWM01DB_delayn;
	rand uvm_reg_field PWM01DB_delaym;
	rand uvm_reg_field PWM01DB_dbnen;
	rand uvm_reg_field PWM01DB_dbmen;
	rand uvm_reg_field PWM23DB_delayn;
	rand uvm_reg_field PWM23DB_delaym;
	rand uvm_reg_field PWM23DB_dbnen;
	rand uvm_reg_field PWM23DB_dbmen;
	rand uvm_reg_field PWM45DB_delayn;
	rand uvm_reg_field PWM45DB_delaym;
	rand uvm_reg_field PWM45DB_dbnen;
	rand uvm_reg_field PWM45DB_dbmen;
	rand uvm_reg_field CAPCTL_cap0mode;
	rand uvm_reg_field cap0mode;
	rand uvm_reg_field CAPCTL_cap1mode;
	rand uvm_reg_field cap1mode;
	rand uvm_reg_field CAPCTL_cap2mode;
	rand uvm_reg_field cap2mode;
	rand uvm_reg_field CAPCTL_cap3mode;
	rand uvm_reg_field cap3mode;
	rand uvm_reg_field CAPCTL_cap4mode;
	rand uvm_reg_field cap4mode;
	rand uvm_reg_field CAPCTL_cap5mode;
	rand uvm_reg_field cap5mode;
	rand uvm_reg_field CAPCTL_cap0event;
	rand uvm_reg_field cap0event;
	rand uvm_reg_field CAPCTL_cap1event;
	rand uvm_reg_field cap1event;
	rand uvm_reg_field CAPCTL_cap2event;
	rand uvm_reg_field cap2event;
	rand uvm_reg_field CAPCTL_cap3event;
	rand uvm_reg_field cap3event;
	rand uvm_reg_field CAPCTL_cap4event;
	rand uvm_reg_field cap4event;
	rand uvm_reg_field CAPCTL_cap5event;
	rand uvm_reg_field cap5event;
	rand uvm_reg_field CAPINTEN_cap0cntie;
	rand uvm_reg_field cap0cntie;
	rand uvm_reg_field CAPINTEN_cap1cntie;
	rand uvm_reg_field cap1cntie;
	rand uvm_reg_field CAPINTEN_cap2cntie;
	rand uvm_reg_field cap2cntie;
	rand uvm_reg_field CAPINTEN_cap3cntie;
	rand uvm_reg_field cap3cntie;
	rand uvm_reg_field CAPINTEN_cap4cntie;
	rand uvm_reg_field cap4cntie;
	rand uvm_reg_field CAPINTEN_cap5cntie;
	rand uvm_reg_field cap5cntie;
	rand uvm_reg_field CAPINTEN_cap0timie;
	rand uvm_reg_field cap0timie;
	rand uvm_reg_field CAPINTEN_cap1timie;
	rand uvm_reg_field cap1timie;
	rand uvm_reg_field CAPINTEN_cap2timie;
	rand uvm_reg_field cap2timie;
	rand uvm_reg_field CAPINTEN_cap3timie;
	rand uvm_reg_field cap3timie;
	rand uvm_reg_field CAPINTEN_cap4timie;
	rand uvm_reg_field cap4timie;
	rand uvm_reg_field CAPINTEN_cap5timie;
	rand uvm_reg_field cap5timie;
	uvm_reg_field CAPRIS_cap0cntris;
	uvm_reg_field cap0cntris;
	uvm_reg_field CAPRIS_cap1cntris;
	uvm_reg_field cap1cntris;
	uvm_reg_field CAPRIS_cap2cntris;
	uvm_reg_field cap2cntris;
	uvm_reg_field CAPRIS_cap3cntris;
	uvm_reg_field cap3cntris;
	uvm_reg_field CAPRIS_cap4cntris;
	uvm_reg_field cap4cntris;
	uvm_reg_field CAPRIS_cap5cntris;
	uvm_reg_field cap5cntris;
	uvm_reg_field CAPRIS_cap0timris;
	uvm_reg_field cap0timris;
	uvm_reg_field CAPRIS_cap1timris;
	uvm_reg_field cap1timris;
	uvm_reg_field CAPRIS_cap2timris;
	uvm_reg_field cap2timris;
	uvm_reg_field CAPRIS_cap3timris;
	uvm_reg_field cap3timris;
	uvm_reg_field CAPRIS_cap4timris;
	uvm_reg_field cap4timris;
	uvm_reg_field CAPRIS_cap5timris;
	uvm_reg_field cap5timris;
	rand uvm_reg_field CAPIC_cap0cntic;
	rand uvm_reg_field cap0cntic;
	rand uvm_reg_field CAPIC_cap1cntic;
	rand uvm_reg_field cap1cntic;
	rand uvm_reg_field CAPIC_cap2cntic;
	rand uvm_reg_field cap2cntic;
	rand uvm_reg_field CAPIC_cap3cntic;
	rand uvm_reg_field cap3cntic;
	rand uvm_reg_field CAPIC_cap4cntic;
	rand uvm_reg_field cap4cntic;
	rand uvm_reg_field CAPIC_cap5cntic;
	rand uvm_reg_field cap5cntic;
	rand uvm_reg_field CAPIC_cap0timic;
	rand uvm_reg_field cap0timic;
	rand uvm_reg_field CAPIC_cap1timic;
	rand uvm_reg_field cap1timic;
	rand uvm_reg_field CAPIC_cap2timic;
	rand uvm_reg_field cap2timic;
	rand uvm_reg_field CAPIC_cap3timic;
	rand uvm_reg_field cap3timic;
	rand uvm_reg_field CAPIC_cap4timic;
	rand uvm_reg_field cap4timic;
	rand uvm_reg_field CAPIC_cap5timic;
	rand uvm_reg_field cap5timic;
	uvm_reg_field CAPIS_cap0cntis;
	uvm_reg_field cap0cntis;
	uvm_reg_field CAPIS_cap1cntis;
	uvm_reg_field cap1cntis;
	uvm_reg_field CAPIS_cap2cntis;
	uvm_reg_field cap2cntis;
	uvm_reg_field CAPIS_cap3cntis;
	uvm_reg_field cap3cntis;
	uvm_reg_field CAPIS_cap4cntis;
	uvm_reg_field cap4cntis;
	uvm_reg_field CAPIS_cap5cntis;
	uvm_reg_field cap5cntis;
	uvm_reg_field CAPIS_cap0timis;
	uvm_reg_field cap0timis;
	uvm_reg_field CAPIS_cap1timis;
	uvm_reg_field cap1timis;
	uvm_reg_field CAPIS_cap2timis;
	uvm_reg_field cap2timis;
	uvm_reg_field CAPIS_cap3timis;
	uvm_reg_field cap3timis;
	uvm_reg_field CAPIS_cap4timis;
	uvm_reg_field cap4timis;
	uvm_reg_field CAPIS_cap5timis;
	uvm_reg_field cap5timis;
	uvm_reg_field CAP01T_CAPnmTn;
	uvm_reg_field CAP01T_CAPnmTm;
	uvm_reg_field CAP23T_CAPnmTn;
	uvm_reg_field CAP23T_CAPnmTm;
	uvm_reg_field CAP45T_CAPnmTn;
	uvm_reg_field CAP45T_CAPnmTm;
	rand uvm_reg_field CAP01MATCH_CAPnmMATCHn;
	rand uvm_reg_field CAP01MATCH_CAPnmMATCHm;
	rand uvm_reg_field CAP23MATCH_CAPnmMATCHn;
	rand uvm_reg_field CAP23MATCH_CAPnmMATCHm;
	rand uvm_reg_field CAP45MATCH_CAPnmMATCHn;
	rand uvm_reg_field CAP45MATCH_CAPnmMATCHm;
	rand uvm_reg_field TIMINTEN_tim0ie;
	rand uvm_reg_field tim0ie;
	rand uvm_reg_field TIMINTEN_tim1ie;
	rand uvm_reg_field tim1ie;
	rand uvm_reg_field TIMINTEN_tim2ie;
	rand uvm_reg_field tim2ie;
	rand uvm_reg_field TIMINTEN_tim3ie;
	rand uvm_reg_field tim3ie;
	rand uvm_reg_field TIMINTEN_tim4ie;
	rand uvm_reg_field tim4ie;
	rand uvm_reg_field TIMINTEN_tim5ie;
	rand uvm_reg_field tim5ie;
	uvm_reg_field TIMRIS_tim0ris;
	uvm_reg_field tim0ris;
	uvm_reg_field TIMRIS_tim1ris;
	uvm_reg_field tim1ris;
	uvm_reg_field TIMRIS_tim2ris;
	uvm_reg_field tim2ris;
	uvm_reg_field TIMRIS_tim3ris;
	uvm_reg_field tim3ris;
	uvm_reg_field TIMRIS_tim4ris;
	uvm_reg_field tim4ris;
	uvm_reg_field TIMRIS_tim5ris;
	uvm_reg_field tim5ris;
	rand uvm_reg_field TIMIC_tim0ic;
	rand uvm_reg_field tim0ic;
	rand uvm_reg_field TIMIC_tim1ic;
	rand uvm_reg_field tim1ic;
	rand uvm_reg_field TIMIC_tim2ic;
	rand uvm_reg_field tim2ic;
	rand uvm_reg_field TIMIC_tim3ic;
	rand uvm_reg_field tim3ic;
	rand uvm_reg_field TIMIC_tim4ic;
	rand uvm_reg_field tim4ic;
	rand uvm_reg_field TIMIC_tim5ic;
	rand uvm_reg_field tim5ic;
	uvm_reg_field TIMIS_tim0is;
	uvm_reg_field tim0is;
	uvm_reg_field TIMIS_tim1is;
	uvm_reg_field tim1is;
	uvm_reg_field TIMIS_tim2is;
	uvm_reg_field tim2is;
	uvm_reg_field TIMIS_tim3is;
	uvm_reg_field tim3is;
	uvm_reg_field TIMIS_tim4is;
	uvm_reg_field tim4is;
	uvm_reg_field TIMIS_tim5is;
	uvm_reg_field tim5is;
	rand uvm_reg_field TIM01LOAD_timloadn;
	rand uvm_reg_field TIM01LOAD_timloadm;
	rand uvm_reg_field TIM23LOAD_timloadn;
	rand uvm_reg_field TIM23LOAD_timloadm;
	rand uvm_reg_field TIM45LOAD_timloadn;
	rand uvm_reg_field TIM45LOAD_timloadm;
	uvm_reg_field TIM01COUNT_timcntn;
	uvm_reg_field TIM01COUNT_timcntm;
	uvm_reg_field TIM23COUNT_timcntn;
	uvm_reg_field TIM23COUNT_timcntm;
	uvm_reg_field TIM45COUNT_timcntn;
	uvm_reg_field TIM45COUNT_timcntm;
	uvm_reg_field CNT01VAL_Cntnval;
	uvm_reg_field CNT01VAL_Cntmval;
	uvm_reg_field CNT23VAL_Cntnval;
	uvm_reg_field CNT23VAL_Cntmval;
	uvm_reg_field CNT45VAL_Cntnval;
	uvm_reg_field CNT45VAL_Cntmval;

	function new(string name = "pwm");
		super.new(name, build_coverage(UVM_NO_COVERAGE));
	endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.PWMCFG = ral_reg_PWMCFG::type_id::create("PWMCFG",,get_full_name());
      this.PWMCFG.configure(this, null, "");
      this.PWMCFG.build();
         this.PWMCFG.add_hdl_path('{

            '{"PWMCFG", -1, -1}
         });
      this.default_map.add_reg(this.PWMCFG, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
		this.PWMCFG_pwm0en = this.PWMCFG.pwm0en;
		this.pwm0en = this.PWMCFG.pwm0en;
		this.PWMCFG_pwm1en = this.PWMCFG.pwm1en;
		this.pwm1en = this.PWMCFG.pwm1en;
		this.PWMCFG_pwm2en = this.PWMCFG.pwm2en;
		this.pwm2en = this.PWMCFG.pwm2en;
		this.PWMCFG_pwm3en = this.PWMCFG.pwm3en;
		this.pwm3en = this.PWMCFG.pwm3en;
		this.PWMCFG_pwm4en = this.PWMCFG.pwm4en;
		this.pwm4en = this.PWMCFG.pwm4en;
		this.PWMCFG_pwm5en = this.PWMCFG.pwm5en;
		this.pwm5en = this.PWMCFG.pwm5en;
		this.PWMCFG_pwm6en = this.PWMCFG.pwm6en;
		this.pwm6en = this.PWMCFG.pwm6en;
		this.PWMCFG_pwm7en = this.PWMCFG.pwm7en;
		this.pwm7en = this.PWMCFG.pwm7en;
		this.PWMCFG_pwm8en = this.PWMCFG.pwm8en;
		this.pwm8en = this.PWMCFG.pwm8en;
		this.PWMCFG_pwm9en = this.PWMCFG.pwm9en;
		this.pwm9en = this.PWMCFG.pwm9en;
		this.PWMCFG_pwm10en = this.PWMCFG.pwm10en;
		this.pwm10en = this.PWMCFG.pwm10en;
		this.PWMCFG_pwm11en = this.PWMCFG.pwm11en;
		this.pwm11en = this.PWMCFG.pwm11en;
		this.PWMCFG_cap0en = this.PWMCFG.cap0en;
		this.cap0en = this.PWMCFG.cap0en;
		this.PWMCFG_cap1en = this.PWMCFG.cap1en;
		this.cap1en = this.PWMCFG.cap1en;
		this.PWMCFG_cap2en = this.PWMCFG.cap2en;
		this.cap2en = this.PWMCFG.cap2en;
		this.PWMCFG_cap3en = this.PWMCFG.cap3en;
		this.cap3en = this.PWMCFG.cap3en;
		this.PWMCFG_cap4en = this.PWMCFG.cap4en;
		this.cap4en = this.PWMCFG.cap4en;
		this.PWMCFG_cap5en = this.PWMCFG.cap5en;
		this.cap5en = this.PWMCFG.cap5en;
		this.PWMCFG_tim0en = this.PWMCFG.tim0en;
		this.tim0en = this.PWMCFG.tim0en;
		this.PWMCFG_tim1en = this.PWMCFG.tim1en;
		this.tim1en = this.PWMCFG.tim1en;
		this.PWMCFG_tim2en = this.PWMCFG.tim2en;
		this.tim2en = this.PWMCFG.tim2en;
		this.PWMCFG_tim3en = this.PWMCFG.tim3en;
		this.tim3en = this.PWMCFG.tim3en;
		this.PWMCFG_tim4en = this.PWMCFG.tim4en;
		this.tim4en = this.PWMCFG.tim4en;
		this.PWMCFG_tim5en = this.PWMCFG.tim5en;
		this.tim5en = this.PWMCFG.tim5en;
		this.PWMCFG_cntdiv = this.PWMCFG.cntdiv;
		this.cntdiv = this.PWMCFG.cntdiv;
		this.PWMCFG_cntdiven = this.PWMCFG.cntdiven;
		this.cntdiven = this.PWMCFG.cntdiven;
      this.PWMINVERTTRIG = ral_reg_PWMINVERTTRIG::type_id::create("PWMINVERTTRIG",,get_full_name());
      this.PWMINVERTTRIG.configure(this, null, "");
      this.PWMINVERTTRIG.build();
         this.PWMINVERTTRIG.add_hdl_path('{

            '{"PWMINVERTTRIG", -1, -1}
         });
      this.default_map.add_reg(this.PWMINVERTTRIG, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
		this.PWMINVERTTRIG_pwm0inv = this.PWMINVERTTRIG.pwm0inv;
		this.pwm0inv = this.PWMINVERTTRIG.pwm0inv;
		this.PWMINVERTTRIG_pwm1inv = this.PWMINVERTTRIG.pwm1inv;
		this.pwm1inv = this.PWMINVERTTRIG.pwm1inv;
		this.PWMINVERTTRIG_pwm2inv = this.PWMINVERTTRIG.pwm2inv;
		this.pwm2inv = this.PWMINVERTTRIG.pwm2inv;
		this.PWMINVERTTRIG_pwm3inv = this.PWMINVERTTRIG.pwm3inv;
		this.pwm3inv = this.PWMINVERTTRIG.pwm3inv;
		this.PWMINVERTTRIG_pwm4inv = this.PWMINVERTTRIG.pwm4inv;
		this.pwm4inv = this.PWMINVERTTRIG.pwm4inv;
		this.PWMINVERTTRIG_pwm5inv = this.PWMINVERTTRIG.pwm5inv;
		this.pwm5inv = this.PWMINVERTTRIG.pwm5inv;
		this.PWMINVERTTRIG_pwm6inv = this.PWMINVERTTRIG.pwm6inv;
		this.pwm6inv = this.PWMINVERTTRIG.pwm6inv;
		this.PWMINVERTTRIG_pwm7inv = this.PWMINVERTTRIG.pwm7inv;
		this.pwm7inv = this.PWMINVERTTRIG.pwm7inv;
		this.PWMINVERTTRIG_pwm8inv = this.PWMINVERTTRIG.pwm8inv;
		this.pwm8inv = this.PWMINVERTTRIG.pwm8inv;
		this.PWMINVERTTRIG_pwm9inv = this.PWMINVERTTRIG.pwm9inv;
		this.pwm9inv = this.PWMINVERTTRIG.pwm9inv;
		this.PWMINVERTTRIG_pwm10inv = this.PWMINVERTTRIG.pwm10inv;
		this.pwm10inv = this.PWMINVERTTRIG.pwm10inv;
		this.PWMINVERTTRIG_pwm11inv = this.PWMINVERTTRIG.pwm11inv;
		this.pwm11inv = this.PWMINVERTTRIG.pwm11inv;
      this.PWM01TRIG = ral_reg_PWM01TRIG::type_id::create("PWM01TRIG",,get_full_name());
      this.PWM01TRIG.configure(this, null, "");
      this.PWM01TRIG.build();
         this.PWM01TRIG.add_hdl_path('{

            '{"PWM01TRIG", -1, -1}
         });
      this.default_map.add_reg(this.PWM01TRIG, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
		this.PWM01TRIG_pwm0trig = this.PWM01TRIG.pwm0trig;
		this.pwm0trig = this.PWM01TRIG.pwm0trig;
		this.PWM01TRIG_pwm1trig = this.PWM01TRIG.pwm1trig;
		this.pwm1trig = this.PWM01TRIG.pwm1trig;
      this.PWM23TRIG = ral_reg_PWM23TRIG::type_id::create("PWM23TRIG",,get_full_name());
      this.PWM23TRIG.configure(this, null, "");
      this.PWM23TRIG.build();
         this.PWM23TRIG.add_hdl_path('{

            '{"PWM23TRIG", -1, -1}
         });
      this.default_map.add_reg(this.PWM23TRIG, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
		this.PWM23TRIG_pwm2trig = this.PWM23TRIG.pwm2trig;
		this.pwm2trig = this.PWM23TRIG.pwm2trig;
		this.PWM23TRIG_pwm3trig = this.PWM23TRIG.pwm3trig;
		this.pwm3trig = this.PWM23TRIG.pwm3trig;
      this.PWM45TRIG = ral_reg_PWM45TRIG::type_id::create("PWM45TRIG",,get_full_name());
      this.PWM45TRIG.configure(this, null, "");
      this.PWM45TRIG.build();
         this.PWM45TRIG.add_hdl_path('{

            '{"PWM45TRIG", -1, -1}
         });
      this.default_map.add_reg(this.PWM45TRIG, `UVM_REG_ADDR_WIDTH'h10, "RW", 0);
		this.PWM45TRIG_pwm4trig = this.PWM45TRIG.pwm4trig;
		this.pwm4trig = this.PWM45TRIG.pwm4trig;
		this.PWM45TRIG_pwm5trig = this.PWM45TRIG.pwm5trig;
		this.pwm5trig = this.PWM45TRIG.pwm5trig;
      this.PWMINTEN1 = ral_reg_PWMINTEN1::type_id::create("PWMINTEN1",,get_full_name());
      this.PWMINTEN1.configure(this, null, "");
      this.PWMINTEN1.build();
         this.PWMINTEN1.add_hdl_path('{

            '{"PWMINTEN1", -1, -1}
         });
      this.default_map.add_reg(this.PWMINTEN1, `UVM_REG_ADDR_WIDTH'h14, "RW", 0);
		this.PWMINTEN1_Int0encntzero = this.PWMINTEN1.Int0encntzero;
		this.Int0encntzero = this.PWMINTEN1.Int0encntzero;
		this.PWMINTEN1_Int0encntload = this.PWMINTEN1.Int0encntload;
		this.Int0encntload = this.PWMINTEN1.Int0encntload;
		this.PWMINTEN1_Int0encmpau = this.PWMINTEN1.Int0encmpau;
		this.Int0encmpau = this.PWMINTEN1.Int0encmpau;
		this.PWMINTEN1_Int0encmpbu = this.PWMINTEN1.Int0encmpbu;
		this.Int0encmpbu = this.PWMINTEN1.Int0encmpbu;
		this.PWMINTEN1_Int0encmpad = this.PWMINTEN1.Int0encmpad;
		this.Int0encmpad = this.PWMINTEN1.Int0encmpad;
		this.PWMINTEN1_Int0encmpbd = this.PWMINTEN1.Int0encmpbd;
		this.Int0encmpbd = this.PWMINTEN1.Int0encmpbd;
		this.PWMINTEN1_Int1encntzero = this.PWMINTEN1.Int1encntzero;
		this.Int1encntzero = this.PWMINTEN1.Int1encntzero;
		this.PWMINTEN1_Int1encntload = this.PWMINTEN1.Int1encntload;
		this.Int1encntload = this.PWMINTEN1.Int1encntload;
		this.PWMINTEN1_Int1encmpau = this.PWMINTEN1.Int1encmpau;
		this.Int1encmpau = this.PWMINTEN1.Int1encmpau;
		this.PWMINTEN1_Int1encmpbu = this.PWMINTEN1.Int1encmpbu;
		this.Int1encmpbu = this.PWMINTEN1.Int1encmpbu;
		this.PWMINTEN1_Int1encmpad = this.PWMINTEN1.Int1encmpad;
		this.Int1encmpad = this.PWMINTEN1.Int1encmpad;
		this.PWMINTEN1_Int1encmpbd = this.PWMINTEN1.Int1encmpbd;
		this.Int1encmpbd = this.PWMINTEN1.Int1encmpbd;
		this.PWMINTEN1_Int2encntzero = this.PWMINTEN1.Int2encntzero;
		this.Int2encntzero = this.PWMINTEN1.Int2encntzero;
		this.PWMINTEN1_Int2encntload = this.PWMINTEN1.Int2encntload;
		this.Int2encntload = this.PWMINTEN1.Int2encntload;
		this.PWMINTEN1_Int2encmpau = this.PWMINTEN1.Int2encmpau;
		this.Int2encmpau = this.PWMINTEN1.Int2encmpau;
		this.PWMINTEN1_Int2encmpbu = this.PWMINTEN1.Int2encmpbu;
		this.Int2encmpbu = this.PWMINTEN1.Int2encmpbu;
		this.PWMINTEN1_Int2encmpad = this.PWMINTEN1.Int2encmpad;
		this.Int2encmpad = this.PWMINTEN1.Int2encmpad;
		this.PWMINTEN1_Int2encmpbd = this.PWMINTEN1.Int2encmpbd;
		this.Int2encmpbd = this.PWMINTEN1.Int2encmpbd;
      this.PWMINTEN2 = ral_reg_PWMINTEN2::type_id::create("PWMINTEN2",,get_full_name());
      this.PWMINTEN2.configure(this, null, "");
      this.PWMINTEN2.build();
         this.PWMINTEN2.add_hdl_path('{

            '{"PWMINTEN2", -1, -1}
         });
      this.default_map.add_reg(this.PWMINTEN2, `UVM_REG_ADDR_WIDTH'h18, "RW", 0);
		this.PWMINTEN2_Int3encntzero = this.PWMINTEN2.Int3encntzero;
		this.Int3encntzero = this.PWMINTEN2.Int3encntzero;
		this.PWMINTEN2_Int3encntload = this.PWMINTEN2.Int3encntload;
		this.Int3encntload = this.PWMINTEN2.Int3encntload;
		this.PWMINTEN2_Int3encmpau = this.PWMINTEN2.Int3encmpau;
		this.Int3encmpau = this.PWMINTEN2.Int3encmpau;
		this.PWMINTEN2_Int3encmpbu = this.PWMINTEN2.Int3encmpbu;
		this.Int3encmpbu = this.PWMINTEN2.Int3encmpbu;
		this.PWMINTEN2_Int3encmpad = this.PWMINTEN2.Int3encmpad;
		this.Int3encmpad = this.PWMINTEN2.Int3encmpad;
		this.PWMINTEN2_Int3encmpbd = this.PWMINTEN2.Int3encmpbd;
		this.Int3encmpbd = this.PWMINTEN2.Int3encmpbd;
		this.PWMINTEN2_Int4encntzero = this.PWMINTEN2.Int4encntzero;
		this.Int4encntzero = this.PWMINTEN2.Int4encntzero;
		this.PWMINTEN2_Int4encntload = this.PWMINTEN2.Int4encntload;
		this.Int4encntload = this.PWMINTEN2.Int4encntload;
		this.PWMINTEN2_Int4encmpau = this.PWMINTEN2.Int4encmpau;
		this.Int4encmpau = this.PWMINTEN2.Int4encmpau;
		this.PWMINTEN2_Int4encmpbu = this.PWMINTEN2.Int4encmpbu;
		this.Int4encmpbu = this.PWMINTEN2.Int4encmpbu;
		this.PWMINTEN2_Int4encmpad = this.PWMINTEN2.Int4encmpad;
		this.Int4encmpad = this.PWMINTEN2.Int4encmpad;
		this.PWMINTEN2_Int4encmpbd = this.PWMINTEN2.Int4encmpbd;
		this.Int4encmpbd = this.PWMINTEN2.Int4encmpbd;
		this.PWMINTEN2_Int5encntzero = this.PWMINTEN2.Int5encntzero;
		this.Int5encntzero = this.PWMINTEN2.Int5encntzero;
		this.PWMINTEN2_Int5encntload = this.PWMINTEN2.Int5encntload;
		this.Int5encntload = this.PWMINTEN2.Int5encntload;
		this.PWMINTEN2_Int5encmpau = this.PWMINTEN2.Int5encmpau;
		this.Int5encmpau = this.PWMINTEN2.Int5encmpau;
		this.PWMINTEN2_Int5encmpbu = this.PWMINTEN2.Int5encmpbu;
		this.Int5encmpbu = this.PWMINTEN2.Int5encmpbu;
		this.PWMINTEN2_Int5encmpad = this.PWMINTEN2.Int5encmpad;
		this.Int5encmpad = this.PWMINTEN2.Int5encmpad;
		this.PWMINTEN2_Int5encmpbd = this.PWMINTEN2.Int5encmpbd;
		this.Int5encmpbd = this.PWMINTEN2.Int5encmpbd;
      this.PWMRIS1 = ral_reg_PWMRIS1::type_id::create("PWMRIS1",,get_full_name());
      this.PWMRIS1.configure(this, null, "");
      this.PWMRIS1.build();
         this.PWMRIS1.add_hdl_path('{

            '{"PWMRIS1", -1, -1}
         });
      this.default_map.add_reg(this.PWMRIS1, `UVM_REG_ADDR_WIDTH'h1C, "RW", 0);
		this.PWMRIS1_Intris0cntzero = this.PWMRIS1.Intris0cntzero;
		this.Intris0cntzero = this.PWMRIS1.Intris0cntzero;
		this.PWMRIS1_Intris0cntload = this.PWMRIS1.Intris0cntload;
		this.Intris0cntload = this.PWMRIS1.Intris0cntload;
		this.PWMRIS1_Intris0cmpau = this.PWMRIS1.Intris0cmpau;
		this.Intris0cmpau = this.PWMRIS1.Intris0cmpau;
		this.PWMRIS1_Intris0cmpbu = this.PWMRIS1.Intris0cmpbu;
		this.Intris0cmpbu = this.PWMRIS1.Intris0cmpbu;
		this.PWMRIS1_Intris0cmpad = this.PWMRIS1.Intris0cmpad;
		this.Intris0cmpad = this.PWMRIS1.Intris0cmpad;
		this.PWMRIS1_Intris0cmpbd = this.PWMRIS1.Intris0cmpbd;
		this.Intris0cmpbd = this.PWMRIS1.Intris0cmpbd;
		this.PWMRIS1_Intris1cntzero = this.PWMRIS1.Intris1cntzero;
		this.Intris1cntzero = this.PWMRIS1.Intris1cntzero;
		this.PWMRIS1_Intris1cntload = this.PWMRIS1.Intris1cntload;
		this.Intris1cntload = this.PWMRIS1.Intris1cntload;
		this.PWMRIS1_Intris1cmpau = this.PWMRIS1.Intris1cmpau;
		this.Intris1cmpau = this.PWMRIS1.Intris1cmpau;
		this.PWMRIS1_Intris1cmpbu = this.PWMRIS1.Intris1cmpbu;
		this.Intris1cmpbu = this.PWMRIS1.Intris1cmpbu;
		this.PWMRIS1_Intris1cmpad = this.PWMRIS1.Intris1cmpad;
		this.Intris1cmpad = this.PWMRIS1.Intris1cmpad;
		this.PWMRIS1_Intris1cmpbd = this.PWMRIS1.Intris1cmpbd;
		this.Intris1cmpbd = this.PWMRIS1.Intris1cmpbd;
		this.PWMRIS1_Intris2cntzero = this.PWMRIS1.Intris2cntzero;
		this.Intris2cntzero = this.PWMRIS1.Intris2cntzero;
		this.PWMRIS1_Intris2cntload = this.PWMRIS1.Intris2cntload;
		this.Intris2cntload = this.PWMRIS1.Intris2cntload;
		this.PWMRIS1_Intris2cmpau = this.PWMRIS1.Intris2cmpau;
		this.Intris2cmpau = this.PWMRIS1.Intris2cmpau;
		this.PWMRIS1_Intris2cmpbu = this.PWMRIS1.Intris2cmpbu;
		this.Intris2cmpbu = this.PWMRIS1.Intris2cmpbu;
		this.PWMRIS1_Intris2cmpad = this.PWMRIS1.Intris2cmpad;
		this.Intris2cmpad = this.PWMRIS1.Intris2cmpad;
		this.PWMRIS1_Intris2cmpbd = this.PWMRIS1.Intris2cmpbd;
		this.Intris2cmpbd = this.PWMRIS1.Intris2cmpbd;
      this.PWMRIS2 = ral_reg_PWMRIS2::type_id::create("PWMRIS2",,get_full_name());
      this.PWMRIS2.configure(this, null, "");
      this.PWMRIS2.build();
         this.PWMRIS2.add_hdl_path('{

            '{"PWMRIS2", -1, -1}
         });
      this.default_map.add_reg(this.PWMRIS2, `UVM_REG_ADDR_WIDTH'h20, "RW", 0);
		this.PWMRIS2_Intris3cntzero = this.PWMRIS2.Intris3cntzero;
		this.Intris3cntzero = this.PWMRIS2.Intris3cntzero;
		this.PWMRIS2_Intris3cntload = this.PWMRIS2.Intris3cntload;
		this.Intris3cntload = this.PWMRIS2.Intris3cntload;
		this.PWMRIS2_Intris3cmpau = this.PWMRIS2.Intris3cmpau;
		this.Intris3cmpau = this.PWMRIS2.Intris3cmpau;
		this.PWMRIS2_Intris3cmpbu = this.PWMRIS2.Intris3cmpbu;
		this.Intris3cmpbu = this.PWMRIS2.Intris3cmpbu;
		this.PWMRIS2_Intris3cmpad = this.PWMRIS2.Intris3cmpad;
		this.Intris3cmpad = this.PWMRIS2.Intris3cmpad;
		this.PWMRIS2_Intris3cmpbd = this.PWMRIS2.Intris3cmpbd;
		this.Intris3cmpbd = this.PWMRIS2.Intris3cmpbd;
		this.PWMRIS2_Intris4cntzero = this.PWMRIS2.Intris4cntzero;
		this.Intris4cntzero = this.PWMRIS2.Intris4cntzero;
		this.PWMRIS2_Intris4cntload = this.PWMRIS2.Intris4cntload;
		this.Intris4cntload = this.PWMRIS2.Intris4cntload;
		this.PWMRIS2_Intris4cmpau = this.PWMRIS2.Intris4cmpau;
		this.Intris4cmpau = this.PWMRIS2.Intris4cmpau;
		this.PWMRIS2_Intris4cmpbu = this.PWMRIS2.Intris4cmpbu;
		this.Intris4cmpbu = this.PWMRIS2.Intris4cmpbu;
		this.PWMRIS2_Intris4cmpad = this.PWMRIS2.Intris4cmpad;
		this.Intris4cmpad = this.PWMRIS2.Intris4cmpad;
		this.PWMRIS2_Intris4cmpbd = this.PWMRIS2.Intris4cmpbd;
		this.Intris4cmpbd = this.PWMRIS2.Intris4cmpbd;
		this.PWMRIS2_Intris5cntzero = this.PWMRIS2.Intris5cntzero;
		this.Intris5cntzero = this.PWMRIS2.Intris5cntzero;
		this.PWMRIS2_Intris5cntload = this.PWMRIS2.Intris5cntload;
		this.Intris5cntload = this.PWMRIS2.Intris5cntload;
		this.PWMRIS2_Intris5cmpau = this.PWMRIS2.Intris5cmpau;
		this.Intris5cmpau = this.PWMRIS2.Intris5cmpau;
		this.PWMRIS2_Intris5cmpbu = this.PWMRIS2.Intris5cmpbu;
		this.Intris5cmpbu = this.PWMRIS2.Intris5cmpbu;
		this.PWMRIS2_Intris5cmpad = this.PWMRIS2.Intris5cmpad;
		this.Intris5cmpad = this.PWMRIS2.Intris5cmpad;
		this.PWMRIS2_Intris5cmpbd = this.PWMRIS2.Intris5cmpbd;
		this.Intris5cmpbd = this.PWMRIS2.Intris5cmpbd;
      this.PWMIC1 = ral_reg_PWMIC1::type_id::create("PWMIC1",,get_full_name());
      this.PWMIC1.configure(this, null, "");
      this.PWMIC1.build();
         this.PWMIC1.add_hdl_path('{

            '{"PWMIC1", -1, -1}
         });
      this.default_map.add_reg(this.PWMIC1, `UVM_REG_ADDR_WIDTH'h24, "RW", 0);
		this.PWMIC1_Intic0cntzero = this.PWMIC1.Intic0cntzero;
		this.Intic0cntzero = this.PWMIC1.Intic0cntzero;
		this.PWMIC1_Intic0cntload = this.PWMIC1.Intic0cntload;
		this.Intic0cntload = this.PWMIC1.Intic0cntload;
		this.PWMIC1_Intic0cmpau = this.PWMIC1.Intic0cmpau;
		this.Intic0cmpau = this.PWMIC1.Intic0cmpau;
		this.PWMIC1_Intic0cmpbu = this.PWMIC1.Intic0cmpbu;
		this.Intic0cmpbu = this.PWMIC1.Intic0cmpbu;
		this.PWMIC1_Intic0cmpad = this.PWMIC1.Intic0cmpad;
		this.Intic0cmpad = this.PWMIC1.Intic0cmpad;
		this.PWMIC1_Intic0cmpbd = this.PWMIC1.Intic0cmpbd;
		this.Intic0cmpbd = this.PWMIC1.Intic0cmpbd;
		this.PWMIC1_Intic1cntzero = this.PWMIC1.Intic1cntzero;
		this.Intic1cntzero = this.PWMIC1.Intic1cntzero;
		this.PWMIC1_Intic1cntload = this.PWMIC1.Intic1cntload;
		this.Intic1cntload = this.PWMIC1.Intic1cntload;
		this.PWMIC1_Intic1cmpau = this.PWMIC1.Intic1cmpau;
		this.Intic1cmpau = this.PWMIC1.Intic1cmpau;
		this.PWMIC1_Intic1cmpbu = this.PWMIC1.Intic1cmpbu;
		this.Intic1cmpbu = this.PWMIC1.Intic1cmpbu;
		this.PWMIC1_Intic1cmpad = this.PWMIC1.Intic1cmpad;
		this.Intic1cmpad = this.PWMIC1.Intic1cmpad;
		this.PWMIC1_Intic1cmpbd = this.PWMIC1.Intic1cmpbd;
		this.Intic1cmpbd = this.PWMIC1.Intic1cmpbd;
		this.PWMIC1_Intic2cntzero = this.PWMIC1.Intic2cntzero;
		this.Intic2cntzero = this.PWMIC1.Intic2cntzero;
		this.PWMIC1_Intic2cntload = this.PWMIC1.Intic2cntload;
		this.Intic2cntload = this.PWMIC1.Intic2cntload;
		this.PWMIC1_Intic2cmpau = this.PWMIC1.Intic2cmpau;
		this.Intic2cmpau = this.PWMIC1.Intic2cmpau;
		this.PWMIC1_Intic2cmpbu = this.PWMIC1.Intic2cmpbu;
		this.Intic2cmpbu = this.PWMIC1.Intic2cmpbu;
		this.PWMIC1_Intic2cmpad = this.PWMIC1.Intic2cmpad;
		this.Intic2cmpad = this.PWMIC1.Intic2cmpad;
		this.PWMIC1_Intic2cmpbd = this.PWMIC1.Intic2cmpbd;
		this.Intic2cmpbd = this.PWMIC1.Intic2cmpbd;
      this.PWMIC2 = ral_reg_PWMIC2::type_id::create("PWMIC2",,get_full_name());
      this.PWMIC2.configure(this, null, "");
      this.PWMIC2.build();
         this.PWMIC2.add_hdl_path('{

            '{"PWMIC2", -1, -1}
         });
      this.default_map.add_reg(this.PWMIC2, `UVM_REG_ADDR_WIDTH'h28, "RW", 0);
		this.PWMIC2_Intic3cntzero = this.PWMIC2.Intic3cntzero;
		this.Intic3cntzero = this.PWMIC2.Intic3cntzero;
		this.PWMIC2_Intic3cntload = this.PWMIC2.Intic3cntload;
		this.Intic3cntload = this.PWMIC2.Intic3cntload;
		this.PWMIC2_Intic3cmpau = this.PWMIC2.Intic3cmpau;
		this.Intic3cmpau = this.PWMIC2.Intic3cmpau;
		this.PWMIC2_Intic3cmpbu = this.PWMIC2.Intic3cmpbu;
		this.Intic3cmpbu = this.PWMIC2.Intic3cmpbu;
		this.PWMIC2_Intic3cmpad = this.PWMIC2.Intic3cmpad;
		this.Intic3cmpad = this.PWMIC2.Intic3cmpad;
		this.PWMIC2_Intic3cmpbd = this.PWMIC2.Intic3cmpbd;
		this.Intic3cmpbd = this.PWMIC2.Intic3cmpbd;
		this.PWMIC2_Intic4cntzero = this.PWMIC2.Intic4cntzero;
		this.Intic4cntzero = this.PWMIC2.Intic4cntzero;
		this.PWMIC2_Intic4cntload = this.PWMIC2.Intic4cntload;
		this.Intic4cntload = this.PWMIC2.Intic4cntload;
		this.PWMIC2_Intic4cmpau = this.PWMIC2.Intic4cmpau;
		this.Intic4cmpau = this.PWMIC2.Intic4cmpau;
		this.PWMIC2_Intic4cmpbu = this.PWMIC2.Intic4cmpbu;
		this.Intic4cmpbu = this.PWMIC2.Intic4cmpbu;
		this.PWMIC2_Intic4cmpad = this.PWMIC2.Intic4cmpad;
		this.Intic4cmpad = this.PWMIC2.Intic4cmpad;
		this.PWMIC2_Intic4cmpbd = this.PWMIC2.Intic4cmpbd;
		this.Intic4cmpbd = this.PWMIC2.Intic4cmpbd;
		this.PWMIC2_Intic5cntzero = this.PWMIC2.Intic5cntzero;
		this.Intic5cntzero = this.PWMIC2.Intic5cntzero;
		this.PWMIC2_Intic5cntload = this.PWMIC2.Intic5cntload;
		this.Intic5cntload = this.PWMIC2.Intic5cntload;
		this.PWMIC2_Intic5cmpau = this.PWMIC2.Intic5cmpau;
		this.Intic5cmpau = this.PWMIC2.Intic5cmpau;
		this.PWMIC2_Intic5cmpbu = this.PWMIC2.Intic5cmpbu;
		this.Intic5cmpbu = this.PWMIC2.Intic5cmpbu;
		this.PWMIC2_Intic5cmpad = this.PWMIC2.Intic5cmpad;
		this.Intic5cmpad = this.PWMIC2.Intic5cmpad;
		this.PWMIC2_Intic5cmpbd = this.PWMIC2.Intic5cmpbd;
		this.Intic5cmpbd = this.PWMIC2.Intic5cmpbd;
      this.PWMIS1 = ral_reg_PWMIS1::type_id::create("PWMIS1",,get_full_name());
      this.PWMIS1.configure(this, null, "");
      this.PWMIS1.build();
         this.PWMIS1.add_hdl_path('{

            '{"PWMIS1", -1, -1}
         });
      this.default_map.add_reg(this.PWMIS1, `UVM_REG_ADDR_WIDTH'h2C, "RW", 0);
		this.PWMIS1_Intis0cntzero = this.PWMIS1.Intis0cntzero;
		this.Intis0cntzero = this.PWMIS1.Intis0cntzero;
		this.PWMIS1_Intis0cntload = this.PWMIS1.Intis0cntload;
		this.Intis0cntload = this.PWMIS1.Intis0cntload;
		this.PWMIS1_Intis0cmpau = this.PWMIS1.Intis0cmpau;
		this.Intis0cmpau = this.PWMIS1.Intis0cmpau;
		this.PWMIS1_Intis0cmpbu = this.PWMIS1.Intis0cmpbu;
		this.Intis0cmpbu = this.PWMIS1.Intis0cmpbu;
		this.PWMIS1_Intis0cmpad = this.PWMIS1.Intis0cmpad;
		this.Intis0cmpad = this.PWMIS1.Intis0cmpad;
		this.PWMIS1_Intis0cmpbd = this.PWMIS1.Intis0cmpbd;
		this.Intis0cmpbd = this.PWMIS1.Intis0cmpbd;
		this.PWMIS1_Intis1cntzero = this.PWMIS1.Intis1cntzero;
		this.Intis1cntzero = this.PWMIS1.Intis1cntzero;
		this.PWMIS1_Intis1cntload = this.PWMIS1.Intis1cntload;
		this.Intis1cntload = this.PWMIS1.Intis1cntload;
		this.PWMIS1_Intis1cmpau = this.PWMIS1.Intis1cmpau;
		this.Intis1cmpau = this.PWMIS1.Intis1cmpau;
		this.PWMIS1_Intis1cmpbu = this.PWMIS1.Intis1cmpbu;
		this.Intis1cmpbu = this.PWMIS1.Intis1cmpbu;
		this.PWMIS1_Intis1cmpad = this.PWMIS1.Intis1cmpad;
		this.Intis1cmpad = this.PWMIS1.Intis1cmpad;
		this.PWMIS1_Intis1cmpbd = this.PWMIS1.Intis1cmpbd;
		this.Intis1cmpbd = this.PWMIS1.Intis1cmpbd;
		this.PWMIS1_Intis2cntzero = this.PWMIS1.Intis2cntzero;
		this.Intis2cntzero = this.PWMIS1.Intis2cntzero;
		this.PWMIS1_Intis2cntload = this.PWMIS1.Intis2cntload;
		this.Intis2cntload = this.PWMIS1.Intis2cntload;
		this.PWMIS1_Intis2cmpau = this.PWMIS1.Intis2cmpau;
		this.Intis2cmpau = this.PWMIS1.Intis2cmpau;
		this.PWMIS1_Intis2cmpbu = this.PWMIS1.Intis2cmpbu;
		this.Intis2cmpbu = this.PWMIS1.Intis2cmpbu;
		this.PWMIS1_Intis2cmpad = this.PWMIS1.Intis2cmpad;
		this.Intis2cmpad = this.PWMIS1.Intis2cmpad;
		this.PWMIS1_Intis2cmpbd = this.PWMIS1.Intis2cmpbd;
		this.Intis2cmpbd = this.PWMIS1.Intis2cmpbd;
      this.PWMIS2 = ral_reg_PWMIS2::type_id::create("PWMIS2",,get_full_name());
      this.PWMIS2.configure(this, null, "");
      this.PWMIS2.build();
         this.PWMIS2.add_hdl_path('{

            '{"PWMIS2", -1, -1}
         });
      this.default_map.add_reg(this.PWMIS2, `UVM_REG_ADDR_WIDTH'h30, "RW", 0);
		this.PWMIS2_Intis3cntzero = this.PWMIS2.Intis3cntzero;
		this.Intis3cntzero = this.PWMIS2.Intis3cntzero;
		this.PWMIS2_Intis3cntload = this.PWMIS2.Intis3cntload;
		this.Intis3cntload = this.PWMIS2.Intis3cntload;
		this.PWMIS2_Intis3cmpau = this.PWMIS2.Intis3cmpau;
		this.Intis3cmpau = this.PWMIS2.Intis3cmpau;
		this.PWMIS2_Intis3cmpbu = this.PWMIS2.Intis3cmpbu;
		this.Intis3cmpbu = this.PWMIS2.Intis3cmpbu;
		this.PWMIS2_Intis3cmpad = this.PWMIS2.Intis3cmpad;
		this.Intis3cmpad = this.PWMIS2.Intis3cmpad;
		this.PWMIS2_Intis3cmpbd = this.PWMIS2.Intis3cmpbd;
		this.Intis3cmpbd = this.PWMIS2.Intis3cmpbd;
		this.PWMIS2_Intis4cntzero = this.PWMIS2.Intis4cntzero;
		this.Intis4cntzero = this.PWMIS2.Intis4cntzero;
		this.PWMIS2_Intis4cntload = this.PWMIS2.Intis4cntload;
		this.Intis4cntload = this.PWMIS2.Intis4cntload;
		this.PWMIS2_Intis4cmpau = this.PWMIS2.Intis4cmpau;
		this.Intis4cmpau = this.PWMIS2.Intis4cmpau;
		this.PWMIS2_Intis4cmpbu = this.PWMIS2.Intis4cmpbu;
		this.Intis4cmpbu = this.PWMIS2.Intis4cmpbu;
		this.PWMIS2_Intis4cmpad = this.PWMIS2.Intis4cmpad;
		this.Intis4cmpad = this.PWMIS2.Intis4cmpad;
		this.PWMIS2_Intis4cmpbd = this.PWMIS2.Intis4cmpbd;
		this.Intis4cmpbd = this.PWMIS2.Intis4cmpbd;
		this.PWMIS2_Intis5cntzero = this.PWMIS2.Intis5cntzero;
		this.Intis5cntzero = this.PWMIS2.Intis5cntzero;
		this.PWMIS2_Intis5cntload = this.PWMIS2.Intis5cntload;
		this.Intis5cntload = this.PWMIS2.Intis5cntload;
		this.PWMIS2_Intis5cmpau = this.PWMIS2.Intis5cmpau;
		this.Intis5cmpau = this.PWMIS2.Intis5cmpau;
		this.PWMIS2_Intis5cmpbu = this.PWMIS2.Intis5cmpbu;
		this.Intis5cmpbu = this.PWMIS2.Intis5cmpbu;
		this.PWMIS2_Intis5cmpad = this.PWMIS2.Intis5cmpad;
		this.Intis5cmpad = this.PWMIS2.Intis5cmpad;
		this.PWMIS2_Intis5cmpbd = this.PWMIS2.Intis5cmpbd;
		this.Intis5cmpbd = this.PWMIS2.Intis5cmpbd;
      this.PWMCTL = ral_reg_PWMCTL::type_id::create("PWMCTL",,get_full_name());
      this.PWMCTL.configure(this, null, "");
      this.PWMCTL.build();
         this.PWMCTL.add_hdl_path('{

            '{"PWMCTL", -1, -1}
         });
      this.default_map.add_reg(this.PWMCTL, `UVM_REG_ADDR_WIDTH'h34, "RW", 0);
		this.PWMCTL_pwm0mode = this.PWMCTL.pwm0mode;
		this.pwm0mode = this.PWMCTL.pwm0mode;
		this.PWMCTL_pwm1mode = this.PWMCTL.pwm1mode;
		this.pwm1mode = this.PWMCTL.pwm1mode;
		this.PWMCTL_pwm2mode = this.PWMCTL.pwm2mode;
		this.pwm2mode = this.PWMCTL.pwm2mode;
		this.PWMCTL_pwm3mode = this.PWMCTL.pwm3mode;
		this.pwm3mode = this.PWMCTL.pwm3mode;
		this.PWMCTL_pwm4mode = this.PWMCTL.pwm4mode;
		this.pwm4mode = this.PWMCTL.pwm4mode;
		this.PWMCTL_pwm5mode = this.PWMCTL.pwm5mode;
		this.pwm5mode = this.PWMCTL.pwm5mode;
		this.PWMCTL_sync0mode = this.PWMCTL.sync0mode;
		this.sync0mode = this.PWMCTL.sync0mode;
		this.PWMCTL_sync1mode = this.PWMCTL.sync1mode;
		this.sync1mode = this.PWMCTL.sync1mode;
		this.PWMCTL_sync2mode = this.PWMCTL.sync2mode;
		this.sync2mode = this.PWMCTL.sync2mode;
		this.PWMCTL_Sync3mode = this.PWMCTL.Sync3mode;
		this.Sync3mode = this.PWMCTL.Sync3mode;
		this.PWMCTL_Sync4mode = this.PWMCTL.Sync4mode;
		this.Sync4mode = this.PWMCTL.Sync4mode;
		this.PWMCTL_Sync5mode = this.PWMCTL.Sync5mode;
		this.Sync5mode = this.PWMCTL.Sync5mode;
      this.PWM01LOAD = ral_reg_PWM01LOAD::type_id::create("PWM01LOAD",,get_full_name());
      this.PWM01LOAD.configure(this, null, "");
      this.PWM01LOAD.build();
         this.PWM01LOAD.add_hdl_path('{

            '{"PWM01LOAD", -1, -1}
         });
      this.default_map.add_reg(this.PWM01LOAD, `UVM_REG_ADDR_WIDTH'h38, "RW", 0);
		this.PWM01LOAD_loadn = this.PWM01LOAD.loadn;
		this.PWM01LOAD_loadm = this.PWM01LOAD.loadm;
      this.PWM23LOAD = ral_reg_PWM23LOAD::type_id::create("PWM23LOAD",,get_full_name());
      this.PWM23LOAD.configure(this, null, "");
      this.PWM23LOAD.build();
         this.PWM23LOAD.add_hdl_path('{

            '{"PWM23LOAD", -1, -1}
         });
      this.default_map.add_reg(this.PWM23LOAD, `UVM_REG_ADDR_WIDTH'h3C, "RW", 0);
		this.PWM23LOAD_loadn = this.PWM23LOAD.loadn;
		this.PWM23LOAD_loadm = this.PWM23LOAD.loadm;
      this.PWM45LOAD = ral_reg_PWM45LOAD::type_id::create("PWM45LOAD",,get_full_name());
      this.PWM45LOAD.configure(this, null, "");
      this.PWM45LOAD.build();
         this.PWM45LOAD.add_hdl_path('{

            '{"PWM45LOAD", -1, -1}
         });
      this.default_map.add_reg(this.PWM45LOAD, `UVM_REG_ADDR_WIDTH'h40, "RW", 0);
		this.PWM45LOAD_loadn = this.PWM45LOAD.loadn;
		this.PWM45LOAD_loadm = this.PWM45LOAD.loadm;
      this.PWM01COUNT = ral_reg_PWM01COUNT::type_id::create("PWM01COUNT",,get_full_name());
      this.PWM01COUNT.configure(this, null, "");
      this.PWM01COUNT.build();
         this.PWM01COUNT.add_hdl_path('{

            '{"PWM01COUNT", -1, -1}
         });
      this.default_map.add_reg(this.PWM01COUNT, `UVM_REG_ADDR_WIDTH'h44, "RO", 0);
		this.PWM01COUNT_countn = this.PWM01COUNT.countn;
		this.PWM01COUNT_countm = this.PWM01COUNT.countm;
      this.PWM23COUNT = ral_reg_PWM23COUNT::type_id::create("PWM23COUNT",,get_full_name());
      this.PWM23COUNT.configure(this, null, "");
      this.PWM23COUNT.build();
         this.PWM23COUNT.add_hdl_path('{

            '{"PWM23COUNT", -1, -1}
         });
      this.default_map.add_reg(this.PWM23COUNT, `UVM_REG_ADDR_WIDTH'h48, "RO", 0);
		this.PWM23COUNT_countn = this.PWM23COUNT.countn;
		this.PWM23COUNT_countm = this.PWM23COUNT.countm;
      this.PWM45COUNT = ral_reg_PWM45COUNT::type_id::create("PWM45COUNT",,get_full_name());
      this.PWM45COUNT.configure(this, null, "");
      this.PWM45COUNT.build();
         this.PWM45COUNT.add_hdl_path('{

            '{"PWM45COUNT", -1, -1}
         });
      this.default_map.add_reg(this.PWM45COUNT, `UVM_REG_ADDR_WIDTH'h4C, "RO", 0);
		this.PWM45COUNT_countn = this.PWM45COUNT.countn;
		this.PWM45COUNT_countm = this.PWM45COUNT.countm;
      this.PWM0CMP = ral_reg_PWM0CMP::type_id::create("PWM0CMP",,get_full_name());
      this.PWM0CMP.configure(this, null, "");
      this.PWM0CMP.build();
         this.PWM0CMP.add_hdl_path('{

            '{"PWM0CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM0CMP, `UVM_REG_ADDR_WIDTH'h50, "RW", 0);
		this.PWM0CMP_compna = this.PWM0CMP.compna;
		this.PWM0CMP_compnb = this.PWM0CMP.compnb;
      this.PWM1CMP = ral_reg_PWM1CMP::type_id::create("PWM1CMP",,get_full_name());
      this.PWM1CMP.configure(this, null, "");
      this.PWM1CMP.build();
         this.PWM1CMP.add_hdl_path('{

            '{"PWM1CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM1CMP, `UVM_REG_ADDR_WIDTH'h54, "RW", 0);
		this.PWM1CMP_compna = this.PWM1CMP.compna;
		this.PWM1CMP_compnb = this.PWM1CMP.compnb;
      this.PWM2CMP = ral_reg_PWM2CMP::type_id::create("PWM2CMP",,get_full_name());
      this.PWM2CMP.configure(this, null, "");
      this.PWM2CMP.build();
         this.PWM2CMP.add_hdl_path('{

            '{"PWM2CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM2CMP, `UVM_REG_ADDR_WIDTH'h58, "RW", 0);
		this.PWM2CMP_compna = this.PWM2CMP.compna;
		this.PWM2CMP_compnb = this.PWM2CMP.compnb;
      this.PWM3CMP = ral_reg_PWM3CMP::type_id::create("PWM3CMP",,get_full_name());
      this.PWM3CMP.configure(this, null, "");
      this.PWM3CMP.build();
         this.PWM3CMP.add_hdl_path('{

            '{"PWM3CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM3CMP, `UVM_REG_ADDR_WIDTH'h5C, "RW", 0);
		this.PWM3CMP_compna = this.PWM3CMP.compna;
		this.PWM3CMP_compnb = this.PWM3CMP.compnb;
      this.PWM4CMP = ral_reg_PWM4CMP::type_id::create("PWM4CMP",,get_full_name());
      this.PWM4CMP.configure(this, null, "");
      this.PWM4CMP.build();
         this.PWM4CMP.add_hdl_path('{

            '{"PWM4CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM4CMP, `UVM_REG_ADDR_WIDTH'h60, "RW", 0);
		this.PWM4CMP_compna = this.PWM4CMP.compna;
		this.PWM4CMP_compnb = this.PWM4CMP.compnb;
      this.PWM5CMP = ral_reg_PWM5CMP::type_id::create("PWM5CMP",,get_full_name());
      this.PWM5CMP.configure(this, null, "");
      this.PWM5CMP.build();
         this.PWM5CMP.add_hdl_path('{

            '{"PWM5CMP", -1, -1}
         });
      this.default_map.add_reg(this.PWM5CMP, `UVM_REG_ADDR_WIDTH'h64, "RW", 0);
		this.PWM5CMP_compna = this.PWM5CMP.compna;
		this.PWM5CMP_compnb = this.PWM5CMP.compnb;
      this.PWM01DB = ral_reg_PWM01DB::type_id::create("PWM01DB",,get_full_name());
      this.PWM01DB.configure(this, null, "");
      this.PWM01DB.build();
         this.PWM01DB.add_hdl_path('{

            '{"PWM01DB", -1, -1}
         });
      this.default_map.add_reg(this.PWM01DB, `UVM_REG_ADDR_WIDTH'h68, "RW", 0);
		this.PWM01DB_delayn = this.PWM01DB.delayn;
		this.PWM01DB_delaym = this.PWM01DB.delaym;
		this.PWM01DB_dbnen = this.PWM01DB.dbnen;
		this.PWM01DB_dbmen = this.PWM01DB.dbmen;
      this.PWM23DB = ral_reg_PWM23DB::type_id::create("PWM23DB",,get_full_name());
      this.PWM23DB.configure(this, null, "");
      this.PWM23DB.build();
         this.PWM23DB.add_hdl_path('{

            '{"PWM23DB", -1, -1}
         });
      this.default_map.add_reg(this.PWM23DB, `UVM_REG_ADDR_WIDTH'h6C, "RW", 0);
		this.PWM23DB_delayn = this.PWM23DB.delayn;
		this.PWM23DB_delaym = this.PWM23DB.delaym;
		this.PWM23DB_dbnen = this.PWM23DB.dbnen;
		this.PWM23DB_dbmen = this.PWM23DB.dbmen;
      this.PWM45DB = ral_reg_PWM45DB::type_id::create("PWM45DB",,get_full_name());
      this.PWM45DB.configure(this, null, "");
      this.PWM45DB.build();
         this.PWM45DB.add_hdl_path('{

            '{"PWM45DB", -1, -1}
         });
      this.default_map.add_reg(this.PWM45DB, `UVM_REG_ADDR_WIDTH'h70, "RW", 0);
		this.PWM45DB_delayn = this.PWM45DB.delayn;
		this.PWM45DB_delaym = this.PWM45DB.delaym;
		this.PWM45DB_dbnen = this.PWM45DB.dbnen;
		this.PWM45DB_dbmen = this.PWM45DB.dbmen;
      this.CAPCTL = ral_reg_CAPCTL::type_id::create("CAPCTL",,get_full_name());
      this.CAPCTL.configure(this, null, "");
      this.CAPCTL.build();
         this.CAPCTL.add_hdl_path('{

            '{"CAPCTL", -1, -1}
         });
      this.default_map.add_reg(this.CAPCTL, `UVM_REG_ADDR_WIDTH'h74, "RW", 0);
		this.CAPCTL_cap0mode = this.CAPCTL.cap0mode;
		this.cap0mode = this.CAPCTL.cap0mode;
		this.CAPCTL_cap1mode = this.CAPCTL.cap1mode;
		this.cap1mode = this.CAPCTL.cap1mode;
		this.CAPCTL_cap2mode = this.CAPCTL.cap2mode;
		this.cap2mode = this.CAPCTL.cap2mode;
		this.CAPCTL_cap3mode = this.CAPCTL.cap3mode;
		this.cap3mode = this.CAPCTL.cap3mode;
		this.CAPCTL_cap4mode = this.CAPCTL.cap4mode;
		this.cap4mode = this.CAPCTL.cap4mode;
		this.CAPCTL_cap5mode = this.CAPCTL.cap5mode;
		this.cap5mode = this.CAPCTL.cap5mode;
		this.CAPCTL_cap0event = this.CAPCTL.cap0event;
		this.cap0event = this.CAPCTL.cap0event;
		this.CAPCTL_cap1event = this.CAPCTL.cap1event;
		this.cap1event = this.CAPCTL.cap1event;
		this.CAPCTL_cap2event = this.CAPCTL.cap2event;
		this.cap2event = this.CAPCTL.cap2event;
		this.CAPCTL_cap3event = this.CAPCTL.cap3event;
		this.cap3event = this.CAPCTL.cap3event;
		this.CAPCTL_cap4event = this.CAPCTL.cap4event;
		this.cap4event = this.CAPCTL.cap4event;
		this.CAPCTL_cap5event = this.CAPCTL.cap5event;
		this.cap5event = this.CAPCTL.cap5event;
      this.CAPINTEN = ral_reg_CAPINTEN::type_id::create("CAPINTEN",,get_full_name());
      this.CAPINTEN.configure(this, null, "");
      this.CAPINTEN.build();
         this.CAPINTEN.add_hdl_path('{

            '{"CAPINTEN", -1, -1}
         });
      this.default_map.add_reg(this.CAPINTEN, `UVM_REG_ADDR_WIDTH'h78, "RW", 0);
		this.CAPINTEN_cap0cntie = this.CAPINTEN.cap0cntie;
		this.cap0cntie = this.CAPINTEN.cap0cntie;
		this.CAPINTEN_cap1cntie = this.CAPINTEN.cap1cntie;
		this.cap1cntie = this.CAPINTEN.cap1cntie;
		this.CAPINTEN_cap2cntie = this.CAPINTEN.cap2cntie;
		this.cap2cntie = this.CAPINTEN.cap2cntie;
		this.CAPINTEN_cap3cntie = this.CAPINTEN.cap3cntie;
		this.cap3cntie = this.CAPINTEN.cap3cntie;
		this.CAPINTEN_cap4cntie = this.CAPINTEN.cap4cntie;
		this.cap4cntie = this.CAPINTEN.cap4cntie;
		this.CAPINTEN_cap5cntie = this.CAPINTEN.cap5cntie;
		this.cap5cntie = this.CAPINTEN.cap5cntie;
		this.CAPINTEN_cap0timie = this.CAPINTEN.cap0timie;
		this.cap0timie = this.CAPINTEN.cap0timie;
		this.CAPINTEN_cap1timie = this.CAPINTEN.cap1timie;
		this.cap1timie = this.CAPINTEN.cap1timie;
		this.CAPINTEN_cap2timie = this.CAPINTEN.cap2timie;
		this.cap2timie = this.CAPINTEN.cap2timie;
		this.CAPINTEN_cap3timie = this.CAPINTEN.cap3timie;
		this.cap3timie = this.CAPINTEN.cap3timie;
		this.CAPINTEN_cap4timie = this.CAPINTEN.cap4timie;
		this.cap4timie = this.CAPINTEN.cap4timie;
		this.CAPINTEN_cap5timie = this.CAPINTEN.cap5timie;
		this.cap5timie = this.CAPINTEN.cap5timie;
      this.CAPRIS = ral_reg_CAPRIS::type_id::create("CAPRIS",,get_full_name());
      this.CAPRIS.configure(this, null, "");
      this.CAPRIS.build();
         this.CAPRIS.add_hdl_path('{

            '{"CAPRIS", -1, -1}
         });
      this.default_map.add_reg(this.CAPRIS, `UVM_REG_ADDR_WIDTH'h7C, "RW", 0);
		this.CAPRIS_cap0cntris = this.CAPRIS.cap0cntris;
		this.cap0cntris = this.CAPRIS.cap0cntris;
		this.CAPRIS_cap1cntris = this.CAPRIS.cap1cntris;
		this.cap1cntris = this.CAPRIS.cap1cntris;
		this.CAPRIS_cap2cntris = this.CAPRIS.cap2cntris;
		this.cap2cntris = this.CAPRIS.cap2cntris;
		this.CAPRIS_cap3cntris = this.CAPRIS.cap3cntris;
		this.cap3cntris = this.CAPRIS.cap3cntris;
		this.CAPRIS_cap4cntris = this.CAPRIS.cap4cntris;
		this.cap4cntris = this.CAPRIS.cap4cntris;
		this.CAPRIS_cap5cntris = this.CAPRIS.cap5cntris;
		this.cap5cntris = this.CAPRIS.cap5cntris;
		this.CAPRIS_cap0timris = this.CAPRIS.cap0timris;
		this.cap0timris = this.CAPRIS.cap0timris;
		this.CAPRIS_cap1timris = this.CAPRIS.cap1timris;
		this.cap1timris = this.CAPRIS.cap1timris;
		this.CAPRIS_cap2timris = this.CAPRIS.cap2timris;
		this.cap2timris = this.CAPRIS.cap2timris;
		this.CAPRIS_cap3timris = this.CAPRIS.cap3timris;
		this.cap3timris = this.CAPRIS.cap3timris;
		this.CAPRIS_cap4timris = this.CAPRIS.cap4timris;
		this.cap4timris = this.CAPRIS.cap4timris;
		this.CAPRIS_cap5timris = this.CAPRIS.cap5timris;
		this.cap5timris = this.CAPRIS.cap5timris;
      this.CAPIC = ral_reg_CAPIC::type_id::create("CAPIC",,get_full_name());
      this.CAPIC.configure(this, null, "");
      this.CAPIC.build();
         this.CAPIC.add_hdl_path('{

            '{"CAPIC", -1, -1}
         });
      this.default_map.add_reg(this.CAPIC, `UVM_REG_ADDR_WIDTH'h80, "RW", 0);
		this.CAPIC_cap0cntic = this.CAPIC.cap0cntic;
		this.cap0cntic = this.CAPIC.cap0cntic;
		this.CAPIC_cap1cntic = this.CAPIC.cap1cntic;
		this.cap1cntic = this.CAPIC.cap1cntic;
		this.CAPIC_cap2cntic = this.CAPIC.cap2cntic;
		this.cap2cntic = this.CAPIC.cap2cntic;
		this.CAPIC_cap3cntic = this.CAPIC.cap3cntic;
		this.cap3cntic = this.CAPIC.cap3cntic;
		this.CAPIC_cap4cntic = this.CAPIC.cap4cntic;
		this.cap4cntic = this.CAPIC.cap4cntic;
		this.CAPIC_cap5cntic = this.CAPIC.cap5cntic;
		this.cap5cntic = this.CAPIC.cap5cntic;
		this.CAPIC_cap0timic = this.CAPIC.cap0timic;
		this.cap0timic = this.CAPIC.cap0timic;
		this.CAPIC_cap1timic = this.CAPIC.cap1timic;
		this.cap1timic = this.CAPIC.cap1timic;
		this.CAPIC_cap2timic = this.CAPIC.cap2timic;
		this.cap2timic = this.CAPIC.cap2timic;
		this.CAPIC_cap3timic = this.CAPIC.cap3timic;
		this.cap3timic = this.CAPIC.cap3timic;
		this.CAPIC_cap4timic = this.CAPIC.cap4timic;
		this.cap4timic = this.CAPIC.cap4timic;
		this.CAPIC_cap5timic = this.CAPIC.cap5timic;
		this.cap5timic = this.CAPIC.cap5timic;
      this.CAPIS = ral_reg_CAPIS::type_id::create("CAPIS",,get_full_name());
      this.CAPIS.configure(this, null, "");
      this.CAPIS.build();
         this.CAPIS.add_hdl_path('{

            '{"CAPIS", -1, -1}
         });
      this.default_map.add_reg(this.CAPIS, `UVM_REG_ADDR_WIDTH'h84, "RW", 0);
		this.CAPIS_cap0cntis = this.CAPIS.cap0cntis;
		this.cap0cntis = this.CAPIS.cap0cntis;
		this.CAPIS_cap1cntis = this.CAPIS.cap1cntis;
		this.cap1cntis = this.CAPIS.cap1cntis;
		this.CAPIS_cap2cntis = this.CAPIS.cap2cntis;
		this.cap2cntis = this.CAPIS.cap2cntis;
		this.CAPIS_cap3cntis = this.CAPIS.cap3cntis;
		this.cap3cntis = this.CAPIS.cap3cntis;
		this.CAPIS_cap4cntis = this.CAPIS.cap4cntis;
		this.cap4cntis = this.CAPIS.cap4cntis;
		this.CAPIS_cap5cntis = this.CAPIS.cap5cntis;
		this.cap5cntis = this.CAPIS.cap5cntis;
		this.CAPIS_cap0timis = this.CAPIS.cap0timis;
		this.cap0timis = this.CAPIS.cap0timis;
		this.CAPIS_cap1timis = this.CAPIS.cap1timis;
		this.cap1timis = this.CAPIS.cap1timis;
		this.CAPIS_cap2timis = this.CAPIS.cap2timis;
		this.cap2timis = this.CAPIS.cap2timis;
		this.CAPIS_cap3timis = this.CAPIS.cap3timis;
		this.cap3timis = this.CAPIS.cap3timis;
		this.CAPIS_cap4timis = this.CAPIS.cap4timis;
		this.cap4timis = this.CAPIS.cap4timis;
		this.CAPIS_cap5timis = this.CAPIS.cap5timis;
		this.cap5timis = this.CAPIS.cap5timis;
      this.CAP01T = ral_reg_CAP01T::type_id::create("CAP01T",,get_full_name());
      this.CAP01T.configure(this, null, "");
      this.CAP01T.build();
         this.CAP01T.add_hdl_path('{

            '{"CAP01T", -1, -1}
         });
      this.default_map.add_reg(this.CAP01T, `UVM_REG_ADDR_WIDTH'h88, "RO", 0);
		this.CAP01T_CAPnmTn = this.CAP01T.CAPnmTn;
		this.CAP01T_CAPnmTm = this.CAP01T.CAPnmTm;
      this.CAP23T = ral_reg_CAP23T::type_id::create("CAP23T",,get_full_name());
      this.CAP23T.configure(this, null, "");
      this.CAP23T.build();
         this.CAP23T.add_hdl_path('{

            '{"CAP23T", -1, -1}
         });
      this.default_map.add_reg(this.CAP23T, `UVM_REG_ADDR_WIDTH'h8C, "RO", 0);
		this.CAP23T_CAPnmTn = this.CAP23T.CAPnmTn;
		this.CAP23T_CAPnmTm = this.CAP23T.CAPnmTm;
      this.CAP45T = ral_reg_CAP45T::type_id::create("CAP45T",,get_full_name());
      this.CAP45T.configure(this, null, "");
      this.CAP45T.build();
         this.CAP45T.add_hdl_path('{

            '{"CAP45T", -1, -1}
         });
      this.default_map.add_reg(this.CAP45T, `UVM_REG_ADDR_WIDTH'h90, "RO", 0);
		this.CAP45T_CAPnmTn = this.CAP45T.CAPnmTn;
		this.CAP45T_CAPnmTm = this.CAP45T.CAPnmTm;
      this.CAP01MATCH = ral_reg_CAP01MATCH::type_id::create("CAP01MATCH",,get_full_name());
      this.CAP01MATCH.configure(this, null, "");
      this.CAP01MATCH.build();
         this.CAP01MATCH.add_hdl_path('{

            '{"CAP01MATCH", -1, -1}
         });
      this.default_map.add_reg(this.CAP01MATCH, `UVM_REG_ADDR_WIDTH'h94, "RW", 0);
		this.CAP01MATCH_CAPnmMATCHn = this.CAP01MATCH.CAPnmMATCHn;
		this.CAP01MATCH_CAPnmMATCHm = this.CAP01MATCH.CAPnmMATCHm;
      this.CAP23MATCH = ral_reg_CAP23MATCH::type_id::create("CAP23MATCH",,get_full_name());
      this.CAP23MATCH.configure(this, null, "");
      this.CAP23MATCH.build();
         this.CAP23MATCH.add_hdl_path('{

            '{"CAP23MATCH", -1, -1}
         });
      this.default_map.add_reg(this.CAP23MATCH, `UVM_REG_ADDR_WIDTH'h98, "RW", 0);
		this.CAP23MATCH_CAPnmMATCHn = this.CAP23MATCH.CAPnmMATCHn;
		this.CAP23MATCH_CAPnmMATCHm = this.CAP23MATCH.CAPnmMATCHm;
      this.CAP45MATCH = ral_reg_CAP45MATCH::type_id::create("CAP45MATCH",,get_full_name());
      this.CAP45MATCH.configure(this, null, "");
      this.CAP45MATCH.build();
         this.CAP45MATCH.add_hdl_path('{

            '{"CAP45MATCH", -1, -1}
         });
      this.default_map.add_reg(this.CAP45MATCH, `UVM_REG_ADDR_WIDTH'h9C, "RW", 0);
		this.CAP45MATCH_CAPnmMATCHn = this.CAP45MATCH.CAPnmMATCHn;
		this.CAP45MATCH_CAPnmMATCHm = this.CAP45MATCH.CAPnmMATCHm;
      this.TIMINTEN = ral_reg_TIMINTEN::type_id::create("TIMINTEN",,get_full_name());
      this.TIMINTEN.configure(this, null, "");
      this.TIMINTEN.build();
         this.TIMINTEN.add_hdl_path('{

            '{"TIMINTEN", -1, -1}
         });
      this.default_map.add_reg(this.TIMINTEN, `UVM_REG_ADDR_WIDTH'hA0, "RW", 0);
		this.TIMINTEN_tim0ie = this.TIMINTEN.tim0ie;
		this.tim0ie = this.TIMINTEN.tim0ie;
		this.TIMINTEN_tim1ie = this.TIMINTEN.tim1ie;
		this.tim1ie = this.TIMINTEN.tim1ie;
		this.TIMINTEN_tim2ie = this.TIMINTEN.tim2ie;
		this.tim2ie = this.TIMINTEN.tim2ie;
		this.TIMINTEN_tim3ie = this.TIMINTEN.tim3ie;
		this.tim3ie = this.TIMINTEN.tim3ie;
		this.TIMINTEN_tim4ie = this.TIMINTEN.tim4ie;
		this.tim4ie = this.TIMINTEN.tim4ie;
		this.TIMINTEN_tim5ie = this.TIMINTEN.tim5ie;
		this.tim5ie = this.TIMINTEN.tim5ie;
      this.TIMRIS = ral_reg_TIMRIS::type_id::create("TIMRIS",,get_full_name());
      this.TIMRIS.configure(this, null, "");
      this.TIMRIS.build();
         this.TIMRIS.add_hdl_path('{

            '{"TIMRIS", -1, -1}
         });
      this.default_map.add_reg(this.TIMRIS, `UVM_REG_ADDR_WIDTH'hA4, "RW", 0);
		this.TIMRIS_tim0ris = this.TIMRIS.tim0ris;
		this.tim0ris = this.TIMRIS.tim0ris;
		this.TIMRIS_tim1ris = this.TIMRIS.tim1ris;
		this.tim1ris = this.TIMRIS.tim1ris;
		this.TIMRIS_tim2ris = this.TIMRIS.tim2ris;
		this.tim2ris = this.TIMRIS.tim2ris;
		this.TIMRIS_tim3ris = this.TIMRIS.tim3ris;
		this.tim3ris = this.TIMRIS.tim3ris;
		this.TIMRIS_tim4ris = this.TIMRIS.tim4ris;
		this.tim4ris = this.TIMRIS.tim4ris;
		this.TIMRIS_tim5ris = this.TIMRIS.tim5ris;
		this.tim5ris = this.TIMRIS.tim5ris;
      this.TIMIC = ral_reg_TIMIC::type_id::create("TIMIC",,get_full_name());
      this.TIMIC.configure(this, null, "");
      this.TIMIC.build();
         this.TIMIC.add_hdl_path('{

            '{"TIMIC", -1, -1}
         });
      this.default_map.add_reg(this.TIMIC, `UVM_REG_ADDR_WIDTH'hA8, "RW", 0);
		this.TIMIC_tim0ic = this.TIMIC.tim0ic;
		this.tim0ic = this.TIMIC.tim0ic;
		this.TIMIC_tim1ic = this.TIMIC.tim1ic;
		this.tim1ic = this.TIMIC.tim1ic;
		this.TIMIC_tim2ic = this.TIMIC.tim2ic;
		this.tim2ic = this.TIMIC.tim2ic;
		this.TIMIC_tim3ic = this.TIMIC.tim3ic;
		this.tim3ic = this.TIMIC.tim3ic;
		this.TIMIC_tim4ic = this.TIMIC.tim4ic;
		this.tim4ic = this.TIMIC.tim4ic;
		this.TIMIC_tim5ic = this.TIMIC.tim5ic;
		this.tim5ic = this.TIMIC.tim5ic;
      this.TIMIS = ral_reg_TIMIS::type_id::create("TIMIS",,get_full_name());
      this.TIMIS.configure(this, null, "");
      this.TIMIS.build();
         this.TIMIS.add_hdl_path('{

            '{"TIMIS", -1, -1}
         });
      this.default_map.add_reg(this.TIMIS, `UVM_REG_ADDR_WIDTH'hAC, "RW", 0);
		this.TIMIS_tim0is = this.TIMIS.tim0is;
		this.tim0is = this.TIMIS.tim0is;
		this.TIMIS_tim1is = this.TIMIS.tim1is;
		this.tim1is = this.TIMIS.tim1is;
		this.TIMIS_tim2is = this.TIMIS.tim2is;
		this.tim2is = this.TIMIS.tim2is;
		this.TIMIS_tim3is = this.TIMIS.tim3is;
		this.tim3is = this.TIMIS.tim3is;
		this.TIMIS_tim4is = this.TIMIS.tim4is;
		this.tim4is = this.TIMIS.tim4is;
		this.TIMIS_tim5is = this.TIMIS.tim5is;
		this.tim5is = this.TIMIS.tim5is;
      this.TIM01LOAD = ral_reg_TIM01LOAD::type_id::create("TIM01LOAD",,get_full_name());
      this.TIM01LOAD.configure(this, null, "");
      this.TIM01LOAD.build();
         this.TIM01LOAD.add_hdl_path('{

            '{"TIM01LOAD", -1, -1}
         });
      this.default_map.add_reg(this.TIM01LOAD, `UVM_REG_ADDR_WIDTH'hB0, "RW", 0);
		this.TIM01LOAD_timloadn = this.TIM01LOAD.timloadn;
		this.TIM01LOAD_timloadm = this.TIM01LOAD.timloadm;
      this.TIM23LOAD = ral_reg_TIM23LOAD::type_id::create("TIM23LOAD",,get_full_name());
      this.TIM23LOAD.configure(this, null, "");
      this.TIM23LOAD.build();
         this.TIM23LOAD.add_hdl_path('{

            '{"TIM23LOAD", -1, -1}
         });
      this.default_map.add_reg(this.TIM23LOAD, `UVM_REG_ADDR_WIDTH'hB4, "RW", 0);
		this.TIM23LOAD_timloadn = this.TIM23LOAD.timloadn;
		this.TIM23LOAD_timloadm = this.TIM23LOAD.timloadm;
      this.TIM45LOAD = ral_reg_TIM45LOAD::type_id::create("TIM45LOAD",,get_full_name());
      this.TIM45LOAD.configure(this, null, "");
      this.TIM45LOAD.build();
         this.TIM45LOAD.add_hdl_path('{

            '{"TIM45LOAD", -1, -1}
         });
      this.default_map.add_reg(this.TIM45LOAD, `UVM_REG_ADDR_WIDTH'hB8, "RW", 0);
		this.TIM45LOAD_timloadn = this.TIM45LOAD.timloadn;
		this.TIM45LOAD_timloadm = this.TIM45LOAD.timloadm;
      this.TIM01COUNT = ral_reg_TIM01COUNT::type_id::create("TIM01COUNT",,get_full_name());
      this.TIM01COUNT.configure(this, null, "");
      this.TIM01COUNT.build();
         this.TIM01COUNT.add_hdl_path('{

            '{"TIM01COUNT", -1, -1}
         });
      this.default_map.add_reg(this.TIM01COUNT, `UVM_REG_ADDR_WIDTH'hBC, "RO", 0);
		this.TIM01COUNT_timcntn = this.TIM01COUNT.timcntn;
		this.TIM01COUNT_timcntm = this.TIM01COUNT.timcntm;
      this.TIM23COUNT = ral_reg_TIM23COUNT::type_id::create("TIM23COUNT",,get_full_name());
      this.TIM23COUNT.configure(this, null, "");
      this.TIM23COUNT.build();
         this.TIM23COUNT.add_hdl_path('{

            '{"TIM23COUNT", -1, -1}
         });
      this.default_map.add_reg(this.TIM23COUNT, `UVM_REG_ADDR_WIDTH'hC0, "RO", 0);
		this.TIM23COUNT_timcntn = this.TIM23COUNT.timcntn;
		this.TIM23COUNT_timcntm = this.TIM23COUNT.timcntm;
      this.TIM45COUNT = ral_reg_TIM45COUNT::type_id::create("TIM45COUNT",,get_full_name());
      this.TIM45COUNT.configure(this, null, "");
      this.TIM45COUNT.build();
         this.TIM45COUNT.add_hdl_path('{

            '{"TIM45COUNT", -1, -1}
         });
      this.default_map.add_reg(this.TIM45COUNT, `UVM_REG_ADDR_WIDTH'hC4, "RO", 0);
		this.TIM45COUNT_timcntn = this.TIM45COUNT.timcntn;
		this.TIM45COUNT_timcntm = this.TIM45COUNT.timcntm;
      this.CNT01VAL = ral_reg_CNT01VAL::type_id::create("CNT01VAL",,get_full_name());
      this.CNT01VAL.configure(this, null, "");
      this.CNT01VAL.build();
         this.CNT01VAL.add_hdl_path('{

            '{"CNT01VAL", -1, -1}
         });
      this.default_map.add_reg(this.CNT01VAL, `UVM_REG_ADDR_WIDTH'hC8, "RO", 0);
		this.CNT01VAL_Cntnval = this.CNT01VAL.Cntnval;
		this.CNT01VAL_Cntmval = this.CNT01VAL.Cntmval;
      this.CNT23VAL = ral_reg_CNT23VAL::type_id::create("CNT23VAL",,get_full_name());
      this.CNT23VAL.configure(this, null, "");
      this.CNT23VAL.build();
         this.CNT23VAL.add_hdl_path('{

            '{"CNT23VAL", -1, -1}
         });
      this.default_map.add_reg(this.CNT23VAL, `UVM_REG_ADDR_WIDTH'hCC, "RO", 0);
		this.CNT23VAL_Cntnval = this.CNT23VAL.Cntnval;
		this.CNT23VAL_Cntmval = this.CNT23VAL.Cntmval;
      this.CNT45VAL = ral_reg_CNT45VAL::type_id::create("CNT45VAL",,get_full_name());
      this.CNT45VAL.configure(this, null, "");
      this.CNT45VAL.build();
         this.CNT45VAL.add_hdl_path('{

            '{"CNT45VAL", -1, -1}
         });
      this.default_map.add_reg(this.CNT45VAL, `UVM_REG_ADDR_WIDTH'hD0, "RO", 0);
		this.CNT45VAL_Cntnval = this.CNT45VAL.Cntnval;
		this.CNT45VAL_Cntmval = this.CNT45VAL.Cntmval;
   endfunction : build

	`uvm_object_utils(ral_block_pwm)

endclass : ral_block_pwm



`endif
