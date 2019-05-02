library ieee;
use ieee.std_logic_1164.all;

entity sum_tb is
end sum_tb;

architecture main of sum_tb is
  signal a, b, cin, the_sum  : std_logic;
begin
  
  uut : entity work.sum(main)
  port map (
    i_a   => a,
    i_b   => b,
    i_cin => cin,
    o_sum => the_sum
  );

  process
  begin
    -- --------------------
    a <= '0'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '1'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '0'; b <= '0'; cin <= '1';
    wait for 10 ns;
    -- --------------------
  end process;
  
end architecture;

-- question 2
-- This is the description for running the simulation for 40ns
-- signal   | waveform description
-- a           0 1 0 0
-- b           0 0 0 0 
-- cin         0 0 1 0
-- the_sum     0 1 1 0


-- question 3
  --insert answer here
  --When run the simulation for 100 ns, the simulation have the same wavefrom every 30ns. It is looping every 30 ns becasue the testbench code above finishes with a period of 30ns. After the excution of the above process, the vhdl code will loop back to the "begin" keyword under "process" and excute the code again.
  --After the first 30ns, the simulation shows that all the signal values have set back to zero. This is exactly what the first line of codes above instructed. This again shows that the code is looping every 30 ns. The VHDL semantics define the signal values after 30 ns by re-excute "a <= '0'; b <= '0; cin <= '0';" at the beginning of the code which set a,b and cin to 0 and output 0 as the value for "the_sum".
