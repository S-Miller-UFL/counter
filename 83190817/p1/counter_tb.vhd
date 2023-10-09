library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is

signal clk    : std_logic:='0';
signal rst : std_logic;
signal up_n :std_logic;
signal load_n   : std_logic;
signal input  : std_logic_vector(3 downto 0);
signal output  : std_logic_vector(3 downto 0);

signal done : std_logic := '0';
begin  -- TB

  UUT : entity work.counter
    port map 
(
      clk     => clk,
      rst     => rst,
      up_n    => up_n,
      load_n  => load_n,
      input   => input,
      output  => output
);
 
clk <= not(clk) after 10 ns when done = '0' else clk;
  process
  begin

    -- reset   
    rst    <= '1';
    load_n   <= '0';
    up_n <= '0';
    wait for 10 ns;
    wait until rising_edge(clk);
    wait for 10 ns;
    assert(output = "0000") report "Clear failed" severity warning;
    wait for 50 ns;

    -- test load
    rst <= '0';
    load_n <= '0';
    up_n  <= '0';
    input <= "1010";
 
    wait until rising_edge(clk);

    assert(output = "1010") report "Load failed" severity warning;
    wait for 50 ns;

    -- increment
    rst <= '0';
    load_n  <= '1';
    up_n <= '0';
    wait until rising_edge(clk);
    assert(output = "1011") report "increment failed" severity warning;
    wait for 50 ns;

    -- decrement
    rst <= '0';
    load_n  <= '1';
    up_n <= '1';

    wait until rising_edge(clk);

    assert(output = "1010") report "decrement failed" severity warning;
    wait for 50 ns;
    report "SIMULATION FINISHED!";
    done <= '1';

  end process;
end TB;
