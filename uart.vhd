-- final project: uart

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity part of the description.  Describes inputs and outputs

entity uart is
	 port(
			CLOCK_50 : in  std_logic;  -- Clock pin
			KEY : in  std_logic_vector(3 downto 0);  -- push button switches
			SW : in  std_logic_vector(17 downto 0);  -- slider switches
			LEDG : out std_logic_vector(7 downto 0);  -- green lights
			LEDR : out std_logic_vector(17 downto 0);  -- red lights
			UART_TXD : out std_logic;
			UART_RXD : in  std_logic;
			UART_CTS : in  std_logic;
			UART_RTS : out std_logic
		 );
end uart;

architecture rtl of uart is
	signal data : std_logic_vector(7 downto 0);
	signal packet : std_logic_vector(10 downto 0);
	signal txDone, rxDone : std_logic;
begin

end rtl;