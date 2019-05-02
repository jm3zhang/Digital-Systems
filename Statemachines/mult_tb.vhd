library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- util_unsynth.vhd defines "to_string" to convert unsigned to a string
use work.util_unsynth.all;

----------------------------------------------------------------------
-- entity
----------------------------------------------------------------------

entity mult_tb is
end entity;

----------------------------------------------------------------------
-- archicture
----------------------------------------------------------------------

architecture main of mult_tb is
  -- clock period
  constant period : time := 10 ns;

  -- signals to connect to mult
  signal a, b, z                : unsigned(  7 downto 0 );
  signal clk, reset,
         i_valid, o_valid       : std_logic;

  -- instrumentation signals
  signal old_a, old_b           : unsigned(  7 downto 0 );
  signal tmp_z                  : unsigned( 15 downto 0 );
  

  -- constant array for test vectors
  type test_ty is
    record
      a, b : natural;
  end record;
  type test_vector_ty is array( natural range <> ) of test_ty;
  constant test_vector : test_vector_ty
    := ( ( a => 13, b =>  5 )
       , ( a => 10, b =>  2 )
       , ( a =>  2, b => 20 )
       );
  
begin

  ------------------------------------------------------------
  -- clk process
  -- start clk=0, get rising edge on multiple of period
  process begin
    clk <= '0';
    wait for period;
    loop
      clk <= not clk;
      wait for 0.5 * period;
    end loop;
  end process;

  ------------------------------------------------------------
  -- drive input data and check result
  process begin
    --------------------------------------------------
    -- initialization / reset
    reset   <= '1';
    i_valid <= '0';
    --------------------------------------------------
    wait until rising_edge(clk);
    wait for 2 * period;
    --------------------------------------------------
    -- run mode, loop through test vector
    reset <= '0';
    for i in test_vector'range loop
      ----------------------------------------
      -- there is a problem with one of the next two lines
      wait until rising_edge( clk );
      wait for 3 * period;
      -- drive input data
      i_valid <= '1';
      a       <= to_unsigned( test_vector(i).a, 8 );
      b       <= to_unsigned( test_vector(i).b, 8 );
      wait for 10 ns;
      ----------------------------------------
      wait for period;
      -- store a, b, and expected result in instrumentation signals
      old_a   <= a;
      old_b   <= b;
      tmp_z   <= a * b;
      -- drive inputs with bubbles
      i_valid <= '0';
      a       <= (others => 'X' );
      b       <= (others => 'X' );
      ----------------------------------------
      -- wait until result is ready
      wait until rising_edge( clk ) and o_valid = '1';
      -- report whether answer is correct
      if z = tmp_z( 7 downto 0 ) then
        report  "ok: " & to_string( old_a )
               &" * "  & to_string( old_b )
               &" -> " & to_string( z) ;
      else
        report "FAIL: " & to_string( old_a )
               &" * "   & to_string( old_b )
               &" -> "  & to_string( z) 
               &" != "  & to_string( tmp_z( 7 downto 0 ) );
      end if;
      ----------------------------------------
    end loop;
    --------------------------------------------------
    -- done with test, wait for forever
    wait;
    --------------------------------------------------
  end process;

  ------------------------------------------------------------
  -- unit under test (mult)
  uut : entity work.mult
    port map ( clk => clk
             , reset => reset
             , i_valid => i_valid
             , i_a => a
             , i_b => b
             , o_valid => o_valid
             , o_z => z
             );
  
  ------------------------------------------------------------
  
end architecture;  
    
-- question 1: explain the bug in the testbench and why your change
-- fix the problem.

-- The first time i ran the simulation, I found out that the waveforms for a, b and z are all indicatng that their value is U which means their values are unknown.
-- This means that a, b and z doesn't have a chance to finish calucations, printing values and create waveforms during the period when i_valid is high.
-- The solution for this bug that I can think of is to extend the period of i_valid which can make the i_valid stays at '1' longer. 
-- This will ensure that a, b and z can get its chance to finish and output the waveforms.
-- I have tried to let i_valid to stay at '1' for an extended period of 30 ns and I found out that the waveforms for a, b and z starting to appear at 70 ns instead of unknown at 60ns. 
-- This means that I only need to extend the period of i_valid by 10 ns which is 1.5 periods.
-- The code I added to achieve the above solution is to add the line "wait for 10 ns;" on line 81 of this file.
