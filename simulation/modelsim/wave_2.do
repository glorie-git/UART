
restart -f

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_uart/deviceA/UART_TXD
add wave -noupdate /tb_uart/deviceA/UART_RXD
add wave -noupdate /tb_uart/deviceA/UART_CTS
add wave -noupdate /tb_uart/deviceA/UART_RTS
add wave -noupdate /tb_uart/deviceA/rx_packet
add wave -noupdate /tb_uart/deviceA/state
add wave -noupdate /tb_uart/DATA
add wave -noupdate -divider -height 20 {Device B}
add wave -noupdate /tb_uart/deviceB/UART_TXD
add wave -noupdate /tb_uart/deviceB/UART_RXD
add wave -noupdate /tb_uart/deviceB/UART_CTS
add wave -noupdate /tb_uart/deviceB/UART_RTS
add wave -noupdate /tb_uart/deviceB/packet
add wave -noupdate /tb_uart/deviceB/state
add wave -noupdate /tb_uart/deviceB/DATA
add wave -noupdate /tb_uart/deviceB/parityBit
add wave -noupdate /tb_uart/DATA_B
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14389349 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
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
WaveRestoreZoom {0 ps} {31500 ns}

run
