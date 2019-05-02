
-- 
-- Definition of  kirsch_top
-- 
--      Sun Jul 15 11:17:28 2018
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

entity clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   port (
      clk : IN std_logic ;
      we : IN std_logic ;
      address : IN std_logic_vector (7 DOWNTO 0) ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
end clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ;

architecture BEHAVIORAL of clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   component sim_ram
      generic (size : integer := 8;
         sizead : integer := 8;
         numwords : integer := 256;
         use_clk : string := "true";
         use_clk2 : string := "false";
         use_data2 : string := "false";
         use_addr2 : string := "true";
         use_addr3 : string := "false";
         use_addr4 : string := "false";
         use_we : string := "true";
         use_we2 : string := "false";
         use_q2 : string := "false";
         use_raminit : string := "false") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0) ;
         clk2 : IN std_logic ;
         data2 : IN std_logic_vector (7 DOWNTO 0) ;
         addr3 : IN std_logic_vector (7 DOWNTO 0) ;
         addr4 : IN std_logic_vector (7 DOWNTO 0) ;
         we2 : IN std_logic ;
         q2 : OUT std_logic_vector (7 DOWNTO 0) ;
         q3 : OUT std_logic_vector (7 DOWNTO 0) ;
         q4 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;type DANGLING_type is array (0 downto 0,511 downto 0) of 
   std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ix0 : sim_ram
      generic map (size => 8,
         sizead => 8,
         numwords => 256,
         use_clk => "true",
         use_clk2 => "false",
         use_data2 => "false",
         use_addr2 => "true",
         use_addr3 => "false",
         use_addr4 => "false",
         use_we => "true",
         use_we2 => "false",
         use_q2 => "false",
         use_raminit => "false") 
       port map ( clk=>clk, we=>we, address=>address, data=>data, q=>q, 
      addr2=>addr2, clk2=>DANGLING(0,0), data2(7)=>DANGLING(0,1), data2(6)=>
      DANGLING(0,2), data2(5)=>DANGLING(0,3), data2(4)=>DANGLING(0,4), 
      data2(3)=>DANGLING(0,5), data2(2)=>DANGLING(0,6), data2(1)=>
      DANGLING(0,7), data2(0)=>DANGLING(0,8), addr3(7)=>DANGLING(0,9), 
      addr3(6)=>DANGLING(0,10), addr3(5)=>DANGLING(0,11), addr3(4)=>
      DANGLING(0,12), addr3(3)=>DANGLING(0,13), addr3(2)=>DANGLING(0,14), 
      addr3(1)=>DANGLING(0,15), addr3(0)=>DANGLING(0,16), addr4(7)=>
      DANGLING(0,17), addr4(6)=>DANGLING(0,18), addr4(5)=>DANGLING(0,19), 
      addr4(4)=>DANGLING(0,20), addr4(3)=>DANGLING(0,21), addr4(2)=>
      DANGLING(0,22), addr4(1)=>DANGLING(0,23), addr4(0)=>DANGLING(0,24), 
      we2=>DANGLING(0,25), q2(7)=>DANGLING(0,26), q2(6)=>DANGLING(0,27), 
      q2(5)=>DANGLING(0,28), q2(4)=>DANGLING(0,29), q2(3)=>DANGLING(0,30), 
      q2(2)=>DANGLING(0,31), q2(1)=>DANGLING(0,32), q2(0)=>DANGLING(0,33), 
      q3(7)=>DANGLING(0,34), q3(6)=>DANGLING(0,35), q3(5)=>DANGLING(0,36), 
      q3(4)=>DANGLING(0,37), q3(3)=>DANGLING(0,38), q3(2)=>DANGLING(0,39), 
      q3(1)=>DANGLING(0,40), q3(0)=>DANGLING(0,41), q4(7)=>DANGLING(0,42), 
      q4(6)=>DANGLING(0,43), q4(5)=>DANGLING(0,44), q4(4)=>DANGLING(0,45), 
      q4(3)=>DANGLING(0,46), q4(2)=>DANGLING(0,47), q4(1)=>DANGLING(0,48), 
      q4(0)=>DANGLING(0,49));
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_9u_9u ;

architecture BEHAVIORAL of and_9u_9u is 
   component sim_and
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_and
      generic map (size => 9) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8u_8u_0_0 ;

architecture BEHAVIORAL of inc_8u_8u_0_0 is 
   component sim_inc
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_inc
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_9u_9u_0_0 ;

architecture BEHAVIORAL of inc_9u_9u_0_0 is 
   component sim_inc
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix23 : sim_inc
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_9u_9u_0_0 ;

architecture BEHAVIORAL of dec_9u_9u_0_0 is 
   component sim_dec
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix23 : sim_dec
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_3u_3u ;

architecture BEHAVIORAL of mux_3u_3u is 
   component sim_mux
      generic (size : integer := 3;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 3,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
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
   ix9 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_11u_11u_0_0 ;

architecture BEHAVIORAL of inc_11u_11u_0_0 is 
   component sim_inc
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix27 : sim_inc
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_12u_12u_0_0 ;

architecture BEHAVIORAL of inc_12u_12u_0_0 is 
   component sim_inc
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_inc
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_4u_4u_0_0 ;

architecture BEHAVIORAL of dec_4u_4u_0_0 is 
   component sim_dec
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_dec
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0_0 ;

architecture BEHAVIORAL of inc_4u_4u_0_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_8u_8u ;

architecture BEHAVIORAL of eq_8u_8u is 
   component sim_eq
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_eq
      generic map (size => 8) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_9u_9u ;

architecture BEHAVIORAL of eq_9u_9u is 
   component sim_eq
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix15 : sim_eq
      generic map (size => 9) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8u_8u ;

architecture BEHAVIORAL of gt_8u_8u is 
   component sim_gt
      generic (size : integer := 8;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_gt
      generic map (size => 8,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_13u_13u_13u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      d : OUT std_logic_vector (12 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_13u_13u_13u_0_0 ;

architecture BEHAVIORAL of add_13u_13u_13u_0_0 is 
   component sim_add
      generic (size : integer := 13) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix44 : sim_add
      generic map (size => 13) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10u_10u ;

architecture BEHAVIORAL of gt_10u_10u is 
   component sim_gt
      generic (size : integer := 10;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_gt
      generic map (size => 10,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_4u_4u ;

architecture BEHAVIORAL of or_4u_4u is 
   component sim_or
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_or
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0 ;

architecture BEHAVIORAL of inc_4u_4u_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_10u_10u ;

architecture BEHAVIORAL of eq_10u_10u is 
   component sim_eq
      generic (size : integer := 10) ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_eq
      generic map (size => 10) 
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

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_12u_12u_12u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12u_12u_12u_0 ;

architecture BEHAVIORAL of sub_12u_12u_12u_0 is 
   component sim_sub
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix40 : sim_sub
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_5u_5u is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_5u_5u ;

architecture BEHAVIORAL of and_5u_5u is 
   component sim_and
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_and
      generic map (size => 5) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_11u_11u is 
   port (
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_11u_11u ;

architecture BEHAVIORAL of and_11u_11u is 
   component sim_and
      generic (size : integer := 11) ;
      
      port (
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix16 : sim_and
      generic map (size => 11) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_mem_8_8_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_0_work_mem_8_8_main ;

architecture INTERFACE_unfold_1 of ram_new_0_work_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_1);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 ;

architecture INTERFACE of 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component dec_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, 
      nx44, sclear_and_0_dup_151, sclear_and_1_dup_152, sclear_and_2_dup_153, 
      sclear_and_3_dup_154, sclear_and_4_dup_155, sclear_and_5_dup_156, 
      sclear_and_6_dup_157, sclear_and_7_dup_158, sclear_and_8_dup_159, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, dec_d_0, dec_d_1, dec_d_2, dec_d_3, dec_d_4, dec_d_5, dec_d_6, 
      dec_d_7, dec_d_8, incdec_mux_0_dup_113, incdec_mux_1_dup_114, 
      incdec_mux_2_dup_115, incdec_mux_3_dup_116, incdec_mux_4_dup_117, 
      incdec_mux_5_dup_118, incdec_mux_6_dup_119, incdec_mux_7_dup_120, 
      incdec_mux_8_dup_121, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(8) <= nx39 ;
   q(7) <= nx38 ;
   q(6) <= nx37 ;
   q(5) <= nx36 ;
   q(4) <= nx35 ;
   q(3) <= nx34 ;
   q(2) <= nx33 ;
   q(1) <= nx32 ;
   q(0) <= nx31 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx44 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_8_dup_159,GND,GND,nx44,clock,nx39) ;
   DFFPCE (sclear_and_7_dup_158,GND,GND,nx44,clock,nx38) ;
   DFFPCE (sclear_and_6_dup_157,GND,GND,nx44,clock,nx37) ;
   DFFPCE (sclear_and_5_dup_156,GND,GND,nx44,clock,nx36) ;
   DFFPCE (sclear_and_4_dup_155,GND,GND,nx44,clock,nx35) ;
   DFFPCE (sclear_and_3_dup_154,GND,GND,nx44,clock,nx34) ;
   DFFPCE (sclear_and_2_dup_153,GND,GND,nx44,clock,nx33) ;
   DFFPCE (sclear_and_1_dup_152,GND,GND,nx44,clock,nx32) ;
   DFFPCE (sclear_and_0_dup_151,GND,GND,nx44,clock,nx31) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, 
      d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   dec : dec_9u_9u_0_0 port map ( cin=>GND, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>dec_d_8, d(7)=>dec_d_7, d(6)=>dec_d_6, d(5)=>dec_d_5, 
      d(4)=>dec_d_4, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,1));
   incdec_mux_0_dup_113 <= inc_d_0 when updn = '1' else dec_d_0 ;
   incdec_mux_1_dup_114 <= inc_d_1 when updn = '1' else dec_d_1 ;
   incdec_mux_2_dup_115 <= inc_d_2 when updn = '1' else dec_d_2 ;
   incdec_mux_3_dup_116 <= inc_d_3 when updn = '1' else dec_d_3 ;
   incdec_mux_4_dup_117 <= inc_d_4 when updn = '1' else dec_d_4 ;
   incdec_mux_5_dup_118 <= inc_d_5 when updn = '1' else dec_d_5 ;
   incdec_mux_6_dup_119 <= inc_d_6 when updn = '1' else dec_d_6 ;
   incdec_mux_7_dup_120 <= inc_d_7 when updn = '1' else dec_d_7 ;
   incdec_mux_8_dup_121 <= inc_d_8 when updn = '1' else dec_d_8 ;
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_151 <= incdec_mux_0_dup_113 AND NOT_sclear ;
   sclear_and_1_dup_152 <= incdec_mux_1_dup_114 AND NOT_sclear ;
   sclear_and_2_dup_153 <= incdec_mux_2_dup_115 AND NOT_sclear ;
   sclear_and_3_dup_154 <= incdec_mux_3_dup_116 AND NOT_sclear ;
   sclear_and_4_dup_155 <= incdec_mux_4_dup_117 AND NOT_sclear ;
   sclear_and_5_dup_156 <= incdec_mux_5_dup_118 AND NOT_sclear ;
   sclear_and_6_dup_157 <= incdec_mux_6_dup_119 AND NOT_sclear ;
   sclear_and_7_dup_158 <= incdec_mux_7_dup_120 AND NOT_sclear ;
   sclear_and_8_dup_159 <= incdec_mux_8_dup_121 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity syn_fifo_8_8 is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      data_in : IN std_logic_vector (7 DOWNTO 0) ;
      rd_en : IN std_logic ;
      wr_en : IN std_logic ;
      data_out : OUT std_logic_vector (7 DOWNTO 0) ;
      empty : OUT std_logic ;
      full : OUT std_logic) ;
end syn_fifo_8_8 ;

architecture main_unfold_1 of syn_fifo_8_8 is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   for mem : mem_8_8 use entity work.mem_8_8(main);
   for modgen_counter_wr_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8(INTERFACE);
   for modgen_counter_rd_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8(INTERFACE);
   for modgen_counter_status_cnt : 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 use entity work.
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8(INTERFACE);
   signal empty_EXMPLR146, full_EXMPLR147: std_logic ;
   
   signal wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal q: std_logic_vector (7 DOWNTO 0) ;
   
   signal q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_en_delayed, GND, PWR, not_empty, not_wr_en, rtlc8n63, rtlc8n72, 
      not_rd_en, rtlc8n91, not_full, rtlc8n93, not_rtlc8n72, rtlcn0, 
      not_status_cnt_7, not_status_cnt_6, not_status_cnt_5, not_status_cnt_4, 
      not_status_cnt_3, not_status_cnt_2, not_status_cnt_1, not_status_cnt_0, 
      not_status_cnt_8: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   empty <= empty_EXMPLR146 ;
   full <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   mem : mem_8_8 port map ( address(7)=>pointer(7), address(6)=>pointer(6), 
      address(5)=>pointer(5), address(4)=>pointer(4), address(3)=>pointer(3), 
      address(2)=>pointer(2), address(1)=>pointer(1), address(0)=>pointer(0), 
      clock=>clk, data(7)=>data_in(7), data(6)=>data_in(6), data(5)=>
      data_in(5), data(4)=>data_in(4), data(3)=>data_in(3), data(2)=>
      data_in(2), data(1)=>data_in(1), data(0)=>data_in(0), wren=>wr_en, 
      q(7)=>q(7), q(6)=>q(6), q(5)=>q(5), q(4)=>q(4), q(3)=>q(3), q(2)=>q(2), 
      q(1)=>q(1), q(0)=>q(0));
   not_empty <= NOT empty_EXMPLR146 ;
   not_wr_en <= NOT wr_en ;
   not_rtlc8n72 <= NOT rtlc8n72 ;
   rtlc8n91 <= wr_en AND not_rd_en ;
   rtlc8n93 <= rtlc8n91 AND not_full ;
   rtlc8n63 <= rd_en AND not_wr_en ;
   rtlc8n72 <= rtlc8n63 AND not_empty ;
   not_rd_en <= NOT rd_en ;
   not_full <= NOT full_EXMPLR147 ;
   rtlcn0 <= rtlc8n93 OR rtlc8n72 ;
   pointer(0) <= wr_pointer(0) when wr_en = '1' else rd_pointer(0) ;
   pointer(1) <= wr_pointer(1) when wr_en = '1' else rd_pointer(1) ;
   pointer(2) <= wr_pointer(2) when wr_en = '1' else rd_pointer(2) ;
   pointer(3) <= wr_pointer(3) when wr_en = '1' else rd_pointer(3) ;
   pointer(4) <= wr_pointer(4) when wr_en = '1' else rd_pointer(4) ;
   pointer(5) <= wr_pointer(5) when wr_en = '1' else rd_pointer(5) ;
   pointer(6) <= wr_pointer(6) when wr_en = '1' else rd_pointer(6) ;
   pointer(7) <= wr_pointer(7) when wr_en = '1' else rd_pointer(7) ;
   data_out(0) <= q(0) when rd_en_delayed = '1' else q_saved(0) ;
   data_out(1) <= q(1) when rd_en_delayed = '1' else q_saved(1) ;
   data_out(2) <= q(2) when rd_en_delayed = '1' else q_saved(2) ;
   data_out(3) <= q(3) when rd_en_delayed = '1' else q_saved(3) ;
   data_out(4) <= q(4) when rd_en_delayed = '1' else q_saved(4) ;
   data_out(5) <= q(5) when rd_en_delayed = '1' else q_saved(5) ;
   data_out(6) <= q(6) when rd_en_delayed = '1' else q_saved(6) ;
   data_out(7) <= q(7) when rd_en_delayed = '1' else q_saved(7) ;
   not_status_cnt_7 <= NOT status_cnt(7) ;
   not_status_cnt_6 <= NOT status_cnt(6) ;
   not_status_cnt_5 <= NOT status_cnt(5) ;
   not_status_cnt_4 <= NOT status_cnt(4) ;
   not_status_cnt_3 <= NOT status_cnt(3) ;
   not_status_cnt_2 <= NOT status_cnt(2) ;
   not_status_cnt_1 <= NOT status_cnt(1) ;
   not_status_cnt_0 <= NOT status_cnt(0) ;
   full_and_0 : and_9u_9u port map ( a(8)=>status_cnt(8), a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>full_EXMPLR147);
   not_status_cnt_8 <= NOT status_cnt(8) ;
   empty_and_1 : and_9u_9u port map ( a(8)=>not_status_cnt_8, a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>empty_EXMPLR146);
   modgen_counter_wr_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>wr_pointer(7), q(6)=>wr_pointer(6), q(5)=>wr_pointer(5), 
      q(4)=>wr_pointer(4), q(3)=>wr_pointer(3), q(2)=>wr_pointer(2), q(1)=>
      wr_pointer(1), q(0)=>wr_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>rst, updn=>PWR, cnt_en=>wr_en);
   modgen_counter_rd_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>rd_pointer(7), q(6)=>rd_pointer(6), q(5)=>rd_pointer(5), 
      q(4)=>rd_pointer(4), q(3)=>rd_pointer(3), q(2)=>rd_pointer(2), q(1)=>
      rd_pointer(1), q(0)=>rd_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>
      DANGLING(0,10), data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), 
      data(2)=>DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>
      DANGLING(0,15), aset=>GND, sclear=>rst, updn=>PWR, cnt_en=>rd_en);
   modgen_counter_status_cnt : 
      counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 port map ( clock
      =>clk, q(8)=>status_cnt(8), q(7)=>status_cnt(7), q(6)=>status_cnt(6), 
      q(5)=>status_cnt(5), q(4)=>status_cnt(4), q(3)=>status_cnt(3), q(2)=>
      status_cnt(2), q(1)=>status_cnt(1), q(0)=>status_cnt(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(8)=>DANGLING(0,16), data(7)=>
      DANGLING(0,17), data(6)=>DANGLING(0,18), data(5)=>DANGLING(0,19), 
      data(4)=>DANGLING(0,20), data(3)=>DANGLING(0,21), data(2)=>
      DANGLING(0,22), data(1)=>DANGLING(0,23), data(0)=>DANGLING(0,24), aset
      =>GND, sclear=>rst, updn=>not_rtlc8n72, cnt_en=>rtlcn0);
   DFFPC (rd_en,GND,GND,clk,rd_en_delayed) ;
   DFFPCE (q(7),GND,GND,rd_en_delayed,clk,q_saved(7)) ;
   DFFPCE (q(6),GND,GND,rd_en_delayed,clk,q_saved(6)) ;
   DFFPCE (q(5),GND,GND,rd_en_delayed,clk,q_saved(5)) ;
   DFFPCE (q(4),GND,GND,rd_en_delayed,clk,q_saved(4)) ;
   DFFPCE (q(3),GND,GND,rd_en_delayed,clk,q_saved(3)) ;
   DFFPCE (q(2),GND,GND,rd_en_delayed,clk,q_saved(2)) ;
   DFFPCE (q(1),GND,GND,rd_en_delayed,clk,q_saved(1)) ;
   DFFPCE (q(0),GND,GND,rd_en_delayed,clk,q_saved(0)) ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_work_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_4 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_4 ;


architecture INTERFACE_unfold_1 of 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE_unfold_1 ;


architecture INTERFACE_unfold_1 of 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE_unfold_1 ;


architecture INTERFACE_unfold_1 of 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component dec_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, 
      nx44, sclear_and_0_dup_151, sclear_and_1_dup_152, sclear_and_2_dup_153, 
      sclear_and_3_dup_154, sclear_and_4_dup_155, sclear_and_5_dup_156, 
      sclear_and_6_dup_157, sclear_and_7_dup_158, sclear_and_8_dup_159, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, dec_d_0, dec_d_1, dec_d_2, dec_d_3, dec_d_4, dec_d_5, dec_d_6, 
      dec_d_7, dec_d_8, incdec_mux_0_dup_113, incdec_mux_1_dup_114, 
      incdec_mux_2_dup_115, incdec_mux_3_dup_116, incdec_mux_4_dup_117, 
      incdec_mux_5_dup_118, incdec_mux_6_dup_119, incdec_mux_7_dup_120, 
      incdec_mux_8_dup_121, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(8) <= nx39 ;
   q(7) <= nx38 ;
   q(6) <= nx37 ;
   q(5) <= nx36 ;
   q(4) <= nx35 ;
   q(3) <= nx34 ;
   q(2) <= nx33 ;
   q(1) <= nx32 ;
   q(0) <= nx31 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx44 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_8_dup_159,GND,GND,nx44,clock,nx39) ;
   DFFPCE (sclear_and_7_dup_158,GND,GND,nx44,clock,nx38) ;
   DFFPCE (sclear_and_6_dup_157,GND,GND,nx44,clock,nx37) ;
   DFFPCE (sclear_and_5_dup_156,GND,GND,nx44,clock,nx36) ;
   DFFPCE (sclear_and_4_dup_155,GND,GND,nx44,clock,nx35) ;
   DFFPCE (sclear_and_3_dup_154,GND,GND,nx44,clock,nx34) ;
   DFFPCE (sclear_and_2_dup_153,GND,GND,nx44,clock,nx33) ;
   DFFPCE (sclear_and_1_dup_152,GND,GND,nx44,clock,nx32) ;
   DFFPCE (sclear_and_0_dup_151,GND,GND,nx44,clock,nx31) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, 
      d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   dec : dec_9u_9u_0_0 port map ( cin=>GND, a(8)=>nx39, a(7)=>nx38, a(6)=>
      nx37, a(5)=>nx36, a(4)=>nx35, a(3)=>nx34, a(2)=>nx33, a(1)=>nx32, a(0)
      =>nx31, d(8)=>dec_d_8, d(7)=>dec_d_7, d(6)=>dec_d_6, d(5)=>dec_d_5, 
      d(4)=>dec_d_4, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,1));
   incdec_mux_0_dup_113 <= inc_d_0 when updn = '1' else dec_d_0 ;
   incdec_mux_1_dup_114 <= inc_d_1 when updn = '1' else dec_d_1 ;
   incdec_mux_2_dup_115 <= inc_d_2 when updn = '1' else dec_d_2 ;
   incdec_mux_3_dup_116 <= inc_d_3 when updn = '1' else dec_d_3 ;
   incdec_mux_4_dup_117 <= inc_d_4 when updn = '1' else dec_d_4 ;
   incdec_mux_5_dup_118 <= inc_d_5 when updn = '1' else dec_d_5 ;
   incdec_mux_6_dup_119 <= inc_d_6 when updn = '1' else dec_d_6 ;
   incdec_mux_7_dup_120 <= inc_d_7 when updn = '1' else dec_d_7 ;
   incdec_mux_8_dup_121 <= inc_d_8 when updn = '1' else dec_d_8 ;
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_151 <= incdec_mux_0_dup_113 AND NOT_sclear ;
   sclear_and_1_dup_152 <= incdec_mux_1_dup_114 AND NOT_sclear ;
   sclear_and_2_dup_153 <= incdec_mux_2_dup_115 AND NOT_sclear ;
   sclear_and_3_dup_154 <= incdec_mux_3_dup_116 AND NOT_sclear ;
   sclear_and_4_dup_155 <= incdec_mux_4_dup_117 AND NOT_sclear ;
   sclear_and_5_dup_156 <= incdec_mux_5_dup_118 AND NOT_sclear ;
   sclear_and_6_dup_157 <= incdec_mux_6_dup_119 AND NOT_sclear ;
   sclear_and_7_dup_158 <= incdec_mux_7_dup_120 AND NOT_sclear ;
   sclear_and_8_dup_159 <= incdec_mux_8_dup_121 AND NOT_sclear ;
