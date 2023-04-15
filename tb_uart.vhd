-- final project: uart- testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_uart is
end entity tb_uart;

architecture tb of tb_uart is

 -- Define the record that describes one test vector
   
   TYPE test_case_record IS RECORD
       tx_data : std_logic_vector(7 downto 0);
       rx_data : std_logic_vector(7 downto 0);
   END RECORD;

--    Define a type that is an array of the record.

   TYPE test_case_array_type IS ARRAY (0 to 4) OF test_case_record;
     
--    Define the array itself.  We will initialize it, one line per test vector.
--    If we want to add more tests, or change the tests, we can do it here.
--    Note that each line of the array is one record, and the 8 numbers in each
--    line correspond to the 8 entries in the record.  Seven of these entries 
--    represent inputs to apply, and one represents the expected output.
    
   signal test_case_array : test_case_array_type := (
        ("11010000","11010000"),
        ("11010011", "11010011"),
        ("11000110","11000110"),
        ("00011100","00011100"),
        ("10010110","10010110") 
        );   

-- component uart is
--      generic(
-- 			CLOCK_INT : integer := 50000000
--         );
-- 	 port(
-- 			FAST_CLOCK : in  std_logic;  -- Clock pin
--             transmitter : in std_logic; -- control signal, if 1 UART is transmitter
--             tx_data : in std_logic_vector(7 downto 0); -- tx input buffer
-- 			rx_data : out std_logic_vector(7 downto 0); -- rx output buffer
-- 			UART_TXD : out std_logic;
-- 			UART_RXD : in  std_logic;-- := '0';
-- 			UART_CTS : in  std_logic; -- := '0';
-- 			UART_RTS : out std_logic -- := '0'
-- 		 );
-- end component uart;

signal FAST_CLOCK :  std_logic := '1';  -- Clock pin
signal tx_data, tx_data_B : std_logic_vector(7 downto 0);
signal transmitter, transmitter_B : std_logic; -- control signal, if 1 UART is transmitter
signal rx_data, rx_data_B : std_logic_vector(7 downto 0);
signal UART_TXD, UART_TXD_B : std_logic;
signal UART_RXD, UART_RXD_B :  std_logic; -- := '0';
signal UART_CTS, UART_CTS_B :  std_logic; -- := '0';
signal UART_RTS, UART_RTS_B: std_logic;
-- signal clock : std_logic := '0';

constant transmit_wait : integer := 50000000/9600;

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

    deviceB : entity work.uart(rtl) 
    generic map(CLOCK_INT => 50000000)
    port map (
            FAST_CLOCK => FAST_CLOCK,
            transmitter => transmitter_B,
            tx_data => tx_data_B,
            rx_data => rx_data_B,
            UART_RXD => UART_RXD_B,
            UART_CTS => UART_CTS_B,
            UART_RTS => UART_RTS_B);

    clock_gen: process
    begin
        FAST_CLOCK <= not FAST_CLOCK;
        wait for 50 ps;
    end process;

    -- connection of device A and B
    -- UART_RTS_B <= '0';
    -- UART_RTS <= '0';

    UART_CTS <= UART_RTS_B;
    UART_CTS_B <= UART_RTS;

    UART_RXD <= UART_TXD_B;
    UART_RXD_B <= UART_TXD;



    process
    begin

        transmitter_B <= '1';
        transmitter <= '0';

        -- wait for 50 ps;

        tx_data_B <= "11010000";
        -- wait for 100 ps;
        -- UART_RTS_B <= '1';
        
        -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- UART_CTS <= '0';

        wait for transmit_wait*768 ps;
        
        -- UART_RTS_B <= '0';
        -- UART_RTS <= '0';
        -- UART_RTS_B <= '1';
        tx_data_B <= "11010011";

        wait for transmit_wait*768 ps;
         
        -- wait for 100 ps;
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        -- -- DATA <= "11000110";
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';
        tx_data_B <= "11000110";

        wait for transmit_wait*768 ps;

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        -- -- DATA <= "00011100";
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';

        tx_data_B <= "00011100";

        wait for transmit_wait*768 ps;

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        -- -- DATA <= "10010110";
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';

        tx_data_B <= "10010110";

        -- wait for transmit_wait*768 ps;

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        wait;
        
    end process;

    -- process
    -- begin

    --     -- UART_RTS <= '1';
    --     -- UART_RTS_B <= '0';
    --     transmitter_B <= '1';
    --     transmitter <= '0';

    --     for i in test_case_array'low to test_case_array'high loop
            
    --         -- Print information about the testcase to the transcript window (make sure when
    --         -- you run this, your transcript window is large enough to see what is happening)
            
    --         report "-------------------------------------------";
    --         report "Test case " & integer'image(i) & ":" &
    --                 " tx_data=" & integer'image(to_integer(unsigned(test_case_array(i).tx_data)));

    --         -- assign the values to the inputs of the DUT (design under test)

    --         rx_data_B <= test_case_array(i).tx_data; 
    --         -- value1 <= test_case_array(i).value1;
    --         -- value2 <= test_case_array(i).value2;
    --         -- value3 <= test_case_array(i).value3;
    --         -- bet1_wins <= test_case_array(i).bet1_wins;
    --         -- bet2_wins <= test_case_array(i).bet2_wins;
    --         -- bet3_wins <= test_case_array(i).bet3_wins;              

    --         -- wait for some time, to give the DUT circuit time to respond (1ns is arbitrary)                

    --         -- wait for 1 ns;
    --         wait for transmit_wait*768 ps;
            
    --         -- now print the results along with the expected results
            
    --         report "Expected result= " &  
    --                     integer'image(to_integer(unsigned(test_case_array(i).rx_data))) &
    --             "  Actual result= " &  
    --                     integer'image(to_integer(unsigned(rx_data)));

    --         -- This assert statement causes a fatal error if there is a mismatch
                                                                        
    --         assert (test_case_array(i).rx_data = rx_data )
    --             report "MISMATCH.  THERE IS A PROBLEM IN YOUR DESIGN THAT YOU NEED TO FIX"
    --             severity warning;
    --     end loop;
                                            
    --     report "================== ALL TESTS PASSED =============================";
                                                                                
    --     wait; --- we are done.  Wait for ever
    -- end process;

end tb;