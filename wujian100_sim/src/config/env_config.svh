class env_config extends uvm_object;
  `uvm_object_utils(env_config);

  yuu_ahb_master_config ahb_mst0_cfg ;
  yuu_ahb_master_config ahb_mst1_cfg ;
  yuu_ahb_master_config ahb_mst2_cfg ;
  yuu_int_config        int_cfg      ;
  uvm_event_pool        events       ;
  top_reg_model         regm         ;

  function new(string name = "env_config");
    super.new(name);
  endfunction

  extern task set_reg_value(bit[31:0] data,
                            string    reg_name,
                            string    block_name);
  extern task get_reg_value(output bit[31:0] data,
                            input  string    reg_name,
							input  string    block_name);
  extern task set_field_value(bit[31:0] data,
                              string    field_name,
                              string    reg_name,
                              string    block_name);
  extern task get_field_value(output bit[31:0] data,
                              input  string    field_name,
                              input  string    reg_name,
                              input  string    block_name);
endclass

task env_config::set_reg_value(bit[31:0] data,
                               string    reg_name,
                               string    block_name);
  uvm_reg_block block    ;
  uvm_reg       register ;
  uvm_status_e  status   ;

  block    = regm.get_block_by_name(block_name);
  register = block.get_reg_by_name(reg_name);

  register.write(status, data);

  if (status == UVM_IS_OK)
    `uvm_info(get_type_name(), $sformatf("write 0x%8h to register %s.%s", data, block_name, reg_name), UVM_LOW)
  else
    `uvm_error(get_type_name(), $sformatf("write register %s.%s failed", block_name, reg_name))
endtask

task env_config::get_reg_value(output bit[31:0] data,
                               input  string    reg_name,
						       input  string    block_name);
  uvm_reg_block block    ;
  uvm_reg       register ;
  uvm_status_e  status   ;

  block    = regm.get_block_by_name(block_name);
  register = block.get_reg_by_name(reg_name);

  register.read(status, data);

  if (status == UVM_IS_OK)
    `uvm_info(get_type_name(), $sformatf("read 0x%8h from register %s.%s", data, block_name, reg_name), UVM_LOW)
  else
    `uvm_error(get_type_name(), $sformatf("read register %s.%s failed", block_name, reg_name))
endtask

task env_config::set_field_value(bit[31:0] data,
                                 string    field_name,
                                 string    reg_name,
                                 string    block_name);
  uvm_reg_block block        ;
  uvm_reg       register     ;
  uvm_reg_field field        ;
  uvm_status_e  status       ;
  bit[31:0]     n_bits       ;
  bit[31:0]     lsb_pos      ;
  bit[31:0]     mask         ;
  bit[31:0]     reg_raw_data ;
  bit[31:0]     reg_set_data ;

  block    = regm.get_block_by_name(block_name);
  register = block.get_reg_by_name(reg_name);
  field    = register.get_field_by_name(field_name);
  n_bits   = field.get_n_bits();
  lsb_pos  = field.get_lsb_pos();
  mask     = ~(~(32'hffff_ffff << n_bits) << lsb_pos);

  // field.set(data);
  // register.update(status);
  reg_raw_data = register.get();
  reg_set_data = (reg_raw_data & mask) | (data << lsb_pos);
  register.write(status, reg_set_data);

  if (status == UVM_IS_OK)
    `uvm_info(get_type_name(), $sformatf("write 0x%8h to field %s.%s.%s", data, block_name, reg_name, field_name), UVM_LOW)
  else
    `uvm_error(get_type_name(), $sformatf("write field %s.%s.%s failed", block_name, reg_name, field_name))
endtask

task env_config::get_field_value(output bit[31:0] data,
                                 input  string    field_name,
                                 input  string    reg_name,
                                 input  string    block_name);
  uvm_reg_block block    ;
  uvm_reg       register ;
  uvm_reg_field field    ;
  uvm_status_e  status   ;

  block    = regm.get_block_by_name(block_name);
  register = block.get_reg_by_name(reg_name);
  field    = register.get_field_by_name(field_name);

  field.read(status, data);

  if (status == UVM_IS_OK)
    `uvm_info(get_type_name(), $sformatf("read 0x%8h from field %s.%s.%s", data, block_name, reg_name, field_name), UVM_LOW)
  else
    `uvm_error(get_type_name(), $sformatf("read field %s.%s.%s failed", block_name, reg_name, field_name))
endtask