end INTERFACE_unfold_1 ;


architecture main_unfold_1927_0 of syn_fifo_8_8 is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   for mem : mem_8_8 use entity work.mem_8_8(main_unfold_4);
   for modgen_counter_wr_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8(INTERFACE_unfold_1);
   
   for modgen_counter_rd_pointer : 
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 use entity work.
   counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8(INTERFACE_unfold_1);
   
   for modgen_counter_status_cnt : 
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 use entity work.
   counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8(INTERFACE_unfold_1
   );
   signal empty_EXMPLR238, full_EXMPLR239: std_logic ;
   
   signal wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal q: std_logic_vector (7 DOWNTO 0) ;
   
   signal q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal rd_en_delayed, GND, PWR, not_empty, not_wr_en, rtlc8n63, rtlc8n72, 
      not_rd_en, rtlc8n91, not_full, rtlc8n93, not_rtlc8n72, rtlcn0, 
      not_status_cnt_7, not_status_cnt_6, not_status_cnt_5, not_status_cnt_4, 
      not_status_cnt_3, not_status_cnt_2, not_status_cnt_1, not_status_cnt_0, 
      not_status_cnt_8: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   empty <= empty_EXMPLR238 ;
   full <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   mem : mem_8_8 port map ( address(7)=>pointer(7), address(6)=>pointer(6), 
      address(5)=>pointer(5), address(4)=>pointer(4), address(3)=>pointer(3), 
      address(2)=>pointer(2), address(1)=>pointer(1), address(0)=>pointer(0), 
      clock=>clk, data(7)=>data_in(7), data(6)=>data_in(6), data(5)=>
      data_in(5), data(4)=>data_in(4), data(3)=>data_in(3), data(2)=>
      data_in(2), data(1)=>data_in(1), data(0)=>data_in(0), wren=>wr_en, 
      q(7)=>q(7), q(6)=>q(6), q(5)=>q(5), q(4)=>q(4), q(3)=>q(3), q(2)=>q(2), 
      q(1)=>q(1), q(0)=>q(0));
   not_empty <= NOT empty_EXMPLR238 ;
   not_wr_en <= NOT wr_en ;
   not_rtlc8n72 <= NOT rtlc8n72 ;
   rtlc8n91 <= wr_en AND not_rd_en ;
   rtlc8n93 <= rtlc8n91 AND not_full ;
   rtlc8n63 <= rd_en AND not_wr_en ;
   rtlc8n72 <= rtlc8n63 AND not_empty ;
   not_rd_en <= NOT rd_en ;
   not_full <= NOT full_EXMPLR239 ;
   rtlcn0 <= rtlc8n93 OR rtlc8n72 ;
   pointer(0) <= wr_pointer(0) when wr_en = '1' else rd_pointer(0) ;
   pointer(1) <= wr_pointer(1) when wr_en = '1' else rd_pointer(1) ;
   pointer(2) <= wr_pointer(2) when wr_en = '1' else rd_pointer(2) ;
   pointer(3) <= wr_pointer(3) when wr_en = '1' else rd_pointer(3) ;
   pointer(4) <= wr_pointer(4) when wr_en = '1' else rd_pointer(4) ;
   pointer(5) <= wr_pointer(5) when wr_en = '1' else rd_pointer(5) ;
   pointer(6) <= wr_pointer(6) when wr_en = '1' else rd_pointer(6) ;
   pointer(7) <= wr_pointer(7) when wr_en = '1' else rd_pointer(7) ;
   data_out(0) <= q(0) when rd_en_delayed = '1' else q_saved(0) ;
   data_out(1) <= q(1) when rd_en_delayed = '1' else q_saved(1) ;
   data_out(2) <= q(2) when rd_en_delayed = '1' else q_saved(2) ;
   data_out(3) <= q(3) when rd_en_delayed = '1' else q_saved(3) ;
   data_out(4) <= q(4) when rd_en_delayed = '1' else q_saved(4) ;
   data_out(5) <= q(5) when rd_en_delayed = '1' else q_saved(5) ;
   data_out(6) <= q(6) when rd_en_delayed = '1' else q_saved(6) ;
   data_out(7) <= q(7) when rd_en_delayed = '1' else q_saved(7) ;
   not_status_cnt_7 <= NOT status_cnt(7) ;
   not_status_cnt_6 <= NOT status_cnt(6) ;
   not_status_cnt_5 <= NOT status_cnt(5) ;
   not_status_cnt_4 <= NOT status_cnt(4) ;
   not_status_cnt_3 <= NOT status_cnt(3) ;
   not_status_cnt_2 <= NOT status_cnt(2) ;
   not_status_cnt_1 <= NOT status_cnt(1) ;
   not_status_cnt_0 <= NOT status_cnt(0) ;
   full_and_0 : and_9u_9u port map ( a(8)=>status_cnt(8), a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>full_EXMPLR239);
   not_status_cnt_8 <= NOT status_cnt(8) ;
   empty_and_1 : and_9u_9u port map ( a(8)=>not_status_cnt_8, a(7)=>
      not_status_cnt_7, a(6)=>not_status_cnt_6, a(5)=>not_status_cnt_5, a(4)
      =>not_status_cnt_4, a(3)=>not_status_cnt_3, a(2)=>not_status_cnt_2, 
      a(1)=>not_status_cnt_1, a(0)=>not_status_cnt_0, d=>empty_EXMPLR238);
   modgen_counter_wr_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx0_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>wr_pointer(7), q(6)=>wr_pointer(6), q(5)=>wr_pointer(5), 
      q(4)=>wr_pointer(4), q(3)=>wr_pointer(3), q(2)=>wr_pointer(2), q(1)=>
      wr_pointer(1), q(0)=>wr_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,0), data(6)=>DANGLING(0,1), data(5)=>
      DANGLING(0,2), data(4)=>DANGLING(0,3), data(3)=>DANGLING(0,4), data(2)
      =>DANGLING(0,5), data(1)=>DANGLING(0,6), data(0)=>DANGLING(0,7), aset
      =>GND, sclear=>rst, updn=>PWR, cnt_en=>wr_en);
   modgen_counter_rd_pointer : 
      counter_up_cnt_en_sclear_clock_0_8_cx1_syn_fifo_8_8 port map ( clock=>
      clk, q(7)=>rd_pointer(7), q(6)=>rd_pointer(6), q(5)=>rd_pointer(5), 
      q(4)=>rd_pointer(4), q(3)=>rd_pointer(3), q(2)=>rd_pointer(2), q(1)=>
      rd_pointer(1), q(0)=>rd_pointer(0), clk_en=>PWR, aclear=>GND, sload=>
      GND, data(7)=>DANGLING(0,8), data(6)=>DANGLING(0,9), data(5)=>
      DANGLING(0,10), data(4)=>DANGLING(0,11), data(3)=>DANGLING(0,12), 
      data(2)=>DANGLING(0,13), data(1)=>DANGLING(0,14), data(0)=>
      DANGLING(0,15), aset=>GND, sclear=>rst, updn=>PWR, cnt_en=>rd_en);
   modgen_counter_status_cnt : 
      counter_updn_cnt_en_sclear_clock_0_9_cx2_syn_fifo_8_8 port map ( clock
      =>clk, q(8)=>status_cnt(8), q(7)=>status_cnt(7), q(6)=>status_cnt(6), 
      q(5)=>status_cnt(5), q(4)=>status_cnt(4), q(3)=>status_cnt(3), q(2)=>
      status_cnt(2), q(1)=>status_cnt(1), q(0)=>status_cnt(0), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(8)=>DANGLING(0,16), data(7)=>
      DANGLING(0,17), data(6)=>DANGLING(0,18), data(5)=>DANGLING(0,19), 
      data(4)=>DANGLING(0,20), data(3)=>DANGLING(0,21), data(2)=>
      DANGLING(0,22), data(1)=>DANGLING(0,23), data(0)=>DANGLING(0,24), aset
      =>GND, sclear=>rst, updn=>not_rtlc8n72, cnt_en=>rtlcn0);
   DFFPC (rd_en,GND,GND,clk,rd_en_delayed) ;
   DFFPCE (q(7),GND,GND,rd_en_delayed,clk,q_saved(7)) ;
   DFFPCE (q(6),GND,GND,rd_en_delayed,clk,q_saved(6)) ;
   DFFPCE (q(5),GND,GND,rd_en_delayed,clk,q_saved(5)) ;
   DFFPCE (q(4),GND,GND,rd_en_delayed,clk,q_saved(4)) ;
   DFFPCE (q(3),GND,GND,rd_en_delayed,clk,q_saved(3)) ;
   DFFPCE (q(2),GND,GND,rd_en_delayed,clk,q_saved(2)) ;
   DFFPCE (q(1),GND,GND,rd_en_delayed,clk,q_saved(1)) ;
   DFFPCE (q(0),GND,GND,rd_en_delayed,clk,q_saved(0)) ;
end main_unfold_1927_0 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11_cx3_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11_cx3_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11_cx3_uart is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,aclear,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,aclear,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,aclear,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,aclear,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12_cx4_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12_cx4_uart ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12_cx4_uart is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, 
      nx49, nx50, nx51, sclear_and_0_dup_147, sclear_and_1_dup_148, 
      sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
      sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
      sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
      sclear_and_11_dup_158, inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, 
      inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, inc_d_10, inc_d_11, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(11) <= nx51 ;
   q(10) <= nx50 ;
   q(9) <= nx49 ;
   q(8) <= nx48 ;
   q(7) <= nx47 ;
   q(6) <= nx46 ;
   q(5) <= nx45 ;
   q(4) <= nx44 ;
   q(3) <= nx43 ;
   q(2) <= nx42 ;
   q(1) <= nx41 ;
   q(0) <= nx40 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_11_dup_158,GND,aclear,clock,nx51) ;
   DFFPC (sclear_and_10_dup_157,GND,aclear,clock,nx50) ;
   DFFPC (sclear_and_9_dup_156,GND,aclear,clock,nx49) ;
   DFFPC (sclear_and_8_dup_155,GND,aclear,clock,nx48) ;
   DFFPC (sclear_and_7_dup_154,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_6_dup_153,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_5_dup_152,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_4_dup_151,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_3_dup_150,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_2_dup_149,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_1_dup_148,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_0_dup_147,GND,aclear,clock,nx40) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx51, a(10)=>nx50, a(9)
      =>nx49, a(8)=>nx48, a(7)=>nx47, a(6)=>nx46, a(5)=>nx45, a(4)=>nx44, 
      a(3)=>nx43, a(2)=>nx42, a(1)=>nx41, a(0)=>nx40, d(11)=>inc_d_11, d(10)
      =>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, 
      d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>
      inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_147 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_148 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_149 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_150 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_151 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_152 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_153 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_154 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_155 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_156 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_157 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_158 <= inc_d_11 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart ;

architecture INTERFACE of 
   counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx17, nx18, nx19, nx20, nx22, sload_mux_0_dup_53, 
      sload_mux_1_dup_54, sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0, 
      dec_d_1, dec_d_2, dec_d_3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sload ;
   nx22 <= clk_en AND nx20 ;
   DFFPCE (sload_mux_3_dup_56,GND,aclear,nx22,clock,nx19) ;
   DFFPCE (sload_mux_2_dup_55,GND,aclear,nx22,clock,nx18) ;
   DFFPCE (sload_mux_1_dup_54,GND,aclear,nx22,clock,nx17) ;
   DFFPCE (sload_mux_0_dup_53,GND,aclear,nx22,clock,nx16) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_53 <= data(0) when sload = '1' else dec_d_0 ;
   sload_mux_1_dup_54 <= data(1) when sload = '1' else dec_d_1 ;
   sload_mux_2_dup_55 <= data(2) when sload = '1' else dec_d_2 ;
   sload_mux_3_dup_56 <= data(3) when sload = '1' else dec_d_3 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx16, nx17, nx18, nx19, nx24, nx26, sclear_and_0_dup_59, 
      sclear_and_1_dup_60, sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx24 <= cnt_en OR sclear ;
   nx26 <= nx24 AND clk_en ;
   DFFPCE (sclear_and_3_dup_62,GND,aclear,nx26,clock,nx19) ;
   DFFPCE (sclear_and_2_dup_61,GND,aclear,nx26,clock,nx18) ;
   DFFPCE (sclear_and_1_dup_60,GND,aclear,nx26,clock,nx17) ;
   DFFPCE (sclear_and_0_dup_59,GND,aclear,nx26,clock,nx16) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_59 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_60 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_61 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_62 <= inc_d_3 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uart is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end uart ;

