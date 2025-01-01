class i2c_sequencer extends uvm_sequencer #(i2c_sequence_item);
  `uvm_component_utils(i2c_sequencer)

  i2c_config cfg ;

  uvm_analysis_export   #(i2c_sequence_item) mon_item_export ; 
  uvm_tlm_analysis_fifo #(i2c_sequence_item) mon_item_fifo   ;

  function new(string name = "i2c_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void i2c_sequencer::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_item_export = new("mon_item_export", this);
  mon_item_fifo   = new("mon_item_fifo"  , this);
endfunction

function void i2c_sequencer::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  mon_item_export.connect(mon_item_fifo.analysis_export);
endfunction
