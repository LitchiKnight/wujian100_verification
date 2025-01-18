class spi_config extends uvm_object;
  virtual spi_interface           vif                     ;
          bit                     cpol                    ;
          bit                     cpha                    ;
          int                     data_size = 4'h7        ;
          real                    freq = 1000             ; // kHz
          uvm_event_pool          events                  ;
          uvm_active_passive_enum is_active  = UVM_ACTIVE ;

  `uvm_object_utils_begin(spi_config)
    `uvm_field_int(cpol     , UVM_ALL_ON)
    `uvm_field_int(cpha     , UVM_ALL_ON)
    `uvm_field_int(data_size, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "spi_config");
    super.new(name);
  endfunction
endclass