architecture main_unfold_1641 of uart is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11_cx3_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12_cx4_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   signal RxRDY_EXMPLR343: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, rtlc8n72: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, 
      not_TxFSM_1, not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, 
      rtlc14n234, not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, 
      not_rtlc14n167, not_rtlcn24, not_Rx_r, not_Rx, rtlc17n282, rtlc17n287, 
      not_TopRx, rtlc17n335, rtlc17n414, not_rtlc17n287, rtlc17n432, 
      not_rtlcn26, rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, 
      rtlcn58, rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn86, rtlcn92, 
      not_rtlcn132, not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, 
      rtlcn116, not_rtlcs4, not_rtlc14n289, rtlcn132, not_RxFSM_4, rtlcs0, 
      rtlcs1, rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, 
      not_RxBitCnt_0, not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, not_rtlc17n335, rtlcs6, rtlcs7, rtlc14_109_or_2_nx0: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   RxRDY <= RxRDY_EXMPLR343 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n72 <= RxFSM(0) OR rtlcs0 ;
   rtlc14n289 <= rtlcs4 OR rtlc14n218 ;
   rtlc14n163 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n223 <= not_TopTx AND TxFSM(1) ;
   rtlc14n218 <= TxFSM(1) AND TxFSM(0) ;
   not_rtlc14_X_0_n224 <= NOT rtlc14_X_0_n224 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n234 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n282 <= not_TopRx OR not_Rx_r ;
   not_TopRx <= NOT TopRx ;
   rtlc17n335 <= not_TopRx AND RxFSM(3) ;
   not_Rx <= NOT Rx ;
   not_rtlcn20 <= NOT rtlcn20 ;
   rtlcn20 <= TxFSM(1) OR TxFSM(0) ;
   rtlc_82_select_3 : select_3_3 port map ( a(2)=>RxFSM(0), a(1)=>
      not_rtlcn132, a(0)=>RxFSM(5), b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>
      not_Rx, d=>rtlcn26);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_127_mux_5 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n167);
   rtlc_128_mux_6 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn22);
   rtlc_129_mux_7 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n163, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn24);
   not_Rx_r <= NOT Rx_r ;
   not_LD <= NOT LD ;
   not_RxFSM_0 <= NOT RxFSM(0) ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn52 <= not_rtlcs5 AND RxFSM(2) ;
   rtlcn113 <= not_Rx_r AND RxFSM(1) ;
   rtlcn58 <= RxFSM(3) OR rtlcn113 ;
   rtlcn114 <= RxFSM(4) AND Rx_r ;
   rtlcn63 <= RxFSM(5) OR rtlcn114 ;
   rtlcn68 <= rtlcs5 AND RxFSM(2) ;
   rtlcn72 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn115 <= RxFSM(4) AND not_Rx_r ;
   rtlcn116 <= Rx_r AND RxFSM(1) ;
   rtlcn78 <= rtlcn115 OR rtlcn116 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   rtlcn86 <= LD OR not_rtlcs4 ;
   not_rtlc14n289 <= NOT rtlc14n289 ;
   not_rtlcn132 <= NOT rtlcn132 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(4) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(6) ;
   not_rtlcn24 <= NOT rtlcn24 ;
   not_rtlc14n167 <= NOT rtlc14n167 ;
   not_rtlcn22 <= NOT rtlcn22 ;
   not_rtlcn26 <= NOT rtlcn26 ;
   rtlc17n432 <= RxRDY_EXMPLR343 OR RxFSM(5) ;
   not_RxFSM_4 <= NOT RxFSM(4) ;
   not_rtlc17n287 <= NOT rtlc17n287 ;
   rtlcn132 <= RxFSM(0) OR RxFSM(5) ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_356_and_9 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_366_and_10 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   rtlc17n287 <= rtlc17n282 OR not_RxFSM_4 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_377_and_11 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_382_and_12 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlc17n414 <= TopRx AND RxFSM(3) ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11_cx3_uart
       port map ( clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>
      RxDiv(8), q(7)=>RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>
      RxDiv(4), q(3)=>RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>
      RxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(10)=>
      DANGLING(0,0), data(9)=>DANGLING(0,1), data(8)=>DANGLING(0,2), data(7)
      =>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>DANGLING(0,5), 
      data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)=>DANGLING(0,8), 
      data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset=>GND, sclear=>
      rtlc8n72, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12_cx4_uart
       port map ( clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>
      TxDiv(9), q(8)=>TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>
      TxDiv(5), q(4)=>TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>
      TxDiv(1), q(0)=>TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, 
      data(11)=>DANGLING(0,11), data(10)=>DANGLING(0,12), data(9)=>
      DANGLING(0,13), data(8)=>DANGLING(0,14), data(7)=>DANGLING(0,15), 
      data(6)=>DANGLING(0,16), data(5)=>DANGLING(0,17), data(4)=>
      DANGLING(0,18), data(3)=>DANGLING(0,19), data(2)=>DANGLING(0,20), 
      data(1)=>DANGLING(0,21), data(0)=>DANGLING(0,22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : 
      counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx5_uart port map ( 
      clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>TxBitCnt(1), 
      q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n224, aclear=>RST, sload=>
      rtlc14n234, data(3)=>PWR, data(2)=>GND, data(1)=>GND, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   not_rtlc17n335 <= NOT rtlc17n335 ;
   modgen_counter_RxBitCnt : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx6_uart port map ( 
      clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>RxBitCnt(1), 
      q(0)=>RxBitCnt(0), clk_en=>not_rtlc17n335, aclear=>RST, sload=>GND, 
      data(3)=>DANGLING(0,23), data(2)=>DANGLING(0,24), data(1)=>
      DANGLING(0,25), data(0)=>DANGLING(0,26), aset=>GND, sclear=>RxFSM(0), 
      updn=>PWR, cnt_en=>RxFSM(3));
   rtlceq_s14_eq_13 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>RxDivisor_4, 
      b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, b(2)=>RxDivisor_4, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_14 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      RxDivisor_4, b(5)=>RxDivisor_4, b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, 
      b(2)=>GND, b(1)=>GND, b(0)=>RxDivisor_4, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,RxDivisor_4) ;
   DFFPC (rtlcn72,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n289,GND,RST,not_rtlcn24,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn24,CLK,TxFSM(0)) ;
   DFFPC (rtlcn86,GND,RST,CLK,TxBusy) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n167,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n167,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n167,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n167,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n167,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n167,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n167,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n167,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn22,CLK,Tx) ;
   DFFPCE (rtlcn78,GND,RST,not_rtlcn26,CLK,RxFSM(5)) ;
   DFFPCE (rtlcn68,GND,RST,not_rtlcn26,CLK,RxFSM(4)) ;
   DFFPCE (rtlcn52,GND,RST,not_rtlcn26,CLK,RxFSM(3)) ;
   DFFPCE (rtlcn58,GND,RST,not_rtlcn26,CLK,RxFSM(2)) ;
   DFFPCE (RxFSM(0),GND,RST,not_rtlcn26,CLK,RxFSM(1)) ;
   DFFPCE (rtlcn63,RST,GND,not_rtlcn26,CLK,RxFSM(0)) ;
   DFFPCE (RxFSM(5),GND,RST,rtlc17n432,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n287,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n287,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n287,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n287,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n287,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n287,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n287,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n287,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n414,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n414,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n414,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n414,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n414,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n414,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n414,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n414,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn92,GND,RST,CLK,RxRDY_EXMPLR343) ;
   rtlc14_109_or_2_nx0 <= rtlc14n218 OR not_rtlcn20 ;
   rtlc14_X_0_n224 <= rtlc14_109_or_2_nx0 OR rtlc14n223 ;
   rtlcn92 <= rtlcn114 AND TopRx ;
end main_unfold_1641 ;


architecture INTERFACE_unfold_2 of ram_new_0_work_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;


architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_2);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE_unfold_3 of ram_new_0_work_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_3 ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_3);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_4 of ram_new_0_work_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx36, 
      nx38: std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_4 ;


architecture main_unfold_3 of mem_8_8 is 
   component ram_new_0_work_mem_8_8_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   for mem : ram_new_0_work_mem_8_8_main use entity work.
   ram_new_0_work_mem_8_8_main(INTERFACE_unfold_4);
   signal GND, nx62: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_work_mem_8_8_main port map ( wr_data1(7)=>data(7), 
      wr_data1(6)=>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), 
      wr_data1(3)=>data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), 
      wr_data1(0)=>data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), 
      rd_data1(5)=>q(5), rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>
      q(2), rd_data1(1)=>q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, 
      rd_ena1=>nx62, ena1=>nx62, rst1=>GND, regce1=>nx62, regrst1=>GND);
   nx62 <= '1' ;
