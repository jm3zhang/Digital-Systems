library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;

entity mult is
  port ( clk, reset, i_valid : in std_logic;
         i_a, i_b : in unsigned( 7 downto 0 );
         o_valid : out std_logic;
         o_z : out unsigned( 7 downto 0 )
       );
end entity;

architecture main of mult is
  -- for full implementation, change the array bounds
  signal v    : std_logic_vector( 0 to 0 );
  signal a, b : unsigned( 7 downto 0 );
  
  -- state machine
  type State_type is (Beginning, Add, Shift, Finish);
  signal State : State_type; 

begin
  v(0) <= i_valid;
  
  run_stmc: process(clk, reset)
  begin
--  wait until rising_edge(clk);
    if (reset = '1') then 
      State <= Beginning;
    elsif (clk'EVENT and clk = '1') then
--    -- do work at rising edge 
--    
      case State is 
      
        when Beginning => 
--          wait until rising_edge(clk);
          if v(0) = '1' then
            a <= i_a;
            b <= i_b;
            o_valid <= '0';
            o_z <= "00000000";
          end if;
          if reset = '1' then 
            State <= Beginning;
          elsif v(0) = '1' then 
            State <= Add;
          end if;
          
--        when Start => 
--          wait until rising_edge(clk);
--          o_z <= "00000000";
--          if reset = '1' then 
--           State <= Beginning;
--          elsif a(0) = '1' then 
--            State <= Add;
--          elsif a(0) = '0' then 
--           State <= Shift;
--          end if;
          
        when Add =>
--          wait until rising_edge(clk);
          if a(0) = '1' then
            o_z <= o_z + b;
          elsif reset = '1' then 
            State <= Beginning; 
          end if;
          State <= Shift;
          
        when Shift =>
--          wait until rising_edge(clk);
          if (a /= "00000000") then
            a <= shift_right(a,1);
            b <= shift_left(b,1);
            State <= Add;
          elsif (a = "00000000") then
            State <= Finish;
          elsif reset = '1' then 
            State <= Beginning;
          end if;
          
--        when Check_A =>
--          wait until rising_edge(clk);
--          if ((a(0) = '1') and (a /= "00000000")) then 
--            State <= Add;
--          elsif ((a(0) = '0') and (a /= "00000000")) then
--            State <= Shift;
--          elsif a = "00000000" then 
--            State <= Finish;
--          elsif reset = '1' then 
--            State <= Beginning; 
--          end if;
          
        when Finish =>
--         wait until rising_edge(clk);
          o_valid <= '1';
          State <= Beginning; 
          if reset = '1' then 
            State <= Beginning;
          end if;
            
       when others => 
          State <= Beginning; 
          
      end case;
    end if;
  end process;

end architecture;

