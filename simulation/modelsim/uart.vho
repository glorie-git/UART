-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "04/15/2023 15:47:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	FAST_CLOCK : IN std_logic;
	transmitter : IN std_logic;
	tx_data : IN std_logic_vector(7 DOWNTO 0);
	rx_data : OUT std_logic_vector(7 DOWNTO 0);
	UART_TXD : OUT std_logic;
	UART_RXD : IN std_logic;
	UART_CTS : IN std_logic;
	UART_RTS : OUT std_logic
	);
END uart;

-- Design Ports Information
-- FAST_CLOCK	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- transmitter	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_CTS	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FAST_CLOCK : std_logic;
SIGNAL ww_transmitter : std_logic;
SIGNAL ww_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_CTS : std_logic;
SIGNAL ww_UART_RTS : std_logic;
SIGNAL \Selector1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FAST_CLOCK~input_o\ : std_logic;
SIGNAL \rx_data[0]~output_o\ : std_logic;
SIGNAL \rx_data[1]~output_o\ : std_logic;
SIGNAL \rx_data[2]~output_o\ : std_logic;
SIGNAL \rx_data[3]~output_o\ : std_logic;
SIGNAL \rx_data[4]~output_o\ : std_logic;
SIGNAL \rx_data[5]~output_o\ : std_logic;
SIGNAL \rx_data[6]~output_o\ : std_logic;
SIGNAL \rx_data[7]~output_o\ : std_logic;
SIGNAL \UART_TXD~output_o\ : std_logic;
SIGNAL \UART_RTS~output_o\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \transmitter~input_o\ : std_logic;
SIGNAL \UART_CTS~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \pkt_process_done~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~0clkctrl_outclk\ : std_logic;
SIGNAL \parity_err_check_done~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector7~0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \rx_data[7]~0_combout\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rxDone~combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \rx_data[2]$latch~combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \rx_data[3]$latch~combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \rx_data[4]$latch~combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \rx_data[1]$latch~combout\ : std_logic;
SIGNAL \fms~1_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \rx_data[7]$latch~combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \rx_data[5]$latch~combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \rx_data[6]$latch~combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \fms~0_combout\ : std_logic;
SIGNAL \fms~2_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \rx_data[0]$latch~combout\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \parityBit~1_combout\ : std_logic;
SIGNAL \parityBit~0_combout\ : std_logic;
SIGNAL \parityBit~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \UART_TXD$latch~combout\ : std_logic;
SIGNAL \UART_RTS~2_combout\ : std_logic;
SIGNAL rx_packet : std_logic_vector(10 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL packet : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_UART_RTS~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_FAST_CLOCK <= FAST_CLOCK;
ww_transmitter <= transmitter;
ww_tx_data <= tx_data;
rx_data <= ww_rx_data;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
ww_UART_CTS <= UART_CTS;
UART_RTS <= ww_UART_RTS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector1~0_combout\);

\Selector7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector7~0_combout\);
\ALT_INV_UART_RTS~2_combout\ <= NOT \UART_RTS~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N9
\rx_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[0]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\rx_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[1]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\rx_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[2]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\rx_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[3]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\rx_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[4]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\rx_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[5]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\rx_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[6]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\rx_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[7]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TXD$latch~combout\,
	devoe => ww_devoe,
	o => \UART_TXD~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\UART_RTS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_UART_RTS~2_combout\,
	devoe => ww_devoe,
	o => \UART_RTS~output_o\);

-- Location: IOIBUF_X27_Y73_N8
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: LCCOMB_X47_Y69_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = i(0) $ (VCC)
-- \Add1~1\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X49_Y73_N15
\transmitter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_transmitter,
	o => \transmitter~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\UART_CTS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_CTS,
	o => \UART_CTS~input_o\);

-- Location: LCCOMB_X48_Y72_N18
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~3_combout\ & ((!\UART_CTS~input_o\) # (!\transmitter~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter~input_o\,
	datac => \Selector0~3_combout\,
	datad => \UART_CTS~input_o\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X48_Y68_N20
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\pkt_process_done~combout\ & (!\UART_RXD~input_o\ & (\Selector0~1_combout\))) # (!\pkt_process_done~combout\ & ((\Selector3~0_combout\) # ((!\UART_RXD~input_o\ & \Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pkt_process_done~combout\,
	datab => \UART_RXD~input_o\,
	datac => \Selector0~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X48_Y69_N20
pkt_process_done : cycloneive_lcell_comb
-- Equation(s):
-- \pkt_process_done~combout\ = (\Selector3~0_combout\ & ((\pkt_process_done~combout\) # (!\LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \pkt_process_done~combout\,
	combout => \pkt_process_done~combout\);

-- Location: LCCOMB_X48_Y69_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\transmitter~input_o\ & (\Selector0~3_combout\ & \UART_CTS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter~input_o\,
	datac => \Selector0~3_combout\,
	datad => \UART_CTS~input_o\,
	combout => \Selector1~0_combout\);

-- Location: CLKCTRL_G14
\Selector1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector1~0clkctrl_outclk\);

-- Location: LCCOMB_X48_Y69_N18
parity_err_check_done : cycloneive_lcell_comb
-- Equation(s):
-- \parity_err_check_done~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\parity_err_check_done~combout\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parity_err_check_done~combout\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => \parity_err_check_done~combout\);