end main_unfold_3 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_clk_en_0_8_cx7_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_clk_en_0_8_cx7_kirsch ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_clk_en_0_8_cx7_kirsch is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      nx42, sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   nx42 <= nx40 AND clk_en ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx42,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx42,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx42,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx42,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx42,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx42,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx42,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx42,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_clk_en_0_8_cx8_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_clk_en_0_8_cx8_kirsch ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_clock_clk_en_0_8_cx8_kirsch is 
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
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      nx42, sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   nx42 <= nx40 AND clk_en ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx42,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx42,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx42,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx42,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx42,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx42,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx42,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx42,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main_unfold_1777 of kirsch is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component add_13u_13u_13u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component inc_4u_4u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_clk_en_0_8_cx7_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_clk_en_0_8_cx8_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for memA : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for memB : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for memC : mem_8_8 use entity work.mem_8_8(main_unfold_3);
   signal i_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_max0: std_logic_vector (7 DOWNTO 0) ;
   
   signal r_max1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r_add0_a: std_logic_vector (8 DOWNTO 0) ;
   
   signal r_add0_b: std_logic_vector (8 DOWNTO 0) ;
   
   signal r_add1_a: std_logic_vector (9 DOWNTO 0) ;
   
   signal r_add1_b: std_logic_vector (9 DOWNTO 0) ;
   
   signal r_add2: std_logic_vector (12 DOWNTO 0) ;
   
   signal GND, r_sub0_13, r_sub0_12, r_sub0_11, r_sub0_10, r_sub0_9, 
      r_sub0_8, r_sub0_7: std_logic ;
   
   signal dir1: std_logic_vector (3 DOWNTO 0) ;
   
   signal dir1_final: std_logic_vector (3 DOWNTO 0) ;
   
   signal dir2: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir2_final: std_logic_vector (2 DOWNTO 0) ;
   
   signal stg_counter1: std_logic_vector (3 DOWNTO 0) ;
   
   signal stg_counter2: std_logic_vector (3 DOWNTO 0) ;
   
   signal max0_bit_counter: std_logic_vector (1 DOWNTO 0) ;
   
   signal max1_bit_counter: std_logic_vector (1 DOWNTO 0) ;
   
   signal address: std_logic_vector (7 DOWNTO 0) ;
   
   signal row_index: std_logic_vector (1 DOWNTO 0) ;
   
   signal row_count: std_logic_vector (7 DOWNTO 0) ;
   
   signal next_row_index: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_dataA: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_dataB: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_dataC: std_logic_vector (7 DOWNTO 0) ;
   
   signal c3: std_logic_vector (7 DOWNTO 0) ;
   
   signal d3: std_logic_vector (7 DOWNTO 0) ;
   
   signal e3: std_logic_vector (7 DOWNTO 0) ;
   
   signal a2: std_logic_vector (7 DOWNTO 0) ;
   
   signal h2: std_logic_vector (7 DOWNTO 0) ;
   
   signal g2: std_logic_vector (7 DOWNTO 0) ;
   
   signal a3: std_logic_vector (7 DOWNTO 0) ;
   
   signal h3: std_logic_vector (7 DOWNTO 0) ;
   
   signal g3: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR: std_logic ;
   
   signal r_add0_a_0n1s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_reset: std_logic ;
   
   signal r_max0_1n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc1n109, rtlc1n133: std_logic ;
   
   signal dir1_1n2s2: std_logic_vector (3 DOWNTO 0) ;
   
   signal max0_bit_counter_1n3s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal rtlc1n235, rtlc1n236, rtlc1n256, not_rtlcn627, not_rtlc5n723, 
      not_rtlc5n886: std_logic ;
   
   signal r_add1_a_3n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc4n100, not_rtlc4n100, rtlc4n135: std_logic ;
   
   signal r_add2_4n1s1: std_logic_vector (12 DOWNTO 0) ;
   
   signal rtlc4n187, rtlc4n315: std_logic ;
   
   signal r_max1_5n6ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal rtlc5n225, rtlc5n249, rtlc5n264, rtlc5n265, rtlc5n279: std_logic
    ;
   
   signal dir2_5n2s2: std_logic_vector (2 DOWNTO 0) ;
   
   signal max1_bit_counter_5n7s1: std_logic_vector (1 DOWNTO 1) ;
   
   signal rtlc5n500, rtlc5n501, rtlc5n520, rtlc5n523, rtlc5n538, rtlc5n548, 
      rtlc5n637, not_rtlcn42, rtlc5n723, rtlc5n724, rtlc5n725, rtlc5n800, 
      not_rtlcn44, rtlc5n886, rtlc5n887, rtlc5n888, r_sub0_6n1s1_14, 
      r_sub0_6n1s1_12, r_sub0_6n1s1_11, r_sub0_6n1s1_10, r_sub0_6n1s1_9, 
      r_sub0_6n1s1_8, r_sub0_6n1s1_7, rtlc6n150, rtlc6n151, rtlc7n135, 
      rtlc7_PS7_n159, not_dir1_final_0, rtlc7_PS10_n174, not_dir1_final_1, 
      not_dir2_final_0, rtlc7_PS12_n188, not_dir1_final_2, not_dir2_final_1, 
      not_rtlcn45, not_dir2_final_2, rtlc7n233, rtlc7n235, rtlc7n236, 
      rtlc7n258, rtlc7n272, rtlc7n273: std_logic ;
   
   signal next_row_index_8n1s1: std_logic_vector (1 DOWNTO 1) ;
   
   signal rtlc8n272, not_rtlcs47, rtlc8n290: std_logic ;
   
   signal c3_9n15ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal d3_9n15ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal a2_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal h2_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_0_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_1_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_2_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_3_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f3_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc9n801, not_rtlc9n801: std_logic ;
   
   signal stg_counter1_9n2s1: std_logic_vector (3 DOWNTO 0) ;
   
   signal stg_counter2_9n4s1: std_logic_vector (3 DOWNTO 0) ;
   
   signal not_rtlcs31, rtlc9n966, rtlc9n991, not_rtlcn686, rtlc9n1268, 
      rtlc9n1273, rtlc9n1274, rtlc9n1283, rtlc9n1364, rtlc9n1367, rtlc9n1370, 
      rtlc9n1371, rtlc9n1382, rtlc9n1383, not_rtlc9n1660, not_rtlcs39, 
      not_rtlcs20, rtlc9n1479, rtlc9n1535, rtlc9n1575, rtlc9n1660, rtlcn39, 
      rtlcn40, rtlcn42, rtlcn44, rtlcn45, rtlcn47, rtlcn49, rtlcn50, rtlcn54, 
      not_rtlcn626, not_rtlc8n290, rtlcn351, rtlcn364, rtlcn377, rtlcn382, 
      rtlcn387, rtlcn392, rtlcn397, rtlcn418, rtlcn419, rtlcn420, rtlcn427, 
      rtlcn434, rtlcn440, rtlcn441, rtlcn446, rtlcn499, rtlcn514, rtlcn539, 
      rtlcn545, rtlcn551, rtlcn557, rtlcn583, rtlcn587, not_i_valid, 
      not_rtlcn39, not_rtlcs42, not_rtlc5n279, rtlcn597, not_rtlc7n235, 
      not_rtlc7n236, rtlcn626, rtlcn627, rtlcn628, rtlcn629, rtlcn630, 
      not_rtlc1n133, not_rtlcn419, not_rtlcn420, rtlcs0, rtlcs1, rtlcs2, 
      rtlcs3, rtlcs4, rtlcs5, rtlcs6, rtlcs8, rtlcs10, rtlcs11, rtlcs12, 
      rtlcs13, rtlcs14, rtlcs16, not_stg_counter2_1, rtlcs19, rtlcs20, 
      rtlcs21, rtlcs22, rtlcs23, rtlcs24, rtlcs25, rtlcs27, rtlcs29, 
      not_stg_counter1_3, rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, 
      rtlcs37, rtlcs38, rtlcs39, rtlcs41, rtlcs42, rtlcs43, rtlcs44, rtlcs45, 
      rtlcs46, rtlcs47, not_stg_counter2_3, not_row_index_0, not_rtlcn583, 
      not_row_index_1, not_stg_counter1_2, not_stg_counter1_1, 
      not_stg_counter2_2, not_stg_counter1_0, not_stg_counter2_0, rtlcn685, 
      rtlcn686, not_rtlc4n315, not_max1_bit_counter_0, rtlcn2971, rtlcn2972, 
      rtlcn2974, rtlcn7580: std_logic ;
   
   signal r_add2_4n1s1f1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r_add2_4n1s1f2: std_logic_vector (12 DOWNTO 0) ;
   
   signal not_rtlc1n250, not_rtlc5n523, nx58, dir1_dec_1i1_nx4, 
      dir1_dec_1i1_dup_0_nx4, dir1_dec_1i1_dup_1_nx4, NOT_max0_bit_counter_1, 
      dir1_dec_1i1_dup_2_nx4, dir2_dec_5i1_nx4, dir2_dec_5i1_dup_0_nx4, 
      NOT_max1_bit_counter_1, dir2_dec_5i1_dup_1_nx4, rtlc7_116_and_29_nx0, 
      rtlc_127_and_40_nx0, rtlc_129_or_41_nx0, rtlc_674_or_58_nx0, 
      rtlc_866_or_59_nx0, rtlc_867_and_60_nx0, rtlc_878_and_61_nx0, 
      rtlc_1330_and_66_nx0, NOT_r_add2_0, nx140, nx143, nx151, nx155, nx161, 
      nx164, nx170, nx174, nx182, nx186, nx194, nx197, nx204, nx207, nx213, 
      nx216, nx222, nx226, nx234, nx238, nx246, nx250, nx257, nx261, nx269, 
      nx272, nx278, nx281, nx287, nx290, nx296, nx299, nx305, nx308, nx314, 
      nx317, nx323, nx326, nx332, nx335, nx341, nx344, nx350, nx353, nx359, 
      nx362, nx368, nx371, nx377, nx380, nx386, nx389, nx395, nx398, nx404, 
      nx407, nx413, nx416, nx422, nx425, nx431, nx434, nx440, nx443: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_col(7) <= GND ;
   o_col(6) <= GND ;
   o_col(5) <= GND ;
   o_col(4) <= GND ;
   o_col(3) <= GND ;
   o_col(2) <= GND ;
   o_col(1) <= GND ;
   o_col(0) <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   memA : mem_8_8 port map ( address(7)=>address(7), address(6)=>address(6), 
      address(5)=>address(5), address(4)=>address(4), address(3)=>address(3), 
      address(2)=>address(2), address(1)=>address(1), address(0)=>address(0), 
      clock=>clk, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>rtlcn551, 
      q(7)=>o_dataA(7), q(6)=>o_dataA(6), q(5)=>o_dataA(5), q(4)=>o_dataA(4), 
      q(3)=>o_dataA(3), q(2)=>o_dataA(2), q(1)=>o_dataA(1), q(0)=>o_dataA(0)
   );
   memB : mem_8_8 port map ( address(7)=>address(7), address(6)=>address(6), 
      address(5)=>address(5), address(4)=>address(4), address(3)=>address(3), 
      address(2)=>address(2), address(1)=>address(1), address(0)=>address(0), 
      clock=>clk, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>rtlcn557, 
      q(7)=>o_dataB(7), q(6)=>o_dataB(6), q(5)=>o_dataB(5), q(4)=>o_dataB(4), 
      q(3)=>o_dataB(3), q(2)=>o_dataB(2), q(1)=>o_dataB(1), q(0)=>o_dataB(0)
   );
   memC : mem_8_8 port map ( address(7)=>address(7), address(6)=>address(6), 
      address(5)=>address(5), address(4)=>address(4), address(3)=>address(3), 
      address(2)=>address(2), address(1)=>address(1), address(0)=>address(0), 
      clock=>clk, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>rtlcn446, 
      q(7)=>o_dataC(7), q(6)=>o_dataC(6), q(5)=>o_dataC(5), q(4)=>o_dataC(4), 
      q(3)=>o_dataC(3), q(2)=>o_dataC(2), q(1)=>o_dataC(1), q(0)=>o_dataC(0)
   );
   rtlc1n235 <= rtlcs0 AND rtlc1n133 ;
   rtlc1n236 <= reset OR rtlc1n235 ;
   rtlc1_110_gt_19 : gt_8u_8u port map ( a(7)=>i_3(7), a(6)=>i_3(6), a(5)=>
      i_3(5), a(4)=>i_3(4), a(3)=>i_3(3), a(2)=>i_3(2), a(1)=>i_3(1), a(0)=>
      i_3(0), b(7)=>i_2(7), b(6)=>i_2(6), b(5)=>i_2(5), b(4)=>i_2(4), b(3)=>
      i_2(3), b(2)=>i_2(2), b(1)=>i_2(1), b(0)=>i_2(0), d=>not_rtlc1n250);
   rtlc1n133 <= not_rtlc5n723 OR not_rtlc5n886 ;
   rtlc1n109 <= rtlcs32 OR rtlcs1 ;
   rtlc4n187 <= rtlc4n100 AND not_reset ;
   rtlc4n135 <= rtlcs22 OR rtlcs4 ;
   not_rtlc4n100 <= NOT rtlc4n100 ;
   rtlc4n100 <= rtlcs37 OR rtlcs10 ;
   r_add2_add13_4i1 : add_13u_13u_13u_0_0 port map ( cin=>GND, a(12)=>
      r_add2(12), a(11)=>r_add2(11), a(10)=>r_add2(10), a(9)=>
      r_add2_4n1s1f1(9), a(8)=>r_add2_4n1s1f1(8), a(7)=>r_add2_4n1s1f1(7), 
      a(6)=>r_add2_4n1s1f1(6), a(5)=>r_add2_4n1s1f1(5), a(4)=>
      r_add2_4n1s1f1(4), a(3)=>r_add2_4n1s1f1(3), a(2)=>r_add2_4n1s1f1(2), 
      a(1)=>r_add2_4n1s1f1(1), a(0)=>r_add2_4n1s1f1(0), b(12)=>
      r_add2_4n1s1f2(12), b(11)=>r_add2_4n1s1f2(11), b(10)=>
      r_add2_4n1s1f2(10), b(9)=>r_add2_4n1s1f2(9), b(8)=>r_add2_4n1s1f2(8), 
      b(7)=>r_add2_4n1s1f2(7), b(6)=>r_add2_4n1s1f2(6), b(5)=>
      r_add2_4n1s1f2(5), b(4)=>r_add2_4n1s1f2(4), b(3)=>r_add2_4n1s1f2(3), 
      b(2)=>r_add2_4n1s1f2(2), b(1)=>r_add2_4n1s1f2(1), b(0)=>
      r_add2_4n1s1f2(0), d(12)=>r_add2_4n1s1(12), d(11)=>r_add2_4n1s1(11), 
      d(10)=>r_add2_4n1s1(10), d(9)=>r_add2_4n1s1(9), d(8)=>r_add2_4n1s1(8), 
      d(7)=>r_add2_4n1s1(7), d(6)=>r_add2_4n1s1(6), d(5)=>r_add2_4n1s1(5), 
      d(4)=>r_add2_4n1s1(4), d(3)=>r_add2_4n1s1(3), d(2)=>r_add2_4n1s1(2), 
      d(1)=>r_add2_4n1s1(1), d(0)=>r_add2_4n1s1(0), cout=>DANGLING(0,0));
   rtlc5n500 <= rtlcs41 AND rtlc5n265 ;
   rtlc5n501 <= reset OR rtlc5n500 ;
   rtlc5_205_gt_25 : gt_10u_10u port map ( a(9)=>r_add1_a(9), a(8)=>
      r_add1_a(8), a(7)=>r_add1_a(7), a(6)=>r_add1_a(6), a(5)=>r_add1_a(5), 
      a(4)=>r_add1_a(4), a(3)=>r_add1_a(3), a(2)=>r_add1_a(2), a(1)=>
      r_add1_a(1), a(0)=>r_add1_a(0), b(9)=>r_max1(9), b(8)=>r_max1(8), b(7)
      =>r_max1(7), b(6)=>r_max1(6), b(5)=>r_max1(5), b(4)=>r_max1(4), b(3)=>
      r_max1(3), b(2)=>r_max1(2), b(1)=>r_max1(1), b(0)=>r_max1(0), d=>
      not_rtlc5n523);
   rtlc5n523 <= NOT not_rtlc5n523 ;
   rtlc5_215_gt_26 : gt_10u_10u port map ( a(9)=>r_add1_a(9), a(8)=>
      r_add1_a(8), a(7)=>r_add1_a(7), a(6)=>r_add1_a(6), a(5)=>r_add1_a(5), 
      a(4)=>r_add1_a(4), a(3)=>r_add1_a(3), a(2)=>r_add1_a(2), a(1)=>
      r_add1_a(1), a(0)=>r_add1_a(0), b(9)=>r_add1_b(9), b(8)=>r_add1_b(8), 
      b(7)=>r_add1_b(7), b(6)=>r_add1_b(6), b(5)=>r_add1_b(5), b(4)=>
      r_add1_b(4), b(3)=>r_add1_b(3), b(2)=>r_add1_b(2), b(1)=>r_add1_b(1), 
      b(0)=>r_add1_b(0), d=>nx58);
   rtlc5n520 <= NOT nx58 ;
   rtlc5n279 <= rtlcs23 OR rtlcs19 ;
   rtlc5n264 <= not_rtlcn44 AND rtlc5n888 ;
   rtlc5n249 <= not_rtlcn42 AND rtlc5n725 ;
   rtlc5n265 <= rtlc5n249 OR rtlc5n264 ;
   rtlc5n225 <= rtlcs35 OR rtlcs6 ;
   rtlc5n637 <= stg_counter1(2) AND stg_counter1(1) ;
   rtlc5n724 <= stg_counter1(0) AND stg_counter1(1) ;
   rtlc5n725 <= rtlc5n724 OR rtlc5n723 ;
   rtlc5n800 <= stg_counter2(2) AND stg_counter2(1) ;
   rtlc5n887 <= stg_counter2(0) AND stg_counter2(1) ;
   rtlc5n888 <= rtlc5n887 OR rtlc5n886 ;
   rtlc6n151 <= rtlc6n150 AND not_reset ;
   rtlc6n150 <= r_sub0_6n1s1_14 AND rtlc5n225 ;
   rtlc7_9_or_28 : or_4u_4u port map ( a(3)=>rtlc7_PS7_n159, a(2)=>
      rtlc7_PS10_n174, a(1)=>rtlc7_PS12_n188, a(0)=>not_rtlcn45, d=>
      rtlc7n236);
   rtlc7_130_and_30 : and_4u_4u port map ( a(3)=>not_dir1_final_1, a(2)=>
      not_dir2_final_0, a(1)=>dir2_final(1), a(0)=>dir2_final(2), d=>
      rtlc7_PS10_n174);
   rtlc7_145_and_31 : and_4u_4u port map ( a(3)=>not_dir1_final_0, a(2)=>
      dir2_final(0), a(1)=>dir2_final(1), a(0)=>dir2_final(2), d=>
      rtlc7_PS7_n159);
   rtlc7n135 <= rtlcs29 OR rtlcs8 ;
   not_dir1_final_0 <= NOT dir1_final(0) ;
   not_dir1_final_1 <= NOT dir1_final(1) ;
   not_dir2_final_0 <= NOT dir2_final(0) ;
   not_dir2_final_2 <= NOT dir2_final(2) ;
   not_dir1_final_2 <= NOT dir1_final(2) ;
   not_dir2_final_1 <= NOT dir2_final(1) ;
   rtlc7n272 <= r_sub0_7 AND r_sub0_8 ;
   not_rtlcs47 <= NOT rtlcs47 ;
   rtlc8n290 <= not_i_valid OR not_rtlcs47 ;
   rtlc9n1268 <= rtlcs29 AND not_rtlcs39 ;
   rtlc9n1274 <= rtlc9n1268 AND not_rtlcs31 ;
   rtlc9n1273 <= rtlcs8 AND not_rtlcs20 ;
   rtlc9n1283 <= rtlc9n1273 AND rtlcs31 ;
   rtlc9n1382 <= reset OR rtlc9n1367 ;
   not_rtlcs39 <= NOT rtlcs39 ;
   rtlc9n1370 <= reset OR rtlc9n1364 ;
   rtlc9n991 <= rtlcs25 OR rtlcs14 ;
   rtlc9n966 <= rtlcs27 OR rtlcs16 ;
   not_rtlcs31 <= NOT rtlcs31 ;
   rtlc9n801 <= rtlcs39 AND rtlcs20 ;
   stg_counter1_inc4_9i1 : inc_4u_4u_0 port map ( cin=>PWR, a(3)=>
      stg_counter1(3), a(2)=>stg_counter1(2), a(1)=>stg_counter1(1), a(0)=>
      stg_counter1(0), d(3)=>stg_counter1_9n2s1(3), d(2)=>
      stg_counter1_9n2s1(2), d(1)=>stg_counter1_9n2s1(1), d(0)=>
      stg_counter1_9n2s1(0), cout=>DANGLING(0,1));
   stg_counter2_inc4_9i2 : inc_4u_4u_0 port map ( cin=>PWR, a(3)=>
      stg_counter2(3), a(2)=>stg_counter2(2), a(1)=>stg_counter2(1), a(0)=>
      stg_counter2(0), d(3)=>stg_counter2_9n4s1(3), d(2)=>
      stg_counter2_9n4s1(2), d(1)=>stg_counter2_9n4s1(1), d(0)=>
      stg_counter2_9n4s1(0), cout=>DANGLING(0,2));
   not_rtlc9n1660 <= NOT rtlc9n1660 ;
   rtlc9_1303_or_36 : or_7u_7u port map ( a(6)=>address(1), a(5)=>address(2), 
      a(4)=>address(3), a(3)=>address(4), a(2)=>address(5), a(1)=>address(6), 
      a(0)=>address(7), d=>rtlc9n1660);
   not_rtlc5n723 <= NOT rtlc5n723 ;
   not_rtlcn42 <= NOT rtlcn42 ;
   not_rtlc5n886 <= NOT rtlc5n886 ;
   not_rtlcn44 <= NOT rtlcn44 ;
   rtlc5n723 <= stg_counter1(3) OR stg_counter1(2) ;
   rtlc5n886 <= stg_counter2(3) OR stg_counter2(2) ;
   rtlc4n315 <= not_rtlc4n100 AND rtlc4n135 ;
   not_rtlcn45 <= NOT rtlcn45 ;
   rtlcn42 <= stg_counter1(3) OR rtlc5n637 ;
   rtlcn44 <= stg_counter2(3) OR rtlc5n800 ;
   rtlcn45 <= dir1_final(3) OR dir2_final(2) ;
   rtlcn47 <= not_dir2_final_0 AND dir2_final(1) ;
   rtlc7n235 <= rtlcn47 OR not_dir2_final_2 ;
   rtlcn49 <= not_dir2_final_1 AND dir2_final(2) ;
   rtlcn54 <= i_valid AND rtlcs47 ;
   d3_select_9i18Bus39_7 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(7), b(1)=>o_dataA(7), b(0)
      =>o_dataB(7), d=>d3_9n15ss1(7));
   c3_select_9i11Bus38_7 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(7), b(1)=>o_dataC(7), b(0)
      =>o_dataA(7), d=>c3_9n15ss1(7));
   c3_select_9i11Bus38_6 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(6), b(1)=>o_dataC(6), b(0)
      =>o_dataA(6), d=>c3_9n15ss1(6));
   c3_select_9i11Bus38_5 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(5), b(1)=>o_dataC(5), b(0)
      =>o_dataA(5), d=>c3_9n15ss1(5));
   c3_select_9i11Bus38_4 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(4), b(1)=>o_dataC(4), b(0)
      =>o_dataA(4), d=>c3_9n15ss1(4));
   c3_select_9i11Bus38_3 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(3), b(1)=>o_dataC(3), b(0)
      =>o_dataA(3), d=>c3_9n15ss1(3));
   c3_select_9i11Bus38_2 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(2), b(1)=>o_dataC(2), b(0)
      =>o_dataA(2), d=>c3_9n15ss1(2));
   c3_select_9i11Bus38_1 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(1), b(1)=>o_dataC(1), b(0)
      =>o_dataA(1), d=>c3_9n15ss1(1));
   c3_select_9i11Bus38_0 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataB(0), b(1)=>o_dataC(0), b(0)
      =>o_dataA(0), d=>c3_9n15ss1(0));
   d3_select_9i18Bus39_6 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(6), b(1)=>o_dataA(6), b(0)
      =>o_dataB(6), d=>d3_9n15ss1(6));
   d3_select_9i18Bus39_5 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(5), b(1)=>o_dataA(5), b(0)
      =>o_dataB(5), d=>d3_9n15ss1(5));
   d3_select_9i18Bus39_4 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(4), b(1)=>o_dataA(4), b(0)
      =>o_dataB(4), d=>d3_9n15ss1(4));
   d3_select_9i18Bus39_3 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(3), b(1)=>o_dataA(3), b(0)
      =>o_dataB(3), d=>d3_9n15ss1(3));
   d3_select_9i18Bus39_2 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(2), b(1)=>o_dataA(2), b(0)
      =>o_dataB(2), d=>d3_9n15ss1(2));
   d3_select_9i18Bus39_1 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(1), b(1)=>o_dataA(1), b(0)
      =>o_dataB(1), d=>d3_9n15ss1(1));
   d3_select_9i18Bus39_0 : select_3_3 port map ( a(2)=>rtlcn551, a(1)=>
      rtlcn557, a(0)=>not_rtlcn626, b(2)=>o_dataC(0), b(1)=>o_dataA(0), b(0)
      =>o_dataB(0), d=>d3_9n15ss1(0));
   not_rtlc9n801 <= NOT rtlc9n801 ;
   not_i_valid <= NOT i_valid ;
   not_rtlcn39 <= NOT rtlcn39 ;
   rtlcn440 <= rtlc7n135 AND rtlc7n273 ;
   rtlcn441 <= rtlc5n520 AND rtlc5n279 ;
   rtlcn446 <= i_valid AND rtlcs45 ;
   rtlcn583 <= rtlcs45 OR rtlcs46 ;
   rtlcn499 <= rtlc7n273 AND rtlc7n233 ;
   not_rtlcs42 <= NOT rtlcs42 ;
   rtlcn587 <= rtlc1n109 OR not_rtlcs42 ;
   not_rtlc5n279 <= NOT rtlc5n279 ;
   rtlcn514 <= rtlcn441 OR rtlcn597 ;
   not_rtlc7n235 <= NOT rtlc7n235 ;
   rtlcn539 <= rtlc7n273 AND not_rtlc7n235 ;
   not_rtlc7n236 <= NOT rtlc7n236 ;
   rtlcn545 <= rtlc7n273 AND not_rtlc7n236 ;
   rtlcn551 <= i_valid AND rtlcs44 ;
   rtlcn557 <= i_valid AND rtlcs43 ;
   not_rtlcn626 <= NOT rtlcn626 ;
   r_max0_1n2ss1(0) <= i_3(0) when not_rtlc1n250 = '1' else i_2(0) ;
   r_max0_1n2ss1(1) <= i_3(1) when not_rtlc1n250 = '1' else i_2(1) ;
   r_max0_1n2ss1(2) <= i_3(2) when not_rtlc1n250 = '1' else i_2(2) ;
   r_max0_1n2ss1(3) <= i_3(3) when not_rtlc1n250 = '1' else i_2(3) ;
   r_max0_1n2ss1(4) <= i_3(4) when not_rtlc1n250 = '1' else i_2(4) ;
   r_max0_1n2ss1(5) <= i_3(5) when not_rtlc1n250 = '1' else i_2(5) ;
   r_max0_1n2ss1(6) <= i_3(6) when not_rtlc1n250 = '1' else i_2(6) ;
   r_max0_1n2ss1(7) <= i_3(7) when not_rtlc1n250 = '1' else i_2(7) ;
   r_add2_4n1s1f1(8) <= r_add0_b(8) when rtlc4n100 = '1' else r_add2(8) ;
   r_add2_4n1s1f1(7) <= r_add0_b(7) when rtlc4n100 = '1' else r_add2(7) ;
   r_add2_4n1s1f1(6) <= r_add0_b(6) when rtlc4n100 = '1' else r_add2(6) ;
   r_add2_4n1s1f1(5) <= r_add0_b(5) when rtlc4n100 = '1' else r_add2(5) ;
   r_add2_4n1s1f1(4) <= r_add0_b(4) when rtlc4n100 = '1' else r_add2(4) ;
   r_add2_4n1s1f1(3) <= r_add0_b(3) when rtlc4n100 = '1' else r_add2(3) ;
   r_add2_4n1s1f1(2) <= r_add0_b(2) when rtlc4n100 = '1' else r_add2(2) ;
   r_add2_4n1s1f1(1) <= r_add0_b(1) when rtlc4n100 = '1' else r_add2(1) ;
   r_add2_4n1s1f1(0) <= r_add0_b(0) when rtlc4n100 = '1' else r_add2(0) ;
   a2_9n22ss1(0) <= c3_9n15ss1(0) when i_valid = '1' else c3(0) ;
   a2_9n22ss1(1) <= c3_9n15ss1(1) when i_valid = '1' else c3(1) ;
   a2_9n22ss1(2) <= c3_9n15ss1(2) when i_valid = '1' else c3(2) ;
   a2_9n22ss1(3) <= c3_9n15ss1(3) when i_valid = '1' else c3(3) ;
   a2_9n22ss1(4) <= c3_9n15ss1(4) when i_valid = '1' else c3(4) ;
   a2_9n22ss1(5) <= c3_9n15ss1(5) when i_valid = '1' else c3(5) ;
   a2_9n22ss1(6) <= c3_9n15ss1(6) when i_valid = '1' else c3(6) ;
   a2_9n22ss1(7) <= c3_9n15ss1(7) when i_valid = '1' else c3(7) ;
   h2_9n22ss1(0) <= d3_9n15ss1(0) when i_valid = '1' else d3(0) ;
   h2_9n22ss1(1) <= d3_9n15ss1(1) when i_valid = '1' else d3(1) ;
   h2_9n22ss1(2) <= d3_9n15ss1(2) when i_valid = '1' else d3(2) ;
   h2_9n22ss1(3) <= d3_9n15ss1(3) when i_valid = '1' else d3(3) ;
   h2_9n22ss1(4) <= d3_9n15ss1(4) when i_valid = '1' else d3(4) ;
   h2_9n22ss1(5) <= d3_9n15ss1(5) when i_valid = '1' else d3(5) ;
   h2_9n22ss1(6) <= d3_9n15ss1(6) when i_valid = '1' else d3(6) ;
   h2_9n22ss1(7) <= d3_9n15ss1(7) when i_valid = '1' else d3(7) ;
   f3_9n22ss1(0) <= i_pixel(0) when i_valid = '1' else e3(0) ;
   f3_9n22ss1(1) <= i_pixel(1) when i_valid = '1' else e3(1) ;
   f3_9n22ss1(2) <= i_pixel(2) when i_valid = '1' else e3(2) ;
   f3_9n22ss1(3) <= i_pixel(3) when i_valid = '1' else e3(3) ;
   f3_9n22ss1(4) <= i_pixel(4) when i_valid = '1' else e3(4) ;
   f3_9n22ss1(5) <= i_pixel(5) when i_valid = '1' else e3(5) ;
   f3_9n22ss1(6) <= i_pixel(6) when i_valid = '1' else e3(6) ;
   f3_9n22ss1(7) <= i_pixel(7) when i_valid = '1' else e3(7) ;
   rtlcn419 <= rtlcn40 when i_valid = '1' else rtlcn418 ;
   rtlcn420 <= not_rtlc9n1660 when i_valid = '1' else not_rtlcn686 ;
   r_add2_4n1s1f2(8) <= r_add2(7) when rtlc4n315 = '1' else r_add0_a(8) ;
   r_add2_4n1s1f2(7) <= r_add2(6) when rtlc4n315 = '1' else r_add0_a(7) ;
   r_add2_4n1s1f2(6) <= r_add2(5) when rtlc4n315 = '1' else r_add0_a(6) ;
   r_add2_4n1s1f2(5) <= r_add2(4) when rtlc4n315 = '1' else r_add0_a(5) ;
   r_add2_4n1s1f2(4) <= r_add2(3) when rtlc4n315 = '1' else r_add0_a(4) ;
   r_add2_4n1s1f2(3) <= r_add2(2) when rtlc4n315 = '1' else r_add0_a(3) ;
   r_add2_4n1s1f2(2) <= r_add2(1) when rtlc4n315 = '1' else r_add0_a(2) ;
   r_add2_4n1s1f2(1) <= r_add2(0) when rtlc4n315 = '1' else r_add0_a(1) ;
   rtlc9n1364 <= rtlc9n1268 when rtlcn427 = '1' else rtlc9n1274 ;
   rtlc9n1367 <= rtlc9n1283 when rtlcn434 = '1' else rtlc9n1273 ;
   r_max1_5n6ss1(9) <= r_add1_b(9) when rtlcn441 = '1' else r_add1_a(9) ;
   r_max1_5n6ss1(8) <= r_add1_b(8) when rtlcn441 = '1' else r_add1_a(8) ;
   r_max1_5n6ss1(7) <= r_add1_b(7) when rtlcn441 = '1' else r_add1_a(7) ;
   r_max1_5n6ss1(6) <= r_add1_b(6) when rtlcn441 = '1' else r_add1_a(6) ;
   r_max1_5n6ss1(5) <= r_add1_b(5) when rtlcn441 = '1' else r_add1_a(5) ;
   r_max1_5n6ss1(4) <= r_add1_b(4) when rtlcn441 = '1' else r_add1_a(4) ;
   r_max1_5n6ss1(3) <= r_add1_b(3) when rtlcn441 = '1' else r_add1_a(3) ;
   r_max1_5n6ss1(2) <= r_add1_b(2) when rtlcn441 = '1' else r_add1_a(2) ;
   r_max1_5n6ss1(1) <= r_add1_b(1) when rtlcn441 = '1' else r_add1_a(1) ;
   r_max1_5n6ss1(0) <= r_add1_b(0) when rtlcn441 = '1' else r_add1_a(0) ;
   not_reset <= NOT reset ;
   not_rtlc1n133 <= NOT rtlc1n133 ;
   rtlcn627 <= reset OR not_rtlc1n133 ;
   not_rtlcn627 <= NOT rtlcn627 ;
   rtlc1n256 <= not_reset AND rtlc1n109 ;
   rtlcn628 <= not_reset AND rtlc5n265 ;
   rtlcn630 <= not_rtlc5n523 OR rtlc5n279 ;
   rtlc5n548 <= rtlcn628 AND rtlcn630 ;
   rtlc5n538 <= not_reset AND rtlc5n225 ;
   rtlc7n258 <= not_reset AND rtlc7n135 ;
   rtlcn629 <= not_reset AND rtlcn39 ;
   not_rtlcn419 <= NOT rtlcn419 ;
   rtlc9n1575 <= not_rtlcn419 AND rtlcn629 ;
   not_rtlcn420 <= NOT rtlcn420 ;
   rtlc9n1535 <= not_rtlcn420 AND rtlcn629 ;
   rtlc9n1479 <= i_valid AND rtlcn629 ;
   not_rtlcs20 <= NOT rtlcs20 ;
   not_rtlc8n290 <= NOT rtlc8n290 ;
   rtlcn351 <= dir2_5n2s2(0) AND rtlcn628 ;
   rtlcn364 <= dir2_5n2s2(1) AND rtlcn628 ;
   rtlcn377 <= dir2_5n2s2(2) AND rtlcn628 ;
   rtlcn382 <= not_rtlcn627 AND dir1_1n2s2(1) ;
   rtlcn387 <= not_rtlcn627 AND dir1_1n2s2(3) ;
   rtlcn392 <= not_rtlcn627 AND dir1_1n2s2(0) ;
   rtlcn397 <= not_rtlcn627 AND dir1_1n2s2(2) ;
   rtlceq_s66_eq_62 : eq_10u_10u port map ( a(9)=>r_add1_a(9), a(8)=>
      r_add1_a(8), a(7)=>r_add1_a(7), a(6)=>r_add1_a(6), a(5)=>r_add1_a(5), 
      a(4)=>r_add1_a(4), a(3)=>r_add1_a(3), a(2)=>r_add1_a(2), a(1)=>
      r_add1_a(1), a(0)=>r_add1_a(0), b(9)=>r_max1(9), b(8)=>r_max1(8), b(7)
      =>r_max1(7), b(6)=>r_max1(6), b(5)=>r_max1(5), b(4)=>r_max1(4), b(3)=>
      r_max1(3), b(2)=>r_max1(2), b(1)=>r_max1(1), b(0)=>r_max1(0), d=>
      rtlcs42);
   rtlcs1 <= rtlcs2 AND rtlcs3 ;
   rtlcs4 <= rtlcs5 AND rtlcs3 ;
   rtlcs6 <= rtlcs11 AND rtlcs3 ;
   rtlcs8 <= rtlcs3 AND rtlc5n887 ;
   rtlcs10 <= rtlcs11 AND rtlcs12 ;
   rtlcs14 <= stg_counter2(0) AND rtlcs13 ;
   rtlcs16 <= not_stg_counter2_0 AND rtlcs13 ;
   rtlcs13 <= not_stg_counter2_1 AND rtlcs12 ;
   rtlcs19 <= rtlcs12 AND rtlc5n887 ;
   rtlcs20 <= rtlcs21 AND rtlc5n887 ;
   rtlcs25 <= stg_counter1(0) AND rtlcs24 ;
   rtlcs27 <= not_stg_counter1_0 AND rtlcs24 ;
   rtlcs29 <= not_stg_counter1_3 AND rtlcs31 ;
   rtlcs32 <= rtlcs33 AND rtlcs34 ;
   rtlcs35 <= rtlc5n637 AND rtlcs34 ;
   rtlcs37 <= rtlcs38 AND rtlcs34 ;
   rtlcs39 <= stg_counter1(3) AND rtlcs31 ;
   rtlc_1301_and_63 : and_8u_8u port map ( a(7)=>address(7), a(6)=>
      address(6), a(5)=>address(5), a(4)=>address(4), a(3)=>address(3), a(2)
      =>address(2), a(1)=>address(1), a(0)=>address(0), d=>rtlcs47);
   rtlc_1302_and_64 : and_8u_8u port map ( a(7)=>row_count(7), a(6)=>
      row_count(6), a(5)=>row_count(5), a(4)=>row_count(4), a(3)=>
      row_count(3), a(2)=>row_count(2), a(1)=>row_count(1), a(0)=>
      row_count(0), d=>rtlcs46);
   not_stg_counter1_3 <= NOT stg_counter1(3) ;
   rtlcs21 <= stg_counter2(2) AND stg_counter2(3) ;
   not_stg_counter2_3 <= NOT stg_counter2(3) ;
   rtlcs3 <= not_stg_counter2_3 AND stg_counter2(2) ;
   not_row_index_0 <= NOT row_index(0) ;
   rtlcs45 <= row_index(1) AND not_row_index_0 ;
   not_rtlcn583 <= NOT rtlcn583 ;
   next_row_index(0) <= not_row_index_0 AND not_rtlcn583 ;
   next_row_index(1) <= next_row_index_8n1s1(1) AND not_rtlcn583 ;
   not_row_index_1 <= NOT row_index(1) ;
   rtlcs43 <= not_row_index_1 AND row_index(0) ;
   rtlcs44 <= not_row_index_1 AND not_row_index_0 ;
   rtlcn626 <= rtlcn551 OR rtlcn557 ;
   not_stg_counter1_2 <= NOT stg_counter1(2) ;
   not_stg_counter1_1 <= NOT stg_counter1(1) ;
   not_stg_counter2_1 <= NOT stg_counter2(1) ;
   not_stg_counter2_2 <= NOT stg_counter2(2) ;
   rtlcs12 <= not_stg_counter2_3 AND not_stg_counter2_2 ;
   rtlcs38 <= not_stg_counter1_2 AND stg_counter1(1) ;
   not_stg_counter1_0 <= NOT stg_counter1(0) ;
   rtlcs34 <= not_stg_counter1_3 AND not_stg_counter1_0 ;
   not_stg_counter2_0 <= NOT stg_counter2(0) ;
   rtlcs11 <= not_stg_counter2_0 AND stg_counter2(1) ;
   not_rtlcn686 <= NOT rtlcn686 ;
   rtlc_1364_and_67 : and_4u_4u port map ( a(3)=>not_stg_counter1_3, a(2)=>
      not_stg_counter1_2, a(1)=>stg_counter1(1), a(0)=>stg_counter1(0), d=>
      rtlcs23);
   r_add2_4n1s1f1(9) <= r_add2(9) AND not_rtlc4n100 ;
   rtlc_1374_and_68 : and_4u_4u port map ( a(3)=>not_stg_counter1_3, a(2)=>
      stg_counter1(2), a(1)=>not_stg_counter1_1, a(0)=>stg_counter1(0), d=>
      rtlcs22);
   rtlcs5 <= not_stg_counter2_1 AND stg_counter2(0) ;
   r_add2_4n1s1f2(12) <= r_add2(11) AND rtlc4n315 ;
   r_add2_4n1s1f2(11) <= r_add2(10) AND rtlc4n315 ;
   r_add2_4n1s1f2(10) <= r_add2(9) AND rtlc4n315 ;
   r_add2_4n1s1f2(9) <= r_add2(8) AND rtlc4n315 ;
   not_rtlc4n315 <= NOT rtlc4n315 ;
   r_add2_4n1s1f2(0) <= r_add0_a(0) AND not_rtlc4n315 ;
   rtlcs0 <= max0_bit_counter(1) AND max0_bit_counter(0) ;
   rtlcs33 <= stg_counter1(2) AND not_stg_counter1_1 ;
   rtlcs2 <= not_stg_counter2_1 AND not_stg_counter2_0 ;
   not_max1_bit_counter_0 <= NOT max1_bit_counter(0) ;
   rtlcs41 <= max1_bit_counter(1) AND not_max1_bit_counter_0 ;
   rtlcn685 <= rtlc4n100 OR rtlc9n991 ;
   rtlcn686 <= rtlcn685 OR rtlc9n966 ;
   rtlcn2971 <= rtlc8n272 OR reset ;
   rtlcn2972 <= reset OR i_valid ;
   modgen_counter_row_count : 
      counter_up_cnt_en_sclear_clock_clk_en_0_8_cx7_kirsch port map ( clock
      =>clk, q(7)=>row_count(7), q(6)=>row_count(6), q(5)=>row_count(5), 
      q(4)=>row_count(4), q(3)=>row_count(3), q(2)=>row_count(2), q(1)=>
      row_count(1), q(0)=>row_count(0), clk_en=>rtlcn2972, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>
      DANGLING(0,5), data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)
      =>DANGLING(0,8), data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset
      =>GND, sclear=>rtlcn2971, updn=>PWR, cnt_en=>not_rtlc8n290);
   rtlcn2974 <= rtlcn54 OR reset ;
   modgen_counter_address : 
      counter_up_cnt_en_sclear_clock_clk_en_0_8_cx8_kirsch port map ( clock
      =>clk, q(7)=>address(7), q(6)=>address(6), q(5)=>address(5), q(4)=>
      address(4), q(3)=>address(3), q(2)=>address(2), q(1)=>address(1), q(0)
      =>address(0), clk_en=>rtlcn2972, aclear=>GND, sload=>GND, data(7)=>
      DANGLING(0,11), data(6)=>DANGLING(0,12), data(5)=>DANGLING(0,13), 
      data(4)=>DANGLING(0,14), data(3)=>DANGLING(0,15), data(2)=>
      DANGLING(0,16), data(1)=>DANGLING(0,17), data(0)=>DANGLING(0,18), aset
      =>GND, sclear=>rtlcn2974, updn=>PWR, cnt_en=>i_valid);
   r_add0_a_add8_0i1 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>i_0(7), 
      a(6)=>i_0(6), a(5)=>i_0(5), a(4)=>i_0(4), a(3)=>i_0(3), a(2)=>i_0(2), 
      a(1)=>i_0(1), a(0)=>i_0(0), b(7)=>i_1(7), b(6)=>i_1(6), b(5)=>i_1(5), 
      b(4)=>i_1(4), b(3)=>i_1(3), b(2)=>i_1(2), b(1)=>i_1(1), b(0)=>i_1(0), 
      d(7)=>r_add0_a_0n1s1(7), d(6)=>r_add0_a_0n1s1(6), d(5)=>
      r_add0_a_0n1s1(5), d(4)=>r_add0_a_0n1s1(4), d(3)=>r_add0_a_0n1s1(3), 
      d(2)=>r_add0_a_0n1s1(2), d(1)=>r_add0_a_0n1s1(1), d(0)=>
      r_add0_a_0n1s1(0), cout=>r_add0_a_0n1s1(8));
   r_add1_a_add9_3i1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)
      =>r_max0(7), a(6)=>r_max0(6), a(5)=>r_max0(5), a(4)=>r_max0(4), a(3)=>
      r_max0(3), a(2)=>r_max0(2), a(1)=>r_max0(1), a(0)=>r_max0(0), b(8)=>
      r_add0_a(8), b(7)=>r_add0_a(7), b(6)=>r_add0_a(6), b(5)=>r_add0_a(5), 
      b(4)=>r_add0_a(4), b(3)=>r_add0_a(3), b(2)=>r_add0_a(2), b(1)=>
      r_add0_a(1), b(0)=>r_add0_a(0), d(8)=>r_add1_a_3n1s1(8), d(7)=>
      r_add1_a_3n1s1(7), d(6)=>r_add1_a_3n1s1(6), d(5)=>r_add1_a_3n1s1(5), 
      d(4)=>r_add1_a_3n1s1(4), d(3)=>r_add1_a_3n1s1(3), d(2)=>
      r_add1_a_3n1s1(2), d(1)=>r_add1_a_3n1s1(1), d(0)=>r_add1_a_3n1s1(0), 
      cout=>r_add1_a_3n1s1(9));
   r_sub0_6n1s1_14 <= NOT rtlcn7580 ;
   DFFPCE (r_add0_a_0n1s1(8),GND,GND,not_reset,clk,r_add0_a(8)) ;
   DFFPCE (r_add0_a_0n1s1(7),GND,GND,not_reset,clk,r_add0_a(7)) ;
   DFFPCE (r_add0_a_0n1s1(6),GND,GND,not_reset,clk,r_add0_a(6)) ;
   DFFPCE (r_add0_a_0n1s1(5),GND,GND,not_reset,clk,r_add0_a(5)) ;
   DFFPCE (r_add0_a_0n1s1(4),GND,GND,not_reset,clk,r_add0_a(4)) ;
   DFFPCE (r_add0_a_0n1s1(3),GND,GND,not_reset,clk,r_add0_a(3)) ;
   DFFPCE (r_add0_a_0n1s1(2),GND,GND,not_reset,clk,r_add0_a(2)) ;
   DFFPCE (r_add0_a_0n1s1(1),GND,GND,not_reset,clk,r_add0_a(1)) ;
   DFFPCE (r_add0_a_0n1s1(0),GND,GND,not_reset,clk,r_add0_a(0)) ;
   DFFPCE (r_max0_1n2ss1(7),GND,GND,not_rtlcn627,clk,r_max0(7)) ;
   DFFPCE (r_max0_1n2ss1(6),GND,GND,not_rtlcn627,clk,r_max0(6)) ;
   DFFPCE (r_max0_1n2ss1(5),GND,GND,not_rtlcn627,clk,r_max0(5)) ;
   DFFPCE (r_max0_1n2ss1(4),GND,GND,not_rtlcn627,clk,r_max0(4)) ;
   DFFPCE (r_max0_1n2ss1(3),GND,GND,not_rtlcn627,clk,r_max0(3)) ;
   DFFPCE (r_max0_1n2ss1(2),GND,GND,not_rtlcn627,clk,r_max0(2)) ;
   DFFPCE (r_max0_1n2ss1(1),GND,GND,not_rtlcn627,clk,r_max0(1)) ;
   DFFPCE (r_max0_1n2ss1(0),GND,GND,not_rtlcn627,clk,r_max0(0)) ;
   DFFPCE (dir1(3),GND,GND,rtlc1n256,clk,dir1_final(3)) ;
   DFFPCE (dir1(2),GND,GND,rtlc1n256,clk,dir1_final(2)) ;
   DFFPCE (dir1(1),GND,GND,rtlc1n256,clk,dir1_final(1)) ;
   DFFPCE (dir1(0),GND,GND,rtlc1n256,clk,dir1_final(0)) ;
   DFFRSE (max0_bit_counter_1n3s1(1),GND,rtlc1n236,rtlc1n133,clk,
   max0_bit_counter(1)) ;
   DFFRSE (max0_bit_counter_1n3s1(0),GND,rtlc1n236,rtlc1n133,clk,
   max0_bit_counter(0)) ;
   DFFPCE (r_add0_a(8),GND,GND,not_reset,clk,r_add0_b(8)) ;
   DFFPCE (r_add0_a(7),GND,GND,not_reset,clk,r_add0_b(7)) ;
   DFFPCE (r_add0_a(6),GND,GND,not_reset,clk,r_add0_b(6)) ;
   DFFPCE (r_add0_a(5),GND,GND,not_reset,clk,r_add0_b(5)) ;
   DFFPCE (r_add0_a(4),GND,GND,not_reset,clk,r_add0_b(4)) ;
   DFFPCE (r_add0_a(3),GND,GND,not_reset,clk,r_add0_b(3)) ;
   DFFPCE (r_add0_a(2),GND,GND,not_reset,clk,r_add0_b(2)) ;
   DFFPCE (r_add0_a(1),GND,GND,not_reset,clk,r_add0_b(1)) ;
   DFFPCE (r_add0_a(0),GND,GND,not_reset,clk,r_add0_b(0)) ;
   DFFPCE (r_add1_a_3n1s1(9),GND,GND,not_reset,clk,r_add1_a(9)) ;
   DFFPCE (r_add1_a_3n1s1(8),GND,GND,not_reset,clk,r_add1_a(8)) ;
   DFFPCE (r_add1_a_3n1s1(7),GND,GND,not_reset,clk,r_add1_a(7)) ;
   DFFPCE (r_add1_a_3n1s1(6),GND,GND,not_reset,clk,r_add1_a(6)) ;
   DFFPCE (r_add1_a_3n1s1(5),GND,GND,not_reset,clk,r_add1_a(5)) ;
   DFFPCE (r_add1_a_3n1s1(4),GND,GND,not_reset,clk,r_add1_a(4)) ;
   DFFPCE (r_add1_a_3n1s1(3),GND,GND,not_reset,clk,r_add1_a(3)) ;
   DFFPCE (r_add1_a_3n1s1(2),GND,GND,not_reset,clk,r_add1_a(2)) ;
   DFFPCE (r_add1_a_3n1s1(1),GND,GND,not_reset,clk,r_add1_a(1)) ;
   DFFPCE (r_add1_a_3n1s1(0),GND,GND,not_reset,clk,r_add1_a(0)) ;
   DFFRSE (r_add2_4n1s1(12),GND,rtlc4n187,not_reset,clk,r_add2(12)) ;
   DFFRSE (r_add2_4n1s1(11),GND,rtlc4n187,not_reset,clk,r_add2(11)) ;
   DFFRSE (r_add2_4n1s1(10),GND,rtlc4n187,not_reset,clk,r_add2(10)) ;
   DFFPCE (r_add2_4n1s1(9),GND,GND,not_reset,clk,r_add2(9)) ;
   DFFPCE (r_add2_4n1s1(8),GND,GND,not_reset,clk,r_add2(8)) ;
   DFFPCE (r_add2_4n1s1(7),GND,GND,not_reset,clk,r_add2(7)) ;
   DFFPCE (r_add2_4n1s1(6),GND,GND,not_reset,clk,r_add2(6)) ;
   DFFPCE (r_add2_4n1s1(5),GND,GND,not_reset,clk,r_add2(5)) ;
   DFFPCE (r_add2_4n1s1(4),GND,GND,not_reset,clk,r_add2(4)) ;
   DFFPCE (r_add2_4n1s1(3),GND,GND,not_reset,clk,r_add2(3)) ;
   DFFPCE (r_add2_4n1s1(2),GND,GND,not_reset,clk,r_add2(2)) ;
   DFFPCE (r_add2_4n1s1(1),GND,GND,not_reset,clk,r_add2(1)) ;
   DFFPCE (r_add2_4n1s1(0),GND,GND,not_reset,clk,r_add2(0)) ;
   DFFPCE (r_max1_5n6ss1(9),GND,GND,rtlc5n548,clk,r_max1(9)) ;
   DFFPCE (r_max1_5n6ss1(8),GND,GND,rtlc5n548,clk,r_max1(8)) ;
   DFFPCE (r_max1_5n6ss1(7),GND,GND,rtlc5n548,clk,r_max1(7)) ;
   DFFPCE (r_max1_5n6ss1(6),GND,GND,rtlc5n548,clk,r_max1(6)) ;
   DFFPCE (r_max1_5n6ss1(5),GND,GND,rtlc5n548,clk,r_max1(5)) ;
   DFFPCE (r_max1_5n6ss1(4),GND,GND,rtlc5n548,clk,r_max1(4)) ;
   DFFPCE (r_max1_5n6ss1(3),GND,GND,rtlc5n548,clk,r_max1(3)) ;
   DFFPCE (r_max1_5n6ss1(2),GND,GND,rtlc5n548,clk,r_max1(2)) ;
   DFFPCE (r_max1_5n6ss1(1),GND,GND,rtlc5n548,clk,r_max1(1)) ;
   DFFPCE (r_max1_5n6ss1(0),GND,GND,rtlc5n548,clk,r_max1(0)) ;
   DFFPCE (dir2(2),GND,GND,rtlc5n538,clk,dir2_final(2)) ;
   DFFPCE (dir2(1),GND,GND,rtlc5n538,clk,dir2_final(1)) ;
   DFFPCE (dir2(0),GND,GND,rtlc5n538,clk,dir2_final(0)) ;
   DFFPCE (r_add1_a(9),GND,GND,not_reset,clk,r_add1_b(9)) ;
   DFFPCE (r_add1_a(8),GND,GND,not_reset,clk,r_add1_b(8)) ;
   DFFPCE (r_add1_a(7),GND,GND,not_reset,clk,r_add1_b(7)) ;
   DFFPCE (r_add1_a(6),GND,GND,not_reset,clk,r_add1_b(6)) ;
   DFFPCE (r_add1_a(5),GND,GND,not_reset,clk,r_add1_b(5)) ;
   DFFPCE (r_add1_a(4),GND,GND,not_reset,clk,r_add1_b(4)) ;
   DFFPCE (r_add1_a(3),GND,GND,not_reset,clk,r_add1_b(3)) ;
   DFFPCE (r_add1_a(2),GND,GND,not_reset,clk,r_add1_b(2)) ;
   DFFPCE (r_add1_a(1),GND,GND,not_reset,clk,r_add1_b(1)) ;
   DFFPCE (r_add1_a(0),GND,GND,not_reset,clk,r_add1_b(0)) ;
   DFFRSE (max1_bit_counter_5n7s1(1),GND,rtlc5n501,rtlc5n265,clk,
   max1_bit_counter(1)) ;
   DFFRSE (not_max1_bit_counter_0,GND,rtlc5n501,rtlc5n265,clk,
   max1_bit_counter(0)) ;
   DFFRSE (r_sub0_6n1s1_14,GND,rtlc6n151,rtlc5n538,clk,r_sub0_13) ;
   DFFRSE (r_sub0_6n1s1_12,GND,rtlc6n151,rtlc5n538,clk,r_sub0_12) ;
   DFFRSE (r_sub0_6n1s1_11,GND,rtlc6n151,rtlc5n538,clk,r_sub0_11) ;
   DFFRSE (r_sub0_6n1s1_10,GND,rtlc6n151,rtlc5n538,clk,r_sub0_10) ;
   DFFRSE (r_sub0_6n1s1_9,GND,rtlc6n151,rtlc5n538,clk,r_sub0_9) ;
   DFFRSE (r_sub0_6n1s1_8,GND,rtlc6n151,rtlc5n538,clk,r_sub0_8) ;
   DFFRSE (r_sub0_6n1s1_7,GND,rtlc6n151,rtlc5n538,clk,r_sub0_7) ;
   DFFPCE (row_count(7),GND,GND,rtlc7n258,clk,o_row(7)) ;
   DFFPCE (row_count(6),GND,GND,rtlc7n258,clk,o_row(6)) ;
   DFFPCE (row_count(5),GND,GND,rtlc7n258,clk,o_row(5)) ;
   DFFPCE (row_count(4),GND,GND,rtlc7n258,clk,o_row(4)) ;
   DFFPCE (row_count(3),GND,GND,rtlc7n258,clk,o_row(3)) ;
   DFFPCE (row_count(2),GND,GND,rtlc7n258,clk,o_row(2)) ;
   DFFPCE (row_count(1),GND,GND,rtlc7n258,clk,o_row(1)) ;
   DFFPCE (row_count(0),GND,GND,rtlc7n258,clk,o_row(0)) ;
   DFFPCE (rtlc7n135,GND,GND,not_reset,clk,o_valid) ;
   DFFPCE (rtlcn545,GND,GND,rtlc7n258,clk,o_dir(2)) ;
   DFFPCE (rtlcn539,GND,GND,rtlc7n258,clk,o_dir(1)) ;
   DFFPCE (rtlcn499,GND,GND,rtlc7n258,clk,o_dir(0)) ;
   DFFPCE (rtlcn440,GND,GND,not_reset,clk,o_edge) ;
   DFFPCE (f3_9n22ss1(7),GND,GND,rtlc9n1575,clk,g2(7)) ;
   DFFPCE (f3_9n22ss1(6),GND,GND,rtlc9n1575,clk,g2(6)) ;
   DFFPCE (f3_9n22ss1(5),GND,GND,rtlc9n1575,clk,g2(5)) ;
   DFFPCE (f3_9n22ss1(4),GND,GND,rtlc9n1575,clk,g2(4)) ;
   DFFPCE (f3_9n22ss1(3),GND,GND,rtlc9n1575,clk,g2(3)) ;
   DFFPCE (f3_9n22ss1(2),GND,GND,rtlc9n1575,clk,g2(2)) ;
   DFFPCE (f3_9n22ss1(1),GND,GND,rtlc9n1575,clk,g2(1)) ;
   DFFPCE (f3_9n22ss1(0),GND,GND,rtlc9n1575,clk,g2(0)) ;
   DFFPCE (g2(7),GND,GND,rtlc9n1575,clk,g3(7)) ;
   DFFPCE (g2(6),GND,GND,rtlc9n1575,clk,g3(6)) ;
   DFFPCE (g2(5),GND,GND,rtlc9n1575,clk,g3(5)) ;
   DFFPCE (g2(4),GND,GND,rtlc9n1575,clk,g3(4)) ;
   DFFPCE (g2(3),GND,GND,rtlc9n1575,clk,g3(3)) ;
   DFFPCE (g2(2),GND,GND,rtlc9n1575,clk,g3(2)) ;
   DFFPCE (g2(1),GND,GND,rtlc9n1575,clk,g3(1)) ;
   DFFPCE (g2(0),GND,GND,rtlc9n1575,clk,g3(0)) ;
   DFFPCE (h2(7),GND,GND,rtlc9n1575,clk,h3(7)) ;
   DFFPCE (h2(6),GND,GND,rtlc9n1575,clk,h3(6)) ;
   DFFPCE (h2(5),GND,GND,rtlc9n1575,clk,h3(5)) ;
   DFFPCE (h2(4),GND,GND,rtlc9n1575,clk,h3(4)) ;
   DFFPCE (h2(3),GND,GND,rtlc9n1575,clk,h3(3)) ;
   DFFPCE (h2(2),GND,GND,rtlc9n1575,clk,h3(2)) ;
   DFFPCE (h2(1),GND,GND,rtlc9n1575,clk,h3(1)) ;
   DFFPCE (h2(0),GND,GND,rtlc9n1575,clk,h3(0)) ;
   DFFPCE (a2(7),GND,GND,rtlc9n1575,clk,a3(7)) ;
   DFFPCE (a2(6),GND,GND,rtlc9n1575,clk,a3(6)) ;
   DFFPCE (a2(5),GND,GND,rtlc9n1575,clk,a3(5)) ;
   DFFPCE (a2(4),GND,GND,rtlc9n1575,clk,a3(4)) ;
   DFFPCE (a2(3),GND,GND,rtlc9n1575,clk,a3(3)) ;
   DFFPCE (a2(2),GND,GND,rtlc9n1575,clk,a3(2)) ;
   DFFPCE (a2(1),GND,GND,rtlc9n1575,clk,a3(1)) ;
   DFFPCE (a2(0),GND,GND,rtlc9n1575,clk,a3(0)) ;
   DFFPCE (i_3_9n22ss1(7),GND,GND,rtlc9n1535,clk,i_3(7)) ;
   DFFPCE (i_3_9n22ss1(6),GND,GND,rtlc9n1535,clk,i_3(6)) ;
   DFFPCE (i_3_9n22ss1(5),GND,GND,rtlc9n1535,clk,i_3(5)) ;
   DFFPCE (i_3_9n22ss1(4),GND,GND,rtlc9n1535,clk,i_3(4)) ;
   DFFPCE (i_3_9n22ss1(3),GND,GND,rtlc9n1535,clk,i_3(3)) ;
   DFFPCE (i_3_9n22ss1(2),GND,GND,rtlc9n1535,clk,i_3(2)) ;
   DFFPCE (i_3_9n22ss1(1),GND,GND,rtlc9n1535,clk,i_3(1)) ;
   DFFPCE (i_3_9n22ss1(0),GND,GND,rtlc9n1535,clk,i_3(0)) ;
   DFFPCE (i_2_9n22ss1(7),GND,GND,rtlc9n1535,clk,i_2(7)) ;
   DFFPCE (i_2_9n22ss1(6),GND,GND,rtlc9n1535,clk,i_2(6)) ;
   DFFPCE (i_2_9n22ss1(5),GND,GND,rtlc9n1535,clk,i_2(5)) ;
   DFFPCE (i_2_9n22ss1(4),GND,GND,rtlc9n1535,clk,i_2(4)) ;
   DFFPCE (i_2_9n22ss1(3),GND,GND,rtlc9n1535,clk,i_2(3)) ;
   DFFPCE (i_2_9n22ss1(2),GND,GND,rtlc9n1535,clk,i_2(2)) ;
   DFFPCE (i_2_9n22ss1(1),GND,GND,rtlc9n1535,clk,i_2(1)) ;
   DFFPCE (i_2_9n22ss1(0),GND,GND,rtlc9n1535,clk,i_2(0)) ;
   DFFPCE (i_1_9n22ss1(7),GND,GND,rtlc9n1535,clk,i_1(7)) ;
   DFFPCE (i_1_9n22ss1(6),GND,GND,rtlc9n1535,clk,i_1(6)) ;
   DFFPCE (i_1_9n22ss1(5),GND,GND,rtlc9n1535,clk,i_1(5)) ;
   DFFPCE (i_1_9n22ss1(4),GND,GND,rtlc9n1535,clk,i_1(4)) ;
   DFFPCE (i_1_9n22ss1(3),GND,GND,rtlc9n1535,clk,i_1(3)) ;
   DFFPCE (i_1_9n22ss1(2),GND,GND,rtlc9n1535,clk,i_1(2)) ;
   DFFPCE (i_1_9n22ss1(1),GND,GND,rtlc9n1535,clk,i_1(1)) ;
   DFFPCE (i_1_9n22ss1(0),GND,GND,rtlc9n1535,clk,i_1(0)) ;
   DFFPCE (i_0_9n22ss1(7),GND,GND,rtlc9n1535,clk,i_0(7)) ;
   DFFPCE (i_0_9n22ss1(6),GND,GND,rtlc9n1535,clk,i_0(6)) ;
   DFFPCE (i_0_9n22ss1(5),GND,GND,rtlc9n1535,clk,i_0(5)) ;
   DFFPCE (i_0_9n22ss1(4),GND,GND,rtlc9n1535,clk,i_0(4)) ;
   DFFPCE (i_0_9n22ss1(3),GND,GND,rtlc9n1535,clk,i_0(3)) ;
   DFFPCE (i_0_9n22ss1(2),GND,GND,rtlc9n1535,clk,i_0(2)) ;
   DFFPCE (i_0_9n22ss1(1),GND,GND,rtlc9n1535,clk,i_0(1)) ;
   DFFPCE (i_0_9n22ss1(0),GND,GND,rtlc9n1535,clk,i_0(0)) ;
   DFFPCE (h2_9n22ss1(7),GND,GND,rtlc9n1575,clk,h2(7)) ;
   DFFPCE (h2_9n22ss1(6),GND,GND,rtlc9n1575,clk,h2(6)) ;
   DFFPCE (h2_9n22ss1(5),GND,GND,rtlc9n1575,clk,h2(5)) ;
   DFFPCE (h2_9n22ss1(4),GND,GND,rtlc9n1575,clk,h2(4)) ;
   DFFPCE (h2_9n22ss1(3),GND,GND,rtlc9n1575,clk,h2(3)) ;
   DFFPCE (h2_9n22ss1(2),GND,GND,rtlc9n1575,clk,h2(2)) ;
   DFFPCE (h2_9n22ss1(1),GND,GND,rtlc9n1575,clk,h2(1)) ;
   DFFPCE (h2_9n22ss1(0),GND,GND,rtlc9n1575,clk,h2(0)) ;
   DFFPCE (a2_9n22ss1(7),GND,GND,rtlc9n1575,clk,a2(7)) ;
   DFFPCE (a2_9n22ss1(6),GND,GND,rtlc9n1575,clk,a2(6)) ;
   DFFPCE (a2_9n22ss1(5),GND,GND,rtlc9n1575,clk,a2(5)) ;
   DFFPCE (a2_9n22ss1(4),GND,GND,rtlc9n1575,clk,a2(4)) ;
   DFFPCE (a2_9n22ss1(3),GND,GND,rtlc9n1575,clk,a2(3)) ;
   DFFPCE (a2_9n22ss1(2),GND,GND,rtlc9n1575,clk,a2(2)) ;
   DFFPCE (a2_9n22ss1(1),GND,GND,rtlc9n1575,clk,a2(1)) ;
   DFFPCE (a2_9n22ss1(0),GND,GND,rtlc9n1575,clk,a2(0)) ;
   DFFPCE (d3_9n15ss1(7),GND,GND,rtlc9n1479,clk,d3(7)) ;
   DFFPCE (d3_9n15ss1(6),GND,GND,rtlc9n1479,clk,d3(6)) ;
   DFFPCE (d3_9n15ss1(5),GND,GND,rtlc9n1479,clk,d3(5)) ;
   DFFPCE (d3_9n15ss1(4),GND,GND,rtlc9n1479,clk,d3(4)) ;
   DFFPCE (d3_9n15ss1(3),GND,GND,rtlc9n1479,clk,d3(3)) ;
   DFFPCE (d3_9n15ss1(2),GND,GND,rtlc9n1479,clk,d3(2)) ;
   DFFPCE (d3_9n15ss1(1),GND,GND,rtlc9n1479,clk,d3(1)) ;
   DFFPCE (d3_9n15ss1(0),GND,GND,rtlc9n1479,clk,d3(0)) ;
   DFFPCE (c3_9n15ss1(7),GND,GND,rtlc9n1479,clk,c3(7)) ;
   DFFPCE (c3_9n15ss1(6),GND,GND,rtlc9n1479,clk,c3(6)) ;
   DFFPCE (c3_9n15ss1(5),GND,GND,rtlc9n1479,clk,c3(5)) ;
   DFFPCE (c3_9n15ss1(4),GND,GND,rtlc9n1479,clk,c3(4)) ;
   DFFPCE (c3_9n15ss1(3),GND,GND,rtlc9n1479,clk,c3(3)) ;
   DFFPCE (c3_9n15ss1(2),GND,GND,rtlc9n1479,clk,c3(2)) ;
   DFFPCE (c3_9n15ss1(1),GND,GND,rtlc9n1479,clk,c3(1)) ;
   DFFPCE (c3_9n15ss1(0),GND,GND,rtlc9n1479,clk,c3(0)) ;
   DFFPCE (i_pixel(7),GND,GND,rtlc9n1479,clk,e3(7)) ;
   DFFPCE (i_pixel(6),GND,GND,rtlc9n1479,clk,e3(6)) ;
   DFFPCE (i_pixel(5),GND,GND,rtlc9n1479,clk,e3(5)) ;
   DFFPCE (i_pixel(4),GND,GND,rtlc9n1479,clk,e3(4)) ;
   DFFPCE (i_pixel(3),GND,GND,rtlc9n1479,clk,e3(3)) ;
   DFFPCE (i_pixel(2),GND,GND,rtlc9n1479,clk,e3(2)) ;
   DFFPCE (i_pixel(1),GND,GND,rtlc9n1479,clk,e3(1)) ;
   DFFPCE (i_pixel(0),GND,GND,rtlc9n1479,clk,e3(0)) ;
   DFFRSE (stg_counter2_9n4s1(3),rtlc9n1382,rtlc9n1383,not_rtlcs20,clk,
   stg_counter2(3)) ;
   DFFRSE (stg_counter2_9n4s1(2),rtlc9n1382,rtlc9n1383,not_rtlcs20,clk,
   stg_counter2(2)) ;
   DFFRSE (stg_counter2_9n4s1(1),rtlc9n1382,rtlc9n1383,not_rtlcs20,clk,
   stg_counter2(1)) ;
   DFFRSE (stg_counter2_9n4s1(0),rtlc9n1382,rtlc9n1383,not_rtlcs20,clk,
   stg_counter2(0)) ;
   DFFRSE (stg_counter1_9n2s1(3),rtlc9n1370,rtlc9n1371,not_rtlcs39,clk,
   stg_counter1(3)) ;
   DFFRSE (stg_counter1_9n2s1(2),rtlc9n1370,rtlc9n1371,not_rtlcs39,clk,
   stg_counter1(2)) ;
   DFFRSE (stg_counter1_9n2s1(1),rtlc9n1370,rtlc9n1371,not_rtlcs39,clk,
   stg_counter1(1)) ;
   DFFRSE (stg_counter1_9n2s1(0),rtlc9n1370,rtlc9n1371,not_rtlcs39,clk,
   stg_counter1(0)) ;
   DFFRSE (PWR,GND,reset,PWR,clk,o_mode(1)) ;
   DFFRSE (not_rtlc9n801,reset,GND,PWR,clk,o_mode(0)) ;
   DFFRSE (next_row_index(0),GND,reset,not_rtlc8n290,clk,row_index(0)) ;
   DFFRSE (next_row_index(1),GND,reset,not_rtlc8n290,clk,row_index(1)) ;
   DFFPCE (rtlcn514,GND,GND,rtlcn351,clk,dir2(0)) ;
   DFFPCE (rtlcn514,GND,GND,rtlcn364,clk,dir2(1)) ;
   DFFPCE (rtlcn514,GND,GND,rtlcn377,clk,dir2(2)) ;
   DFFPCE (not_rtlc1n250,GND,GND,rtlcn382,clk,dir1(1)) ;
   DFFPCE (not_rtlc1n250,GND,GND,rtlcn387,clk,dir1(3)) ;
   DFFPCE (not_rtlc1n250,GND,GND,rtlcn392,clk,dir1(0)) ;
   DFFPCE (not_rtlc1n250,GND,GND,rtlcn397,clk,dir1(2)) ;
   dir1_dec_1i1_nx4 <= max0_bit_counter(0) OR max0_bit_counter(1) ;
   dir1_1n2s2(0) <= NOT dir1_dec_1i1_nx4 ;
   dir1_dec_1i1_dup_0_nx4 <= max0_bit_counter_1n3s1(0) OR 
   max0_bit_counter(1) ;
   dir1_1n2s2(1) <= NOT dir1_dec_1i1_dup_0_nx4 ;
   max0_bit_counter_1n3s1(0) <= NOT max0_bit_counter(0) ;
   dir1_dec_1i1_dup_1_nx4 <= max0_bit_counter(0) OR NOT_max0_bit_counter_1 ;
   dir1_1n2s2(2) <= NOT dir1_dec_1i1_dup_1_nx4 ;
   NOT_max0_bit_counter_1 <= NOT max0_bit_counter(1) ;
   dir1_dec_1i1_dup_2_nx4 <= max0_bit_counter_1n3s1(0) OR 
   NOT_max0_bit_counter_1 ;
   dir1_1n2s2(3) <= NOT dir1_dec_1i1_dup_2_nx4 ;
   max0_bit_counter_1n3s1(1) <= max0_bit_counter(1) XOR max0_bit_counter(0)
    ;
   dir2_dec_5i1_nx4 <= max1_bit_counter(0) OR max1_bit_counter(1) ;
   dir2_5n2s2(0) <= NOT dir2_dec_5i1_nx4 ;
   dir2_dec_5i1_dup_0_nx4 <= not_max1_bit_counter_0 OR max1_bit_counter(1) ;
   dir2_5n2s2(1) <= NOT dir2_dec_5i1_dup_0_nx4 ;
   dir2_dec_5i1_dup_1_nx4 <= max1_bit_counter(0) OR NOT_max1_bit_counter_1 ;
   dir2_5n2s2(2) <= NOT dir2_dec_5i1_dup_1_nx4 ;
   NOT_max1_bit_counter_1 <= NOT max1_bit_counter(1) ;
   max1_bit_counter_5n7s1(1) <= max1_bit_counter(1) XOR max1_bit_counter(0)
    ;
   rtlc7_116_and_29_nx0 <= not_dir1_final_2 AND not_dir2_final_1 ;
   rtlc7_PS12_n188 <= rtlc7_116_and_29_nx0 AND dir2_final(2) ;
   next_row_index_8n1s1(1) <= row_index(1) XOR row_index(0) ;
   rtlc8n272 <= rtlcn54 AND rtlcs46 ;
   rtlc_127_and_40_nx0 <= dir1_final(1) AND not_dir2_final_0 ;
   rtlcn50 <= rtlc_127_and_40_nx0 AND dir2_final(2) ;
   rtlc_129_or_41_nx0 <= not_rtlcn45 OR rtlcn49 ;
   rtlc7n233 <= rtlc_129_or_41_nx0 OR rtlcn50 ;
   rtlc_674_or_58_nx0 <= not_rtlc4n100 OR rtlcs13 ;
   rtlcn418 <= rtlc_674_or_58_nx0 OR rtlcs24 ;
   rtlc_866_or_59_nx0 <= not_rtlc9n1660 OR not_i_valid ;
   rtlcn427 <= rtlc_866_or_59_nx0 OR not_rtlcn39 ;
   rtlc_867_and_60_nx0 <= i_valid AND rtlc9n1660 ;
   rtlcn434 <= rtlc_867_and_60_nx0 AND rtlcn39 ;
   rtlc_878_and_61_nx0 <= not_rtlc5n279 AND rtlc5n523 ;
   rtlcn597 <= rtlc_878_and_61_nx0 AND rtlcn587 ;
   rtlcs31 <= rtlc5n637 AND stg_counter1(0) ;
   rtlc_1330_and_66_nx0 <= not_stg_counter1_3 AND not_stg_counter1_2 ;
   rtlcs24 <= rtlc_1330_and_66_nx0 AND not_stg_counter1_1 ;
   NOT_r_add2_0 <= NOT r_add2(0) ;
   r_sub0_sub13_6i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_r_add2_0, a(11)
      =>r_max1(9), a(10)=>r_max1(8), a(9)=>r_max1(7), a(8)=>r_max1(6), a(7)
      =>r_max1(5), a(6)=>r_max1(4), a(5)=>r_max1(3), a(4)=>r_max1(2), a(3)=>
      r_max1(1), a(2)=>r_max1(0), a(1)=>GND, a(0)=>GND, b(11)=>r_add2(12), 
      b(10)=>r_add2(11), b(9)=>r_add2(10), b(8)=>r_add2(9), b(7)=>r_add2(8), 
      b(6)=>r_add2(7), b(5)=>r_add2(6), b(4)=>r_add2(5), b(3)=>r_add2(4), 
      b(2)=>r_add2(3), b(1)=>r_add2(2), b(0)=>r_add2(1), d(11)=>
      r_sub0_6n1s1_12, d(10)=>r_sub0_6n1s1_11, d(9)=>r_sub0_6n1s1_10, d(8)=>
      r_sub0_6n1s1_9, d(7)=>r_sub0_6n1s1_8, d(6)=>r_sub0_6n1s1_7, d(5)=>
      DANGLING(0,19), d(4)=>DANGLING(0,20), d(3)=>DANGLING(0,21), d(2)=>
      DANGLING(0,22), d(1)=>DANGLING(0,23), d(0)=>DANGLING(0,24), cout=>
      rtlcn7580);
   i_0_9n22ss1(0) <= a2(0) when i_valid = '1' else nx140 ;
   nx140 <= d3(0) when rtlc9n966 = '1' else nx143 ;
   nx143 <= g2(0) when rtlc9n991 = '1' else h3(0) ;
   i_0_9n22ss1(1) <= a2(1) when i_valid = '1' else nx151 ;
   nx151 <= d3(1) when rtlc9n966 = '1' else nx155 ;
   nx155 <= g2(1) when rtlc9n991 = '1' else h3(1) ;
   i_0_9n22ss1(2) <= a2(2) when i_valid = '1' else nx161 ;
   nx161 <= d3(2) when rtlc9n966 = '1' else nx164 ;
   nx164 <= g2(2) when rtlc9n991 = '1' else h3(2) ;
   i_0_9n22ss1(3) <= a2(3) when i_valid = '1' else nx170 ;
   nx170 <= d3(3) when rtlc9n966 = '1' else nx174 ;
   nx174 <= g2(3) when rtlc9n991 = '1' else h3(3) ;
   i_0_9n22ss1(4) <= a2(4) when i_valid = '1' else nx182 ;
   nx182 <= d3(4) when rtlc9n966 = '1' else nx186 ;
   nx186 <= g2(4) when rtlc9n991 = '1' else h3(4) ;
   i_0_9n22ss1(5) <= a2(5) when i_valid = '1' else nx194 ;
   nx194 <= d3(5) when rtlc9n966 = '1' else nx197 ;
   nx197 <= g2(5) when rtlc9n991 = '1' else h3(5) ;
   i_0_9n22ss1(6) <= a2(6) when i_valid = '1' else nx204 ;
   nx204 <= d3(6) when rtlc9n966 = '1' else nx207 ;
   nx207 <= g2(6) when rtlc9n991 = '1' else h3(6) ;
   i_0_9n22ss1(7) <= a2(7) when i_valid = '1' else nx213 ;
   nx213 <= d3(7) when rtlc9n966 = '1' else nx216 ;
   nx216 <= g2(7) when rtlc9n991 = '1' else h3(7) ;
   i_1_9n22ss1(0) <= c3_9n15ss1(0) when i_valid = '1' else nx222 ;
   nx222 <= e3(0) when rtlc9n966 = '1' else nx226 ;
   nx226 <= g3(0) when rtlc9n991 = '1' else a3(0) ;
   i_1_9n22ss1(1) <= c3_9n15ss1(1) when i_valid = '1' else nx234 ;
   nx234 <= e3(1) when rtlc9n966 = '1' else nx238 ;
   nx238 <= g3(1) when rtlc9n991 = '1' else a3(1) ;
   i_1_9n22ss1(2) <= c3_9n15ss1(2) when i_valid = '1' else nx246 ;
   nx246 <= e3(2) when rtlc9n966 = '1' else nx250 ;
   nx250 <= g3(2) when rtlc9n991 = '1' else a3(2) ;
   i_1_9n22ss1(3) <= c3_9n15ss1(3) when i_valid = '1' else nx257 ;
   nx257 <= e3(3) when rtlc9n966 = '1' else nx261 ;
   nx261 <= g3(3) when rtlc9n991 = '1' else a3(3) ;
   i_1_9n22ss1(4) <= c3_9n15ss1(4) when i_valid = '1' else nx269 ;
   nx269 <= e3(4) when rtlc9n966 = '1' else nx272 ;
   nx272 <= g3(4) when rtlc9n991 = '1' else a3(4) ;
   i_1_9n22ss1(5) <= c3_9n15ss1(5) when i_valid = '1' else nx278 ;
   nx278 <= e3(5) when rtlc9n966 = '1' else nx281 ;
   nx281 <= g3(5) when rtlc9n991 = '1' else a3(5) ;
   i_1_9n22ss1(6) <= c3_9n15ss1(6) when i_valid = '1' else nx287 ;
   nx287 <= e3(6) when rtlc9n966 = '1' else nx290 ;
   nx290 <= g3(6) when rtlc9n991 = '1' else a3(6) ;
   i_1_9n22ss1(7) <= c3_9n15ss1(7) when i_valid = '1' else nx296 ;
   nx296 <= e3(7) when rtlc9n966 = '1' else nx299 ;
   nx299 <= g3(7) when rtlc9n991 = '1' else a3(7) ;
   i_2_9n22ss1(0) <= a3(0) when i_valid = '1' else nx305 ;
   nx305 <= c3(0) when rtlc9n966 = '1' else nx308 ;
   nx308 <= e3(0) when rtlc9n991 = '1' else g3(0) ;
   i_2_9n22ss1(1) <= a3(1) when i_valid = '1' else nx314 ;
   nx314 <= c3(1) when rtlc9n966 = '1' else nx317 ;
   nx317 <= e3(1) when rtlc9n991 = '1' else g3(1) ;
   i_2_9n22ss1(2) <= a3(2) when i_valid = '1' else nx323 ;
   nx323 <= c3(2) when rtlc9n966 = '1' else nx326 ;
   nx326 <= e3(2) when rtlc9n991 = '1' else g3(2) ;
   i_2_9n22ss1(3) <= a3(3) when i_valid = '1' else nx332 ;
   nx332 <= c3(3) when rtlc9n966 = '1' else nx335 ;
   nx335 <= e3(3) when rtlc9n991 = '1' else g3(3) ;
   i_2_9n22ss1(4) <= a3(4) when i_valid = '1' else nx341 ;
   nx341 <= c3(4) when rtlc9n966 = '1' else nx344 ;
   nx344 <= e3(4) when rtlc9n991 = '1' else g3(4) ;
   i_2_9n22ss1(5) <= a3(5) when i_valid = '1' else nx350 ;
   nx350 <= c3(5) when rtlc9n966 = '1' else nx353 ;
   nx353 <= e3(5) when rtlc9n991 = '1' else g3(5) ;
   i_2_9n22ss1(6) <= a3(6) when i_valid = '1' else nx359 ;
   nx359 <= c3(6) when rtlc9n966 = '1' else nx362 ;
   nx362 <= e3(6) when rtlc9n991 = '1' else g3(6) ;
   i_2_9n22ss1(7) <= a3(7) when i_valid = '1' else nx368 ;
   nx368 <= c3(7) when rtlc9n966 = '1' else nx371 ;
   nx371 <= e3(7) when rtlc9n991 = '1' else g3(7) ;
   i_3_9n22ss1(0) <= d3_9n15ss1(0) when i_valid = '1' else nx377 ;
   nx377 <= g2(0) when rtlc9n966 = '1' else nx380 ;
   nx380 <= h3(0) when rtlc9n991 = '1' else a2(0) ;
   i_3_9n22ss1(1) <= d3_9n15ss1(1) when i_valid = '1' else nx386 ;
   nx386 <= g2(1) when rtlc9n966 = '1' else nx389 ;
   nx389 <= h3(1) when rtlc9n991 = '1' else a2(1) ;
   i_3_9n22ss1(2) <= d3_9n15ss1(2) when i_valid = '1' else nx395 ;
   nx395 <= g2(2) when rtlc9n966 = '1' else nx398 ;
   nx398 <= h3(2) when rtlc9n991 = '1' else a2(2) ;
   i_3_9n22ss1(3) <= d3_9n15ss1(3) when i_valid = '1' else nx404 ;
   nx404 <= g2(3) when rtlc9n966 = '1' else nx407 ;
   nx407 <= h3(3) when rtlc9n991 = '1' else a2(3) ;
   i_3_9n22ss1(4) <= d3_9n15ss1(4) when i_valid = '1' else nx413 ;
   nx413 <= g2(4) when rtlc9n966 = '1' else nx416 ;
   nx416 <= h3(4) when rtlc9n991 = '1' else a2(4) ;
   i_3_9n22ss1(5) <= d3_9n15ss1(5) when i_valid = '1' else nx422 ;
   nx422 <= g2(5) when rtlc9n966 = '1' else nx425 ;
   nx425 <= h3(5) when rtlc9n991 = '1' else a2(5) ;
   i_3_9n22ss1(6) <= d3_9n15ss1(6) when i_valid = '1' else nx431 ;
   nx431 <= g2(6) when rtlc9n966 = '1' else nx434 ;
   nx434 <= h3(6) when rtlc9n991 = '1' else a2(6) ;
   i_3_9n22ss1(7) <= d3_9n15ss1(7) when i_valid = '1' else nx440 ;
   nx440 <= g2(7) when rtlc9n966 = '1' else nx443 ;
   nx443 <= h3(7) when rtlc9n991 = '1' else a2(7) ;
   modgen_and_33 : and_5u_5u port map ( a(4)=>rtlcs31, a(3)=>rtlc9n1660, 
      a(2)=>rtlcn39, a(1)=>i_valid, a(0)=>not_reset, d=>rtlc9n1371);
   modgen_and_34 : and_5u_5u port map ( a(4)=>not_rtlcs31, a(3)=>rtlc9n1660, 
      a(2)=>rtlcn39, a(1)=>i_valid, a(0)=>not_reset, d=>rtlc9n1383);
   modgen_or_35 : or_7u_7u port map ( a(6)=>row_count(2), a(5)=>row_count(3), 
      a(4)=>row_count(4), a(3)=>row_count(5), a(2)=>row_count(6), a(1)=>
      row_count(7), a(0)=>row_count(1), d=>rtlcn39);
   modgen_or_36 : or_7u_7u port map ( a(6)=>address(2), a(5)=>address(3), 
      a(4)=>address(4), a(3)=>address(5), a(2)=>address(6), a(1)=>address(7), 
      a(0)=>address(1), d=>rtlcn40);
   modgen_or_37 : or_6u_6u port map ( a(5)=>r_sub0_9, a(4)=>r_sub0_10, a(3)
      =>r_sub0_11, a(2)=>r_sub0_12, a(1)=>r_sub0_13, a(0)=>rtlc7n272, d=>
      rtlc7n273);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top ;

