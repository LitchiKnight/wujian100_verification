class uart_sequencer extends uvm_sequencer #(uart_sequence_item);
  `uvm_component_utils(uart_sequencer)

  uart_config cfg ;

  uvm_analysis_export   #(uart_sequence_item) mon_item_export ; 
  uvm_tlm_analysis_fifo #(uart_sequence_item) mon_item_fifo   ;

  function new(string name = "uart_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction

  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
endclass

function void uart_sequencer::build_phase(uvm_phase phase);
  super.build_phase(phase);

  mon_item_export = new("mon_item_export", this);
  mon_item_fifo   = new("mon_item_fifo"  , this);
endfunction

function void uart_sequencer::connect_phase(uvm_phase phase);
  super.connect_phase(phase);

  mon_item_export.connect(mon_item_fifo.analysis_export);
endfunction