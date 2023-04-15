-- final project: uart- testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_uart_rx is
end entity tb_uart_rx;

architecture tb of tb_uart_rx is

 -- Define the record that describes one test vector
   
   TYPE test_case_record IS RECORD
       tx_data : std_logic_vector(7 downto 0);
       rx_data : std_logic_vector(7 downto 0);
       packet : std_logic_vector(10 downto 0);
   END RECORD;

--    Define a type that is an array of the record.

   TYPE test_case_array_type IS ARRAY (0 to 4) OF test_case_record;
     
--    Define the array itself.  We will initialize it, one line per test vector.
--    If we want to add more tests, or change the tests, we can do it here.
--    Note that each line of the array is one record, and the 8 numbers in each
--    line correspond to the 8 entries in the record.  Seven of these entries 
--    represent inputs to apply, and one represents the expected output.
    
   signal test_case_array : test_case_array_type := (
        ("11010000","11010000","01101000011"),
        ("11010011", "11010011","01101001111"),
        ("11000110","11000110","01100011001"),
        ("00011100","00011100","00001110011"),
        ("10010110","10010110","01001011001") 
        );   

signal FAST_CLOCK :  std_logic := '0';  -- Clock pin
signal tx_data, tx_data_B : std_logic_vector(7 downto 0);
signal transmitter, transmitter_B : std_logic; -- control signal, if 1 UART is transmitter
signal rx_data, rx_data_B : std_logic_vector(7 downto 0);
signal UART_TXD, UART_TXD_B : std_logic;
signal UART_RXD, UART_RXD_B :  std_logic := '1';
signal UART_CTS, UART_CTS_B :  std_logic; -- := '0';
signal UART_RTS, UART_RTS_B: std_logic;
signal packet, test: std_logic_vector(10 downto 0);
signal int : integer := 0;

-- We want to interface to 9600 baud UART
-- 50000000 / 115200 = 5208
constant clks_per_bit : integer := 434;

-- Test Bench uses a 50 Mhz Clock
constant clk_period : time := 20 ns;

-- 1/115200
constant bit_period : time := 8680 ns;

signal clock : std_logic;

-- constant transmit_wait : integer := 50000000/9600;

begin
    -- dut : uart port map (CLOCK_50, UART_TXD, UART_RXD, UART_CTS, UART_RTS);
    deviceA : entity work.uart(rtl) 
    generic map(CLOCK_INT => 50000000)
    port map (
            FAST_CLOCK => FAST_CLOCK, 
            transmitter => transmitter, 
            tx_data => tx_data, 
            rx_data => rx_data, 
            UART_TXD => UART_TXD,
            UART_RXD => UART_RXD, 
            UART_CTS => UART_CTS, 
            UART_RTS => UART_RTS);

    UART_CTS <= '0';
    transmitter <= '0';    
    packet <= "01101000011";

    FAST_CLOCK <= not FAST_CLOCK after clk_period/2;

    process
    begin

        -- wait for 1042000 ps;
        for ii in test_case_array'low to test_case_array'high loop
            
            -- wait until rising_edge(FAST_CLOCK);
            packet <= test_case_array(ii).packet;

            wait until rising_edge(FAST_CLOCK);
            for i in packet'low to packet'high loop  
                int <= i;
                UART_RXD <= packet(10-i);
                wait for bit_period;

                assert (test_case_array(ii).tx_data = rx_data)
                report "MISMATCH.  THERE IS A PROBLEM IN YOUR DESIGN THAT YOU NEED TO FIX"
                severity warning;

            end loop;
        end loop;

        report "================== ALL TESTS PASSED =============================";
                                                                                
        wait; --- we are done.  Wait for ever

        -- wait until rising_edge(FAST_CLOCK);
        -- -- wait until rising_edge(FAST_CLOCK);
        -- for i in packet'low to packet'high loop  
        --     int <= i;
        --     UART_RXD <= packet(10-i);
        --     test((10-i)) <= packet(10-i);
        --     wait for bit_period;
        -- end loop;
        
    end process;

end tb;