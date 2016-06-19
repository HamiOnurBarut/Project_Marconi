--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:43:01 03/07/2015
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
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY memo IS
END memo;
 
ARCHITECTURE behavior OF memo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT topModule
    PORT(
         clock : IN  std_logic;
         sdata : IN  std_logic;
         tx_start : IN  std_logic;
         test_mode : IN  std_logic;
         txd : OUT  std_logic;
         sclk200Khz : OUT  std_logic;
         cs : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal sdata : std_logic := '0';
   signal tx_start : std_logic := '0';
   signal test_mode : std_logic := '0';

 	--Outputs
   signal txd : std_logic;
   signal sclk200Khz : std_logic;
   signal cs : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: topModule PORT MAP (
          clock => clock,
          sdata => sdata,
          tx_start => tx_start,
          test_mode => test_mode,
          txd => txd,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
