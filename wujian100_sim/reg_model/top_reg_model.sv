class top_reg_model extends uvm_reg_block;
  `uvm_object_utils(top_reg_model)

  ral_block_dma dma;
  ral_block_wdt wdt;

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
endfunction
