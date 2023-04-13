-- final project: uart

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity part of the description.  Describes inputs and outputs

entity uart is
	 port(
			CLOCK_50 : in  std_logic;  -- Clock pin
			KEY : in  std_logic_vector(3 downto 0):= (others => '0');  -- push button switches
			SW : in  std_logic_vector(17 downto 0) := (others => '0');  -- slider switches
			LEDG : out std_logic_vector(7 downto 0);  -- green lights
			LEDR : out std_logic_vector(17 downto 0);  -- red lights
			UART_TXD : out std_logic;
			UART_RXD : in  std_logic := '0';
			UART_CTS : in  std_logic := '0';
			UART_RTS : out std_logic
		 );
end uart;

architecture rtl of uart is
	signal data : std_logic_vector(7 downto 0) := "11010000";
	signal packet : std_logic_vector(10 downto 0);
	signal txDone, rxDone : std_logic;
	signal parityBit: std_logic;
	signal i : integer := 0;
	
	-- https://surf-vhdl.com/vhdl-for-loop-statement/#:~:text=The%20FOR%2DLOOP%20statement%20is%20used%20whenever%20an%20operation%20needs,in%20the%20other%20SW%20languages.
	-- https://vhdlwhiz.com/function/
	
	-- returns 1 if odd number of 1's found, returns 0 otherwise
	function calcParity(data : std_logic_vector) return std_logic is
        variable counter : integer;
		  variable v_parity : std_logic;
    begin
		  v_parity := data(0);
        for i in 1 to data'length-1 loop
				v_parity := v_parity xor data(i);
		  end loop;
		  
        return v_parity;
    end function;
begin
	
	parityBit <= calcParity(data);
	packet <= '0' & data & parityBit & '1';
	
	process(CLOCK_50) is
		begin
		if rising_edge(CLOCK_50) then
			if i < 11 then
				UART_TXD <= packet(i);
				i <= i + 1;
			end if;
		end if;
	end process;

end rtl;