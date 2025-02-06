// data/address width
`define ADDR_BITS            32
`define DATA_BITS            32

// base address
`define INST_SRAM_START_ADDR 32'h0000_0000
`define DATA_SRAM_START_ADDR 32'h2000_0000
`define DMA_REG_BASE_ADDR    32'h4000_0000
`define TIM0_REG_BASE_ADDR   32'h5000_0000
`define WDT_REG_BASE_ADDR    32'h5000_8000
`define PWM_REG_BASE_ADDR    32'h5001_C000
`define RTC_REG_BASE_ADDR    32'h6000_4000
`define USI0_REG_BASE_ADDR   32'h5002_8000
`define USI1_REG_BASE_ADDR   32'h6002_8000
`define USI2_REG_BASE_ADDR   32'h5002_9000
`define GPIO_REG_BASE_ADDR   32'h6001_8000

// memory size
`define INST_SRAM_SIZE       32'h1_0000
`define DATA_SRAM_SIZE       32'h3_0000

// INST SRAM HDL
`define INST_SRAM_HDL0 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_isram_top.x_sms_sram.x_fpga_spram.x_fpga_byte0_spram.mem
`define INST_SRAM_HDL1 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_isram_top.x_sms_sram.x_fpga_spram.x_fpga_byte1_spram.mem
`define INST_SRAM_HDL2 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_isram_top.x_sms_sram.x_fpga_spram.x_fpga_byte2_spram.mem
`define INST_SRAM_HDL3 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_isram_top.x_sms_sram.x_fpga_spram.x_fpga_byte3_spram.mem

// DATA SRAM HDL
`define DATA_SRAM0_HDL0 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms0_top.x_sms_sram.x_fpga_spram.x_fpga_byte0_spram.mem
`define DATA_SRAM0_HDL1 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms0_top.x_sms_sram.x_fpga_spram.x_fpga_byte1_spram.mem
`define DATA_SRAM0_HDL2 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms0_top.x_sms_sram.x_fpga_spram.x_fpga_byte2_spram.mem
`define DATA_SRAM0_HDL3 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms0_top.x_sms_sram.x_fpga_spram.x_fpga_byte3_spram.mem

`define DATA_SRAM1_HDL0 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms1_top.x_sms_sram.x_fpga_spram.x_fpga_byte0_spram.mem
`define DATA_SRAM1_HDL1 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms1_top.x_sms_sram.x_fpga_spram.x_fpga_byte1_spram.mem
`define DATA_SRAM1_HDL2 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms1_top.x_sms_sram.x_fpga_spram.x_fpga_byte2_spram.mem
`define DATA_SRAM1_HDL3 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms1_top.x_sms_sram.x_fpga_spram.x_fpga_byte3_spram.mem

`define DATA_SRAM2_HDL0 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms2_top.x_sms_sram.x_fpga_spram.x_fpga_byte0_spram.mem
`define DATA_SRAM2_HDL1 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms2_top.x_sms_sram.x_fpga_spram.x_fpga_byte1_spram.mem
`define DATA_SRAM2_HDL2 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms2_top.x_sms_sram.x_fpga_spram.x_fpga_byte2_spram.mem
`define DATA_SRAM2_HDL3 tb_top.u_top_hdl.dut.x_retu_top.x_smu_top.x_sms_top.x_sms2_top.x_sms_sram.x_fpga_spram.x_fpga_byte3_spram.mem
