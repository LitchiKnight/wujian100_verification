class usi_set_data_sequence extends uvm_sequence;
  `uvm_declare_p_sequencer(virtual_sequencer)

  rand bit[1:0]     usi_id;
  rand bit[7:0]     data[];
  rand int unsigned len   ;

  function new(string name = "usi_set_data_sequence");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(usi_set_data_sequence)
    `uvm_field_int      (usi_id, UVM_ALL_ON)
    `uvm_field_array_int(data  , UVM_ALL_ON)
    `uvm_field_int      (len   , UVM_ALL_ON)
  `uvm_object_utils_end

  constraint default_c {
    data.size() == len;
    soft len inside {[8:16]};
  }

  extern virtual task body();
endclass

task usi_set_data_sequence::body();
  foreach(data[i])
    p_sequencer.env_cfg.set_reg_value(data[i], "DATA_FIFO", $sformatf("usi%0d", usi_id));
endtask
