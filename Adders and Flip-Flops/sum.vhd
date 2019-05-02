library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is

begin
	o_sum <= i_a xor i_b xor i_cin; 

end architecture;

-- question 1
-- On the RTL schematic, the input i_cin goes into the in[0] pin of the ix1 xor gate and input i_a goes into the in[1] pin of the ix1 xor gate. With this two inputs, ix1 xor gate outputs from its out pin and this output goes into the in[0] pin of the ix3 xor gate. The input i_b goes into the in[1] pin of the ix3 xor gate and with the inputs i_b and the output from ix1 xor gate, ix3 xor gate outputs at its out pin and the output value is o_sum. 
