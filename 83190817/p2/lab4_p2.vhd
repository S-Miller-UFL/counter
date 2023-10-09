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
TYPE state is(zero,one,two,three,four,five,six,seven,eight,nine,A,B,C,D,E,F); --the actual states
signal currentstate, nextstate: state; --setting signals as states
begin

end arch;
