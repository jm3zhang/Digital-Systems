library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(reset            : in std_logic;          -- reset
       clk              : in std_logic;          -- clock
       i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty;   
begin

  -- insert your vhdl code here
    basic : process	
    begin	
	wait until rising_edge(clk);
	if (reset = '1') then 
		o_heatmode <= off;
	end if;

	if (o_heatmode = off) then 
		if (((i_des_temp - i_cur_temp) <= 3) and ((i_des_temp - i_cur_temp) < 5)) then 
			o_heatmode <= low;
        	elsif (((i_des_temp - i_cur_temp) >= 5)) then
			o_heatmode <= high;
        	end if;
	elsif (o_heatmode = low) then
		if (((i_cur_temp - i_des_temp) > 2)) then
			o_heatmode <= off;
		elsif (((i_des_temp - i_cur_temp) >= 7)) then
			o_heatmode <= high;
		end if;
	elsif (o_heatmode = high) then 
		if (((i_cur_temp - i_des_temp) > 3)) then
			o_heatmode <= low;
		end if;
	else 
		o_heatmode <= off;
	end if;	
    end process;
end main;

-- question 1
  --insert answer here
  --The number of gates presented in the design are listed below:
  --2    1-bit flip-flops
  --0    1-bit latches
  --16   ANDs
  --11   ORs
  --0    XORs
  --18   NOTs
  --3    adders
  --2    subtracters
  --0    comparators
  --1    multplexers
