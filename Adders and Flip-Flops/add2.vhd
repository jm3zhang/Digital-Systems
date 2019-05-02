library ieee;
use ieee.std_logic_1164.all;

-- insert entity definition here
entity add2 is
-- a0 a1 b0 b1 cin sum0 sum1 cout fa0_cout
	port ( i_a : in std_logic_vector (1 downto 0);
	       i_b : in std_logic_vector (1 downto 0);
	       i_cin : in std_logic;
	       o_sum : out std_logic_vector (1 downto 0);
	       o_cout : out std_logic 
	);
end add2;

-- insert architecture here
architecture main of add2 is
-- Since fa0_cout is a signal, not an input or output, it cannot be assigned is the entity. It should be assgined in architecture.
signal fa0_cout : std_logic;
begin
  -- fa0 instantiation
  u_fa0 : entity work.fulladder(main)
    port map (
      i_b    => i_b(0),
      i_a    => i_a(0),
      i_cin  => i_cin,
      o_sum  => o_sum(0),
      o_cout => fa0_cout
    );
         
  -- fa1 instantiation
  u_fa1 : entity work.fulladder(main)
    port map (
      i_b    => i_b(1),
      i_a    => i_a(1),
      i_cin  => fa0_cout,
      o_sum  => o_sum(1),
      o_cout => O_cout
    );

end architecture;

