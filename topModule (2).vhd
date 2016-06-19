library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity topModule is
port(clock: in std_logic;
		sdata: in std_logic;
		wea: in std_logic;
		switch: in std_logic_vector(7 downto 0);
		ADCorDDS: in std_logic;
		cs: out std_logic;
		clk200Khz: out std_logic;
		oscilloscope: out std_logic;
		leds: out std_logic_vector(7 downto 0));
end topModule;

architecture Behavioral of topModule is
component ADC is
port (	clock: in std_logic;
				sdata: in std_logic;
				cs: out std_logic;
				sclk200Khz: out std_logic;
				sample: out std_logic_vector(7 downto 0));
end component;
COMPONENT DDS
  PORT (
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cosine : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;
signal ADCdata: std_logic_vector(7 downto 0);
signal DDSdata: std_logic_vector(11 downto 0);
signal frequency: std_logic_vector(15 downto 0);

begin
ADCcomp: ADC port map(clock => clock, sdata => sdata, cs => cs, sclk200Khz => clk200KHz, sample => ADCdata);
DDScomp: DDS port map(clk => clock, we => wea, data => frequency, cosine => DDSdata);
frequency <= conv_std_logic_vector(conv_integer(switch) + 786, 16);
process(clock)
begin
	if(rising_edge(clock)) then
		if(ADCorDDS = '1') then
			leds <= ADCdata;
			oscilloscope <= ADCdata(7); 
		else
			leds <= DDSdata(11 downto 4) + "010000000";
			oscilloscope <= DDSdata(11);
		end if;
	end if;
end process;
end Behavioral;