package sim_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  import yuu_common_pkg::*;
  import yuu_ahb_pkg::*;
  import yuu_int_pkg::*;

  `include "../include/sim_macro.svh"
  `include "../include/sim_define.svh"

  `include "../reg_model/ral_dma.sv"
  `include "../reg_model/ral_wdt.sv"
  `include "../reg_model/ral_tim0.sv"
  `include "../reg_model/ral_pwm.sv"
  `include "../reg_model/top_reg_model.sv"

  `include "../src/config/env_config.svh"

  `include "../env/virtual_sequencer.svh"
  `include "../env/env.svh"

  `include "../src/seq/mem_seq/memory_write_sequence.svh"
  `include "../src/seq/mem_seq/memory_read_sequence.svh"
  `include "../src/seq/int_seq/wdt_int_seq.svh"
  `include "../src/seq/int_seq/tim0_tim1_int_seq.svh"

  `include "../test/base_test/wujian100_base_test.sv"
  `include "../test/base_test/smoke_base_test.sv"

  `include "../test/smoke_test/sram_smoke_test.sv"
  `include "../test/smoke_test/dma_smoke_test.sv"
  `include "../test/smoke_test/wdt_smoke_test.sv"
  `include "../test/smoke_test/timer_smoke_test.sv"
  `include "../test/smoke_test/pwm_smoke_test.sv"
endpackage