-- Location: LCCOMB_X48_Y69_N26
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector4~0_combout\ & (((\pkt_process_done~combout\ & \Selector3~0_combout\)) # (!\parity_err_check_done~combout\))) # (!\Selector4~0_combout\ & (\pkt_process_done~combout\ & (\Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \pkt_process_done~combout\,
	datac => \Selector3~0_combout\,
	datad => \parity_err_check_done~combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X48_Y69_N12
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector4~0_combout\ & \parity_err_check_done~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector4~0_combout\,
	datad => \parity_err_check_done~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X47_Y69_N2
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (i(1) & (!\Add1~1\)) # (!i(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X48_Y68_N0
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\Selector0~3_combout\ & (\Add1~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector0~3_combout\,
	datac => \Add1~3_combout\,
	datad => \Selector3~0_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X50_Y69_N18
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector1~0_combout\) # ((\LessThan0~10_combout\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector1~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: CLKCTRL_G12
\Selector7~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector7~0clkctrl_outclk\);

-- Location: LCCOMB_X47_Y69_N4
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (i(2) & (\Add1~4\ $ (GND))) # (!i(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((i(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X47_Y69_N6
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (i(3) & (!\Add1~7\)) # (!i(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X48_Y68_N18
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\Add1~9_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~9_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Selector3~0_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X48_Y68_N26
\i[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(3) = (\Selector7~0_combout\ & ((\Add1~11_combout\))) # (!\Selector7~0_combout\ & (i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => \Add1~11_combout\,
	datad => \Selector7~0_combout\,
	combout => i(3));

