module core_top(
  apb0_dummy1_intr,
  apb0_dummy2_intr,
  apb0_dummy3_intr,
  apb0_dummy4_intr,
  apb0_dummy5_intr,
  apb0_dummy7_intr,
  apb0_dummy8_intr,
  apb0_dummy9_intr,
  apb1_dummy1_intr,
  apb1_dummy2_intr,
  apb1_dummy3_intr,
  apb1_dummy4_intr,
  apb1_dummy5_intr,
  apb1_dummy6_intr,
  apb1_dummy7_intr,
  apb1_dummy8_intr,
  bist0_mode,
  cpu_hmain0_m0_haddr,
  cpu_hmain0_m0_hburst,
  cpu_hmain0_m0_hprot,
  cpu_hmain0_m0_hsize,
  cpu_hmain0_m0_htrans,
  cpu_hmain0_m0_hwdata,
  cpu_hmain0_m0_hwrite,
  cpu_hmain0_m1_haddr,
  cpu_hmain0_m1_hburst,
  cpu_hmain0_m1_hprot,
  cpu_hmain0_m1_hsize,
  cpu_hmain0_m1_htrans,
  cpu_hmain0_m1_hwdata,
  cpu_hmain0_m1_hwrite,
  cpu_hmain0_m2_haddr,
  cpu_hmain0_m2_hburst,
  cpu_hmain0_m2_hprot,
  cpu_hmain0_m2_hsize,
  cpu_hmain0_m2_htrans,
  cpu_hmain0_m2_hwdata,
  cpu_hmain0_m2_hwrite,
  cpu_padmux_jtg_tms_o,
  cpu_padmux_jtg_tms_oe,
  cpu_pmu_dfs_ack,
  cpu_pmu_sleep_b,
  dft_clk,
  dmac0_wic_intr,
  gpio_wic_intr,
  hmain0_cpu_m0_hrdata,
  hmain0_cpu_m0_hready,
  hmain0_cpu_m0_hresp,
  hmain0_cpu_m1_hrdata,
  hmain0_cpu_m1_hready,
  hmain0_cpu_m1_hresp,
  hmain0_cpu_m2_hrdata,
  hmain0_cpu_m2_hready,
  hmain0_cpu_m2_hresp,
  lsbus_dummy0_intr,
  lsbus_dummy1_intr,
  lsbus_dummy2_intr,
  lsbus_dummy3_intr,
  main_dmemdummy0_intr,
  main_dummy0_intr,
  main_dummy1_intr,
  main_dummy2_intr,
  main_dummy3_intr,
  main_imemdummy0_intr,
  pad_core_clk,
  pad_core_ctim_refclk,
  pad_core_rst_b,
  padmux_cpu_jtg_tclk,
  padmux_cpu_jtg_tms_i,
  pmu_cpu_dfs_req,
  pmu_wic_intr,
  pwm_wic_intr,
  rtc_wic_intr,
  scan_en,
  scan_mode,
  test_mode,
  tim0_wic_intr,
  tim1_wic_intr,
  tim2_wic_intr,
  tim3_wic_intr,
  tim4_wic_intr,
  tim5_wic_intr,
  tim6_wic_intr,
  tim7_wic_intr,
  usi0_wic_intr,
  usi1_wic_intr,
  usi2_wic_intr,
  wdt_wic_intr
);
input           apb0_dummy1_intr;      
input           apb0_dummy2_intr;      
input           apb0_dummy3_intr;      
input           apb0_dummy4_intr;      
input           apb0_dummy5_intr;      
input           apb0_dummy7_intr;      
input           apb0_dummy8_intr;      
input           apb0_dummy9_intr;      
input           apb1_dummy1_intr;      
input           apb1_dummy2_intr;      
input           apb1_dummy3_intr;      
input           apb1_dummy4_intr;      
input           apb1_dummy5_intr;      
input           apb1_dummy6_intr;      
input           apb1_dummy7_intr;      
input           apb1_dummy8_intr;      
input           bist0_mode;            
input           dft_clk;               
input           dmac0_wic_intr;        
input           gpio_wic_intr;         
input   [31:0]  hmain0_cpu_m0_hrdata;  
input           hmain0_cpu_m0_hready;  
input   [1 :0]  hmain0_cpu_m0_hresp;   
input   [31:0]  hmain0_cpu_m1_hrdata;  
input           hmain0_cpu_m1_hready;  
input   [1 :0]  hmain0_cpu_m1_hresp;   
input   [31:0]  hmain0_cpu_m2_hrdata;  
input           hmain0_cpu_m2_hready;  
input   [1 :0]  hmain0_cpu_m2_hresp;   
input           lsbus_dummy0_intr;     
input           lsbus_dummy1_intr;     
input           lsbus_dummy2_intr;     
input           lsbus_dummy3_intr;     
input           main_dmemdummy0_intr;  
input           main_dummy0_intr;      
input           main_dummy1_intr;      
input           main_dummy2_intr;      
input           main_dummy3_intr;      
input           main_imemdummy0_intr;  
input           pad_core_clk;          
input           pad_core_ctim_refclk;  
input           pad_core_rst_b;        
input           padmux_cpu_jtg_tclk;   
input           padmux_cpu_jtg_tms_i;  
input           pmu_cpu_dfs_req;       
input           pmu_wic_intr;          
input           pwm_wic_intr;          
input           rtc_wic_intr;          
input           scan_en;               
input           scan_mode;             
input           test_mode;             
input   [1 :0]  tim0_wic_intr;         
input   [1 :0]  tim1_wic_intr;         
input   [1 :0]  tim2_wic_intr;         
input   [1 :0]  tim3_wic_intr;         
input   [1 :0]  tim4_wic_intr;         
input   [1 :0]  tim5_wic_intr;         
input   [1 :0]  tim6_wic_intr;         
input   [1 :0]  tim7_wic_intr;         
input           usi0_wic_intr;         
input           usi1_wic_intr;         
input           usi2_wic_intr;         
input           wdt_wic_intr;          
output  [31:0]  cpu_hmain0_m0_haddr;   
output  [2 :0]  cpu_hmain0_m0_hburst;  
output  [3 :0]  cpu_hmain0_m0_hprot;   
output  [2 :0]  cpu_hmain0_m0_hsize;   
output  [1 :0]  cpu_hmain0_m0_htrans;  
output  [31:0]  cpu_hmain0_m0_hwdata;  
output          cpu_hmain0_m0_hwrite;  
output  [31:0]  cpu_hmain0_m1_haddr;   
output  [2 :0]  cpu_hmain0_m1_hburst;  
output  [3 :0]  cpu_hmain0_m1_hprot;   
output  [2 :0]  cpu_hmain0_m1_hsize;   
output  [1 :0]  cpu_hmain0_m1_htrans;  
output  [31:0]  cpu_hmain0_m1_hwdata;  
output          cpu_hmain0_m1_hwrite;  
output  [31:0]  cpu_hmain0_m2_haddr;   
output  [2 :0]  cpu_hmain0_m2_hburst;  
output  [3 :0]  cpu_hmain0_m2_hprot;   
output  [2 :0]  cpu_hmain0_m2_hsize;   
output  [1 :0]  cpu_hmain0_m2_htrans;  
output  [31:0]  cpu_hmain0_m2_hwdata;  
output          cpu_hmain0_m2_hwrite;  
output          cpu_padmux_jtg_tms_o;  
output          cpu_padmux_jtg_tms_oe; 
output          cpu_pmu_dfs_ack;       
output          cpu_pmu_sleep_b;
endmodule
