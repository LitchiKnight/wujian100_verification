class i2c_rx_int_seq extends uvm_sequence;
  `uvm_object_utils(i2c_rx_int_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "i2c_rx_int_seq");
    super.new(name);
  endfunction

  extern task body();
  extern virtual task read_io_data(int num);
endclass

task i2c_rx_int_seq::body();
  uvm_event i2c_rx_int_ev;
  bit sta ;
  int num ;

  i2c_rx_int_ev = p_sequencer.env_cfg.events.get("i2c_rx_int_ev");
  p_sequencer.env_cfg.get_field_value(sta, "RX_THOLD", "INTR_STA", "usi0");
  p_sequencer.env_cfg.set_field_value(1'b0, "RX_THOLD_MASK", "INTR_UNMASK", "usi0");
  p_sequencer.env_cfg.get_field_value(num, "RX_NUM", "FIFO_STA", "usi0");
  read_io_data(num);
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_CLR", "INTR_CLR", "usi0");
  p_sequencer.env_cfg.set_field_value(1'b1, "RX_THOLD_MASK", "INTR_UNMASK", "usi0");
  i2c_rx_int_ev.trigger();
endtask

task i2c_rx_int_seq::read_io_data(int num);
  for (int i = 0; i < num; i++) begin
	bit[31:0] rdata;
	p_sequencer.env_cfg.get_field_value(rdata, "DATA", "DATA_FIFO", "usi0");
  end
endtask

class i2c_rx_int_with_dma_seq extends i2c_rx_int_seq;
  `uvm_object_utils(i2c_rx_int_with_dma_seq)
  `uvm_declare_p_sequencer(virtual_sequencer)

  function new(string name = "i2c_rx_int_with_dma_seq");
    super.new(name);
  endfunction

  extern task read_io_data(int num);
endclass

task i2c_rx_int_with_dma_seq::read_io_data(int num);
  dma_config_base_sequence dma_cfg_seq ;
  uvm_event                dmac_int_ev ;

  dmac_int_ev = p_sequencer.env_cfg.events.get("dmac_int_ev");
  p_sequencer.env_cfg.set_reg_value(32'h1, "DMACCFG", "dma");
  dma_cfg_seq = dma_config_base_sequence::type_id::create("dma_cfg_seq");
  dma_cfg_seq.randomize() with {
    src_addr  == `USI0_REG_BASE_ADDR+'h8 ;
    dst_addr  == `DATA_SRAM_START_ADDR   ;
    byte_len  == num*4-1                 ; // 4096byte = 1024word
    sinc      >  1                       ;
    src_width == 2                       ;
    dst_width == 2                       ;
    trg_tmdc  == 2                       ;
    int_en    == 1                       ;
    masktfr   == 1                       ;
    soft_req  == 1                       ;
  };
  dma_cfg_seq.start(p_sequencer);
  dmac_int_ev.wait_trigger();
endtask
