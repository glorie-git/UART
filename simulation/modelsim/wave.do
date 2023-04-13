
restart -f

force -freeze sim:/uart/CLOCK_50 1 0, 0 {50 ps} -r 100
-- force -freeze sim:/uart/UART_CTS 1 10 -cancel 1000
-- force -freeze sim:/uart/UART_CTS 1 1600 -cancel 1000
force -freeze sim:/uart/UART_CTS 1 0, 0 {200 ps} -r 100000

run