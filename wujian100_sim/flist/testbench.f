//-------------------------------------
// AHB VIP Define 
//-------------------------------------
+define+YUU_UVM
+define+YUU_AHB_MAX_ADDR_WIDTH=32
+define+YUU_AHB_MAX_DATA_WIDTH=32

//-------------------------------------
// AHB VIP Include 
//-------------------------------------
+incdir+$VIP_PATH/yuu_ahb/pkg/yuu_common/include
+incdir+$VIP_PATH/yuu_ahb/pkg/yuu_common/src/sv
+incdir+$VIP_PATH/yuu_ahb/include
+incdir+$VIP_PATH/yuu_ahb/src/sv

//-------------------------------------
// AHB VIP Filelist
//-------------------------------------
$VIP_PATH/yuu_ahb/pkg/yuu_common/include/yuu_common_pkg.sv
$VIP_PATH/yuu_ahb/include/yuu_ahb_pkg.sv

//-------------------------------------
// INT VIP Include 
//-------------------------------------
+incdir+$VIP_PATH/yuu_int/include
+incdir+$VIP_PATH/yuu_int/src/sv

//-------------------------------------
// INT VIP Filelist
//-------------------------------------
$VIP_PATH/yuu_int/include/yuu_int_pkg.sv

//-------------------------------------
// TB Define 
//-------------------------------------
+define+UVM_REG_NO_INDIVIDUAL_ACCESS

//-------------------------------------
// TB Include 
//-------------------------------------
+incdir+$TB_PATH/include
$TB_PATH/include/sim_pkg.svh

//-------------------------------------
// TB Filelist
//-------------------------------------
../tb/connect_ahb.sv
../tb/connect_int.sv
../tb/mcu_dummy.v
../tb/top_hdl.sv
../tb/top_hvl.sv
../tb/tb_top.sv
