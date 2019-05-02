
-- 
-- Definition of  mult
-- 
--      Sun May 27 21:54:33 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity mult_logic is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_a : IN std_logic_vector (7 DOWNTO 0) ;
      i_b : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_z : OUT std_logic_vector (7 DOWNTO 0)) ;
end mult_logic ;

architecture main of mult_logic is 
   signal o_valid_EXMPLR34: std_logic ;
   
   signal o_z_EXMPLR46: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal State: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_z_3n5s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx14046z1, nx20342z1, nx54730z1, nx60011z1, nx39913z1, nx56244z1, 
      nx24866z1, PWR, GND_EXMPLR43: std_logic ;
   
   signal a_3n10ss1: std_logic_vector (6 DOWNTO 0) ;
   
   signal b_3n10ss1: std_logic_vector (7 DOWNTO 1) ;
   
   signal nx61882z2, nx33332z1, not_State_0, nx61882z1, nx19052z1, nx60567z1, 
      nx40177z1, nx39180z1, nx61882z4, nx39180z2, nx60567z2, nx33332z2, 
      nx61882z3, nx39180z3: std_logic ;

begin
   o_valid <= o_valid_EXMPLR34 ;
   o_z(7) <= o_z_EXMPLR46(7) ;
   o_z(6) <= o_z_EXMPLR46(6) ;
   o_z(5) <= o_z_EXMPLR46(5) ;
   o_z(4) <= o_z_EXMPLR46(4) ;
   o_z(3) <= o_z_EXMPLR46(3) ;
   o_z(2) <= o_z_EXMPLR46(2) ;
   o_z(1) <= o_z_EXMPLR46(1) ;
   o_z(0) <= o_z_EXMPLR46(0) ;
   PWR <= '1';
   GND_EXMPLR43 <= '0';
   not_State_0 <= NOT State(0);
   o_z_add8_3i1_ix36_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_z_3n5s1(0), cout=>nx14046z1, dataa=>
      o_z_EXMPLR46(0), datab=>b(0), datad=>PWR);
   o_z_add8_3i1_ix40_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(1), cout=>nx20342z1, dataa=>
      o_z_EXMPLR46(1), datab=>b(1), datad=>PWR, cin=>nx14046z1);
   o_z_add8_3i1_ix44_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(2), cout=>nx54730z1, dataa=>
      o_z_EXMPLR46(2), datab=>b(2), datad=>PWR, cin=>nx20342z1);
   o_z_add8_3i1_ix48_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(3), cout=>nx60011z1, dataa=>
      o_z_EXMPLR46(3), datab=>b(3), datad=>PWR, cin=>nx54730z1);
   o_z_add8_3i1_ix52_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(4), cout=>nx39913z1, dataa=>
      o_z_EXMPLR46(4), datab=>b(4), datad=>PWR, cin=>nx60011z1);
   o_z_add8_3i1_ix56_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(5), cout=>nx56244z1, dataa=>
      o_z_EXMPLR46(5), datab=>b(5), datad=>PWR, cin=>nx39913z1);
   o_z_add8_3i1_ix60_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(6), cout=>nx24866z1, dataa=>
      o_z_EXMPLR46(6), datab=>b(6), datad=>PWR, cin=>nx56244z1);
   o_z_add8_3i1_ix62_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>o_z_3n5s1(7), dataa=>o_z_EXMPLR46(7), datab=>b(7), 
      datad=>PWR, cin=>nx24866z1);
   reg_o_z_7 : dffeas port map ( q=>o_z_EXMPLR46(7), d=>o_z_3n5s1(7), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_6 : dffeas port map ( q=>o_z_EXMPLR46(6), d=>o_z_3n5s1(6), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_5 : dffeas port map ( q=>o_z_EXMPLR46(5), d=>o_z_3n5s1(5), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_4 : dffeas port map ( q=>o_z_EXMPLR46(4), d=>o_z_3n5s1(4), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_3 : dffeas port map ( q=>o_z_EXMPLR46(3), d=>o_z_3n5s1(3), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_2 : dffeas port map ( q=>o_z_EXMPLR46(2), d=>o_z_3n5s1(2), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_1 : dffeas port map ( q=>o_z_EXMPLR46(1), d=>o_z_3n5s1(1), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_o_z_0 : dffeas port map ( q=>o_z_EXMPLR46(0), d=>o_z_3n5s1(0), clk=>
      clk, ena=>nx33332z1, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43, sclr=>
      not_State_0, sload=>GND_EXMPLR43);
   reg_State_1 : dffeas port map ( q=>State(1), d=>nx39180z1, clk=>clk, ena
      =>PWR, clrn=>nx39180z3, prn=>PWR, asdata=>GND_EXMPLR43);
   nx39180z3 <= NOT reset;
   reg_o_valid : dffeas port map ( q=>o_valid_EXMPLR34, d=>nx60567z1, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43);
   reg_b_0 : dffeas port map ( q=>b(0), d=>nx19052z1, clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43);
   reg_a_7 : dffeas port map ( q=>a(7), d=>nx61882z1, clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR43);
   reg_State_0 : dffeas port map ( q=>State(0), d=>nx40177z1, clk=>clk, ena
      =>PWR, clrn=>nx39180z3, prn=>PWR, asdata=>GND_EXMPLR43);
   ix60885z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(6), datab=>State(1), datac=>a(7), datad
      =>i_a(6));
   ix59888z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(5), datab=>State(1), datac=>a(6), datad
      =>i_a(5));
   ix58891z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(4), datab=>State(1), datac=>a(5), datad
      =>i_a(4));
   ix57894z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(3), datab=>State(1), datac=>a(4), datad
      =>i_a(3));
   ix56897z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(2), datab=>State(1), datac=>a(3), datad
      =>i_a(2));
   ix55900z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(1), datab=>State(1), datac=>a(2), datad
      =>i_a(1));
   ix54903z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>a_3n10ss1(0), datab=>State(1), datac=>a(1), datad
      =>i_a(0));
   ix12073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(7), datab=>State(1), datac=>b(6), datad
      =>i_b(7));
   ix13070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(6), datab=>State(1), datac=>b(5), datad
      =>i_b(6));
   ix14067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(5), datab=>State(1), datac=>b(4), datad
      =>i_b(5));
   ix15064z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(4), datab=>State(1), datac=>b(3), datad
      =>i_b(4));
   ix16061z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(3), datab=>State(1), datac=>b(2), datad
      =>i_b(3));
   ix17058z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(2), datab=>State(1), datac=>b(1), datad
      =>i_b(2));
   ix18055z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>b_3n10ss1(1), datab=>State(1), datac=>b(0), datad
      =>i_b(1));
   ix61882z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx61882z2, datab=>nx61882z3, datac=>State(0), 
      datad=>reset);
   ix33332z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx33332z1, datab=>nx33332z2, datac=>State(1), 
      datad=>reset);
   ix61882z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx61882z1, datac=>State(1), datad=>i_a(7));
   ix19052z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx19052z1, datac=>State(1), datad=>i_b(0));
   ix60567z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0d8") 
       port map ( combout=>nx60567z1, dataa=>nx60567z2, datab=>State(1), 
      datac=>o_valid_EXMPLR34, datad=>reset);
   ix40177z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4454") 
       port map ( combout=>nx40177z1, dataa=>State(0), datab=>State(1), 
      datac=>i_valid, datad=>reset);
   ix39180z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"08f0") 
       port map ( combout=>nx39180z1, dataa=>nx39180z2, datab=>nx61882z4, 
      datac=>State(0), datad=>State(1));
   ix61882z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx61882z4, dataa=>a(4), datab=>a(5), datac=>a(6), 
      datad=>a(7));
   ix39180z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39180z2, dataa=>a(0), datab=>a(1), datac=>a(2), 
      datad=>a(3));
   ix60567z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c3c0") 
       port map ( combout=>nx60567z2, datab=>State(0), datac=>State(1), 
      datad=>i_valid);
   ix33332z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx33332z2, datab=>State(0), datac=>a(0), datad=>
      i_valid);
   ix61882z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7f70") 
       port map ( combout=>nx61882z3, dataa=>nx39180z2, datab=>nx61882z4, 
      datac=>State(1), datad=>i_valid);
   reg_b_7 : dffeas port map ( q=>b(7), d=>b_3n10ss1(7), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_6 : dffeas port map ( q=>b(6), d=>b_3n10ss1(6), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_5 : dffeas port map ( q=>b(5), d=>b_3n10ss1(5), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_4 : dffeas port map ( q=>b(4), d=>b_3n10ss1(4), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_3 : dffeas port map ( q=>b(3), d=>b_3n10ss1(3), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_2 : dffeas port map ( q=>b(2), d=>b_3n10ss1(2), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_b_1 : dffeas port map ( q=>b(1), d=>b_3n10ss1(1), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_6 : dffeas port map ( q=>a(6), d=>a_3n10ss1(6), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_5 : dffeas port map ( q=>a(5), d=>a_3n10ss1(5), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_4 : dffeas port map ( q=>a(4), d=>a_3n10ss1(4), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_3 : dffeas port map ( q=>a(3), d=>a_3n10ss1(3), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_2 : dffeas port map ( q=>a(2), d=>a_3n10ss1(2), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_1 : dffeas port map ( q=>a(1), d=>a_3n10ss1(1), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
   reg_a_0 : dffeas port map ( q=>a(0), d=>a_3n10ss1(0), clk=>clk, ena=>
      nx61882z2, clrn=>PWR, prn=>PWR);
end main ;

