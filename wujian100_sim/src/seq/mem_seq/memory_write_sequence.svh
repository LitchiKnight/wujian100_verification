class memory_write_sequence extends yuu_ahb_master_sequence_base;
  rand   bit[`ADDR_BITS-1:0] wr_addr   ;
  rand   bit[`DATA_BITS-1:0] wr_data[] ;
  rand   int                 wr_len    ;

  static int                 req_id    ;
         int                 rsp_cnt   ;

  `uvm_object_utils_begin(memory_write_sequence)
    `uvm_field_int      (wr_addr, UVM_ALL_ON)
	`uvm_field_array_int(wr_data, UVM_ALL_ON)
	`uvm_field_int      (wr_len , UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "memory_write_sequence");
    super.new(name);
  endfunction

  extern task body();
  extern function void response_handler(uvm_sequence_item response);
endclass

task memory_write_sequence::body();
  use_response_handler(1);
  foreach (wr_data[i]) begin
    req = yuu_ahb_master_item::type_id::create($sformatf("mem_wr_seq_item_%0d", req_id));
    req.cfg = cfg;
    start_item(req);
    req.randomize() with {
      direction     == WRITE             ;
      len           == 0                 ;
      start_address == wr_addr+i*4       ;
      data[0]       == wr_data[i]        ;
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
    wait(wr_len == rsp_cnt);
endtask

function void memory_write_sequence::response_handler(uvm_sequence_item response);
  if (cfg.use_response == True)
    rsp_cnt++;
endfunction