architecture INTERFACE of 
   counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal nx22, nx24, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   nx22 <= '0' ;
   nx24 <= '1' ;
   DFFPCE (sclear_and_10_dup_146,nx22,nx22,clk_en,clock,nx47) ;
   DFFPCE (sclear_and_9_dup_145,nx22,nx22,clk_en,clock,nx46) ;
   DFFPCE (sclear_and_8_dup_144,nx22,nx22,clk_en,clock,nx45) ;
   DFFPCE (sclear_and_7_dup_143,nx22,nx22,clk_en,clock,nx44) ;
   DFFPCE (sclear_and_6_dup_142,nx22,nx22,clk_en,clock,nx43) ;
   DFFPCE (sclear_and_5_dup_141,nx22,nx22,clk_en,clock,nx42) ;
   DFFPCE (sclear_and_4_dup_140,nx22,nx22,clk_en,clock,nx41) ;
   DFFPCE (sclear_and_3_dup_139,nx22,nx22,clk_en,clock,nx40) ;
   DFFPCE (sclear_and_2_dup_138,nx22,nx22,clk_en,clock,nx39) ;
   DFFPCE (sclear_and_1_dup_137,nx22,nx22,clk_en,clock,nx38) ;
   DFFPCE (sclear_and_0_dup_136,nx22,nx22,clk_en,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>nx24, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_11_cx9_dual_seg7 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_11_cx9_dual_seg7 ;

architecture INTERFACE of counter_up_sclear_clock_0_11_cx9_dual_seg7 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,GND,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,GND,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,GND,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,GND,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,GND,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,GND,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,GND,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,GND,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,GND,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,GND,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,GND,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity dual_seg7_notri is 
   port (
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_clk : IN std_logic ;
      p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
      p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_reset : IN std_logic ;
      p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
end dual_seg7_notri ;

architecture main of dual_seg7_notri is 
   component counter_up_sclear_clock_0_11_cx9_dual_seg7
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
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
   signal muxed_char: std_logic_vector (6 DOWNTO 6) ;
   
   signal muxed_char_5, muxed_char_4, muxed_char_3, muxed_char_2, 
      muxed_char_1, muxed_char_0, muxed_char_7, 
      o_char_rtlc6_o_char_1_TE_rtlcGen0, o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      o_char_rtlc6_o_char_6_TE_rtlcGen4, prev_reset, rtlc4n29, 
      not_prev_reset, load_reg, prev_char0_en: std_logic ;
   
   signal o_en: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND, PWR: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   p_o_en(0) <= o_en(0) ;
   p_o_en(1) <= o_en(1) ;
   PWR <= '1' ;
   GND <= '0' ;
   o_en(0) <= NOT o_en(1) ;
   load_reg <= o_en(0) XOR prev_char0_en ;
   rtlc4n29 <= p_reset AND not_prev_reset ;
   not_prev_reset <= NOT prev_reset ;
   p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
   p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
   p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
   muxed_char_7 <= p_i_pts(1) when o_en(1) = '1' else p_i_pts(0) ;
   muxed_char_0 <= p_i_chars(1) when o_en(1) = '1' else p_i_chars(0) ;
   muxed_char_1 <= p_i_chars(3) when o_en(1) = '1' else p_i_chars(2) ;
   muxed_char_2 <= p_i_chars(5) when o_en(1) = '1' else p_i_chars(4) ;
   muxed_char_3 <= p_i_chars(7) when o_en(1) = '1' else p_i_chars(6) ;
   muxed_char_4 <= p_i_chars(9) when o_en(1) = '1' else p_i_chars(8) ;
   muxed_char_5 <= p_i_chars(11) when o_en(1) = '1' else p_i_chars(10) ;
   muxed_char(6) <= p_i_chars(13) when o_en(1) = '1' else p_i_chars(12) ;
   modgen_counter_count : counter_up_sclear_clock_0_11_cx9_dual_seg7
       port map ( clock=>p_clk, q(10)=>o_en(1), q(9)=>DANGLING(0,0), q(8)=>
      DANGLING(0,1), q(7)=>DANGLING(0,2), q(6)=>DANGLING(0,3), q(5)=>
      DANGLING(0,4), q(4)=>DANGLING(0,5), q(3)=>DANGLING(0,6), q(2)=>
      DANGLING(0,7), q(1)=>DANGLING(0,8), q(0)=>DANGLING(0,9), clk_en=>PWR, 
      aclear=>GND, sload=>GND, data(10)=>DANGLING(0,10), data(9)=>
      DANGLING(0,11), data(8)=>DANGLING(0,12), data(7)=>DANGLING(0,13), 
      data(6)=>DANGLING(0,14), data(5)=>DANGLING(0,15), data(4)=>
      DANGLING(0,16), data(3)=>DANGLING(0,17), data(2)=>DANGLING(0,18), 
      data(1)=>DANGLING(0,19), data(0)=>DANGLING(0,20), aset=>GND, sclear=>
      rtlc4n29, updn=>PWR, cnt_en=>PWR);
   DFFPC (p_reset,GND,GND,p_clk,prev_reset) ;
   DFFPC (o_en(0),GND,GND,p_clk,prev_char0_en) ;
   DFFPCE (muxed_char_7,GND,GND,load_reg,p_clk,p_o_char_2(6)) ;
   DFFPCE (muxed_char_4,GND,GND,load_reg,p_clk,p_o_char_1(4)) ;
   DFFPCE (muxed_char_3,GND,GND,load_reg,p_clk,p_o_char_1(3)) ;
   DFFPCE (muxed_char_2,GND,GND,load_reg,p_clk,p_o_char_1(2)) ;
   DFFPCE (muxed_char_0,GND,GND,load_reg,p_clk,p_o_char_2(7)) ;
   DFFPCE (muxed_char(6),GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_6_TE_rtlcGen4) ;
   DFFPCE (muxed_char_5,GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_5_TE_rtlcGen2) ;
   DFFPCE (muxed_char_1,GND,GND,load_reg,p_clk,
   o_char_rtlc6_o_char_1_TE_rtlcGen0) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity num_seg7_notri is 
   port (
      p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
      p_reset : IN std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
      p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
      p_clk : IN std_logic ;
      p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
      p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
      p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
end num_seg7_notri ;

architecture main of num_seg7_notri is 
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component dual_seg7_notri
      port (
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_clk : IN std_logic ;
         p_i_chars : IN std_logic_vector (13 DOWNTO 0) ;
         p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
         p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic ;
         p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic ;
         p_reset : IN std_logic ;
         p_o_en : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   signal rtlcP3: std_logic_vector (13 DOWNTO 0) ;
   
   signal rtlcs1, not_rtlcn77, rtlcn77, not_rtlcs1, not_rtlcn61, not_rtlcn64, 
      not_rtlcn58, rtlcn64, rtlcn61, not_i_num_4, rtlcn58, not_i_num_5, 
      rtlcs0, not_rtlcn20, rtlcn20, not_rtlcs0, not_rtlcn4, not_rtlcn7, 
      not_rtlcn1, GND, rtlcn7, rtlcn4, not_i_num_0, rtlcn1, not_i_num_1, PWR
   : std_logic ;

begin
   PWR <= '1' ;
   not_i_num_1 <= NOT p_i_num(1) ;
   rtlcn1 <= not_i_num_1 AND p_i_num(0) ;
   not_i_num_0 <= NOT p_i_num(0) ;
   rtlcn4 <= not_i_num_1 AND not_i_num_0 ;
   rtlcn7 <= p_i_num(1) AND p_i_num(0) ;
   GND <= '0' ;
   rtlcP3_muxBus1_0 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>
      not_rtlcn7, a(1)=>not_rtlcn4, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP3(0));
   rtlcP3_muxBus1_1 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>not_rtlcn7, 
      a(1)=>not_rtlcs0, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(1));
   rtlcn20 <= p_i_num(1) AND not_i_num_0 ;
   rtlcP3_muxBus1_2 : mux_4u_4u port map ( a(3)=>rtlcn1, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn20, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), b(0)=>
      p_i_num(2), d=>rtlcP3(2));
   rtlcP3_muxBus1_3 : mux_4u_4u port map ( a(3)=>not_rtlcn7, a(2)=>
      not_rtlcn20, a(1)=>rtlcs0, a(0)=>not_rtlcn1, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(3), b(0)=>p_i_num(2), d=>rtlcP3(3));
   rtlcP3_muxBus1_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn1, a(1)
      =>rtlcn20, a(0)=>not_i_num_0, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(4));
   rtlcP3_muxBus1_5 : mux_4u_4u port map ( a(3)=>not_rtlcn1, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>rtlcn4, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(5));
   rtlcP3_muxBus1_6 : mux_4u_4u port map ( a(3)=>not_rtlcn4, a(2)=>PWR, a(1)
      =>not_rtlcn7, a(0)=>p_i_num(1), b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(3), 
      b(0)=>p_i_num(2), d=>rtlcP3(6));
   not_i_num_5 <= NOT p_i_num(5) ;
   rtlcn58 <= not_i_num_5 AND p_i_num(4) ;
   not_i_num_4 <= NOT p_i_num(4) ;
   rtlcn61 <= not_i_num_5 AND not_i_num_4 ;
   rtlcn64 <= p_i_num(5) AND p_i_num(4) ;
   rtlcP3_muxBus1_7 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>
      not_rtlcn64, a(1)=>not_rtlcn61, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>
      GND, b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(7));
   rtlcP3_muxBus1_8 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>not_rtlcn64, 
      a(1)=>not_rtlcs1, a(0)=>PWR, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), 
      b(0)=>p_i_num(6), d=>rtlcP3(8));
   rtlcn77 <= p_i_num(5) AND not_i_num_4 ;
   rtlcP3_muxBus1_9 : mux_4u_4u port map ( a(3)=>rtlcn58, a(2)=>PWR, a(1)=>
      PWR, a(0)=>not_rtlcn77, b(3)=>GND, b(2)=>GND, b(1)=>p_i_num(7), b(0)=>
      p_i_num(6), d=>rtlcP3(9));
   rtlcP3_muxBus1_10 : mux_4u_4u port map ( a(3)=>not_rtlcn64, a(2)=>
      not_rtlcn77, a(1)=>rtlcs1, a(0)=>not_rtlcn58, b(3)=>GND, b(2)=>GND, 
      b(1)=>p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(10));
   rtlcP3_muxBus1_11 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_rtlcn58, 
      a(1)=>rtlcn77, a(0)=>not_i_num_4, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(11));
   rtlcP3_muxBus1_12 : mux_4u_4u port map ( a(3)=>not_rtlcn58, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>rtlcn61, b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(12));
   rtlcP3_muxBus1_13 : mux_4u_4u port map ( a(3)=>not_rtlcn61, a(2)=>PWR, 
      a(1)=>not_rtlcn64, a(0)=>p_i_num(5), b(3)=>GND, b(2)=>GND, b(1)=>
      p_i_num(7), b(0)=>p_i_num(6), d=>rtlcP3(13));
   not_rtlcn1 <= NOT rtlcn1 ;
   not_rtlcn7 <= NOT rtlcn7 ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   not_rtlcn20 <= NOT rtlcn20 ;
   not_rtlcn58 <= NOT rtlcn58 ;
   not_rtlcn64 <= NOT rtlcn64 ;
   not_rtlcn61 <= NOT rtlcn61 ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_rtlcn77 <= NOT rtlcn77 ;
   rtlcs0 <= p_i_num(1) XOR p_i_num(0) ;
   rtlcs1 <= p_i_num(5) XOR p_i_num(4) ;
   u_dual_seg7 : dual_seg7_notri port map ( p_o_char_2(7)=>p_o_char_2(6), 
      p_o_char_2(6)=>p_o_char_2(7), p_o_char_1(4)=>p_o_char_1(4), 
      p_o_char_1(3)=>p_o_char_1(3), p_o_char_1(2)=>p_o_char_1(2), p_clk=>
      p_clk, p_i_chars(13)=>rtlcP3(13), p_i_chars(12)=>rtlcP3(6), 
      p_i_chars(11)=>rtlcP3(12), p_i_chars(10)=>rtlcP3(5), p_i_chars(9)=>
      rtlcP3(11), p_i_chars(8)=>rtlcP3(4), p_i_chars(7)=>rtlcP3(10), 
      p_i_chars(6)=>rtlcP3(3), p_i_chars(5)=>rtlcP3(9), p_i_chars(4)=>
      rtlcP3(2), p_i_chars(3)=>rtlcP3(8), p_i_chars(2)=>rtlcP3(1), 
      p_i_chars(1)=>rtlcP3(7), p_i_chars(0)=>rtlcP3(0), p_i_pts(1)=>
      p_i_pts(1), p_i_pts(0)=>p_i_pts(0), 
      p_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      p_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, p_reset=>p_reset, 
      p_o_en(1)=>p_o_en(1), p_o_en(0)=>p_o_en(0));
