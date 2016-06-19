library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity topModule is
	port(ADCoutput: in std_logic_vector(7 downto 0);
			clock: in std_logic;
			output: out std_logic;
			txd: out std_logic;
			tx_start: in std_logic;
			test_mode: in std_logic;
			sdata: in std_logic;
			cs: out std_logic;
			clk200Khz: out std_logic);
end topModule;

architecture Behavioral of topModule is
signal receptionComplete: boolean:= false;
signal state: integer range 0 to 1:= 0;
signal firstBit, previousBit, dclk: std_logic;
signal countera, notcountera: integer range 0 to 3:=0;
signal bit_count: integer range 0 to 3:=0;
signal datacount: integer range 0 to 31:=0;
type barr is array(0 to 31) of std_logic;
signal dataArray: barr;
begin
process(clock)
begin
	if(rising_edge(clock)) then
		-- OBTAIN THE NECESSARY CLOCK FOR DEMODULATION CALL IT dclk
	end if;
end process;

process(dclk)
begin
	if(rising_edge(dclk)) then
		if(receptionComplete = false) then
			if(state = 0) then
				if(ADCoutput > 0) then
					firstBit <= '1';
					previousBit <= '1';
				else
					firstBit <= '0';
					previousBit <= '0';
				end if;
				countera <= 0;
				notcountera <= 0;
				state <= state + 1;
				bit_count <= 1;
			elsif(state = 1) then
				if(ADCoutput > 0) then
					if((previousBit xor '1') = '0') then
						countera <= countera + 1;
					else
						notcountera <= notcountera + 1;
					end if;
				else
					if((previousBit xor '0') = '0') then
						countera <= countera + 1;
					else
						notcountera <= notcountera + 1;
					end if;
				end if;
				bit_count <= bit_count + 1;
				if(bit_count = 4) then
					if(countera > notcountera) then
						dataArray(dataCount) <= firstBit;
					else
						dataArray(dataCount) <= not firstBit;
					end if;
					dataCount <= dataCount + 1;
					if(dataCount = 32) then
						receptionComplete <= true;
					end if;
				end if;
			end if;
		end if;
	end if;
end process;

end Behavioral;

