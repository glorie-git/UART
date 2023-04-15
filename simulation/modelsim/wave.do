
restart -f

force -freeze sim:/uart/transmitter 1 1000
force -freeze sim:/uart/FAST_CLOCK 1 0, 0 {50 ps} -r 100
force -freeze sim:/uart/tx_data 00110110 0
force -freeze sim:/uart/UART_CTS 1 0

run