end main ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch_top is 
   port (
      reset_n : IN std_logic ;
      clk : IN std_logic ;
      uart_rx : IN std_logic ;
      uart_tx : OUT std_logic ;
      sw : IN std_logic_vector (7 DOWNTO 0) ;
      pb : IN std_logic_vector (3 DOWNTO 0) ;
      seg7_en : OUT std_logic_vector (1 DOWNTO 0) ;
      seg7_data : OUT std_logic_vector (7 DOWNTO 0) ;
      led : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch_top ;

architecture main of kirsch_top is 
   component syn_fifo_8_8
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         data_in : IN std_logic_vector (7 DOWNTO 0) ;
         rd_en : IN std_logic ;
         wr_en : IN std_logic ;
         data_out : OUT std_logic_vector (7 DOWNTO 0) ;
         empty : OUT std_logic ;
         full : OUT std_logic) ;
   end component ;
   component uart
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   component kirsch
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         i_valid : IN std_logic ;
         i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         o_valid : OUT std_logic ;
         o_edge : OUT std_logic ;
         o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component and_11u_11u
      port (
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component num_seg7_notri
      port (
         p_o_en : OUT std_logic_vector (1 DOWNTO 0) ;
         p_reset : IN std_logic ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 : OUT std_logic
          ;
         p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 : OUT std_logic
          ;
         p_i_pts : IN std_logic_vector (1 DOWNTO 0) ;
         p_clk : IN std_logic ;
         p_o_char_2 : OUT std_logic_vector (7 DOWNTO 6) ;
         p_o_char_1 : OUT std_logic_vector (4 DOWNTO 2) ;
         p_i_num : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   for write_fifo : syn_fifo_8_8 use entity work.syn_fifo_8_8(main_unfold_1
   );
   for read_fifo : syn_fifo_8_8 use entity work.syn_fifo_8_8(
   main_unfold_1927_0);
   signal k_i_valid: std_logic ;
   
   signal k_i_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_o_valid, k_o_data_7, k_o_data_6, GND, k_o_data_3, k_o_data_2, 
      k_o_data_1, k_o_data_0, tx_valid, tx_busy_delayed, tx_busy, rx_valid: 
   std_logic ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts: std_logic_vector (1 DOWNTO 0) ;
   
   signal uart_reset: std_logic ;
   
   signal reset_count: std_logic_vector (10 DOWNTO 0) ;
   
   signal uart_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_i_valid_delayed, wb_empty, rb_empty, rb_i_valid: std_logic ;
   
   signal rb_i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_o_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en, rb_rd_en_delayed, rb_rd_en_true, wait_for_tx_valid, 
      wait_for_tx_valid_delayed, PWR, rtlcP2, not_rb_i_valid, 
      rb_rd_en_true_0n0s2, not_wait_for_tx_valid_delayed, rtlc5n32, 
      not_rb_rd_en, rtlc10n59, rtlcn2, rtlcn3, rtlcn4, rtlcn5, not_rtlcn4, 
      rtlcn204, u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   write_fifo : syn_fifo_8_8 port map ( clk=>clk, rst=>k_o_data_7, 
      data_in(7)=>uart_pixel(7), data_in(6)=>uart_pixel(6), data_in(5)=>
      uart_pixel(5), data_in(4)=>uart_pixel(4), data_in(3)=>uart_pixel(3), 
      data_in(2)=>uart_pixel(2), data_in(1)=>uart_pixel(1), data_in(0)=>
      uart_pixel(0), rd_en=>k_i_valid, wr_en=>rx_valid, data_out(7)=>
      k_i_pixel(7), data_out(6)=>k_i_pixel(6), data_out(5)=>k_i_pixel(5), 
      data_out(4)=>k_i_pixel(4), data_out(3)=>k_i_pixel(3), data_out(2)=>
      k_i_pixel(2), data_out(1)=>k_i_pixel(1), data_out(0)=>k_i_pixel(0), 
      empty=>wb_empty, full=>DANGLING(0,0));
   read_fifo : syn_fifo_8_8 port map ( clk=>clk, rst=>k_o_data_7, data_in(7)
      =>rb_i_data(7), data_in(6)=>rb_i_data(6), data_in(5)=>rb_i_data(5), 
      data_in(4)=>rb_i_data(4), data_in(3)=>rb_i_data(3), data_in(2)=>
      rb_i_data(2), data_in(1)=>rb_i_data(1), data_in(0)=>rb_i_data(0), 
      rd_en=>rb_rd_en_true, wr_en=>rb_i_valid, data_out(7)=>rb_o_data(7), 
      data_out(6)=>rb_o_data(6), data_out(5)=>rb_o_data(5), data_out(4)=>
      rb_o_data(4), data_out(3)=>rb_o_data(3), data_out(2)=>rb_o_data(2), 
      data_out(1)=>rb_o_data(1), data_out(0)=>rb_o_data(0), empty=>rb_empty, 
      full=>DANGLING(0,1));
   u_uart : uart port map ( CLK=>clk, RST=>uart_reset, Din(7)=>rb_o_data(7), 
      Din(6)=>rb_o_data(6), Din(5)=>rb_o_data(5), Din(4)=>rb_o_data(4), 
      Din(3)=>rb_o_data(3), Din(2)=>rb_o_data(2), Din(1)=>rb_o_data(1), 
      Din(0)=>rb_o_data(0), LD=>tx_valid, Rx=>uart_rx, Baud=>PWR, Dout(7)=>
      uart_pixel(7), Dout(6)=>uart_pixel(6), Dout(5)=>uart_pixel(5), Dout(4)
      =>uart_pixel(4), Dout(3)=>uart_pixel(3), Dout(2)=>uart_pixel(2), 
      Dout(1)=>uart_pixel(1), Dout(0)=>uart_pixel(0), Tx=>uart_tx, TxBusy=>
      tx_busy, RxErr=>k_o_data_6, RxRDY=>rx_valid);
   u_kirsch : kirsch port map ( clk=>clk, reset=>k_o_data_7, i_valid=>rtlcP2, 
      i_pixel(7)=>k_i_pixel(7), i_pixel(6)=>k_i_pixel(6), i_pixel(5)=>
      k_i_pixel(5), i_pixel(4)=>k_i_pixel(4), i_pixel(3)=>k_i_pixel(3), 
      i_pixel(2)=>k_i_pixel(2), i_pixel(1)=>k_i_pixel(1), i_pixel(0)=>
      k_i_pixel(0), o_valid=>k_o_valid, o_edge=>k_o_data_3, o_dir(2)=>
      k_o_data_2, o_dir(1)=>k_o_data_1, o_dir(0)=>k_o_data_0, o_mode(1)=>
      seg7_pts(1), o_mode(0)=>seg7_pts(0), o_row(7)=>seg7_num(7), o_row(6)=>
      seg7_num(6), o_row(5)=>seg7_num(5), o_row(4)=>seg7_num(4), o_row(3)=>
      seg7_num(3), o_row(2)=>seg7_num(2), o_row(1)=>seg7_num(1), o_row(0)=>
      seg7_num(0), o_col(7)=>DANGLING(0,2), o_col(6)=>DANGLING(0,3), 
      o_col(5)=>DANGLING(0,4), o_col(4)=>DANGLING(0,5), o_col(3)=>
      DANGLING(0,6), o_col(2)=>DANGLING(0,7), o_col(1)=>DANGLING(0,8), 
      o_col(0)=>DANGLING(0,9));
   rtlcP2 <= k_i_valid_delayed AND pb(0) ;
   k_o_data_7 <= NOT reset_n ;
   rb_rd_en_true <= rb_rd_en_true_0n0s2 AND not_wait_for_tx_valid_delayed ;
   rb_rd_en_true_0n0s2 <= rb_rd_en AND not_rb_i_valid ;
   not_rb_i_valid <= NOT rb_i_valid ;
   not_wait_for_tx_valid_delayed <= NOT wait_for_tx_valid_delayed ;
   k_i_valid <= NOT rtlcn2 ;
   rtlcn2 <= wb_empty OR rx_valid ;
   rtlcn3 <= tx_busy OR tx_busy_delayed ;
   rtlcn4 <= rtlcn3 OR rb_empty ;
   rb_i_valid <= k_o_valid when pb(0) = '1' else k_i_valid_delayed ;
   rb_i_data(0) <= k_o_data_0 when pb(0) = '1' else k_i_pixel(0) ;
   rb_i_data(1) <= k_o_data_1 when pb(0) = '1' else k_i_pixel(1) ;
   rb_i_data(2) <= k_o_data_2 when pb(0) = '1' else k_i_pixel(2) ;
   rb_i_data(3) <= k_o_data_3 when pb(0) = '1' else k_i_pixel(3) ;
   rb_i_data(4) <= seg7_pts(0) when pb(0) = '1' else k_i_pixel(4) ;
   rb_i_data(5) <= seg7_pts(1) when pb(0) = '1' else k_i_pixel(5) ;
   rb_i_data(6) <= k_o_data_6 when pb(0) = '1' else k_i_pixel(6) ;
   rb_i_data(7) <= k_o_data_7 when pb(0) = '1' else k_i_pixel(7) ;
   rtlcn5 <= tx_valid OR rb_rd_en_true ;
   not_rtlcn4 <= NOT rtlcn4 ;
   rtlc10n59 <= not_rtlcn4 OR rb_rd_en ;
   not_rb_rd_en <= NOT rb_rd_en ;
   rtlc_60_and_87 : and_11u_11u port map ( a(10)=>reset_count(10), a(9)=>
      reset_count(9), a(8)=>reset_count(8), a(7)=>reset_count(7), a(6)=>
      reset_count(6), a(5)=>reset_count(5), a(4)=>reset_count(4), a(3)=>
      reset_count(3), a(2)=>reset_count(2), a(1)=>reset_count(1), a(0)=>
      reset_count(0), d=>rtlc5n32);
   rtlcn204 <= not_rb_rd_en AND rtlc10n59 ;
   led(0) <= GND when GND = '1' else 'Z' ;
   led(1) <= GND when GND = '1' else 'Z' ;
   led(2) <= GND when GND = '1' else 'Z' ;
   led(3) <= GND when GND = '1' else 'Z' ;
   led(4) <= GND when GND = '1' else 'Z' ;
   led(5) <= GND when GND = '1' else 'Z' ;
   led(6) <= GND when GND = '1' else 'Z' ;
   led(7) <= GND when GND = '1' else 'Z' ;
   DFFRSE (PWR,GND,reset_n,rtlc5n32,clk,uart_reset) ;
   DFFPC (k_i_valid,GND,GND,clk,k_i_valid_delayed) ;
   DFFPC (tx_busy,GND,GND,clk,tx_busy_delayed) ;
   DFFRSE (rb_rd_en_true,GND,k_o_data_7,rtlcn5,clk,wait_for_tx_valid) ;
   DFFRSE (wait_for_tx_valid,GND,k_o_data_7,PWR,clk,
   wait_for_tx_valid_delayed) ;
   DFFPC (rb_rd_en_true,GND,GND,clk,rb_rd_en_delayed) ;
   DFFRSE (rb_rd_en_delayed,k_o_data_7,GND,PWR,clk,tx_valid) ;
   DFFRSE (rtlcn204,GND,k_o_data_7,PWR,clk,rb_rd_en) ;
   modgen_counter_reset_count : 
      counter_up_sclear_clock_clk_en_0_11_cx10_kirsch_top port map ( clock=>
      clk, q(10)=>reset_count(10), q(9)=>reset_count(9), q(8)=>
      reset_count(8), q(7)=>reset_count(7), q(6)=>reset_count(6), q(5)=>
      reset_count(5), q(4)=>reset_count(4), q(3)=>reset_count(3), q(2)=>
      reset_count(2), q(1)=>reset_count(1), q(0)=>reset_count(0), clk_en=>
      PWR, aclear=>GND, sload=>GND, data(10)=>DANGLING(0,10), data(9)=>
      DANGLING(0,11), data(8)=>DANGLING(0,12), data(7)=>DANGLING(0,13), 
      data(6)=>DANGLING(0,14), data(5)=>DANGLING(0,15), data(4)=>
      DANGLING(0,16), data(3)=>DANGLING(0,17), data(2)=>DANGLING(0,18), 
      data(1)=>DANGLING(0,19), data(0)=>DANGLING(0,20), aset=>GND, sclear=>
      reset_n, updn=>PWR, cnt_en=>PWR);
   seg7_data(6) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = '1' else 'Z' ;
   seg7_data(5) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = '1' else 'Z' ;
   seg7_data(1) <= GND when 
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = '1' else 'Z' ;
   u_seg7 : num_seg7_notri port map ( p_o_en(1)=>seg7_en(1), p_o_en(0)=>
      seg7_en(0), p_reset=>k_o_data_7, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      p_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, p_i_pts(1)=>
      seg7_pts(1), p_i_pts(0)=>seg7_pts(0), p_clk=>clk, p_o_char_2(7)=>
      seg7_data(7), p_o_char_2(6)=>seg7_data(0), p_o_char_1(4)=>seg7_data(4), 
      p_o_char_1(3)=>seg7_data(3), p_o_char_1(2)=>seg7_data(2), p_i_num(7)=>
      seg7_num(7), p_i_num(6)=>seg7_num(6), p_i_num(5)=>seg7_num(5), 
      p_i_num(4)=>seg7_num(4), p_i_num(3)=>seg7_num(3), p_i_num(2)=>
      seg7_num(2), p_i_num(1)=>seg7_num(1), p_i_num(0)=>seg7_num(0));
end main ;

