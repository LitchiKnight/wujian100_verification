module top_hdl;
  wire            PAD_GPIO_0;               
  wire            PAD_GPIO_1;               
  wire            PAD_GPIO_10;              
  wire            PAD_GPIO_11;              
  wire            PAD_GPIO_12;              
  wire            PAD_GPIO_13;              
  wire            PAD_GPIO_14;              
  wire            PAD_GPIO_15;              
  wire            PAD_GPIO_16;              
  wire            PAD_GPIO_17;              
  wire            PAD_GPIO_18;              
  wire            PAD_GPIO_19;              
  wire            PAD_GPIO_2;               
  wire            PAD_GPIO_20;              
  wire            PAD_GPIO_21;              
  wire            PAD_GPIO_22;              
  wire            PAD_GPIO_23;              
  wire            PAD_GPIO_24;              
  wire            PAD_GPIO_25;              
  wire            PAD_GPIO_26;              
  wire            PAD_GPIO_27;              
  wire            PAD_GPIO_28;              
  wire            PAD_GPIO_29;              
  wire            PAD_GPIO_3;               
  wire            PAD_GPIO_30;              
  wire            PAD_GPIO_31;              
  wire            PAD_GPIO_4;               
  wire            PAD_GPIO_5;               
  wire            PAD_GPIO_6;               
  wire            PAD_GPIO_7;               
  wire            PAD_GPIO_8;               
  wire            PAD_GPIO_9;               
  wire            PAD_JTAG_TCLK;            
  wire            PAD_JTAG_TMS;             
  wire            PAD_MCURST;               
  wire            PAD_PWM_CH0;              
  wire            PAD_PWM_CH1;              
  wire            PAD_PWM_CH10;             
  wire            PAD_PWM_CH11;             
  wire            PAD_PWM_CH2;              
  wire            PAD_PWM_CH3;              
  wire            PAD_PWM_CH4;              
  wire            PAD_PWM_CH5;              
  wire            PAD_PWM_CH6;              
  wire            PAD_PWM_CH7;              
  wire            PAD_PWM_CH8;              
  wire            PAD_PWM_CH9;              
  wire            PAD_PWM_FAULT;            
  wire            PAD_USI0_NSS;             
  wire            PAD_USI0_SCLK;            
  wire            PAD_USI0_SD0;             
  wire            PAD_USI0_SD1;             
  wire            PAD_USI1_NSS;             
  wire            PAD_USI1_SCLK;            
  wire            PAD_USI1_SD0;             
  wire            PAD_USI1_SD1;             
  wire            PAD_USI2_NSS;             
  wire            PAD_USI2_SCLK;            
  wire            PAD_USI2_SD0;             
  wire            PAD_USI2_SD1;             
  wire            PIN_EHS;                  
  wire            PIN_ELS;                  
  wire            POUT_EHS;                 
  wire            POUT_ELS;                 

  wujian100_open_top dut (
    .PAD_GPIO_0    (PAD_GPIO_0   ),
    .PAD_GPIO_1    (PAD_GPIO_1   ),
    .PAD_GPIO_10   (PAD_GPIO_10  ),
    .PAD_GPIO_11   (PAD_GPIO_11  ),
    .PAD_GPIO_12   (PAD_GPIO_12  ),
    .PAD_GPIO_13   (PAD_GPIO_13  ),
    .PAD_GPIO_14   (PAD_GPIO_14  ),
    .PAD_GPIO_15   (PAD_GPIO_15  ),
    .PAD_GPIO_16   (PAD_GPIO_16  ),
    .PAD_GPIO_17   (PAD_GPIO_17  ),
    .PAD_GPIO_18   (PAD_GPIO_18  ),
    .PAD_GPIO_19   (PAD_GPIO_19  ),
    .PAD_GPIO_2    (PAD_GPIO_2   ),
    .PAD_GPIO_20   (PAD_GPIO_20  ),
    .PAD_GPIO_21   (PAD_GPIO_21  ),
    .PAD_GPIO_22   (PAD_GPIO_22  ),
    .PAD_GPIO_23   (PAD_GPIO_23  ),
    .PAD_GPIO_24   (PAD_GPIO_24  ),
    .PAD_GPIO_25   (PAD_GPIO_25  ),
    .PAD_GPIO_26   (PAD_GPIO_26  ),
    .PAD_GPIO_27   (PAD_GPIO_27  ),
    .PAD_GPIO_28   (PAD_GPIO_28  ),
    .PAD_GPIO_29   (PAD_GPIO_29  ),
    .PAD_GPIO_3    (PAD_GPIO_3   ),
    .PAD_GPIO_30   (PAD_GPIO_30  ),
    .PAD_GPIO_31   (PAD_GPIO_31  ),
    .PAD_GPIO_4    (PAD_GPIO_4   ),
    .PAD_GPIO_5    (PAD_GPIO_5   ),
    .PAD_GPIO_6    (PAD_GPIO_6   ),
    .PAD_GPIO_7    (PAD_GPIO_7   ),
    .PAD_GPIO_8    (PAD_GPIO_8   ),
    .PAD_GPIO_9    (PAD_GPIO_9   ),
    .PAD_JTAG_TCLK (PAD_JTAG_TCLK),
    .PAD_JTAG_TMS  (PAD_JTAG_TMS ),
    .PAD_MCURST    (PAD_MCURST   ),
    .PAD_PWM_CH0   (PAD_PWM_CH0  ),
    .PAD_PWM_CH1   (PAD_PWM_CH1  ),
    .PAD_PWM_CH10  (PAD_PWM_CH10 ),
    .PAD_PWM_CH11  (PAD_PWM_CH11 ),
    .PAD_PWM_CH2   (PAD_PWM_CH2  ),
    .PAD_PWM_CH3   (PAD_PWM_CH3  ),
    .PAD_PWM_CH4   (PAD_PWM_CH4  ),
    .PAD_PWM_CH5   (PAD_PWM_CH5  ),
    .PAD_PWM_CH6   (PAD_PWM_CH6  ),
    .PAD_PWM_CH7   (PAD_PWM_CH7  ),
    .PAD_PWM_CH8   (PAD_PWM_CH8  ),
    .PAD_PWM_CH9   (PAD_PWM_CH9  ),
    .PAD_PWM_FAULT (PAD_PWM_FAULT),
    .PAD_USI0_NSS  (PAD_USI0_NSS ),
    .PAD_USI0_SCLK (PAD_USI0_SCLK),
    .PAD_USI0_SD0  (PAD_USI0_SD0 ),
    .PAD_USI0_SD1  (PAD_USI0_SD1 ),
    .PAD_USI1_NSS  (PAD_USI1_NSS ),
    .PAD_USI1_SCLK (PAD_USI1_SCLK),
    .PAD_USI1_SD0  (PAD_USI1_SD0 ),
    .PAD_USI1_SD1  (PAD_USI1_SD1 ),
    .PAD_USI2_NSS  (PAD_USI2_NSS ),
    .PAD_USI2_SCLK (PAD_USI2_SCLK),
    .PAD_USI2_SD0  (PAD_USI2_SD0 ),
    .PAD_USI2_SD1  (PAD_USI2_SD1 ),
    .PIN_EHS       (PIN_EHS      ),
    .PIN_ELS       (PIN_ELS      ),
    .POUT_EHS      (POUT_EHS     ),
    .POUT_ELS      (POUT_ELS     )
  );
endmodule
