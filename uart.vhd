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
			UART_RTS : out std_logic := '1'
		 );
end uart;

architecture rtl of uart is
	signal data : std_logic_vector(7 downto 0) := "11010000";
	signal packet : std_logic_vector(10 downto 0);
	signal parityBit: std_logic;
	signal i : integer := 0;
--	signal baudRate : integer := 9600;
	signal baudRate : integer := 10;
	signal clock : std_logic := '0';
	signal baudRateCounter : integer := 0;
	
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
	 
	 -- state machine
	 type STATES is (idle, create_packet, transmit, process_bits, parity_check, store_display);
	 signal state : states;
	 signal resetb : std_logic := '0';
	 
	 -- constrol signals
	 signal sync_err : std_logic := '0';
	 
	 -- constrol signals: transmitter
	 signal txDone : std_logic := '0';
	 signal pkt_create_done : std_logic := '0';
	 
	 -- constrol signals: receiver
	 signal pkt_process_done : std_logic := '0';
	 signal parity_err : std_logic := '0';
	 signal parity_err_check_done : std_logic := '0';
	 signal rxDone : std_logic := '0';
	 
begin
	
	parityBit <= calcParity(data);
--	packet <= '0' & data & parityBit & '1';
	
--	-- send packet
--	process(clock) is
--		begin
--		if rising_edge(clock) then
--			if i < 11 then
--				UART_TXD <= packet(i);
--				i <= i + 1;
--			end if;
--		end if;
--	end process;
	
	baudRateGenerator: process(CLOCK_50) is
	begin
		if rising_edge(CLOCK_50) then
			baudRateCounter <= baudRateCounter + 1;
			if baudRateCounter = baudRate then
				clock <= '1';
				baudRateCounter <= 0;
			else
				clock <= '0';
			end if;
		end if;
	end process;
	
--	 type STATES is (idle, create_packet, transmit, process_bits, parity_check, store_display);
	 
	fms : process (CLOCK_50, clock) is
	begin
		case state is
			when idle =>
				UART_RTS <= '1';
				txDone <= '0';
				
			when create_packet =>
				UART_RTS <= '0';
				txDone <= '0';
				
				packet <= '0' & data & parityBit & '1';
				pkt_create_done <= '1';
			when transmit =>
				UART_RTS <= '0';
				-- send packet
--				process(clock) is
--					begin
					if rising_edge(clock) then
						if i < 11 then
							UART_TXD <= packet(i);
							i <= i + 1;
							txDone <= '0';
						else
							i <= 0;
							txDone <= '1';
						end if;
					end if;
--				end process;
			when process_bits =>
				UART_RTS <= '0';
				txDone <= '0';
			when parity_check =>
				UART_RTS <= '0';
				txDone <= '0';
			when store_display =>
				UART_RTS <= '0';
				txDone <= '0';
		end case;
	end process;
	
	 -- constrol signals
--	 signal sync_err : std_logic;
	 
	 -- constrol signals: transmitter
--	 signal txDone : std_logic;
--	 signal pkt_create_done : std_logic;
	 
	 -- constrol signals: receiver
--	 signal pkt_process_done : std_logic;
--	 signal parity_err : std_logic;
--	 signal rxDone : std_logic;
	 
	next_state_logic : process (CLOCK_50, clock) is
	begin
		case state is
			when idle =>
				if UART_CTS = '1' then
					state <= create_packet;
--				elsif UART_RTS = '1' then
--					state <= process_bits;
				else
					state <= idle;
				end if;
				
			when create_packet =>
				if sync_err = '1' then -- should't need this
					state <= idle;
				elsif pkt_create_done = '1' then
					state <= transmit;
				else
					state <= create_packet;
				end if;
				
			when transmit =>
				if txDone = '1' or sync_err = '1' then
					state <= idle;
				else
					state <= transmit;
				end if;
				
			when process_bits =>
				if sync_err = '1' then
					state <= idle;
				elsif pkt_process_done = '1' then
					state <= parity_check;
				else
					state <= process_bits;
				end if;
				
			when parity_check =>
				if parity_err_check_done = '1' then
					if parity_err = '1' then
						state <= idle;
					else
						state <= store_display;
					end if;
				else
					state <= parity_check;
				end if;
			when store_display =>
				if rxDone = '1' then
					state <= idle;
				else 
					state <= store_display;
				end if;
		end case;
	end process;

end rtl;