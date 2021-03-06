library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity topModule is
	port(clock: in std_logic;
			sdata: in std_logic;
			selecto: in std_logic_vector(1 downto 0);
			leds: out std_logic_vector(7 downto 0);
			test_mode: in std_logic;
			txd: out std_logic;
			tx_start: out std_logic;
			-----ADCtb: in std_logic_vector(7 downto 0);
			-----dclktb: out std_logic;
			sclk200Khz: out std_logic;
			cs: out std_logic);
					
end topModule;

architecture Behavioral of topModule is
type datas is array (0 to 124) of integer range 0 to 255;   
signal datas1: datas;
signal tx_start1: std_logic:='0';
signal dataCount, dataCount1: integer range 0 to 124:=0;           
signal dclk,clkk: std_logic:='0';
signal outputData: std_logic_vector(7 downto 0);--:="11111111111111111111111111111111";
signal firstSample: boolean:= true;
signal receptionComplete: boolean:= false;
signal sample1, sample2: std_logic_vector(99 downto 0);
signal sampleCount, count: integer range 0 to 99:=0;
signal bit_number: integer range 0 to 7:= 0;
signal clkCount: integer range 0 to 124:=0;
signal ADCoutput: std_logic_vector(7 downto 0);
signal data: std_logic_vector(7 downto 0);
signal state: integer range 0 to 3:=0;
signal xorResult: std_logic;
signal clk8Khz: std_logic;
component ADC is
port (	clock: in std_logic;
				sdata: in std_logic;
				cs: out std_logic;
				sclk200Khz: out std_logic;
				sample: out std_logic_vector(7 downto 0));
end component;
component rs232
port (clk					:	in 	std_logic;	-- 50 Mhz clock
			tx_start				:	in		std_logic;  -- transmit (tx) enable pin
			test_mode			:	in 	std_logic;  -- test mode switch
			DATAIN				:	in		std_logic_vector (7 downto 0); -- to be transmitted data vector
			clk8Khz				:	out	std_logic;	-- 8KHz clk_out
			txd					:	out	std_logic); -- serial out pin
end component;
begin
rss: rs232 port map(clk => clkk, tx_start => tx_start1, test_mode => test_mode, DATAIN => data, clk8Khz => clk8Khz, txd => txd);
aaddcc: ADC port map(clock => clkk,
							sdata => sdata,
							cs => cs,
							sclk200Khz => sclk200Khz,
							sample => ADCoutput);
xorResult <= ADCoutput(7) xor sample1(sampleCount);
-----dclktb <= dclk;
	process(clock)
	begin
		if(rising_edge(clock)) then
			if(clkCount = 124) then
				dclk <= not dclk;
				clkCount <= 0;
			else
				clkCount <= clkCount + 1;
			end if;
			clkk <= not clkk;
		end if;
	end process;
	
	process(dclk)
	begin
		if(rising_edge(dclk)) then
			if(receptionComplete = false) then
				if(firstSample = true) then
					if(sampleCount = 99) then
						sample1(sampleCount) <= ADCoutput(7);
						firstSample <= false;
						sampleCount <= 0;
					else	
						sampleCount <= sampleCount + 1;
						sample1(sampleCount) <= ADCoutput(7);
					end if;
				else
					if(sampleCount = 99) then
						sample2(sampleCount) <= ADCoutput(7);
						if(ADCoutput(7) = sample1(sampleCount)) then
							count <= count + 1;
						end if;
						if(count > 50) then
							outputData(bit_number) <= '1';
						else
							outputData(bit_number) <= '0';
						end if;
						bit_number <= bit_number + 1;
						if(bit_number = 7) then
							datas1(dataCount) <= conv_integer(outputData);
							dataCount <= dataCount + 1;
							if(dataCount = 124) then
								receptionComplete <= true;
								tx_start <= '1';
								tx_start1 <= '1';
							end if;
						end if;
						count <= 0;
						sampleCount <= 0;
						sample1 <= sample2;
					else
						sample2(sampleCount) <= ADCoutput(7);
						sampleCount <= sampleCount + 1;
						if(ADCoutput(7) = sample1(sampleCount)) then
							count <= count + 1;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	process(clk8Khz)
	begin
		if(rising_edge(clk8Khz)) then
			if(receptionComplete = true) then
				
				data <= conv_std_logic_vector(datas1(dataCount1), 8);
				dataCount1 <= dataCount1 + 1;
				if(dataCount1 = 124) then
					dataCount1 <= 1;
				end if;
			end if;
		end if;
	end process;
end Behavioral;