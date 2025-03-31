//-------------------------------------
// AHB VIP Define 
//-------------------------------------
+define+YUU_UVM
+define+YUU_AHB_MAX_ADDR_WIDTH=32
+define+YUU_AHB_MAX_DATA_WIDTH=32

//-------------------------------------
// AHB VIP Directories
//-------------------------------------
+incdir+$VIP_PATH/yuu_ahb/pkg/yuu_common/include
+incdir+$VIP_PATH/yuu_ahb/pkg/yuu_common/src/sv
+incdir+$VIP_PATH/yuu_ahb/include
+incdir+$VIP_PATH/yuu_ahb/src/sv
+incdir+$VIP_PATH/yuu_ahb/seq

//-------------------------------------
// AHB VIP Files
//-------------------------------------
$VIP_PATH/yuu_ahb/pkg/yuu_common/include/yuu_common_pkg.sv
$VIP_PATH/yuu_ahb/include/yuu_ahb_pkg.sv

//-------------------------------------
// INT VIP Defines
//-------------------------------------
+define+YUU_MAX_INT_IDX=63

//-------------------------------------
// INT VIP Directories
//-------------------------------------
+incdir+$VIP_PATH/yuu_int/include
+incdir+$VIP_PATH/yuu_int/src/sv

//-------------------------------------
// INT VIP Files
//-------------------------------------
$VIP_PATH/yuu_int/include/yuu_int_pkg.sv

//-------------------------------------
// I2C UVC Directories
//-------------------------------------
+incdir+$TB_PATH/src/uvc/i2c_agent

//-------------------------------------
// I2C UVC Files
//-------------------------------------
$TB_PATH/src/uvc/i2c_agent/i2c_package.sv

//-------------------------------------
// UART UVC Directories
//-------------------------------------
+incdir+$TB_PATH/src/uvc/uart_agent

//-------------------------------------
// UART UVC Files
//-------------------------------------
$TB_PATH/src/uvc/uart_agent/uart_package.sv

//-------------------------------------
// SPI UVC Directories
//-------------------------------------
+incdir+$TB_PATH/src/uvc/spi_agent

//-------------------------------------
// SPI UVC Files
//-------------------------------------
$TB_PATH/src/uvc/spi_agent/spi_package.sv

//-------------------------------------
// TB Define 
//-------------------------------------
+define+UVM_REG_NO_INDIVIDUAL_ACCESS

//-------------------------------------
// TB Directories
//-------------------------------------
+incdir+$TB_PATH/include
+incdir+$TB_PATH/reg_model
+incdir+$TB_PATH/src/config
+incdir+$TB_PATH/src/seq/mem_seq
+incdir+$TB_PATH/src/seq/int_seq
+incdir+$TB_PATH/src/seq/dma_seq
+incdir+$TB_PATH/env

//-------------------------------------
// TB Files
//-------------------------------------
$TB_PATH/include/sim_pkg.svh
$TB_PATH/tb/connect_ahb.sv
$TB_PATH/tb/connect_int.sv
$TB_PATH/tb/mcu_dummy.v
$TB_PATH/tb/top_hdl.sv
$TB_PATH/tb/top_hvl.sv
$TB_PATH/tb/tb_top.sv

//-------------------------------------
// Test Filelists
//-------------------------------------
-f $TB_PATH/flist/base_tests.f
-f $TB_PATH/flist/smoke_tests.f
-f $TB_PATH/flist/dma_tests.f
