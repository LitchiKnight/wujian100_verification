class memory_read_sequence extends yuu_ahb_master_sequence_base;
  // member variables
  rand   bit[`ADDR_BITS-1:0] rd_addr   ;
  rand   int                 rd_len    ;
         bit[`DATA_BITS-1:0] rd_data[] ;
  // local variables
  static int                 req_id    ;
         int                 rsp_cnt   ;

  `uvm_object_utils_begin(memory_read_sequence)
    `uvm_field_int      (rd_addr, UVM_ALL_ON)
    `uvm_field_int      (rd_len , UVM_ALL_ON)
    `uvm_field_array_int(rd_data, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "memory_read_sequence");
    super.new(name);
  endfunction

  extern task body();
  extern virtual function void response_handler(uvm_sequence_item response);
endclass

task memory_read_sequence::body();
  use_response_handler(1);
  rd_data = new[rd_len];
  for (int i = 0; i < rd_len; i++) begin
    req = yuu_ahb_master_item::type_id::create($sformatf("mem_rd_seq_item_%0d", req_id));
    req.cfg = cfg;
    start_item(req);
    req.randomize() with {
      direction     == READ              ;
      len           == 0                 ;
      start_address == rd_addr+i*4       ;
      data[0]       == 0                 ;
      size          == SIZE32            ;
      burst         == SINGLE            ;
      prot0         == DATA_ACCESS       ;
      prot1         == PRIVILEGED_ACCESS ;
      prot2         == NON_BUFFERABLE    ;
      prot3         == NON_CACHEABLE     ;
      prot3_emt     == NON_MODIFIABLE    ;
      prot4_emt     == NO_LOOKUP         ;
      prot5_emt     == NO_ALLOCATE       ;
      prot6_emt     == NON_SHAREABLE     ;
      lock          == 0                 ;
      nonsec        == NON_SECURE        ;
      excl          == NON_EXCLUSIVE     ;
      idle_delay    == 0                 ;
    };
    finish_item(req);
    req_id++;
  end
  if (cfg.use_response == True)
    wait(rd_len == rsp_cnt);
endtask

function void memory_read_sequence::response_handler(uvm_sequence_item response);
  if (cfg.use_response == True) begin
    $cast(rsp, response);
    rd_data[rsp_cnt] = rsp.data[0];
    rsp_cnt++;
  end
endfunction
