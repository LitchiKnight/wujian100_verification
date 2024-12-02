class top_reg_model extends uvm_reg_block;
  `uvm_object_utils(top_reg_model)

  ral_block_dma  dma  ;
  ral_block_wdt  wdt  ;
  ral_block_tim0 tim0 ;
  ral_block_pwm  pwm  ;
  ral_block_rtc  rtc  ;
  ral_block_usi0 usi0 ;

  function new(string name = "top_reg_model");
    super.new(name);
  endfunction

  extern virtual function void build();
endclass

function void top_reg_model::build();
  default_map = create_map("default_map", 0, 4, UVM_LITTLE_ENDIAN, 1);

  dma = ral_block_dma::type_id::create("dma");
  dma.configure(this, "");
  dma.build();
  default_map.add_submap(dma.default_map, `DMA_REG_BASE_ADDR);

  wdt = ral_block_wdt::type_id::create("wdt");
  wdt.configure(this, "");
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
endfunction
