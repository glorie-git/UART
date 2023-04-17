onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Testbench
add wave -noupdate /tb_uart/intii
add wave -noupdate -divider {Device A}
add wave -noupdate /tb_uart/deviceA/FAST_CLOCK
add wave -noupdate /tb_uart/deviceA/transmitter
add wave -noupdate /tb_uart/deviceA/tx_data
add wave -noupdate /tb_uart/deviceA/rx_data
add wave -noupdate /tb_uart/deviceA/UART_TXD
add wave -noupdate /tb_uart/deviceA/UART_RXD
add wave -noupdate /tb_uart/deviceA/UART_CTS
add wave -noupdate /tb_uart/deviceA/UART_RTS
add wave -noupdate /tb_uart/deviceA/packet
add wave -noupdate /tb_uart/deviceA/rx_packet
add wave -noupdate /tb_uart/deviceA/parityBit
add wave -noupdate /tb_uart/deviceA/baudClock
add wave -noupdate /tb_uart/deviceA/baudRateCounter
add wave -noupdate /tb_uart/deviceA/number
add wave -noupdate /tb_uart/deviceA/state
add wave -noupdate /tb_uart/deviceA/sync_err
add wave -noupdate /tb_uart/deviceA/pkt_create_done
add wave -noupdate /tb_uart/deviceA/pkt_process_done
add wave -noupdate /tb_uart/deviceA/parity_err
add wave -noupdate /tb_uart/deviceA/parity_err_check_done
add wave -noupdate /tb_uart/deviceA/txDone
add wave -noupdate /tb_uart/deviceA/rxDone
add wave -noupdate -divider {Divice B}
add wave -noupdate /tb_uart/device_B/transmitter
add wave -noupdate /tb_uart/device_B/tx_data
add wave -noupdate /tb_uart/device_B/rx_data
add wave -noupdate /tb_uart/device_B/UART_TXD
add wave -noupdate /tb_uart/device_B/UART_RXD
add wave -noupdate /tb_uart/device_B/UART_CTS
add wave -noupdate /tb_uart/device_B/UART_RTS
add wave -noupdate /tb_uart/device_B/data
add wave -noupdate /tb_uart/device_B/packet
add wave -noupdate /tb_uart/device_B/rx_packet
add wave -noupdate /tb_uart/device_B/parityBit
add wave -noupdate /tb_uart/device_B/baudClock
add wave -noupdate /tb_uart/device_B/baudRateCounter
add wave -noupdate /tb_uart/device_B/state
add wave -noupdate /tb_uart/device_B/sync_err
add wave -noupdate /tb_uart/device_B/txDone
add wave -noupdate /tb_uart/device_B/pkt_create_done
add wave -noupdate /tb_uart/device_B/pkt_process_done
add wave -noupdate /tb_uart/device_B/parity_err
add wave -noupdate /tb_uart/device_B/parity_err_check_done
add wave -noupdate /tb_uart/device_B/rxDone
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2443900000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {7633633280 ps}
