typedef enum int {
  ADDRESS_7BIT  = 7,
  ADDRESS_10BIT = 10
} slave_addr_mode_e;

typedef enum int {
  STANDARD_MODE   = 100  ,
  FAST_MODE       = 400  ,
  FAST_MODE_PLUS  = 1000 ,
  HIGH_SPEED_MODE = 3400 ,
  ULTRA_FAST_MODE = 5000
} i2c_speed_mode_e;  // KHz
