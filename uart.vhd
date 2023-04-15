-- final project: uart
-- baurd rate = 9600
-- clock = 50 000,000

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity part of the description.  Describes inputs and outputs

entity uart is
	generic(
			CLOCK_INT : integer := 50000000
			);
	 port(
			FAST_CLOCK : in  std_logic;  -- Clock pin
			transmitter : in std_logic := '0'; -- control signal, if 1 UART is transmitter
			tx_data : in std_logic_vector(7 downto 0); -- tx input buffer
			rx_data : out std_logic_vector(7 downto 0); -- rx output buffer
			UART_TXD : out std_logic;
			UART_RXD : in  std_logic; -- := '0';
			UART_CTS : in  std_logic; -- := '0';
			UART_RTS : out std_logic
		 );
end uart;

architecture rtl of uart is
	-- signal tx_data : std_logic_vector(7 downto 0); -- := "11010000";
	signal data : std_logic_vector(7 downto 0); -- := "00000000";
	signal packet : std_logic_vector(10 downto 0) := (others => '0');
	signal rx_packet : std_logic_vector(10 downto 0) := (others => '0');
	signal parityBit: std_logic;
	signal i : integer := 0;
	constant baudRate : integer := 115200;
	-- signal baudRate : integer := 10;
	signal baudClock : std_logic := '0';
	signal baudRateCounter : integer := 0;
	signal number : integer := CLOCK_INT/(2*baudRate);
	
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
	 signal state : states := idle;
	--  signal resetb : std_logic := '0';
	 
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
	
	-- tx_data <= DATA;
	parityBit <= calcParity(tx_data);
	
	baudRateGenerator: process(FAST_CLOCK) is
	begin
		if rising_edge(FAST_CLOCK) then
			baudRateCounter <= baudRateCounter + 1;
			if baudRateCounter = number then
				baudClock <= not baudClock;
				baudRateCounter <= 0;
			end if;
		end if;
	end process;
	 
	fms : process (baudClock, transmitter, tx_data) is
	begin
		case state is
			when idle =>
				if transmitter = '1' then
					UART_RTS <= '0'; -- if transmitter then do not assert RTS
				else
					UART_RTS <= '1'; -- if not transmitter and idle then assert other RTS
				end if;
				UART_TXD <= '1';
				txDone <= '0';
				parity_err <= '1';
				pkt_process_done <= '0';
				parity_err_check_done <= '0';
				i <= 0;
				
			when create_packet =>
				UART_RTS <= '0';
				UART_TXD <= '1';
				txDone <= '0';
				parity_err <= '1';
				pkt_process_done <= '0';
				packet <= '0' & tx_data & parityBit & '1';
				
				pkt_create_done <= '1';
			when transmit =>
				UART_RTS <= '0';
				-- UART_TXD <= '0';
				parity_err <= '1';
				pkt_process_done <= '0';
				parity_err_check_done <= '0';
				
				if rising_edge(baudClock) then
					if i < 11 then
						UART_TXD <= packet((10-i));
						i <= i + 1;
						txDone <= '0';
					else
						txDone <= '1';
					end if;
				end if;

			when process_bits =>
				UART_RTS <= '0';
				UART_TXD <= '1';
				txDone <= '0';
				parity_err <= '1';
				parity_err_check_done <= '0';
				
				if rising_edge(baudClock) then
					if i < 11 then
						rx_packet((10-i)) <= UART_RXD;
						i <= i + 1;
						rxDone <= '0';
					else
						i <= 0;
						pkt_process_done <= '1';
						rx_data <= rx_packet(8 downto 1);
						data <= rx_packet(8 downto 1);
						rxDone <= '1';
					end if;
				end if;
				
			when parity_check =>
				UART_RTS <= '0';
				UART_TXD <= '1';
				txDone <= '0';
				pkt_process_done <= '0';
				
				if rx_packet(9) = calcParity(data) then
					parity_err <= '0';
				else
					parity_err <= '1';
				end if;
				parity_err_check_done <= '1';
			
			when store_display =>
				UART_RTS <= '0';
				UART_TXD <= '1';
				txDone <= '0';
				parity_err <= '1';
				pkt_process_done <= '0';
				parity_err_check_done <= '0';	
		end case;
	end process;
	 
	next_state_logic : process (baudClock, rx_packet, UART_RXD, transmitter) is
	begin
		case state is
			when idle =>
				-- if transmitter = '1' and UART_CTS = '1'  then -- if we want to transmit we check cts first
				if transmitter = '1' and UART_CTS = '1'  then -- if we want to transmit we check cts first
--					if rising_edge(baudClock) then
						-- state <= process_bits;
						state <= create_packet;
--					end if;
				elsif UART_RXD = '0' then
					-- state <= create_packet;
					state <= process_bits;
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