class uart_config_base_sequence extends usi_config_base_sequence;
  `uvm_declare_p_sequencer(virtual_sequencer)

  rand bit[1:0] dbit ;
  rand bit[1:0] pbit ;
  rand bit      pen  ;
  rand bit      eps  ;

  function new(string name = "uart_config_base_sequence");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(uart_config_base_sequence)
    `uvm_field_int(dbit, UVM_ALL_ON)
    `uvm_field_int(pbit, UVM_ALL_ON)
    `uvm_field_int(pen , UVM_ALL_ON)
    `uvm_field_int(eps , UVM_ALL_ON)
  `uvm_object_utils_end

  constraint default_uart_ctrl_c {
    dbit == 3;
    pbit == 0;
    pen  == 0;
    eps  == 0;
  }

  extern virtual task body();
endclass

task uart_config_base_sequence::body();
  p_sequencer.env_cfg.set_reg_value({26'h0, eps, pen, pbit, dbit}, "UART_CTRL", $sformatf("usi%0d", usi_id));
  super.body();
endtask
