--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity counter_quiz is
 port (
 clk : in std_logic;
 rst : in std_logic; -- active high, asynch.
 up_n : in std_logic; -- active low
 load_n: in std_logic; -- active low
 input : in std_logic_vector(3 downto 0);
 output: out std_logic_vector(3 downto 0);
 quiz: in std_logic;
 dino: out std_logic
 );
end counter_quiz;

architecture arch of counter_quiz is
signal counter_output: std_logic_vector(3 downto 0);
signal one : std_logic_vector(3 downto 0);
begin
one <= "0001";
process(clk, rst)
begin
	if(rst = '1') then
		counter_output <="0000";
		
	elsif(clk'Event and clk = '1') then
		if(rst = '0' and quiz = '1') then
			counter_output <= "1111";
	
		elsif(rst = '0' and load_n = '0') then
			counter_output <= input;
			
		elsif( rst = '0' and load_n ='1' and up_n = '0') then
		
			if(counter_output = "1111") then
				counter_output<="0000";
			else
				counter_output<= std_logic_vector(unsigned(counter_output)+unsigned(one));
			end if;
			
		elsif(rst = '0' and load_n ='1' and up_n = '1') then
			if(counter_output <= "0000") then
				counter_output <= "1111";
			else
				counter_output <= std_logic_vector(unsigned(counter_output)-unsigned(one));
			end if;
		else
		counter_output<=counter_output;
		end if;
	end if;
end process;
dino <= '1' when quiz = '1' and counter_output = "1111" else
			'0';
output <=counter_output;
end architecture arch;