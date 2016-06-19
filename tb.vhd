--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:04:53 03/10/2015
-- Design Name:   
-- Module Name:   
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: topModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;use ieee.std_logic_arith.all;
USE std.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT topModule
    PORT(
         clock : IN  std_logic;
         sdata : IN  std_logic;
         selecto : IN  std_logic_vector(1 downto 0);
         leds : OUT  std_logic_vector(7 downto 0);
         tx_start : IN  std_logic;
         test_mode : IN  std_logic;
         txd : OUT  std_logic;
			ADCtb: in std_logic_vector(7 downto 0);
			dclktb: out std_logic;
         sclk200Khz : OUT  std_logic;
         cs : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal sdata : std_logic := '0';
   signal selecto : std_logic_vector(1 downto 0) := (others => '0');
   signal tx_start : std_logic := '0';
   signal test_mode : std_logic := '0';
	signal ADCtb: std_logic_vector(7 downto 0);
 	--Outputs
   signal leds : std_logic_vector(7 downto 0);
   signal txd : std_logic;
   signal sclk200Khz, dclktb : std_logic;
   signal cs : std_logic;
signal dcc: std_logic;
   -- Clock period definitions
   constant clock_period : time := 10 ns;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: topModule PORT MAP (
          clock => clock,
          sdata => sdata,
          selecto => selecto,
          leds => leds,
          tx_start => tx_start,
          test_mode => test_mode,
          txd => txd,
			 ADCtb => ADCtb,
          sclk200Khz => sclk200Khz,
          cs => cs
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
	clock_process2: process
	begin
		dcc <= '0';
		wait for clock_period*125;
		dcc <= '1';
		wait for clock_period*125;
	end process;
 

   process(dcc)
	file infile: text is in "input.txt";
	variable inline: line;
	variable dataread:integer range 0 to 255;
	
	begin	
		if(not endfile(infile)) then
			readline(infile, inline);
			read(inline, dataread);
			ADCtb <= conv_std_logic_vector(dataread,8);
		end if;
   end process;

END;
