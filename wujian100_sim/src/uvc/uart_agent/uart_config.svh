class uart_config extends uvm_object;
  virtual uart_interface          vif                         ;
          uart_baud_rate_e        buad_rate   = UART_9600BPS  ;
          uart_data_bit_e         data_bit    = UART_DATA_8BIT;
          real                    stop_bit    = 1.0           ;
          bit                     parity_en   = 1'b0          ;
          uart_parity_e           parity_type = UART_ODD_PAR  ;
          uvm_active_passive_enum is_active   = UVM_ACTIVE    ;
          uvm_event_pool          events                      ;

  `uvm_object_utils_begin(uart_config)
    `uvm_field_enum(uart_baud_rate_e, buad_rate, UVM_ALL_ON)
    `uvm_field_enum(uart_data_bit_e , data_bit , UVM_ALL_ON)
    `uvm_field_real(                  stop_bit , UVM_ALL_ON)
    `uvm_field_int (                  parity_en, UVM_ALL_ON)
    if (parity_en)
      `uvm_field_enum(uart_parity_e, parity_type, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "uart_config");
    super.new(name);
  endfunction
endclass
