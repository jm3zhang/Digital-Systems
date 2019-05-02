------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is 
	signal reset           : std_logic;
	signal clk 	       : std_logic;
	signal cur             : signed(7 downto 0);
	signal des             : signed(7 downto 0);
	signal heatmode        : std_logic_vector(1 downto 0);
begin

	uut : entity work.heatingsys(main)
		port map (
			reset      => reset,
			clk	   => clk,
			i_cur_temp => cur,
			i_des_temp => des,
			o_heatmode => heatmode
		);


	process
	begin
		
		--pre set the state to 'off'
		------------------------------------------------------------------
		clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000000";
		wait for 10 ns;
		------------------------------------------------------------------                
		clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000000";
                wait for 10 ns;
		------------------------------------------------------------------

		--now heatmode should be 'off'
		------------------------------------------------------------------
		--test 'off' to 'low'		
		clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000100";
		wait for 10 ns;
		------------------------------------------------------------------
		clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
		--now heatmode should be 'low'
		------------------------------------------------------------------
		clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
		------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
		--now heatmode should be 'off'
		------------------------------------------------------------------
		--test if the codition fails
		--test 'off' to 'low'
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000001";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000001";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000001";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000001";
                wait for 10 ns;
                --now heatmode should be 'off'

		------------------------------------------------------------------
                --test 'off' to 'high'
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                --now heatmode should be 'high'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                --now heatmode should be 'off'
		------------------------------------------------------------------
                --test if the codition fails
		clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000010";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000010";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000010";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000010";
                wait for 10 ns;
                --now heatmode should be 'off'









		-- testing 'low'
		--pre set the state to 'low'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------

		--now heatmode should be 'low'
                ------------------------------------------------------------------
                --test 'low' to 'off'
                clk <= '0'; reset <= '0'; cur <= "00000100"; des <= "00000001";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000100"; des <= "00000001";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
		--set to 'low' again
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
		clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
                --test if the codition fails
                --test 'low' to 'off'
                --pre set the state to 'low'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000001"; des <= "00000000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000001"; des <= "00000000";
                wait for 10 ns;
                --now heatmode should be 'low'
                ------------------------------------------------------------------
                ------------------------------------------------------------------
                --test 'low' to 'high'
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00001010";
                wait for 10 ns;
                --now heatmode should be 'high'
                ------------------------------------------------------------------
                --set to 'low' again
                clk <= '0'; reset <= '0'; cur <= "00000100"; des <= "00000000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000100"; des <= "00000000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
                --test if the codition fails
                --test 'low' to 'high'
                --pre set the state to 'low'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000100";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00000110";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00000110";
                wait for 10 ns;
                --now heatmode should be 'low'
                ------------------------------------------------------------------



		


		
		--testing high
		--pre set the state to 'high'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------

                --now heatmode should be 'high'
                ------------------------------------------------------------------
                --test 'high' to 'low'
                clk <= '0'; reset <= '0'; cur <= "00001000"; des <= "00000000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00001000"; des <= "00000000";
                wait for 10 ns;
                --now heatmode should be 'low'
                ------------------------------------------------------------------
                --set to 'high' again
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '0'; reset <= '1'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '1'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                --now heatmode should be 'off'
                ------------------------------------------------------------------
                --test if the codition fails
                --test 'high' to 'low'
                --pre set the state to 'high'
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000000"; des <= "00001000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '0'; reset <= '0'; cur <= "00000011"; des <= "00000000";
                wait for 10 ns;
                ------------------------------------------------------------------
                clk <= '1'; reset <= '0'; cur <= "00000011"; des <= "00000000";
                wait for 10 ns;
                --now heatmode should be 'high'
                ------------------------------------------------------------------


	end process;
end architecture;
