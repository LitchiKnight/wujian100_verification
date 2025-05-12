class top_reg_model extends uvm_reg_block;
  `uvm_object_utils(top_reg_model)

  ral_block_dma  dma  ;
  ral_block_wdt  wdt  ;
  ral_block_tim0 tim0 ;
  ral_block_pwm  pwm  ;
  ral_block_rtc  rtc  ;
  ral_block_usi0 usi0 ;
  ral_block_usi1 usi1 ;
  ral_block_usi2 usi2 ;
  ral_block_gpio gpio ;

  function new(string name = "top_reg_model");
    super.new(name);
  endfunction

  extern virtual function void build();
endclass

function void top_reg_model::build();
  default_map = create_map("default_map", 0, 4, UVM_LITTLE_ENDIAN, 1);

  dma = ral_block_dma::type_id::create("dma");
  dma.configure(this, "x_pdu_top.x_main_bus_top.x_dmac_top.x_reg_ctrl");
  dma.build();
  default_map.add_submap(dma.default_map, `DMA_REG_BASE_ADDR);

  wdt = ral_block_wdt::type_id::create("wdt");
  wdt.configure(this, "x_pdu_top.x_sub_apb0_top.x_wdt_sec_top.x_wdt.U_WDT_REGFILE");
  wdt.build();
  default_map.add_submap(wdt.default_map, `WDT_REG_BASE_ADDR);

  tim0 = ral_block_tim0::type_id::create("tim0");
  tim0.configure(this, "");
  tim0.build();
  default_map.add_submap(tim0.default_map, `TIM0_REG_BASE_ADDR);

  pwm = ral_block_pwm::type_id::create("pwm");
  pwm.configure(this, "");
  pwm.build();
  default_map.add_submap(pwm.default_map, `PWM_REG_BASE_ADDR);

  rtc = ral_block_rtc::type_id::create("rtc");
  rtc.configure(this, "");
  rtc.build();
  default_map.add_submap(rtc.default_map, `RTC_REG_BASE_ADDR);

  usi0 = ral_block_usi0::type_id::create("usi0");
  usi0.configure(this, "");
  usi0.build();
  default_map.add_submap(usi0.default_map, `USI0_REG_BASE_ADDR);

  usi1 = ral_block_usi1::type_id::create("usi1");
  usi1.configure(this, "");
  usi1.build();
  default_map.add_submap(usi1.default_map, `USI1_REG_BASE_ADDR);

  usi2 = ral_block_usi2::type_id::create("usi2");
  usi2.configure(this, "");
  usi2.build();
  default_map.add_submap(usi2.default_map, `USI2_REG_BASE_ADDR);

  gpio = ral_block_gpio::type_id::create("gpio");
  gpio.configure(this, "");
  gpio.build();
  default_map.add_submap(gpio.default_map, `GPIO_REG_BASE_ADDR);
endfunction
