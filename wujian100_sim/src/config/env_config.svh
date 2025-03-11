class env_config extends uvm_object;
  `uvm_object_utils(env_config);

  yuu_ahb_master_config ahb_mst0_cfg ;
  yuu_ahb_master_config ahb_mst1_cfg ;
  yuu_ahb_master_config ahb_mst2_cfg ;
  yuu_int_config        int_cfg      ;
  i2c_config            i2c_mst_cfg  ;
  i2c_config            i2c_slv_cfg  ;
  uart_config           uart_cfg     ;
  spi_config            spi_cfg      ;
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
  extern function string get_memory_hdl(memory_t  mem_type,
                                        bit[31:0] addr);
  extern function void direct_byte_write_memory(bit[7:0]  data,
                                                memory_t  mem_type,
                                                bit[31:0] addr);
  extern function void direct_byte_read_memory(output bit[7:0]  data,
                                               input  memory_t  mem_type,
                                               input  bit[31:0] addr);
  extern function void direct_word_write_memory(bit[31:0] data,
                                                memory_t  mem_type,
                                                bit[31:0] addr);
  extern function void direct_word_read_memory(output bit[31:0] data,
                                               input  memory_t  mem_type,
                                               input  bit[31:0] addr);
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

function string env_config::get_memory_hdl(memory_t  mem_type,
                                           bit[31:0] addr);
  string    hdl       ;
  bit[ 1:0] bank_addr ;
  bit[13:0] word_addr ;
  bit[ 1:0] byte_addr ;

  bank_addr = addr[17:16];
  word_addr = addr[15: 2];
  byte_addr = addr[ 1: 0];

  case (mem_type)
    INST_SRAM: begin
      case (byte_addr)
        0: hdl = $sformatf("%s[%0d]", `"`INST_SRAM_HDL0`", word_addr);
        1: hdl = $sformatf("%s[%0d]", `"`INST_SRAM_HDL1`", word_addr);
        2: hdl = $sformatf("%s[%0d]", `"`INST_SRAM_HDL2`", word_addr);
        3: hdl = $sformatf("%s[%0d]", `"`INST_SRAM_HDL3`", word_addr);
      endcase
    end
    DATA_SRAM: begin
      case (bank_addr)
        0: begin
          case (byte_addr)
            0: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM0_HDL0`", word_addr);
            1: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM0_HDL1`", word_addr);
            2: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM0_HDL2`", word_addr);
            3: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM0_HDL3`", word_addr);
          endcase
        end
        1: begin
          case (byte_addr)
            0: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM1_HDL0`", word_addr);
            1: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM1_HDL1`", word_addr);
            2: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM1_HDL2`", word_addr);
            3: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM1_HDL3`", word_addr);
          endcase
        end
        2: begin
          case (byte_addr)
            0: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM2_HDL0`", word_addr);
            1: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM2_HDL1`", word_addr);
            2: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM2_HDL2`", word_addr);
            3: hdl = $sformatf("%s[%0d]", `"`DATA_SRAM2_HDL3`", word_addr);
          endcase
        end
        default: `uvm_error("ENV_CONFIG", "out of data sram address area")
      endcase
    end
  endcase

  return hdl;
endfunction

function void env_config::direct_byte_write_memory(bit[7:0]  data,
                                                   memory_t  mem_type,
                                                   bit[31:0] addr);
  string hdl_path;

  hdl_path = get_memory_hdl(mem_type, addr);
  uvm_hdl_deposit(hdl_path, data);
endfunction

function void env_config::direct_byte_read_memory(output bit[7:0]  data,
                                                  input  memory_t  mem_type,
                                                  input  bit[31:0] addr);
  string hdl_path;

  hdl_path = get_memory_hdl(mem_type, addr);
  uvm_hdl_read(hdl_path, data);
endfunction

function void env_config::direct_word_write_memory(bit[31:0] data,
                                                   memory_t  mem_type,
                                                   bit[31:0] addr);
  direct_byte_write_memory(data[ 7: 0], mem_type, 4*addr  );
  direct_byte_write_memory(data[15: 8], mem_type, 4*addr+1);
  direct_byte_write_memory(data[23:16], mem_type, 4*addr+2);
  direct_byte_write_memory(data[31:24], mem_type, 4*addr+3);
endfunction

function void env_config::direct_word_read_memory(output bit[31:0] data,
                                                  input  memory_t  mem_type,
                                                  input  bit[31:0] addr);
  direct_byte_read_memory(data[ 7: 0], mem_type, 4*addr  );
  direct_byte_read_memory(data[15: 8], mem_type, 4*addr+1);
  direct_byte_read_memory(data[23:16], mem_type, 4*addr+2);
  direct_byte_read_memory(data[31:24], mem_type, 4*addr+3);
endfunction

