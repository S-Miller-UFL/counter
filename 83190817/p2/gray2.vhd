--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
entity gray2 is
 port (
 clk : in std_logic;
 rst : in std_logic; -- active high, synchronous!
 output: out std_logic_vector(3 downto 0));
end gray2;

architecture arch of gray2 is
TYPE ASMstate is(zero,one,two,three,four,five,six,seven,eight,nine,A,B,C,D,E,F); --the actual states
signal state, nextstate: ASMstate; --setting signals as states
begin
	process(clk,rst)
	begin
		if(clk'Event AND clk = '1') then
			if(rst = '1') then
				nextstate <= zero;
			else
				case state is
					when zero =>
						nextstate <= one;
					when one =>
						nextstate <= three;
					when three =>
						nextstate <= two;
					when two =>
						nextstate <= six;
					when six =>
						nextstate <= seven;
					when seven =>
						nextstate <= five;
					when five =>
						nextstate <= four;
					when four =>
						nextstate <= C;
					when C => 
						nextstate <= D;
					when D =>
						nextstate <= F;
					when F =>
						nextstate <= E;
					when E =>
						nextstate <= A;
					when A =>
						nextstate <= B;
					when B =>
						nextstate <= nine;
					when nine =>
						nextstate <= eight;
					when eight =>
						nextstate <= zero;
				end case;
			end if;
		end if;
		state <= nextstate;
	end process;
	
	output <= "0000" when state = zero else
				 "0001" when state = one else
				 "0011" when state = three else
				 "0010" when state = two else
				 "0110" when state = six else
				 "0111" when state = seven else
				 "0101" when state = five else
				 "0100" when state = four else
				 "1100" when state = C else
				 "1101" when state = D else
				 "1111" when state = F else
				 "1110" when state = E else
				 "1010" when state = A else
				 "1011" when state = B else
				 "1001" when state = nine else
				 "1000" when state = eight else
				 "0000";
end arch;
