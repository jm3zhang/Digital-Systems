
-- 
-- Definition of  mult
-- 
--      Sun May 27 21:54:30 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_4u_4u ;

architecture BEHAVIORAL of mux_4u_4u is 
   component sim_mux
      generic (size : integer := 4;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_8u_8u ;

architecture BEHAVIORAL of and_8u_8u is 
   component sim_and
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_and
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mult is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_a : IN std_logic_vector (7 DOWNTO 0) ;
      i_b : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_z : OUT std_logic_vector (7 DOWNTO 0)) ;
end mult ;

architecture main of mult is 
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   signal o_z_EXMPLR30: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal State: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, GND, not_reset: std_logic ;
   
   signal a_3n10ss1: std_logic_vector (6 DOWNTO 0) ;
   
   signal b_3n10ss1: std_logic_vector (7 DOWNTO 1) ;
   
   signal o_z_3n10ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal State_fsm_3n10ss1: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_z_3n5s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_a_0, not_i_valid, rtlc3n281, rtlc3n283, not_rtlcn78, rtlc3n322, 
      not_rtlcn79, rtlc3n334, rtlcn65, rtlcn70, rtlcn71, not_rtlc3n334, 
      rtlcs0, rtlcs1, rtlcs3, not_State_1, not_State_0, rtlcn78, rtlcn79, 
      not_a_7, not_a_6, not_a_5, not_a_4, not_a_3, not_a_2, not_a_1, 
      rtlc_217_and_5_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_z(7) <= o_z_EXMPLR30(7) ;
   o_z(6) <= o_z_EXMPLR30(6) ;
   o_z(5) <= o_z_EXMPLR30(5) ;
   o_z(4) <= o_z_EXMPLR30(4) ;
   o_z(3) <= o_z_EXMPLR30(3) ;
   o_z(2) <= o_z_EXMPLR30(2) ;
   o_z(1) <= o_z_EXMPLR30(1) ;
   o_z(0) <= o_z_EXMPLR30(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   rtlc3n334 <= rtlcs3 OR rtlcs1 ;
   not_a_0 <= NOT a(0) ;
   o_z_add8_3i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      o_z_EXMPLR30(7), a(6)=>o_z_EXMPLR30(6), a(5)=>o_z_EXMPLR30(5), a(4)=>
      o_z_EXMPLR30(4), a(3)=>o_z_EXMPLR30(3), a(2)=>o_z_EXMPLR30(2), a(1)=>
      o_z_EXMPLR30(1), a(0)=>o_z_EXMPLR30(0), b(7)=>b(7), b(6)=>b(6), b(5)=>
      b(5), b(4)=>b(4), b(3)=>b(3), b(2)=>b(2), b(1)=>b(1), b(0)=>b(0), d(7)
      =>o_z_3n5s1(7), d(6)=>o_z_3n5s1(6), d(5)=>o_z_3n5s1(5), d(4)=>
      o_z_3n5s1(4), d(3)=>o_z_3n5s1(3), d(2)=>o_z_3n5s1(2), d(1)=>
      o_z_3n5s1(1), d(0)=>o_z_3n5s1(0), cout=>DANGLING(0,0));
   State_fsm_mux_3i2Bus8_0 : mux_4u_4u port map ( a(3)=>GND, a(2)=>PWR, a(1)
      =>GND, a(0)=>not_reset, b(3)=>GND, b(2)=>GND, b(1)=>State(1), b(0)=>
      State(0), d=>State_fsm_3n10ss1(0));
   State_fsm_mux_3i2Bus8_1 : mux_4u_4u port map ( a(3)=>GND, a(2)=>rtlcs0, 
      a(1)=>PWR, a(0)=>GND, b(3)=>GND, b(2)=>GND, b(1)=>State(1), b(0)=>
      State(0), d=>State_fsm_3n10ss1(1));
   rtlc_116_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>rtlcs0, a(1)=>PWR, 
      a(0)=>not_i_valid, b(3)=>GND, b(2)=>GND, b(1)=>State(1), b(0)=>
      State(0), d=>rtlc3n281);
   rtlc_117_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>PWR, a(1)=>not_a_0, 
      a(0)=>not_i_valid, b(3)=>GND, b(2)=>GND, b(1)=>State(1), b(0)=>
      State(0), d=>rtlc3n283);
   rtlcn65 <= State(1) AND not_rtlcn78 ;
   a_3n10ss1(0) <= a(1) when State(1) = '1' else i_a(0) ;
   a_3n10ss1(1) <= a(2) when State(1) = '1' else i_a(1) ;
   a_3n10ss1(2) <= a(3) when State(1) = '1' else i_a(2) ;
   a_3n10ss1(3) <= a(4) when State(1) = '1' else i_a(3) ;
   a_3n10ss1(4) <= a(5) when State(1) = '1' else i_a(4) ;
   a_3n10ss1(5) <= a(6) when State(1) = '1' else i_a(5) ;
   a_3n10ss1(6) <= a(7) when State(1) = '1' else i_a(6) ;
   b_3n10ss1(1) <= b(0) when State(1) = '1' else i_b(1) ;
   b_3n10ss1(2) <= b(1) when State(1) = '1' else i_b(2) ;
   b_3n10ss1(3) <= b(2) when State(1) = '1' else i_b(3) ;
   b_3n10ss1(4) <= b(3) when State(1) = '1' else i_b(4) ;
   b_3n10ss1(5) <= b(4) when State(1) = '1' else i_b(5) ;
   b_3n10ss1(6) <= b(5) when State(1) = '1' else i_b(6) ;
   b_3n10ss1(7) <= b(6) when State(1) = '1' else i_b(7) ;
   rtlcn70 <= i_valid OR rtlcn71 ;
   not_i_valid <= NOT i_valid ;
   not_reset <= NOT reset ;
   not_rtlc3n334 <= NOT rtlc3n334 ;
   not_State_1 <= NOT State(1) ;
   not_State_0 <= NOT State(0) ;
   not_rtlcn78 <= NOT rtlcn78 ;
   not_rtlcn79 <= NOT rtlcn79 ;
   not_a_7 <= NOT a(7) ;
   not_a_6 <= NOT a(6) ;
   not_a_5 <= NOT a(5) ;
   not_a_4 <= NOT a(4) ;
   not_a_3 <= NOT a(3) ;
   not_a_2 <= NOT a(2) ;
   not_a_1 <= NOT a(1) ;
   rtlc_238_and_6 : and_8u_8u port map ( a(7)=>not_a_7, a(6)=>not_a_6, a(5)
      =>not_a_5, a(4)=>not_a_4, a(3)=>not_a_3, a(2)=>not_a_2, a(1)=>not_a_1, 
      a(0)=>not_a_0, d=>rtlcs0);
   rtlcs3 <= not_State_1 AND State(0) ;
   rtlcs1 <= State(1) AND not_State_0 ;
   o_z_3n10ss1(7) <= o_z_3n5s1(7) AND State(0) ;
   o_z_3n10ss1(6) <= o_z_3n5s1(6) AND State(0) ;
   o_z_3n10ss1(5) <= o_z_3n5s1(5) AND State(0) ;
   o_z_3n10ss1(4) <= o_z_3n5s1(4) AND State(0) ;
   o_z_3n10ss1(3) <= o_z_3n5s1(3) AND State(0) ;
   o_z_3n10ss1(2) <= o_z_3n5s1(2) AND State(0) ;
   o_z_3n10ss1(1) <= o_z_3n5s1(1) AND State(0) ;
   o_z_3n10ss1(0) <= o_z_3n5s1(0) AND State(0) ;
   rtlcn78 <= reset OR rtlc3n281 ;
   rtlcn79 <= reset OR rtlc3n283 ;
   rtlcn71 <= State(1) OR State(0) ;
   DFFPCE (o_z_3n10ss1(7),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(7)) ;
   DFFPCE (o_z_3n10ss1(6),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(6)) ;
   DFFPCE (o_z_3n10ss1(5),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(5)) ;
   DFFPCE (o_z_3n10ss1(4),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(4)) ;
   DFFPCE (o_z_3n10ss1(3),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(3)) ;
   DFFPCE (o_z_3n10ss1(2),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(2)) ;
   DFFPCE (o_z_3n10ss1(1),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(1)) ;
   DFFPCE (o_z_3n10ss1(0),GND,GND,not_rtlcn79,clk,o_z_EXMPLR30(0)) ;
   DFFPCE (State(1),GND,GND,rtlc3n322,clk,o_valid) ;
   DFFPCE (b_3n10ss1(7),GND,GND,not_rtlcn78,clk,b(7)) ;
   DFFPCE (b_3n10ss1(6),GND,GND,not_rtlcn78,clk,b(6)) ;
   DFFPCE (b_3n10ss1(5),GND,GND,not_rtlcn78,clk,b(5)) ;
   DFFPCE (b_3n10ss1(4),GND,GND,not_rtlcn78,clk,b(4)) ;
   DFFPCE (b_3n10ss1(3),GND,GND,not_rtlcn78,clk,b(3)) ;
   DFFPCE (b_3n10ss1(2),GND,GND,not_rtlcn78,clk,b(2)) ;
   DFFPCE (b_3n10ss1(1),GND,GND,not_rtlcn78,clk,b(1)) ;
   DFFPCE (a_3n10ss1(6),GND,GND,not_rtlcn78,clk,a(6)) ;
   DFFPCE (a_3n10ss1(5),GND,GND,not_rtlcn78,clk,a(5)) ;
   DFFPCE (a_3n10ss1(4),GND,GND,not_rtlcn78,clk,a(4)) ;
   DFFPCE (a_3n10ss1(3),GND,GND,not_rtlcn78,clk,a(3)) ;
   DFFPCE (a_3n10ss1(2),GND,GND,not_rtlcn78,clk,a(2)) ;
   DFFPCE (a_3n10ss1(1),GND,GND,not_rtlcn78,clk,a(1)) ;
   DFFPCE (a_3n10ss1(0),GND,GND,not_rtlcn78,clk,a(0)) ;
   DFFRSE (i_b(0),GND,rtlcn65,not_rtlcn78,clk,b(0)) ;
   DFFRSE (i_a(7),GND,rtlcn65,not_rtlcn78,clk,a(7)) ;
   DFFPCE (State_fsm_3n10ss1(1),GND,reset,rtlcn70,clk,State(1)) ;
   DFFPCE (State_fsm_3n10ss1(0),GND,reset,rtlcn70,clk,State(0)) ;
   rtlc_217_and_5_nx0 <= not_reset AND not_rtlc3n334 ;
   rtlc3n322 <= rtlc_217_and_5_nx0 AND rtlcn70 ;
end main ;

