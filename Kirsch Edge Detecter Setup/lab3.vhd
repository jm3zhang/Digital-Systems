library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_done    : out std_logic;             -- done processing
    o_data    : out unsigned(7 downto 0)   -- output data
  );
end entity lab3;

architecture main of lab3 is
signal p             : signed(9 downto 0) := to_signed(0,10);
signal x             : unsigned(3 downto 0) := to_unsigned(0,4);
signal y             : unsigned(3 downto 0) := to_unsigned(0,4);
signal count         : unsigned(7 downto 0) := to_unsigned(0,8);
signal array_enabler : std_logic_vector(2 downto 0) := (others => '0');
signal array_0_odata : std_logic_vector(7 downto 0);
signal array_1_odata : std_logic_vector(7 downto 0);
signal array_2_odata : std_logic_vector(7 downto 0);
signal current_input : unsigned(7 downto 0) := to_unsigned(0,8);

  -- state machine
type State_type is (Reset_State, Filling_Matrix_State, Start_Counting, Calculate_P_State, Count_State, Done_State);
signal State : State_type; 

begin
-- call mem
array_0 : entity work.mem(main)
    port map (
      clock     => clk,
      -- write enable (take care about the problems when i_valid = 0)
      wr_en     => i_valid and array_enabler(0),
      address   => x,
      i_data    => std_logic_vector(i_data),
      o_data    => array_0_odata
    );
      
array_1 : entity work.mem(main)
    port map (
      clock     => clk,
      wr_en     => i_valid and array_enabler(1),
      address   => x,
      i_data    => std_logic_vector(i_data),
      o_data    => array_1_odata
    );

array_2 : entity work.mem(main)
    port map (
      clock     => clk,
      wr_en     => i_valid and array_enabler(2),
      address   => x,
      i_data    => std_logic_vector(i_data),
      o_data    => array_2_odata
    );
    
 o_data <= count;

  n_stmc: process(clk, reset)
  begin
    if (reset = '1') then 
		p <= to_signed(-1,10);
		x <= to_unsigned(0,4);
        y <= to_unsigned(0,4);
        count <= to_unsigned(0,8);
        o_done <= '0';
        array_enabler <= "001";
        current_input <= to_unsigned(0,8);
        if reset = '1' then 
          State <= Reset_State;
        else 
		  x <= x + 1;
          State <= Filling_Matrix_State;
        end if;
    elsif (clk'EVENT and clk = '1') then
	
--	o_data <= "0000" & x; -- for test purpose
      case State is 
      
        when Reset_State => 
          p <= to_signed(-1,10);
          x <= to_unsigned(0,4);
          y <= to_unsigned(0,4);
          count <= to_unsigned(0,8);
          o_done <= '0';
          array_enabler <= "001";
          current_input <= to_unsigned(0,8);
          if reset = '1' then 
            State <= Reset_State;
          else 
			x <= x + 1;
            State <= Filling_Matrix_State;
          end if;
          
        when Filling_Matrix_State =>
          if (i_valid = '1') then
            o_done <= '0';
            count <= to_unsigned(0,8);
            if x = 15 then 
              y <= y + 1;
              array_enabler <= array_enabler rol 1;
              -- x <= to_unsigned(0,4);
            end if; 
            x <= x + 1;
			  if reset = '1' then 
				State <= Reset_State;
			  elsif (y = 1 and x = 15) then 
				State <= Start_Counting;
			  else
				State <= Filling_Matrix_State;
			  end if;
          end if;
        when Start_Counting =>
          if i_valid = '1' then
            current_input <= i_data;
            if reset = '1' then 
              State <= Reset_State;
            elsif i_valid = '1' then 
              State <= Calculate_P_State;
            else 
              State <= Start_Counting;
            end if;
          end if;
            
        when Calculate_P_State =>
          if array_enabler <= "001" then 
            p <= signed("00" & array_1_odata) - signed("00" & array_2_odata) + signed(current_input);
          elsif array_enabler <= "010" then 
            p <= signed("00" & array_2_odata) - signed("00" & array_0_odata) + signed(current_input);
          elsif array_enabler <= "100" then 
            p <= signed("00" & array_0_odata) - signed("00" & array_1_odata) + signed(current_input);
          end if;
          
          if x = 15 then 
            y <= y + 1;
            array_enabler <= array_enabler rol 1;
            -- x <= to_unsigned(0,4);
          end if;
          x <= x + 1;
          
          if reset = '1' then 
            State <= Reset_State;
          else
            State <= Count_State;
          end if;
        
        when Count_State =>
          if p >= 0 then 
            count <= count + 1;
          end if;
          if reset = '1' then 
            State <= Reset_State;
          elsif y = 0 then
            o_done <= '1';
            State <= Done_State;
          else
            o_done <= '0';
            State <= Start_Counting;
          end if;
          
        when Done_State =>
          p <= to_signed(-1,10);
          State <= Filling_Matrix_State;
          --State <= Reset_State;
          
        when others => 
          State <= Reset_State;
          
      end case;
    end if;
  end process;

end architecture main;

-- Q1: number of flip flops and lookup tables?
--	There are 5 flip flops and 115 lookup tables in the design. 

-- Q2: maximum clock frequency?
-- The maximum clock frequency is 124 MHz.

-- Q3: source and destination signals of critical path?
-- There are 5 critical path. The source and destination are listed below:
--      Source                                Dest
-- -----------------------          ------------------------
--  array_0_m...83/clock0                    p(9)/d
--  array_2_m...85/clock0                    p(9)/d
--  array_1_m...84/clock0                    p(9)/d
--  array_enabler(1)                         p(9)/d
--  array_enabler(2)                         p(9)/d

-- Q4: does your implementation function correctly?  If not,
-- explain the bug and how you would fix it if you had more time.
-- Yes, my implementation functions correctly. Because the desired output matches the value indicated in the test bench.