-- Location: LCCOMB_X47_Y69_N8
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (i(4) & (\Add1~10\ $ (GND))) # (!i(4) & (!\Add1~10\ & VCC))
-- \Add1~13\ = CARRY((i(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X50_Y69_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~12_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Add1~12_combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X50_Y69_N10
\i[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(4) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~14_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => \Add1~14_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(4));

-- Location: LCCOMB_X47_Y69_N10
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (i(5) & (!\Add1~13\)) # (!i(5) & ((\Add1~13\) # (GND)))
-- \Add1~16\ = CARRY((!\Add1~13\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X50_Y69_N8
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\Add1~15_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~15_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X50_Y69_N16
\i[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(5) = (GLOBAL(\Selector7~0clkctrl_outclk\) & (\Add1~17_combout\)) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & ((i(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~17_combout\,
	datab => i(5),
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(5));

-- Location: LCCOMB_X47_Y69_N12
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (i(6) & (\Add1~16\ $ (GND))) # (!i(6) & (!\Add1~16\ & VCC))
-- \Add1~19\ = CARRY((i(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X50_Y69_N0
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~18_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X50_Y69_N4
\i[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(6) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~20_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(6),
	datac => \Add1~20_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(6));

-- Location: LCCOMB_X47_Y69_N14
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (i(7) & (!\Add1~19\)) # (!i(7) & ((\Add1~19\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~19\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X50_Y69_N12
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~21_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~21_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X50_Y69_N6
\i[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(7) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~23_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datac => \Add1~23_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(7));

-- Location: LCCOMB_X47_Y69_N16
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (i(8) & (\Add1~22\ $ (GND))) # (!i(8) & (!\Add1~22\ & VCC))
-- \Add1~25\ = CARRY((i(8) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X48_Y69_N24
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\Selector0~3_combout\ & (\Add1~24_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Selector0~3_combout\,
	datad => \Add1~24_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X48_Y69_N14
\i[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(8) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~26_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datac => \Add1~26_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(8));

-- Location: LCCOMB_X47_Y69_N18
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (i(9) & (!\Add1~25\)) # (!i(9) & ((\Add1~25\) # (GND)))
-- \Add1~28\ = CARRY((!\Add1~25\) # (!i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X50_Y69_N22
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~27_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X50_Y69_N30
\i[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(9) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~29_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(9),
	datac => \Selector7~0clkctrl_outclk\,
	datad => \Add1~29_combout\,
	combout => i(9));

-- Location: LCCOMB_X47_Y69_N20
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (i(10) & (\Add1~28\ $ (GND))) # (!i(10) & (!\Add1~28\ & VCC))
-- \Add1~31\ = CARRY((i(10) & !\Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X48_Y69_N8
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add1~30_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Add1~30_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X49_Y69_N20
\i[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(10) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~32_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datac => \Add1~32_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(10));

-- Location: LCCOMB_X47_Y69_N22
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (i(11) & (!\Add1~31\)) # (!i(11) & ((\Add1~31\) # (GND)))
-- \Add1~34\ = CARRY((!\Add1~31\) # (!i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X48_Y69_N0
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\Add1~33_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Add1~33_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~35_combout\);

-- Location: LCCOMB_X49_Y69_N26
\i[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(11) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~35_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datab => \Add1~35_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(11));

-- Location: LCCOMB_X47_Y69_N24
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (i(12) & (\Add1~34\ $ (GND))) # (!i(12) & (!\Add1~34\ & VCC))
-- \Add1~37\ = CARRY((i(12) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X48_Y69_N30
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~36_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Add1~36_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X48_Y69_N6
\i[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(12) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~38_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(12),
	datac => \Add1~38_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(12));

-- Location: LCCOMB_X47_Y69_N26
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (i(13) & (!\Add1~37\)) # (!i(13) & ((\Add1~37\) # (GND)))
-- \Add1~40\ = CARRY((!\Add1~37\) # (!i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X48_Y69_N22
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (!\Selector0~3_combout\ & (\Add1~39_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Selector0~3_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~41_combout\);

-- Location: LCCOMB_X48_Y69_N4
\i[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(13) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~41_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(13),
	datac => \Add1~41_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(13));

-- Location: LCCOMB_X47_Y69_N28
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (i(14) & (\Add1~40\ $ (GND))) # (!i(14) & (!\Add1~40\ & VCC))
-- \Add1~43\ = CARRY((i(14) & !\Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X48_Y68_N22
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (!\Selector0~3_combout\ & (\Add1~42_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector0~3_combout\,
	datac => \Selector3~0_combout\,
	datad => \Add1~42_combout\,
	combout => \Add1~44_combout\);

-- Location: LCCOMB_X48_Y68_N14
\i[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(14) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~44_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datac => \Add1~44_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(14));

-- Location: LCCOMB_X47_Y69_N30
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (i(15) & (!\Add1~43\)) # (!i(15) & ((\Add1~43\) # (GND)))
-- \Add1~46\ = CARRY((!\Add1~43\) # (!i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X48_Y69_N16
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~45_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Add1~45_combout\,
	datac => \Selector0~3_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add1~47_combout\);

-- Location: LCCOMB_X48_Y69_N2
\i[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(15) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~47_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(15),
	datac => \Add1~47_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(15));

-- Location: LCCOMB_X47_Y68_N0
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (i(16) & (\Add1~46\ $ (GND))) # (!i(16) & (!\Add1~46\ & VCC))
-- \Add1~49\ = CARRY((i(16) & !\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X48_Y68_N30
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (!\Selector0~3_combout\ & (\Add1~48_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector3~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~48_combout\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X48_Y68_N16
\i[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(16) = (\Selector7~0_combout\ & ((\Add1~50_combout\))) # (!\Selector7~0_combout\ & (i(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datac => \Add1~50_combout\,
	datad => \Selector7~0_combout\,
	combout => i(16));

-- Location: LCCOMB_X47_Y68_N2
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (i(17) & (!\Add1~49\)) # (!i(17) & ((\Add1~49\) # (GND)))
-- \Add1~52\ = CARRY((!\Add1~49\) # (!i(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(17),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X48_Y68_N24
\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (!\Selector0~3_combout\ & (\Add1~51_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector0~3_combout\,
	datac => \Selector3~0_combout\,
	datad => \Add1~51_combout\,
	combout => \Add1~53_combout\);

-- Location: LCCOMB_X48_Y68_N2
\i[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(17) = (\Selector7~0_combout\ & (\Add1~53_combout\)) # (!\Selector7~0_combout\ & ((i(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~53_combout\,
	datac => i(17),
	datad => \Selector7~0_combout\,
	combout => i(17));

-- Location: LCCOMB_X47_Y68_N4
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (i(18) & (\Add1~52\ $ (GND))) # (!i(18) & (!\Add1~52\ & VCC))
-- \Add1~55\ = CARRY((i(18) & !\Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X48_Y68_N4
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (!\Selector0~3_combout\ & (\Add1~54_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector3~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~54_combout\,
	combout => \Add1~56_combout\);

-- Location: LCCOMB_X48_Y68_N8
\i[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(18) = (\Selector7~0_combout\ & ((\Add1~56_combout\))) # (!\Selector7~0_combout\ & (i(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datac => \Add1~56_combout\,
	datad => \Selector7~0_combout\,
	combout => i(18));

-- Location: LCCOMB_X47_Y68_N6
\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (i(19) & (!\Add1~55\)) # (!i(19) & ((\Add1~55\) # (GND)))
-- \Add1~58\ = CARRY((!\Add1~55\) # (!i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X48_Y68_N28
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (!\Selector0~3_combout\ & (\Add1~57_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector3~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~57_combout\,
	combout => \Add1~59_combout\);

-- Location: LCCOMB_X48_Y68_N6
\i[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(19) = (\Selector7~0_combout\ & ((\Add1~59_combout\))) # (!\Selector7~0_combout\ & (i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datab => \Add1~59_combout\,
	datad => \Selector7~0_combout\,
	combout => i(19));

-- Location: LCCOMB_X48_Y68_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!i(19) & (!i(17) & (!i(18) & !i(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datab => i(17),
	datac => i(18),
	datad => i(16),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X47_Y68_N8
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (i(20) & (\Add1~58\ $ (GND))) # (!i(20) & (!\Add1~58\ & VCC))
-- \Add1~61\ = CARRY((i(20) & !\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X49_Y68_N2
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (!\Selector0~3_combout\ & (\Add1~60_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~60_combout\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X49_Y68_N22
\i[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(20) = (\Selector7~0_combout\ & (\Add1~62_combout\)) # (!\Selector7~0_combout\ & ((i(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => i(20),
	datad => \Selector7~0_combout\,
	combout => i(20));

-- Location: LCCOMB_X47_Y68_N10
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (i(21) & (!\Add1~61\)) # (!i(21) & ((\Add1~61\) # (GND)))
-- \Add1~64\ = CARRY((!\Add1~61\) # (!i(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X49_Y68_N26
\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (!\Selector0~3_combout\ & (\Add1~63_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~63_combout\,
	combout => \Add1~65_combout\);

-- Location: LCCOMB_X49_Y68_N28
\i[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(21) = (\Selector7~0_combout\ & (\Add1~65_combout\)) # (!\Selector7~0_combout\ & ((i(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~65_combout\,
	datac => i(21),
	datad => \Selector7~0_combout\,
	combout => i(21));

-- Location: LCCOMB_X47_Y68_N12
\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (i(22) & (\Add1~64\ $ (GND))) # (!i(22) & (!\Add1~64\ & VCC))
-- \Add1~67\ = CARRY((i(22) & !\Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(22),
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X49_Y68_N20
\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (!\Selector0~3_combout\ & (\Add1~66_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~66_combout\,
	combout => \Add1~68_combout\);

-- Location: LCCOMB_X49_Y68_N0
\i[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(22) = (\Selector7~0_combout\ & (\Add1~68_combout\)) # (!\Selector7~0_combout\ & ((i(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~68_combout\,
	datac => i(22),
	datad => \Selector7~0_combout\,
	combout => i(22));

-- Location: LCCOMB_X47_Y68_N14
\Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (i(23) & (!\Add1~67\)) # (!i(23) & ((\Add1~67\) # (GND)))
-- \Add1~70\ = CARRY((!\Add1~67\) # (!i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(23),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~69_combout\,
	cout => \Add1~70\);

-- Location: LCCOMB_X50_Y68_N30
\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Add1~69_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~69_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~71_combout\);

-- Location: LCCOMB_X50_Y68_N20
\i[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(23) = (\Selector7~0_combout\ & ((\Add1~71_combout\))) # (!\Selector7~0_combout\ & (i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datac => \Selector7~0_combout\,
	datad => \Add1~71_combout\,
	combout => i(23));

-- Location: LCCOMB_X47_Y68_N16
\Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (i(24) & (\Add1~70\ $ (GND))) # (!i(24) & (!\Add1~70\ & VCC))
-- \Add1~73\ = CARRY((i(24) & !\Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(24),
	datad => VCC,
	cin => \Add1~70\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X49_Y68_N30
\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (!\Selector0~3_combout\ & (\Add1~72_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~72_combout\,
	combout => \Add1~74_combout\);

-- Location: LCCOMB_X49_Y68_N4
\i[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(24) = (\Selector7~0_combout\ & ((\Add1~74_combout\))) # (!\Selector7~0_combout\ & (i(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datac => \Add1~74_combout\,
	datad => \Selector7~0_combout\,
	combout => i(24));

-- Location: LCCOMB_X47_Y68_N18
\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (i(25) & (!\Add1~73\)) # (!i(25) & ((\Add1~73\) # (GND)))
-- \Add1~76\ = CARRY((!\Add1~73\) # (!i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: LCCOMB_X49_Y68_N10
\Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (!\Selector0~3_combout\ & (\Add1~75_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~75_combout\,
	combout => \Add1~77_combout\);

-- Location: LCCOMB_X49_Y68_N12
\i[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(25) = (\Selector7~0_combout\ & ((\Add1~77_combout\))) # (!\Selector7~0_combout\ & (i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(25),
	datac => \Add1~77_combout\,
	datad => \Selector7~0_combout\,
	combout => i(25));

-- Location: LCCOMB_X47_Y68_N20
\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (i(26) & (\Add1~76\ $ (GND))) # (!i(26) & (!\Add1~76\ & VCC))
-- \Add1~79\ = CARRY((i(26) & !\Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(26),
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X49_Y68_N6
\Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (!\Selector0~3_combout\ & (\Add1~78_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~78_combout\,
	combout => \Add1~80_combout\);

-- Location: LCCOMB_X49_Y68_N8
\i[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(26) = (\Selector7~0_combout\ & (\Add1~80_combout\)) # (!\Selector7~0_combout\ & ((i(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~80_combout\,
	datac => i(26),
	datad => \Selector7~0_combout\,
	combout => i(26));

-- Location: LCCOMB_X47_Y68_N22
\Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (i(27) & (!\Add1~79\)) # (!i(27) & ((\Add1~79\) # (GND)))
-- \Add1~82\ = CARRY((!\Add1~79\) # (!i(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(27),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~81_combout\,
	cout => \Add1~82\);

-- Location: LCCOMB_X49_Y68_N24
\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (!\Selector0~3_combout\ & (\Add1~81_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add1~81_combout\,
	combout => \Add1~83_combout\);

-- Location: LCCOMB_X49_Y68_N18
\i[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(27) = (\Selector7~0_combout\ & (\Add1~83_combout\)) # (!\Selector7~0_combout\ & ((i(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~83_combout\,
	datab => i(27),
	datad => \Selector7~0_combout\,
	combout => i(27));

-- Location: LCCOMB_X47_Y68_N24
\Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (i(28) & (\Add1~82\ $ (GND))) # (!i(28) & (!\Add1~82\ & VCC))
-- \Add1~85\ = CARRY((i(28) & !\Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(28),
	datad => VCC,
	cin => \Add1~82\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X50_Y68_N28
\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (!\Selector0~3_combout\ & (\Add1~84_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Add1~84_combout\,
	datac => \Selector3~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add1~86_combout\);

-- Location: LCCOMB_X50_Y68_N12
\i[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(28) = (\Selector7~0_combout\ & ((\Add1~86_combout\))) # (!\Selector7~0_combout\ & (i(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(28),
	datac => \Selector7~0_combout\,
	datad => \Add1~86_combout\,
	combout => i(28));

-- Location: LCCOMB_X47_Y68_N26
\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (i(29) & (!\Add1~85\)) # (!i(29) & ((\Add1~85\) # (GND)))
-- \Add1~88\ = CARRY((!\Add1~85\) # (!i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(29),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~87_combout\,
	cout => \Add1~88\);

-- Location: LCCOMB_X50_Y68_N24
\Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (!\Selector0~3_combout\ & (\Add1~87_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector3~0_combout\,
	datac => \Add1~87_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add1~89_combout\);

-- Location: LCCOMB_X50_Y68_N10
\i[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(29) = (\Selector7~0_combout\ & ((\Add1~89_combout\))) # (!\Selector7~0_combout\ & (i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datac => \Selector7~0_combout\,
	datad => \Add1~89_combout\,
	combout => i(29));

-- Location: LCCOMB_X50_Y69_N20
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!i(4) & (!i(5) & (!i(6) & !i(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(5),
	datac => i(6),
	datad => i(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y70_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!i(2) & ((!i(0)) # (!i(1))))) # (!i(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(2),
	datac => i(3),
	datad => i(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y69_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!i(11) & (!i(10) & (!i(9) & !i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datab => i(10),
	datac => i(9),
	datad => i(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y69_N16
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!i(15) & (!i(13) & (!i(12) & !i(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datab => i(13),
	datac => i(12),
	datad => i(14),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y69_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & (\LessThan0~2_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y68_N0
\rx_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[7]~0_combout\ = (!i(31) & (\Selector3~0_combout\ & ((!\LessThan0~9_combout\) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => i(31),
	datac => \LessThan0~9_combout\,
	datad => \Selector3~0_combout\,
	combout => \rx_data[7]~0_combout\);

-- Location: LCCOMB_X47_Y68_N28
\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (i(30) & (\Add1~88\ $ (GND))) # (!i(30) & (!\Add1~88\ & VCC))
-- \Add1~91\ = CARRY((i(30) & !\Add1~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \Add1~88\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: LCCOMB_X50_Y68_N26
\Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (!\Selector0~3_combout\ & (!\rx_data[7]~0_combout\ & \Add1~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~3_combout\,
	datac => \rx_data[7]~0_combout\,
	datad => \Add1~90_combout\,
	combout => \Add1~92_combout\);

-- Location: LCCOMB_X50_Y68_N22
\i[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(30) = (\Selector7~0_combout\ & ((\Add1~92_combout\))) # (!\Selector7~0_combout\ & (i(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(30),
	datab => \Add1~92_combout\,
	datad => \Selector7~0_combout\,
	combout => i(30));

-- Location: LCCOMB_X50_Y68_N14
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!i(29) & (!i(30) & !i(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datac => i(30),
	datad => i(28),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X49_Y68_N16
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!i(25) & (!i(24) & (!i(26) & !i(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(25),
	datab => i(24),
	datac => i(26),
	datad => i(27),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y68_N14
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!i(23) & (!i(22) & (!i(20) & !i(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(23),
	datab => i(22),
	datac => i(20),
	datad => i(21),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y68_N4
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~5_combout\ & (\LessThan0~8_combout\ & (\LessThan0~7_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X49_Y69_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector2~0_combout\ & (!i(31) & ((!\LessThan0~4_combout\) # (!\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => i(31),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X49_Y69_N12
rxDone : cycloneive_lcell_comb
-- Equation(s):
-- \rxDone~combout\ = (\Selector3~0_combout\ & ((!\LessThan0~10_combout\))) # (!\Selector3~0_combout\ & (\rxDone~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxDone~combout\,
	datab => \LessThan0~10_combout\,
	datad => \Selector3~0_combout\,
	combout => \rxDone~combout\);

-- Location: LCCOMB_X49_Y69_N6
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\ & (((\Selector5~1_combout\ & !\rxDone~combout\)) # (!\fms~2_combout\))) # (!\Selector5~0_combout\ & (\Selector5~1_combout\ & (!\rxDone~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~1_combout\,
	datac => \rxDone~combout\,
	datad => \fms~2_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X48_Y69_N28
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\Selector1~0_combout\ & (!\Selector0~0_combout\ & (!\Selector4~0_combout\ & !\Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X48_Y68_N12
\i[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(1) = (\Selector7~0_combout\ & ((\Add1~5_combout\))) # (!\Selector7~0_combout\ & (i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Add1~5_combout\,
	datad => \Selector7~0_combout\,
	combout => i(1));

-- Location: LCCOMB_X49_Y69_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Add1~6_combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X49_Y69_N8
\i[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(2) = (\Selector7~0_combout\ & ((\Add1~8_combout\))) # (!\Selector7~0_combout\ & (i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => \Add1~8_combout\,
	datad => \Selector7~0_combout\,
	combout => i(2));

-- Location: LCCOMB_X49_Y70_N6
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (i(1) & (\Selector3~0_combout\ & (!i(3) & \LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Selector3~0_combout\,
	datac => i(3),
	datad => \LessThan0~10_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X50_Y70_N28
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (i(2) & (\Decoder0~3_combout\ & i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => \Decoder0~3_combout\,
	datad => i(0),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X50_Y70_N26
\rx_packet[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(3) = (\Decoder0~4_combout\ & (\UART_RXD~input_o\)) # (!\Decoder0~4_combout\ & ((rx_packet(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~input_o\,
	datac => rx_packet(3),
	datad => \Decoder0~4_combout\,
	combout => rx_packet(3));

-- Location: LCCOMB_X50_Y70_N20
\rx_data[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[2]$latch~combout\ = (\rx_data[7]~0_combout\ & (rx_packet(3))) # (!\rx_data[7]~0_combout\ & ((\rx_data[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(3),
	datab => \rx_data[2]$latch~combout\,
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[2]$latch~combout\);

-- Location: LCCOMB_X49_Y70_N20
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~3_combout\ & (i(2) & !i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => i(2),
	datad => i(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X49_Y70_N8
\rx_packet[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(4) = (\Decoder0~5_combout\ & (\UART_RXD~input_o\)) # (!\Decoder0~5_combout\ & ((rx_packet(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RXD~input_o\,
	datac => rx_packet(4),
	datad => \Decoder0~5_combout\,
	combout => rx_packet(4));

-- Location: LCCOMB_X49_Y70_N30
\rx_data[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[3]$latch~combout\ = (\rx_data[7]~0_combout\ & ((rx_packet(4)))) # (!\rx_data[7]~0_combout\ & (\rx_data[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[3]$latch~combout\,
	datac => rx_packet(4),
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[3]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N22
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Selector3~0_combout\ & (!i(3) & (!i(1) & \LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => i(3),
	datac => i(1),
	datad => \LessThan0~10_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X50_Y70_N8
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (i(2) & (\Decoder0~6_combout\ & i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => \Decoder0~6_combout\,
	datad => i(0),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X50_Y70_N12
\rx_packet[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(5) = (\Decoder0~7_combout\ & ((\UART_RXD~input_o\))) # (!\Decoder0~7_combout\ & (rx_packet(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(5),
	datac => \UART_RXD~input_o\,
	datad => \Decoder0~7_combout\,
	combout => rx_packet(5));

-- Location: LCCOMB_X50_Y70_N14
\rx_data[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[4]$latch~combout\ = (\rx_data[7]~0_combout\ & (rx_packet(5))) # (!\rx_data[7]~0_combout\ & ((\rx_data[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(5),
	datab => \rx_data[4]$latch~combout\,
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[4]$latch~combout\);

-- Location: LCCOMB_X49_Y70_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!i(1) & i(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datac => i(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X49_Y70_N28
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\Mux0~1_combout\ & (\LessThan0~10_combout\ & (\Selector3~0_combout\ & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Selector3~0_combout\,
	datad => i(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X49_Y70_N18
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!i(0) & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X49_Y70_N12
\rx_packet[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(2) = (\Decoder0~2_combout\ & ((\UART_RXD~input_o\))) # (!\Decoder0~2_combout\ & (rx_packet(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(2),
	datab => \UART_RXD~input_o\,
	datad => \Decoder0~2_combout\,
	combout => rx_packet(2));

-- Location: LCCOMB_X49_Y70_N16
\rx_data[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[1]$latch~combout\ = (\rx_data[7]~0_combout\ & ((rx_packet(2)))) # (!\rx_data[7]~0_combout\ & (\rx_data[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[1]$latch~combout\,
	datac => rx_packet(2),
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[1]$latch~combout\);

-- Location: LCCOMB_X49_Y69_N14
\fms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fms~1_combout\ = \rx_data[2]$latch~combout\ $ (\rx_data[3]$latch~combout\ $ (\rx_data[4]$latch~combout\ $ (\rx_data[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[2]$latch~combout\,
	datab => \rx_data[3]$latch~combout\,
	datac => \rx_data[4]$latch~combout\,
	datad => \rx_data[1]$latch~combout\,
	combout => \fms~1_combout\);

-- Location: LCCOMB_X49_Y70_N4
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!i(0) & (\Decoder0~3_combout\ & !i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => \Decoder0~3_combout\,
	datad => i(2),
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X50_Y69_N24
\rx_packet[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(8) = (\Decoder0~10_combout\ & ((\UART_RXD~input_o\))) # (!\Decoder0~10_combout\ & (rx_packet(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_packet(8),
	datac => \UART_RXD~input_o\,
	datad => \Decoder0~10_combout\,
	combout => rx_packet(8));

-- Location: LCCOMB_X50_Y69_N14
\rx_data[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[7]$latch~combout\ = (\rx_data[7]~0_combout\ & (rx_packet(8))) # (!\rx_data[7]~0_combout\ & ((\rx_data[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(8),
	datac => \rx_data[7]$latch~combout\,
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[7]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N18
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (i(2) & (\Decoder0~6_combout\ & !i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => \Decoder0~6_combout\,
	datad => i(0),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X50_Y70_N10
\rx_packet[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(6) = (\Decoder0~8_combout\ & ((\UART_RXD~input_o\))) # (!\Decoder0~8_combout\ & (rx_packet(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(6),
	datac => \UART_RXD~input_o\,
	datad => \Decoder0~8_combout\,
	combout => rx_packet(6));

-- Location: LCCOMB_X50_Y70_N6
\rx_data[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[5]$latch~combout\ = (\rx_data[7]~0_combout\ & ((rx_packet(6)))) # (!\rx_data[7]~0_combout\ & (\rx_data[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[5]$latch~combout\,
	datac => rx_packet(6),
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[5]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N16
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!i(2) & (\Decoder0~3_combout\ & i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datac => \Decoder0~3_combout\,
	datad => i(0),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X50_Y70_N4
\rx_packet[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(7) = (\Decoder0~9_combout\ & (\UART_RXD~input_o\)) # (!\Decoder0~9_combout\ & ((rx_packet(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~input_o\,
	datac => rx_packet(7),
	datad => \Decoder0~9_combout\,
	combout => rx_packet(7));

-- Location: LCCOMB_X50_Y70_N30
\rx_data[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[6]$latch~combout\ = (\rx_data[7]~0_combout\ & ((rx_packet(7)))) # (!\rx_data[7]~0_combout\ & (\rx_data[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[6]$latch~combout\,
	datac => rx_packet(7),
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[6]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N24
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (i(0) & (!i(2) & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => i(2),
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X49_Y69_N28
\rx_packet[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(9) = (\Decoder0~11_combout\ & (\UART_RXD~input_o\)) # (!\Decoder0~11_combout\ & ((rx_packet(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~input_o\,
	datab => rx_packet(9),
	datad => \Decoder0~11_combout\,
	combout => rx_packet(9));

-- Location: LCCOMB_X49_Y69_N10
\fms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fms~0_combout\ = \rx_data[7]$latch~combout\ $ (\rx_data[5]$latch~combout\ $ (\rx_data[6]$latch~combout\ $ (rx_packet(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[7]$latch~combout\,
	datab => \rx_data[5]$latch~combout\,
	datac => \rx_data[6]$latch~combout\,
	datad => rx_packet(9),
	combout => \fms~0_combout\);

-- Location: LCCOMB_X49_Y69_N24
\fms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fms~2_combout\ = \rx_data[0]$latch~combout\ $ (\fms~1_combout\ $ (\fms~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[0]$latch~combout\,
	datac => \fms~1_combout\,
	datad => \fms~0_combout\,
	combout => \fms~2_combout\);

-- Location: LCCOMB_X50_Y69_N28
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\UART_RXD~input_o\ & ((\Selector0~1_combout\) # ((\Selector5~1_combout\ & \rxDone~combout\)))) # (!\UART_RXD~input_o\ & (((\Selector5~1_combout\ & \rxDone~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~input_o\,
	datab => \Selector0~1_combout\,
	datac => \Selector5~1_combout\,
	datad => \rxDone~combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X49_Y69_N30
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\) # ((\Selector0~0_combout\) # ((\Selector5~0_combout\ & \fms~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \fms~2_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X47_Y68_N30
\Add1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = \Add1~91\ $ (i(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i(31),
	cin => \Add1~91\,
	combout => \Add1~93_combout\);

-- Location: LCCOMB_X50_Y68_N16
\Add1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (!\Selector0~3_combout\ & (!\rx_data[7]~0_combout\ & \Add1~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~3_combout\,
	datac => \rx_data[7]~0_combout\,
	datad => \Add1~93_combout\,
	combout => \Add1~95_combout\);

-- Location: LCCOMB_X50_Y68_N2
\i[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(31) = (\Selector7~0_combout\ & (\Add1~95_combout\)) # (!\Selector7~0_combout\ & ((i(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~95_combout\,
	datab => i(31),
	datad => \Selector7~0_combout\,
	combout => i(31));

-- Location: LCCOMB_X49_Y69_N0
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (i(31)) # ((\LessThan0~9_combout\ & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(31),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X49_Y70_N24
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & (!\Selector0~3_combout\ & ((\LessThan0~10_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \LessThan0~10_combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector0~3_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X49_Y70_N10
\i[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- i(0) = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Add1~2_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datac => \Add1~2_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => i(0));

-- Location: LCCOMB_X49_Y70_N0
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (i(0) & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X49_Y70_N22
\rx_packet[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- rx_packet(1) = (\Decoder0~1_combout\ & (\UART_RXD~input_o\)) # (!\Decoder0~1_combout\ & ((rx_packet(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RXD~input_o\,
	datac => rx_packet(1),
	datad => \Decoder0~1_combout\,
	combout => rx_packet(1));

-- Location: LCCOMB_X49_Y70_N14
\rx_data[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data[0]$latch~combout\ = (\rx_data[7]~0_combout\ & (rx_packet(1))) # (!\rx_data[7]~0_combout\ & ((\rx_data[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_packet(1),
	datab => \rx_data[0]$latch~combout\,
	datad => \rx_data[7]~0_combout\,
	combout => \rx_data[0]$latch~combout\);

-- Location: IOIBUF_X38_Y73_N22
\tx_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: LCCOMB_X45_Y69_N14
\packet[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(4) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[2]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[2]~input_o\,
	datac => packet(4),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(4));

-- Location: IOIBUF_X45_Y73_N1
\tx_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: LCCOMB_X46_Y69_N10
\packet[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(3) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[1]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[1]~input_o\,
	datac => packet(3),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(3));

-- Location: IOIBUF_X42_Y73_N8
\tx_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: LCCOMB_X46_Y69_N14
\packet[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(5) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[3]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[3]~input_o\,
	datac => packet(5),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(5));

-- Location: IOIBUF_X45_Y73_N8
\tx_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: LCCOMB_X46_Y69_N28
\packet[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(6) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[4]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[4]~input_o\,
	datab => packet(6),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(6));

-- Location: LCCOMB_X46_Y69_N0
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (i(0) & ((i(1)) # ((packet(5))))) # (!i(0) & (!i(1) & ((packet(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => packet(5),
	datad => packet(6),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X46_Y69_N26
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (i(1) & ((\Mux0~5_combout\ & ((packet(3)))) # (!\Mux0~5_combout\ & (packet(4))))) # (!i(1) & (((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => packet(4),
	datab => i(1),
	datac => packet(3),
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: IOIBUF_X49_Y73_N22
\tx_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: LCCOMB_X46_Y69_N4
\packet[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(2) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[0]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[0]~input_o\,
	datac => packet(2),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(2));

-- Location: IOIBUF_X40_Y73_N8
\tx_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: LCCOMB_X46_Y69_N2
\packet[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(8) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[6]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[6]~input_o\,
	datac => packet(8),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(8));

-- Location: LCCOMB_X46_Y69_N8
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (i(1) & ((i(3)) # ((packet(8))))) # (!i(1) & (i(3) & (packet(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => packet(2),
	datad => packet(8),
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X42_Y73_N1
\tx_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\tx_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: LCCOMB_X45_Y69_N18
\parityBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \parityBit~1_combout\ = \tx_data[6]~input_o\ $ (\tx_data[7]~input_o\ $ (\tx_data[5]~input_o\ $ (\tx_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[6]~input_o\,
	datab => \tx_data[7]~input_o\,
	datac => \tx_data[5]~input_o\,
	datad => \tx_data[4]~input_o\,
	combout => \parityBit~1_combout\);

-- Location: LCCOMB_X45_Y69_N28
\parityBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \parityBit~0_combout\ = \tx_data[3]~input_o\ $ (\tx_data[1]~input_o\ $ (\tx_data[2]~input_o\ $ (\tx_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \tx_data[1]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[0]~input_o\,
	combout => \parityBit~0_combout\);

-- Location: LCCOMB_X45_Y69_N16
parityBit : cycloneive_lcell_comb
-- Equation(s):
-- \parityBit~combout\ = \parityBit~1_combout\ $ (\parityBit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parityBit~1_combout\,
	datad => \parityBit~0_combout\,
	combout => \parityBit~combout\);

-- Location: LCCOMB_X46_Y69_N16
\packet[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(1) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\parityBit~combout\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parityBit~combout\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => packet(1),
	combout => packet(1));

-- Location: LCCOMB_X46_Y69_N30
\packet[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(9) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[7]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[7]~input_o\,
	datac => packet(9),
	datad => \Selector1~0clkctrl_outclk\,
	combout => packet(9));

-- Location: LCCOMB_X46_Y69_N24
\packet[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- packet(7) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\tx_data[5]~input_o\)) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((packet(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[5]~input_o\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => packet(7),
	combout => packet(7));

-- Location: LCCOMB_X46_Y69_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!i(3) & ((i(1) & ((packet(7)))) # (!i(1) & (packet(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => packet(9),
	datad => packet(7),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X46_Y69_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (i(0) & ((\Mux0~0_combout\) # ((packet(1) & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => packet(1),
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X46_Y69_N18
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!i(2) & ((\Mux0~2_combout\) # ((!i(0) & \Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => \Mux0~3_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X46_Y69_N20
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~4_combout\) # ((i(2) & (!i(3) & \Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(3),
	datac => \Mux0~6_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X46_Y69_N22
\UART_TXD$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TXD$latch~combout\ = ((\LessThan0~10_combout\ & ((\Mux0~7_combout\))) # (!\LessThan0~10_combout\ & (\UART_TXD$latch~combout\))) # (!\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TXD$latch~combout\,
	datab => \Selector2~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Mux0~7_combout\,
	combout => \UART_TXD$latch~combout\);

-- Location: LCCOMB_X48_Y72_N8
\UART_RTS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RTS~2_combout\ = (\transmitter~input_o\) # (!\Selector0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter~input_o\,
	datad => \Selector0~3_combout\,
	combout => \UART_RTS~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\FAST_CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FAST_CLOCK,
	o => \FAST_CLOCK~input_o\);

ww_rx_data(0) <= \rx_data[0]~output_o\;

ww_rx_data(1) <= \rx_data[1]~output_o\;

ww_rx_data(2) <= \rx_data[2]~output_o\;

ww_rx_data(3) <= \rx_data[3]~output_o\;

ww_rx_data(4) <= \rx_data[4]~output_o\;

ww_rx_data(5) <= \rx_data[5]~output_o\;

ww_rx_data(6) <= \rx_data[6]~output_o\;

ww_rx_data(7) <= \rx_data[7]~output_o\;

ww_UART_TXD <= \UART_TXD~output_o\;

ww_UART_RTS <= \UART_RTS~output_o\;
END structure;


