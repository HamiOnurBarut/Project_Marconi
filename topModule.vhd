------ IMPORTANT NOTE ABOUT LAB 2 ----
---- For the communication between two computers, this code is combined with my partner's code.
---- As instructed, we used one fpga which received data from one computer and send it to another one.
---- VHDL code of this procedure is done with my partner who uploaded the that portion of code along with his individual work.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

entity topModule is

port(clock: in std_logic;
		tx_start1: in std_logic;
		test_mode1: in std_logic;
		send8KB: in std_logic;
		sendSwitch: in std_logic;
		swithces: in std_logic_vector(7 downto 0);
		txd1: out std_logic);
end topModule;

architecture Behavioral of topModule is
------------ This portion of code instantiates a ram whose values come from a single txt file.
------------ However, once it is implemented in top module  resource usage goes beyond 100%.
------------ Therefore, 8KB data is written to RAM by using a seperate VHDL module, whose address value is controlled in this module.
-- type rtype is array(0 to 7999) of bit_vector(7 downto 0);    
--    impure function rfunction (rfileName : in string) return rtype is                                                   
--       FILE rfile         : text is in "input.txt";                       
--       variable nextLine : line;   
--       variable bram       : rtype;                                      
--    begin                                                        
--       for I in rtype'range loop                                  
--           readline (rfile, nextLine);                             
--           read (nextLine, bram(I));
--       end loop;                                                    
--       return bram;                                                  
--    end function;                                                
--
--    signal bram : rtype := rfunction("input.txt");
--------------------------------------------------------------------

-- Component for RS232 UART communication (given in moodle page)
component rs232
port (clk					:	in 	std_logic;	-- 50 Mhz clock
			tx_start				:	in		std_logic;  -- transmit (tx) enable pin
			test_mode			:	in 	std_logic;  -- test mode switch
			DATAIN				:	in		std_logic_vector (7 downto 0); -- to be transmitted data vector
			clk8Khz				:	out	std_logic;	-- 8KHz clk_out
			txd					:	out	std_logic); -- serial out pin
end component;
-- Component for creating and manipulating RAM
component ramBlock
	port(clk: in std_logic;
	addr: in std_logic_vector(12 downto 0);
			output: out std_logic_vector(7 downto 0));
end component;

signal rsData: std_logic_vector(7 downto 0);
signal clock8Khz: std_logic;
signal counter: integer range 0 to 7999:=0;
signal ramData: std_logic_vector(7 downto 0);
signal addr1: std_logic_vector(12 downto 0);
begin

rsComponent: rs232
	Port map( clk => clock, tx_start => tx_start1, test_mode => test_mode1,
					DATAIN => rsData, clk8Khz => clock8Khz, txd => txd1);
rb: ramBlock port map(clk => clock, addr => addr1, output => ramData);
addr1 <= conv_std_logic_vector(counter, 13);

process(clock8Khz)
begin
	if(rising_edge(clock8Khz)) then
		-- If send8KB button is pressed, data in the RAM is sent. For this module, we just need to change address value
		if(send8KB = '1') then
			counter <= counter + 1;
			if(counter = 7999) then
				counter <= 0;
			end if;
			rsData <= ramData;
		-- If sendSwitch button is pressed, data coming from switches is sent serially
		elsif(sendSwitch = '1') then
			rsData <= swithces;
		end if;
	end if;
end process;

end Behavioral;