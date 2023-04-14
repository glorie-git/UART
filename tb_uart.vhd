-- final project: uart- testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_uart is
end entity tb_uart;

architecture tb of tb_uart is

 -- Define the record that describes one test vector
   
--    TYPE test_case_record IS RECORD
--        data : unsigned(11 downto 0);
--    END RECORD;

   -- Define a type that is an array of the record.

--    TYPE test_case_array_type IS ARRAY (0 to 8) OF test_case_record;
     
   -- Define the array itself.  We will initialize it, one line per test vector.
   -- If we want to add more tests, or change the tests, we can do it here.
   -- Note that each line of the array is one record, and the 8 numbers in each
   -- line correspond to the 8 entries in the record.  Seven of these entries 
   -- represent inputs to apply, and one represents the expected output.
    
--    signal test_case_array : test_case_array_type := (
--         (to_unsigned(16,12), "000", "000", "000", '1', '1', '1',  to_unsigned(16,12)),
--         (to_unsigned(64,12), "000", "000", "000", '0', '0', '0',  to_unsigned(64,12)),
--         (to_unsigned(16,12), "010", "010", "010", '0', '0', '0',  to_unsigned(10,12)),
--         (to_unsigned(32,12), "011", "001", "010", '1', '0', '0',  to_unsigned(134,12)),
--         (to_unsigned(32,12), "011", "001", "010", '0', '1', '0',  to_unsigned(28,12)),
--         (to_unsigned(32,12), "011", "001", "100", '0', '0', '1',  to_unsigned(36,12)),                      
--         (to_unsigned(94,12), "110", "011", "100", '1', '1', '0',  to_unsigned(303,12)),  
--         (to_unsigned(56,12), "011", "001", "100", '1', '0', '1',  to_unsigned(168,12)),  
--         (to_unsigned(12,12), "011", "111", "101", '0', '1', '1',  to_unsigned(26,12))   
--              );   

component uart is
     generic(
			CLOCK_INT : integer := 50000000;
			baudRate : integer := 9600
        );
	 port(
			FAST_CLOCK : in  std_logic;  -- Clock pin
            DATA : in std_logic_vector(7 downto 0);
			-- KEY : in  std_logic_vector(3 downto 0):= (others => '0');  -- push button switches
			-- SW : in  std_logic_vector(17 downto 0) := (others => '0');  -- slider switches
			-- LEDG : out std_logic_vector(7 downto 0);  -- green lights
			-- LEDR : out std_logic_vector(17 downto 0);  -- red lights
			UART_TXD : out std_logic;
			UART_RXD : in  std_logic := '0';
			UART_CTS : in  std_logic := '0';
			UART_RTS : out std_logic := '1'
		 );
end component uart;

signal FAST_CLOCK :  std_logic := '1';  -- Clock pin
signal DATA, DATA_B : std_logic_vector(7 downto 0);
-- signal KEY, KEY_B :  std_logic_vector(3 downto 0):= (others => '0');  -- push button switches
-- signal SW, SW_B:  std_logic_vector(17 downto 0) := (others => '0');  -- slider switches
-- signal LEDG, LEDG_B : std_logic_vector(7 downto 0) := (others => '0');  -- green lights
-- signal LEDR, LEDR_B : std_logic_vector(17 downto 0) := (others => '0');  -- red lights
signal UART_TXD, UART_TXD_B : std_logic;
signal UART_RXD, UART_RXD_B :  std_logic; -- := 'X';
signal UART_CTS, UART_CTS_B :  std_logic; -- := '0';
signal UART_RTS, UART_RTS_B: std_logic; -- := '1';
-- signal clock : std_logic := '0';

constant transmit_wait : integer := 50000000/9600;

begin
    -- dut : uart port map (CLOCK_50, KEY, SW, UART_TXD, UART_RXD, UART_CTS, UART_RTS);
    deviceA : uart 
    generic map(CLOCK_INT => 50000000, baudRate => 9600)
    port map (FAST_CLOCK, DATA, UART_TXD, UART_RXD, UART_CTS, UART_RTS);

    deviceB : uart 
    generic map(CLOCK_INT => 50000000, baudRate => 9600)
    port map (FAST_CLOCK, DATA_B, UART_TXD_B, UART_RXD_B, UART_CTS_B, UART_RTS_B);

    clock_gen: process
    begin
        FAST_CLOCK <= not FAST_CLOCK;
        wait for 50 ps;
    end process;

    -- connection of device A and B
    UART_CTS <= UART_RTS_B;
    UART_CTS_B <= UART_RTS;

    UART_RXD <= UART_TXD_B;
    UART_RXD_B <= UART_TXD;

    

    process
    begin
        
        DATA_B <= "11010000";
        -- wait for 100 ps;
        UART_RTS_B <= '0';
        UART_RTS <= '1';
        -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- UART_CTS <= '0';

        wait for transmit_wait*1300 ps;
        
        -- UART_RTS_B <= '0';
        DATA_B <= "11010011";
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

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        -- -- DATA <= "00011100";
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        -- -- DATA <= "10010110";
        -- -- UART_CTS <= '0';
        -- wait for 100 ps;
        -- -- UART_CTS <= '1';
        -- wait for 50 ps;
        -- -- UART_CTS <= '0';

        -- wait for transmit_wait*12 ps;
        -- UART_RTS_B <= '0';
        
        wait;
        
    end process;

    -- for i in test_case_array'low to test_case_array'high loop
        
    --     -- Print information about the testcase to the transcript window (make sure when
    --     -- you run this, your transcript window is large enough to see what is happening)
        
    --     report "-------------------------------------------";
    --     report "Test case " & integer'image(i) & ":" &
    --              " money=" & integer'image(to_integer(test_case_array(i).money)) &
    --              " value1=" & integer'image(to_integer(test_case_array(i).value1)) & 
    --              " value2=" & integer'image(to_integer(test_case_array(i).value2)) & 
    --              " value3=" & integer'image(to_integer(test_case_array(i).value3)) & 
    --              " bet1_wins=" & std_logic'image(test_case_array(i).bet1_wins) & 
    --              " bet2_wins=" & std_logic'image(test_case_array(i).bet2_wins) & 
    --              " bet3_wins=" & std_logic'image(test_case_array(i).bet3_wins);

    --     -- assign the values to the inputs of the DUT (design under test)

    --     money <= test_case_array(i).money; 
    --     value1 <= test_case_array(i).value1;
    --     value2 <= test_case_array(i).value2;
    --     value3 <= test_case_array(i).value3;
    --     bet1_wins <= test_case_array(i).bet1_wins;
    --     bet2_wins <= test_case_array(i).bet2_wins;
    --     bet3_wins <= test_case_array(i).bet3_wins;              

    --     -- wait for some time, to give the DUT circuit time to respond (1ns is arbitrary)                

    --     wait for 1 ns;
        
    --     -- now print the results along with the expected results
        
    --     report "Expected result= " &  
    --                 integer'image(to_integer(test_case_array(i).expected_new_money)) &
    --            "  Actual result= " &  
    --                 integer'image(to_integer(new_money));

    --     -- This assert statement causes a fatal error if there is a mismatch
                                                                    
    --     assert (test_case_array(i).expected_new_money = new_money )
    --         report "MISMATCH.  THERE IS A PROBLEM IN YOUR DESIGN THAT YOU NEED TO FIX"
    --         severity failure;
    --   end loop;
                                           
    --   report "================== ALL TESTS PASSED =============================";
                                                                              
    --   wait; --- we are done.  Wait for ever

end tb;