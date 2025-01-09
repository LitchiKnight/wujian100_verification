typedef enum int {
  UART_9600BPS   = 9600  ,
  UART_19200BPS  = 19200 ,
  UART_115200BPS = 115200
} uart_baud_rate_e;

typedef enum int {
  UART_ODD_PAR,
  UART_EVEN_PAR
} uart_parity_e;

typedef enum int {
  UART_DATA_5BIT = 5,
  UART_DATA_6BIT = 6,
  UART_DATA_7BIT = 7,
  UART_DATA_8BIT = 8
} uart_data_bit_e;

