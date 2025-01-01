typedef enum int {
  I2C_MASTER,
  I2C_SLAVE
} i2c_work_mode_e;

typedef enum int {
  I2C_ADDR_7BIT  = 7,
  I2C_ADDR_10BIT = 10
} i2c_addr_mode_e;

typedef enum int {
  I2C_STANDARD_MODE   = 100  ,
  I2C_FAST_MODE       = 400  ,
  I2C_FAST_MODE_PLUS  = 1000 ,
  I2C_HIGH_SPEED_MODE = 3400 ,
  I2C_ULTRA_FAST_MODE = 5000
} i2c_speed_mode_e;

typedef enum int {
  I2C_SEND_SOF  ,
  I2C_RCV_SOF   ,
  I2C_SEND_DATA ,
  I2C_RCV_DATA  ,
  I2C_SEND_ACK  ,
  I2C_RCV_ACK   ,
  I2C_SEND_EOF  ,
  I2C_RCV_EOF
} i2c_cmd_e;

typedef enum int {
  I2C_WRITE,
  I2C_READ
} i2c_direction_e;
