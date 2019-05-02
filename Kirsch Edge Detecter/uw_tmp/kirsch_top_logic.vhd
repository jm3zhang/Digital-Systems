
-- 
-- Definition of  kirsch_top
-- 
--      Sun Jul 15 11:17:46 2018
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_0 is 
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
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal rd_ena1_EXMPLR26: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR26, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR26, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR26 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_1 is 
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
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal rd_ena1_EXMPLR56: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR56, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR56, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR56 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_2 is 
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
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal rd_ena1_EXMPLR86: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR86, clock0=>wr_clk1, clocken0=>rd_ena1_EXMPLR86, 
      q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)
      =>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>
      rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR86 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_3 is 
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
end ram_dq_8_3 ;

architecture IMPLEMENTATION of ram_dq_8_3 is 
   signal rd_ena1_EXMPLR116: std_logic ;

begin
   ix64056z29484 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR116, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR116, q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>
      rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>
      rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR116 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

entity ram_dq_8_4 is 
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
end ram_dq_8_4 ;

architecture IMPLEMENTATION of ram_dq_8_4 is 
   signal rd_ena1_EXMPLR146: std_logic ;

begin
   ix64056z29485 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "MAX 10",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      rden_a=>rd_ena1_EXMPLR146, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR146, q_a(7)=>rd_data1(7), q_a(6)=>rd_data1(6), q_a(5)=>
      rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>rd_data1(3), q_a(2)=>
      rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>rd_data1(0));
   rd_ena1_EXMPLR146 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera;
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library fiftyfivenm ;
use fiftyfivenm.fiftyfivenm_components.all;

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
   component ram_dq_8_0
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
   component ram_dq_8_1
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
   component ram_dq_8_2
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
   component ram_dq_8_3
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
   component ram_dq_8_4
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
   signal seg7_en_EXMPLR189: std_logic_vector (1 DOWNTO 0) ;
   
   signal k_o_valid, k_o_data_6, k_o_data_3, k_o_data_2, k_o_data_1, 
      k_o_data_0, tx_busy_delayed, tx_busy, rx_valid: std_logic ;
   
   signal seg7_num: std_logic_vector (7 DOWNTO 0) ;
   
   signal seg7_pts: std_logic_vector (1 DOWNTO 1) ;
   
   signal uart_reset: std_logic ;
   
   signal reset_count: std_logic_vector (10 DOWNTO 0) ;
   
   signal uart_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en, rb_rd_en_delayed, wait_for_tx_valid, 
      wait_for_tx_valid_delayed: std_logic ;
   
   signal write_fifo_wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal write_fifo_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal write_fifo_rd_en_delayed: std_logic ;
   
   signal read_fifo_wr_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_rd_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_status_cnt: std_logic_vector (8 DOWNTO 0) ;
   
   signal read_fifo_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_q_saved: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en: 
   std_logic ;
   
   signal u_uart_Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_uart_RxDivisor_4: std_logic ;
   
   signal u_uart_RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal u_uart_TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal u_uart_TopTx, u_uart_TopRx: std_logic ;
   
   signal u_uart_TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_uart_RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_uart_Rx_r: std_logic ;
   
   signal u_uart_RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal u_uart_TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_kirsch_i_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_i_3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_max0: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_max1: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r_add0_a: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r_add0_b: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r_add1_a: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r_add1_b: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r_add2: std_logic_vector (12 DOWNTO 0) ;
   
   signal u_kirsch_r_sub0_12, u_kirsch_r_sub0_11, u_kirsch_r_sub0_10, 
      u_kirsch_r_sub0_9, u_kirsch_r_sub0_8, u_kirsch_r_sub0_7: std_logic ;
   
   signal u_kirsch_dir1: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_kirsch_dir1_final: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_kirsch_dir2: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_dir2_final: std_logic_vector (2 DOWNTO 0) ;
   
   signal u_kirsch_stg_counter1: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_kirsch_stg_counter2: std_logic_vector (3 DOWNTO 0) ;
   
   signal u_kirsch_max0_bit_counter: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_kirsch_max1_bit_counter: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_kirsch_address: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_row_index: std_logic_vector (1 DOWNTO 0) ;
   
   signal u_kirsch_row_count: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_o_dataA: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_o_dataB: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_o_dataC: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_c3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_d3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_e3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_a2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_h2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_g2: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_a3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_h3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_g3: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_r_add0_a_0n1s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_kirsch_r_add1_a_3n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r_add2_4n1s1: std_logic_vector (12 DOWNTO 0) ;
   
   signal nx29221z4, u_kirsch_r_sub0_6n1s1_14, u_kirsch_r_sub0_6n1s1_12, 
      u_kirsch_r_sub0_6n1s1_11, u_kirsch_r_sub0_6n1s1_10, 
      u_kirsch_r_sub0_6n1s1_9, u_kirsch_r_sub0_6n1s1_8, 
      u_kirsch_r_sub0_6n1s1_7, nx40631z1, nx29221z7, inc_d_0, nx27063z1, 
      inc_d_1, nx39256z1, inc_d_2, nx57428z1, inc_d_3, nx23040z1, inc_d_4, 
      nx58827z1, inc_d_5, nx37857z1, inc_d_6, nx41995z1, inc_d_7, nx8364z1, 
      inc_d_8, nx9072z1, inc_d_9, nx40977z1, inc_d_10, inc_d_0_dup_602, 
      nx38358z1, inc_d_1_dup_604, nx53932z1, inc_d_2_dup_606, nx43509z1, 
      inc_d_3_dup_608, nx27935z1, inc_d_4_dup_610, nx12361z1, 
      inc_d_5_dup_612, nx62323z1, inc_d_6_dup_614, nx11000z1, 
      inc_d_7_dup_616, inc_d_0_dup_638, nx35880z1, inc_d_1_dup_640, 
      nx51454z1, inc_d_2_dup_642, nx1492z1, inc_d_3_dup_644, nx17066z1, 
      inc_d_4_dup_646, nx32896z1, inc_d_5_dup_648, nx64801z1, 
      inc_d_6_dup_650, nx57014z1, inc_d_7_dup_652, nx30620z1, 
      incdec_mux_1_dup_114, nx15046z1, incdec_mux_2_dup_115, nx46951z1, 
      incdec_mux_3_dup_116, nx34159z1, incdec_mux_4_dup_117, nx49733z1, 
      incdec_mux_5_dup_118, nx65307z1, incdec_mux_6_dup_119, nx50191z1, 
      incdec_mux_7_dup_120, nx42404z1, incdec_mux_8_dup_121, inc_d_0_dup_703, 
      nx4983z1, inc_d_1_dup_705, nx10591z1, inc_d_2_dup_707, nx44222z1, 
      inc_d_3_dup_709, nx59796z1, inc_d_4_dup_711, nx55702z1, 
      inc_d_5_dup_713, nx40128z1, inc_d_6_dup_715, nx32341z1, 
      inc_d_7_dup_717, inc_d_0_dup_739, nx65210z1, inc_d_1_dup_741, 
      nx49636z1, inc_d_2_dup_743, nx31474z1, inc_d_3_dup_745, nx47048z1, 
      inc_d_4_dup_747, nx15143z1, inc_d_5_dup_749, nx34819z1, 
      inc_d_6_dup_751, nx27032z1, inc_d_7_dup_753, nx58387z1, 
      incdec_mux_1_dup_114_dup_779, nx24756z1, incdec_mux_2_dup_115_dup_781, 
      nx9182z2, incdec_mux_3_dup_116_dup_783, nx59144z1, 
      incdec_mux_4_dup_117_dup_785, nx21966z1, incdec_mux_5_dup_118_dup_787, 
      nx37540z1, incdec_mux_6_dup_119_dup_789, nx5635z1, 
      incdec_mux_7_dup_120_dup_791, nx52114z1, incdec_mux_8_dup_121_dup_793, 
      nx44217z1, nx55707z1, nx49288z1, nx674z1, nx50636z1, nx35062z1, 
      nx46048z1, nx60108z1, nx55390z1, nx39816z1, inc_d_0_dup_814, nx55390z2, 
      inc_d_1_dup_815, nx60108z2, inc_d_2_dup_816, nx46048z2, 
      inc_d_3_dup_817, nx35062z2, inc_d_4_dup_818, nx50636z2, 
      inc_d_5_dup_819, nx674z2, inc_d_6_dup_820, nx49288z2, inc_d_7_dup_821, 
      nx55707z2, inc_d_8_dup_822, nx44217z2, inc_d_9_dup_823, nx10586z1, 
      inc_d_10_dup_824, inc_d_0_dup_862, nx52912z1, inc_d_1_dup_864, 
      nx2950z1, inc_d_2_dup_866, nx47012z1, inc_d_3_dup_868, nx31438z1, 
      inc_d_4_dup_870, nx63343z1, inc_d_5_dup_872, nx17767z1, 
      inc_d_6_dup_874, nx33341z1, inc_d_7_dup_876, nx48915z1, 
      inc_d_8_dup_878, nx64489z1, inc_d_9_dup_880, nx58796z1, 
      inc_d_10_dup_882, inc_d_0_dup_915, nx39407z1, inc_d_1_dup_917, 
      nx10555z1, inc_d_2_dup_919, nx42460z1, inc_d_3_dup_921, nx26886z1, 
      inc_d_4_dup_923, nx11312z1, inc_d_5_dup_925, nx4262z1, inc_d_6_dup_927, 
      nx19836z1, inc_d_7_dup_929, nx31640z1, inc_d_8_dup_931, nx47250z1, 
      inc_d_9_dup_933, nx16066z1, inc_d_10_dup_935, nx8279z1, inc_d_11, 
      nx46608z1, nx34502z1, nx50076z1, nx114z1, nx31791z1, nx16217z1, 
      nx643z1, nx52980z1, nx21832z1, nx27373z1, nx58521z1, nx23346z1, 
      nx7802z1, nx38950z5, nx42917z1, nx11769z1, nx37436z1, nx62488z1, 
      nx46914z1, nx28806z1, nx44380z1, nx12475z1, nx37487z1, nx21913z1, 
      nx6339z1, nx56301z1, nx42866z1, nx58440z1, nx26840z1, nx54270z1, 
      nx22365z1, nx37939z1, nx12023z1, nx61985z1, nx46411z1, nx12780z1, 
      nx2794z1, inc_d_0_dup_997, nx38998z1, inc_d_1_dup_999, nx10964z1, 
      inc_d_2_dup_1001, nx42869z1, inc_d_3_dup_1003, nx27295z1, 
      inc_d_4_dup_1005, nx53815z1, inc_d_5_dup_1007, nx3853z1, 
      inc_d_6_dup_1009, nx11640z1, inc_d_7_dup_1011, inc_d_0_dup_1037, 
      nx16836z1, inc_d_1_dup_1039, nx64274z1, inc_d_2_dup_1041, nx32369z1, 
      inc_d_3_dup_1043, nx47943z1, inc_d_4_dup_1045, nx2019z1, 
      inc_d_5_dup_1047, nx51981z1, inc_d_6_dup_1049, nx44194z1, 
      inc_d_7_dup_1051, nx14816z1, nx1515z1, nx29633z1, nx13302z1, nx21086z1, 
      nx55474z1, nx59267z1, nx53938z1, nx42746z1, nx57178z1, nx7973z1, 
      nx23175z1, nx6844z1, nx27544z1, nx3604z1, nx13358z1, nx36604z1, 
      nx21030z1, nx52935z1, nx37361z1, nx59323z1, nx22544z1, nx56932z1, 
      nx39752z1, nx23421z3, nx10967z1, nx6502z1, nx1252z1, nx26313z1, 
      nx21429z1, nx24080z1, nx51089z1, nx19433z1, nx20430z1, nx21427z1, 
      nx22424z1, nx23421z1, nx24418z1, nx25415z1, nx26412z1, nx62941z1, 
      nx61944z1, nx60947z1, nx59950z1, nx58953z1, nx57956z1, nx56959z1, 
      nx55962z1, incdec_mux_0_dup_113, incdec_mux_0_dup_113_dup_777: 
   std_logic ;
   
   signal k_i_pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal k_o_data_7, GND_EXMPLR188, rb_empty, rb_i_valid: std_logic ;
   
   signal rb_i_data: std_logic_vector (7 DOWNTO 0) ;
   
   signal rb_rd_en_true, PWR, nx25391z3, nx7605z1, nx15004z1, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
      write_fifo_full: std_logic ;
   
   signal write_fifo_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal read_fifo_pointer: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx9182z1, nx51544z6, nx51544z8, nx51544z5, nx51544z20, nx51544z14, 
      nx51544z22, nx51544z17, nx51544z19, u_seg7_u_dual_seg7_muxed_char_4, 
      u_seg7_u_dual_seg7_muxed_char_3, u_seg7_u_dual_seg7_muxed_char_2, 
      u_seg7_u_dual_seg7_muxed_char_0, u_seg7_u_dual_seg7_muxed_char_7, 
      nx29573z1, u_seg7_u_dual_seg7_load_reg, nx2379z1, 
      u_uart_Tx_Reg_14n6ss1_0, nx18859z1, nx61431z2, nx13938z1, nx44871z1, 
      nx12790z1, nx10796z1, nx11793z1, nx9799z1, nx59343z1, nx8802z1, 
      nx13251z1, nx59343z2, nx57349z1, nx8356z3, nx9799z2: std_logic ;
   
   signal u_kirsch_r_max0_1n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx52067z3, nx2094z2, nx26412z9, nx38950z2: std_logic ;
   
   signal u_kirsch_r_max1_5n6ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx29221z10, nx12123z1, nx29221z5, nx4094z1, nx64328z4, nx22605z2, 
      u_kirsch_d3_9n15ss1_7, u_kirsch_d3_9n15ss1_6, u_kirsch_d3_9n15ss1_5, 
      u_kirsch_d3_9n15ss1_4, u_kirsch_d3_9n15ss1_3, u_kirsch_d3_9n15ss1_2, 
      u_kirsch_d3_9n15ss1_1: std_logic ;
   
   signal u_kirsch_a2_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_h2_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal u_kirsch_f3_9n22ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx41042z11, nx55203z2, nx18752z3, nx16758z3, nx53163z3, nx26412z7, 
      nx41042z5, nx55203z3, nx63596z4, nx49076z2, nx52067z2, nx50073z2, 
      nx22605z1, nx29221z1, nx4443z1, nx62334z1, nx60486z3, nx63331z1, 
      nx64328z1, nx41042z4, nx41042z3, nx40631z2, nx29221z8, nx60486z6, 
      nx38950z4, nx4094z2, nx41042z10, nx26412z4, nx18752z2, nx38950z3, 
      nx16758z7, nx38950z1, nx63596z2, nx37417z1: std_logic ;
   
   signal u_kirsch_r_add2_4n1s1f1: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_kirsch_r_add2_4n1s1f2: std_logic_vector (12 DOWNTO 1) ;
   
   signal nx62334z3, nx29221z6, nx19433z2, nx20430z2, nx21427z2, nx22424z2, 
      nx23421z2, nx24418z2, nx25415z2, nx26412z5, nx11014z3, nx12011z3, 
      nx13008z3, nx14005z3, nx15002z3, nx15999z3, nx16996z3, nx17993z3, 
      nx62941z2, nx61944z2, nx60947z2, nx59950z2, nx58953z2, nx57956z2, 
      nx56959z2, nx55962z2, nx5824z3, nx4827z3, nx3830z3, nx2833z3, nx1836z3, 
      nx839z3, nx64381z4, nx65378z4, nx839z4, nx1836z4, nx2833z4, nx3830z4, 
      nx4827z4, nx18625z1, nx28027z1, nx51544z1, nx56200z2, nx57197z2, 
      nx17755z2, nx60415z1, nx46735z1, nx45738z1, nx64316z1, nx63319z1, 
      nx57978z1, nx56981z1, nx55984z1, nx55203z1, nx56200z1, nx57197z1, 
      nx58194z1, nx18752z1, nx17755z1, nx16758z1, nx15761z1, nx50073z1, 
      nx52067z1, nx49076z1, nx51070z1, nx58492z1, nx59489z1, nx60486z1, 
      nx40325z1, nx64502z1, nx7359z1, nx8356z1, nx62599z1, nx63596z1, 
      nx2094z1, nx3091z1, nx4088z1, nx5085z1, nx58151z1, nx58143z1, 
      nx22869z1, nx23864z1, nx24859z1, nx383z1, nx25391z1, nx12790z2, 
      nx59437z2, nx59437z1, nx60434z1, nx61431z1, nx62428z1, nx62428z2, 
      nx64683z3, nx64683z1, nx144z1, nx1141z1, nx2138z1, nx2138z2, nx16758z2, 
      nx16758z4, nx22869z2, nx7605z2, nx15004z2, nx22869z3, nx15004z3, 
      nx60415z5, nx60415z3, nx60415z2, nx55203z4, nx37417z3, nx25391z2, 
      nx25391z6, nx25391z5, nx16758z6, nx16758z5, nx53163z4, nx8356z2, 
      nx7359z2, nx53163z2, nx52166z2, nx51169z2, nx50172z2, nx49175z2, 
      nx48178z2, nx47181z2, nx46184z2, nx58298z2, nx57301z2, nx56304z2, 
      nx55307z2, nx54310z2, nx53313z2, nx52316z2, nx51319z2, nx25391z4, 
      nx37417z2, nx64381z1, nx65378z1, nx839z1, nx1836z1, nx2833z1, nx3830z1, 
      nx4827z1, nx5824z1, nx17993z1, nx16996z1, nx15999z1, nx15002z1, 
      nx14005z1, nx13008z1, nx12011z1, nx11014z1, nx53163z1, nx52166z1, 
      nx51169z1, nx50172z1, nx49175z1, nx48178z1, nx47181z1, nx46184z1, 
      nx58298z1, nx57301z1, nx56304z1, nx55307z1, nx54310z1, nx53313z1, 
      nx52316z1, nx51319z1, nx41042z2, nx41042z1, nx40045z2, nx40045z1, 
      nx39048z2, nx39048z1, nx38051z2, nx38051z1, nx37054z2, nx37054z1, 
      nx36057z2, nx36057z1, nx35060z2, nx35060z1, nx34063z2, nx34063z1, 
      nx63433z2, nx63433z1, nx55082z2, nx55082z1, nx56079z2, nx56079z1, 
      nx57076z2, nx57076z1, nx58073z2, nx58073z1, nx59070z2, nx59070z1, 
      nx60067z2, nx60067z1, nx61064z2, nx61064z1, nx60486z7, nx60486z4, 
      nx60486z11, nx60486z10, nx60486z9, nx60486z8, nx59343z5, nx59343z6, 
      nx59343z4, nx59343z3, nx64328z2, nx57349z4, nx57349z3, nx57349z2, 
      nx57349z6, nx57349z5, nx51544z4, nx51544z24, nx51544z23, nx839z2, 
      nx1836z2, nx2833z2, nx51544z10, nx51544z9, nx51544z18, nx51544z16, 
      nx383z2, nx5371z1, nx17993z4, nx16996z4, nx15999z4, nx15002z4, 
      nx14005z4, nx13008z4, nx12011z4, nx11014z4, nx5824z4, nx26412z8, 
      nx41042z7, nx62334z2, nx58492z2, nx17862z2, nx41042z6, nx64328z3, 
      nx26412z2, nx41042z8, nx22605z3, nx12123z3, nx51544z15, nx51544z25, 
      nx7365z1, nx60415z4, nx60486z2, nx59489z2, nx29221z9, nx60486z5, 
      nx29221z3, nx64502z2, nx63596z3, nx12123z2, nx41042z9, nx26412z3, 
      nx26412z6, nx29221z2, nx64381z3, nx64381z2, nx65378z3, nx65378z2, 
      nx3830z2, nx4827z2, nx5824z2, nx17993z2, nx16996z2, nx15999z2, 
      nx15002z2, nx14005z2, nx13008z2, nx12011z2, nx11014z2, nx51544z7, 
      nx51544z12, nx51544z3, nx51544z11, nx51544z2, nx51544z21, nx51544z13, 
      NOT_u_uart_Tx_Reg_7, NOT_rb_o_data_6, NOT_u_uart_Tx_Reg_6, 
      NOT_rb_o_data_5, NOT_u_uart_Tx_Reg_5, NOT_rb_o_data_4, 
      NOT_u_uart_Tx_Reg_4, NOT_rb_o_data_3, NOT_u_uart_Tx_Reg_3, 
      NOT_rb_o_data_2, NOT_u_uart_Tx_Reg_2, NOT_rb_o_data_1, nx17862z3, 
      NOT_rb_o_data_0, nx62197z1, nx17862z1, NOT_GND, nx7359z3, 
      NOT_rb_rd_en_delayed, nx59319z1, nx37156z1, nx12790z3, NOT_uart_rx, 
      NOT_u_uart_Tx_Reg_8, NOT_u_uart_Tx_Reg_14n6ss1_8, nx64683z2, nx13787z1, 
      nx24396z1: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   seg7_en(1) <= seg7_en_EXMPLR189(1) ;
   seg7_en(0) <= seg7_en_EXMPLR189(0) ;
   write_fifo_mem_mem : ram_dq_8_0 port map ( wr_data1(7)=>uart_pixel(7), 
      wr_data1(6)=>uart_pixel(6), wr_data1(5)=>uart_pixel(5), wr_data1(4)=>
      uart_pixel(4), wr_data1(3)=>uart_pixel(3), wr_data1(2)=>uart_pixel(2), 
      wr_data1(1)=>uart_pixel(1), wr_data1(0)=>uart_pixel(0), rd_data1(7)=>
      write_fifo_q(7), rd_data1(6)=>write_fifo_q(6), rd_data1(5)=>
      write_fifo_q(5), rd_data1(4)=>write_fifo_q(4), rd_data1(3)=>
      write_fifo_q(3), rd_data1(2)=>write_fifo_q(2), rd_data1(1)=>
      write_fifo_q(1), rd_data1(0)=>write_fifo_q(0), addr1(7)=>
      write_fifo_pointer(7), addr1(6)=>write_fifo_pointer(6), addr1(5)=>
      write_fifo_pointer(5), addr1(4)=>write_fifo_pointer(4), addr1(3)=>
      write_fifo_pointer(3), addr1(2)=>write_fifo_pointer(2), addr1(1)=>
      write_fifo_pointer(1), addr1(0)=>write_fifo_pointer(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,0), wr_ena1=>rx_valid, rd_ena1=>DANGLING(0,1), 
      ena1=>DANGLING(0,2), rst1=>DANGLING(0,3), regce1=>DANGLING(0,4), 
      regrst1=>DANGLING(0,5));
   read_fifo_mem_mem : ram_dq_8_1 port map ( wr_data1(7)=>rb_i_data(7), 
      wr_data1(6)=>rb_i_data(6), wr_data1(5)=>rb_i_data(5), wr_data1(4)=>
      rb_i_data(4), wr_data1(3)=>rb_i_data(3), wr_data1(2)=>rb_i_data(2), 
      wr_data1(1)=>rb_i_data(1), wr_data1(0)=>rb_i_data(0), rd_data1(7)=>
      read_fifo_q(7), rd_data1(6)=>read_fifo_q(6), rd_data1(5)=>
      read_fifo_q(5), rd_data1(4)=>read_fifo_q(4), rd_data1(3)=>
      read_fifo_q(3), rd_data1(2)=>read_fifo_q(2), rd_data1(1)=>
      read_fifo_q(1), rd_data1(0)=>read_fifo_q(0), addr1(7)=>
      read_fifo_pointer(7), addr1(6)=>read_fifo_pointer(6), addr1(5)=>
      read_fifo_pointer(5), addr1(4)=>read_fifo_pointer(4), addr1(3)=>
      read_fifo_pointer(3), addr1(2)=>read_fifo_pointer(2), addr1(1)=>
      read_fifo_pointer(1), addr1(0)=>read_fifo_pointer(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,6), wr_ena1=>rb_i_valid, rd_ena1=>DANGLING(0,7), 
      ena1=>DANGLING(0,8), rst1=>DANGLING(0,9), regce1=>DANGLING(0,10), 
      regrst1=>DANGLING(0,11));
   u_kirsch_memA_mem : ram_dq_8_2 port map ( wr_data1(7)=>k_i_pixel(7), 
      wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), wr_data1(4)=>
      k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>k_i_pixel(2), 
      wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), rd_data1(7)=>
      u_kirsch_o_dataA(7), rd_data1(6)=>u_kirsch_o_dataA(6), rd_data1(5)=>
      u_kirsch_o_dataA(5), rd_data1(4)=>u_kirsch_o_dataA(4), rd_data1(3)=>
      u_kirsch_o_dataA(3), rd_data1(2)=>u_kirsch_o_dataA(2), rd_data1(1)=>
      u_kirsch_o_dataA(1), rd_data1(0)=>u_kirsch_o_dataA(0), addr1(7)=>
      u_kirsch_address(7), addr1(6)=>u_kirsch_address(6), addr1(5)=>
      u_kirsch_address(5), addr1(4)=>u_kirsch_address(4), addr1(3)=>
      u_kirsch_address(3), addr1(2)=>u_kirsch_address(2), addr1(1)=>
      u_kirsch_address(1), addr1(0)=>u_kirsch_address(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,12), wr_ena1=>nx41042z4, rd_ena1=>DANGLING(0,13), 
      ena1=>DANGLING(0,14), rst1=>DANGLING(0,15), regce1=>DANGLING(0,16), 
      regrst1=>DANGLING(0,17));
   u_kirsch_memB_mem : ram_dq_8_3 port map ( wr_data1(7)=>k_i_pixel(7), 
      wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), wr_data1(4)=>
      k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>k_i_pixel(2), 
      wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), rd_data1(7)=>
      u_kirsch_o_dataB(7), rd_data1(6)=>u_kirsch_o_dataB(6), rd_data1(5)=>
      u_kirsch_o_dataB(5), rd_data1(4)=>u_kirsch_o_dataB(4), rd_data1(3)=>
      u_kirsch_o_dataB(3), rd_data1(2)=>u_kirsch_o_dataB(2), rd_data1(1)=>
      u_kirsch_o_dataB(1), rd_data1(0)=>u_kirsch_o_dataB(0), addr1(7)=>
      u_kirsch_address(7), addr1(6)=>u_kirsch_address(6), addr1(5)=>
      u_kirsch_address(5), addr1(4)=>u_kirsch_address(4), addr1(3)=>
      u_kirsch_address(3), addr1(2)=>u_kirsch_address(2), addr1(1)=>
      u_kirsch_address(1), addr1(0)=>u_kirsch_address(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,18), wr_ena1=>nx41042z3, rd_ena1=>DANGLING(0,19), 
      ena1=>DANGLING(0,20), rst1=>DANGLING(0,21), regce1=>DANGLING(0,22), 
      regrst1=>DANGLING(0,23));
   u_kirsch_memC_mem : ram_dq_8_4 port map ( wr_data1(7)=>k_i_pixel(7), 
      wr_data1(6)=>k_i_pixel(6), wr_data1(5)=>k_i_pixel(5), wr_data1(4)=>
      k_i_pixel(4), wr_data1(3)=>k_i_pixel(3), wr_data1(2)=>k_i_pixel(2), 
      wr_data1(1)=>k_i_pixel(1), wr_data1(0)=>k_i_pixel(0), rd_data1(7)=>
      u_kirsch_o_dataC(7), rd_data1(6)=>u_kirsch_o_dataC(6), rd_data1(5)=>
      u_kirsch_o_dataC(5), rd_data1(4)=>u_kirsch_o_dataC(4), rd_data1(3)=>
      u_kirsch_o_dataC(3), rd_data1(2)=>u_kirsch_o_dataC(2), rd_data1(1)=>
      u_kirsch_o_dataC(1), rd_data1(0)=>u_kirsch_o_dataC(0), addr1(7)=>
      u_kirsch_address(7), addr1(6)=>u_kirsch_address(6), addr1(5)=>
      u_kirsch_address(5), addr1(4)=>u_kirsch_address(4), addr1(3)=>
      u_kirsch_address(3), addr1(2)=>u_kirsch_address(2), addr1(1)=>
      u_kirsch_address(1), addr1(0)=>u_kirsch_address(0), wr_clk1=>clk, 
      rd_clk1=>DANGLING(0,24), wr_ena1=>nx4443z1, rd_ena1=>DANGLING(0,25), 
      ena1=>DANGLING(0,26), rst1=>DANGLING(0,27), regce1=>DANGLING(0,28), 
      regrst1=>DANGLING(0,29));
   led_triBus1_0 : TRI port map ( a_OUT=>led(0), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_1 : TRI port map ( a_OUT=>led(1), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_2 : TRI port map ( a_OUT=>led(2), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_3 : TRI port map ( a_OUT=>led(3), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_4 : TRI port map ( a_OUT=>led(4), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_5 : TRI port map ( a_OUT=>led(5), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_6 : TRI port map ( a_OUT=>led(6), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   led_triBus1_7 : TRI port map ( a_OUT=>led(7), a_IN=>GND_EXMPLR188, OE=>
      GND_EXMPLR188);
   u_seg7_u_dual_seg7_o_char_triBus3_6 : TRI port map ( a_OUT=>seg7_data(6), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4);
   u_seg7_u_dual_seg7_o_char_triBus3_5 : TRI port map ( a_OUT=>seg7_data(5), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2);
   u_seg7_u_dual_seg7_ix36127z20184 : TRI port map ( a_OUT=>seg7_data(1), 
      a_IN=>GND_EXMPLR188, OE=>
      u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0);
   incdec_mux_0_dup_113 <= NOT write_fifo_status_cnt(0);
   incdec_mux_0_dup_113_dup_777 <= NOT read_fifo_status_cnt(0);
   seg7_en_EXMPLR189(0) <= NOT seg7_en_EXMPLR189(1);
   k_o_data_7 <= NOT reset_n;
   GND_EXMPLR188 <= '0';
   PWR <= '1';
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2;
   u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 <= NOT 
   u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4;
   uart_tx <= NOT nx62197z1;
   NOT_GND <= NOT GND_EXMPLR188;
   NOT_rb_rd_en_delayed <= NOT rb_rd_en_delayed;
   u_uart_Rx_r <= NOT nx12790z3;
   NOT_uart_rx <= NOT uart_rx;
   u_uart_RxFSM(0) <= NOT nx64683z2;
   ix2_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0, cout=>nx27063z1, dataa=>reset_count(0), 
      datad=>PWR);
   ix6_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx39256z1, dataa=>reset_count(1), 
      datad=>PWR, cin=>nx27063z1);
   ix10_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx57428z1, dataa=>reset_count(2), 
      datad=>PWR, cin=>nx39256z1);
   ix14_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx23040z1, dataa=>reset_count(3), 
      datad=>PWR, cin=>nx57428z1);
   ix18_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58827z1, dataa=>reset_count(4), 
      datad=>PWR, cin=>nx23040z1);
   ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx37857z1, dataa=>reset_count(5), 
      datad=>PWR, cin=>nx58827z1);
   ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx41995z1, dataa=>reset_count(6), 
      datad=>PWR, cin=>nx37857z1);
   ix578_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx8364z1, dataa=>reset_count(7), 
      datad=>PWR, cin=>nx41995z1);
   ix580_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx9072z1, dataa=>reset_count(8), 
      datad=>PWR, cin=>nx8364z1);
   ix49_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx40977z1, dataa=>reset_count(9), 
      datad=>PWR, cin=>nx9072z1);
   ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, dataa=>reset_count(10), datad=>PWR, cin
      =>nx40977z1);
   ix584_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_602, cout=>nx38358z1, dataa=>
      write_fifo_wr_pointer(0), datad=>PWR);
   ix586_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_604, cout=>nx53932z1, dataa=>
      write_fifo_wr_pointer(1), datad=>PWR, cin=>nx38358z1);
   ix588_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_606, cout=>nx43509z1, dataa=>
      write_fifo_wr_pointer(2), datad=>PWR, cin=>nx53932z1);
   ix590_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_608, cout=>nx27935z1, dataa=>
      write_fifo_wr_pointer(3), datad=>PWR, cin=>nx43509z1);
   ix592_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_610, cout=>nx12361z1, dataa=>
      write_fifo_wr_pointer(4), datad=>PWR, cin=>nx27935z1);
   ix594_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_612, cout=>nx62323z1, dataa=>
      write_fifo_wr_pointer(5), datad=>PWR, cin=>nx12361z1);
   ix596_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_614, cout=>nx11000z1, dataa=>
      write_fifo_wr_pointer(6), datad=>PWR, cin=>nx62323z1);
   ix597_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_616, dataa=>write_fifo_wr_pointer(7), 
      datad=>PWR, cin=>nx11000z1);
   ix619_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_638, cout=>nx35880z1, dataa=>
      write_fifo_rd_pointer(0), datad=>PWR);
   ix621_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_640, cout=>nx51454z1, dataa=>
      write_fifo_rd_pointer(1), datad=>PWR, cin=>nx35880z1);
   ix623_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_642, cout=>nx1492z1, dataa=>
      write_fifo_rd_pointer(2), datad=>PWR, cin=>nx51454z1);
   ix625_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_644, cout=>nx17066z1, dataa=>
      write_fifo_rd_pointer(3), datad=>PWR, cin=>nx1492z1);
   ix627_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_646, cout=>nx32896z1, dataa=>
      write_fifo_rd_pointer(4), datad=>PWR, cin=>nx17066z1);
   ix629_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_648, cout=>nx64801z1, dataa=>
      write_fifo_rd_pointer(5), datad=>PWR, cin=>nx32896z1);
   ix631_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_650, cout=>nx57014z1, dataa=>
      write_fifo_rd_pointer(6), datad=>PWR, cin=>nx64801z1);
   ix632_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_652, dataa=>write_fifo_rd_pointer(7), 
      datad=>PWR, cin=>nx57014z1);
   ix684_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_703, cout=>nx4983z1, dataa=>
      read_fifo_wr_pointer(0), datad=>PWR);
   ix686_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_705, cout=>nx10591z1, dataa=>
      read_fifo_wr_pointer(1), datad=>PWR, cin=>nx4983z1);
   ix688_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_707, cout=>nx44222z1, dataa=>
      read_fifo_wr_pointer(2), datad=>PWR, cin=>nx10591z1);
   ix690_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_709, cout=>nx59796z1, dataa=>
      read_fifo_wr_pointer(3), datad=>PWR, cin=>nx44222z1);
   ix692_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_711, cout=>nx55702z1, dataa=>
      read_fifo_wr_pointer(4), datad=>PWR, cin=>nx59796z1);
   ix694_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_713, cout=>nx40128z1, dataa=>
      read_fifo_wr_pointer(5), datad=>PWR, cin=>nx55702z1);
   ix696_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_715, cout=>nx32341z1, dataa=>
      read_fifo_wr_pointer(6), datad=>PWR, cin=>nx40128z1);
   ix697_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_717, dataa=>read_fifo_wr_pointer(7), 
      datad=>PWR, cin=>nx32341z1);
   ix720_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_739, cout=>nx65210z1, dataa=>
      read_fifo_rd_pointer(0), datad=>PWR);
   ix722_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_741, cout=>nx49636z1, dataa=>
      read_fifo_rd_pointer(1), datad=>PWR, cin=>nx65210z1);
   ix724_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_743, cout=>nx31474z1, dataa=>
      read_fifo_rd_pointer(2), datad=>PWR, cin=>nx49636z1);
   ix726_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_745, cout=>nx47048z1, dataa=>
      read_fifo_rd_pointer(3), datad=>PWR, cin=>nx31474z1);
   ix728_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_747, cout=>nx15143z1, dataa=>
      read_fifo_rd_pointer(4), datad=>PWR, cin=>nx47048z1);
   ix730_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_749, cout=>nx34819z1, dataa=>
      read_fifo_rd_pointer(5), datad=>PWR, cin=>nx15143z1);
   ix732_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_751, cout=>nx27032z1, dataa=>
      read_fifo_rd_pointer(6), datad=>PWR, cin=>nx34819z1);
   ix733_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_753, dataa=>read_fifo_rd_pointer(7), 
      datad=>PWR, cin=>nx27032z1);
   ix795_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_814, cout=>nx55390z2, dataa=>
      nx39816z1, datad=>PWR);
   ix797_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_815, cout=>nx60108z2, dataa=>
      nx55390z1, datad=>PWR, cin=>nx55390z2);
   ix799_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_816, cout=>nx46048z2, dataa=>
      nx60108z1, datad=>PWR, cin=>nx60108z2);
   ix801_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_817, cout=>nx35062z2, dataa=>
      nx46048z1, datad=>PWR, cin=>nx46048z2);
   ix803_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_818, cout=>nx50636z2, dataa=>
      nx35062z1, datad=>PWR, cin=>nx35062z2);
   ix805_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_819, cout=>nx674z2, dataa=>nx50636z1, 
      datad=>PWR, cin=>nx50636z2);
   ix807_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_820, cout=>nx49288z2, dataa=>nx674z1, 
      datad=>PWR, cin=>nx674z2);
   ix809_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_821, cout=>nx55707z2, dataa=>
      nx49288z1, datad=>PWR, cin=>nx49288z2);
   ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_822, cout=>nx44217z2, dataa=>
      nx55707z1, datad=>PWR, cin=>nx55707z2);
   ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_823, cout=>nx10586z1, dataa=>
      nx44217z1, datad=>PWR, cin=>nx44217z2);
   ix61_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_824, dataa=>seg7_en_EXMPLR189(1), 
      datad=>PWR, cin=>nx10586z1);
   ix830_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_862, cout=>nx52912z1, dataa=>
      u_uart_RxDiv(0), datad=>PWR);
   ix832_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_864, cout=>nx2950z1, dataa=>
      u_uart_RxDiv(1), datad=>PWR, cin=>nx52912z1);
   ix834_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_866, cout=>nx47012z1, dataa=>
      u_uart_RxDiv(2), datad=>PWR, cin=>nx2950z1);
   ix836_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_868, cout=>nx31438z1, dataa=>
      u_uart_RxDiv(3), datad=>PWR, cin=>nx47012z1);
   ix838_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_870, cout=>nx63343z1, dataa=>
      u_uart_RxDiv(4), datad=>PWR, cin=>nx31438z1);
   ix840_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_872, cout=>nx17767z1, dataa=>
      u_uart_RxDiv(5), datad=>PWR, cin=>nx63343z1);
   ix842_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_874, cout=>nx33341z1, dataa=>
      u_uart_RxDiv(6), datad=>PWR, cin=>nx17767z1);
   ix844_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_876, cout=>nx48915z1, dataa=>
      u_uart_RxDiv(7), datad=>PWR, cin=>nx33341z1);
   ix846_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_878, cout=>nx64489z1, dataa=>
      u_uart_RxDiv(8), datad=>PWR, cin=>nx48915z1);
   ix848_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_880, cout=>nx58796z1, dataa=>
      u_uart_RxDiv(9), datad=>PWR, cin=>nx64489z1);
   ix849_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_882, dataa=>u_uart_RxDiv(10), datad
      =>PWR, cin=>nx58796z1);
   ix884_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_915, cout=>nx39407z1, dataa=>
      u_uart_TxDiv(0), datad=>PWR);
   ix886_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_917, cout=>nx10555z1, dataa=>
      u_uart_TxDiv(1), datad=>PWR, cin=>nx39407z1);
   ix888_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_919, cout=>nx42460z1, dataa=>
      u_uart_TxDiv(2), datad=>PWR, cin=>nx10555z1);
   ix890_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_921, cout=>nx26886z1, dataa=>
      u_uart_TxDiv(3), datad=>PWR, cin=>nx42460z1);
   ix892_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_923, cout=>nx11312z1, dataa=>
      u_uart_TxDiv(4), datad=>PWR, cin=>nx26886z1);
   ix894_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_925, cout=>nx4262z1, dataa=>
      u_uart_TxDiv(5), datad=>PWR, cin=>nx11312z1);
   ix896_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_927, cout=>nx19836z1, dataa=>
      u_uart_TxDiv(6), datad=>PWR, cin=>nx4262z1);
   ix898_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_929, cout=>nx31640z1, dataa=>
      u_uart_TxDiv(7), datad=>PWR, cin=>nx19836z1);
   ix900_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_931, cout=>nx47250z1, dataa=>
      u_uart_TxDiv(8), datad=>PWR, cin=>nx31640z1);
   ix38_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_933, cout=>nx16066z1, dataa=>
      u_uart_TxDiv(9), datad=>PWR, cin=>nx47250z1);
   ix902_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_935, cout=>nx8279z1, dataa=>
      u_uart_TxDiv(10), datad=>PWR, cin=>nx16066z1);
   ix903_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, dataa=>u_uart_TxDiv(11), datad=>PWR, 
      cin=>nx8279z1);
   ix975_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_997, cout=>nx38998z1, dataa=>
      u_kirsch_row_count(0), datad=>PWR);
   ix977_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_999, cout=>nx10964z1, dataa=>
      u_kirsch_row_count(1), datad=>PWR, cin=>nx38998z1);
   ix979_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1001, cout=>nx42869z1, dataa=>
      u_kirsch_row_count(2), datad=>PWR, cin=>nx10964z1);
   ix981_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1003, cout=>nx27295z1, dataa=>
      u_kirsch_row_count(3), datad=>PWR, cin=>nx42869z1);
   ix983_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1005, cout=>nx53815z1, dataa=>
      u_kirsch_row_count(4), datad=>PWR, cin=>nx27295z1);
   ix985_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1007, cout=>nx3853z1, dataa=>
      u_kirsch_row_count(5), datad=>PWR, cin=>nx53815z1);
   ix987_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1009, cout=>nx11640z1, dataa=>
      u_kirsch_row_count(6), datad=>PWR, cin=>nx3853z1);
   ix988_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1011, dataa=>u_kirsch_row_count(7), 
      datad=>PWR, cin=>nx11640z1);
   ix1015_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>inc_d_0_dup_1037, cout=>nx16836z1, dataa=>
      u_kirsch_address(0), datad=>PWR);
   ix1017_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1039, cout=>nx64274z1, dataa=>
      u_kirsch_address(1), datad=>PWR, cin=>nx16836z1);
   ix1019_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1041, cout=>nx32369z1, dataa=>
      u_kirsch_address(2), datad=>PWR, cin=>nx64274z1);
   ix1021_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1043, cout=>nx47943z1, dataa=>
      u_kirsch_address(3), datad=>PWR, cin=>nx32369z1);
   ix1023_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1045, cout=>nx2019z1, dataa=>
      u_kirsch_address(4), datad=>PWR, cin=>nx47943z1);
   ix1025_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1047, cout=>nx51981z1, dataa=>
      u_kirsch_address(5), datad=>PWR, cin=>nx2019z1);
   ix1027_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1049, cout=>nx44194z1, dataa=>
      u_kirsch_address(6), datad=>PWR, cin=>nx51981z1);
   ix1028_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1051, dataa=>u_kirsch_address(7), 
      datad=>PWR, cin=>nx44194z1);
   ix5_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx58387z1, dataa=>read_fifo_status_cnt(0), datad=>
      PWR);
   ix758_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_1_dup_114_dup_779, cout=>nx24756z1, 
      dataa=>read_fifo_status_cnt(1), datab=>nx9182z1, datad=>PWR, cin=>
      nx58387z1);
   ix760_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_2_dup_115_dup_781, cout=>nx9182z2, 
      dataa=>read_fifo_status_cnt(2), datab=>nx9182z1, datad=>PWR, cin=>
      nx24756z1);
   ix762_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_3_dup_116_dup_783, cout=>nx59144z1, 
      dataa=>read_fifo_status_cnt(3), datab=>nx9182z1, datad=>PWR, cin=>
      nx9182z2);
   ix764_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_4_dup_117_dup_785, cout=>nx21966z1, 
      dataa=>read_fifo_status_cnt(4), datab=>nx9182z1, datad=>PWR, cin=>
      nx59144z1);
   ix766_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_5_dup_118_dup_787, cout=>nx37540z1, 
      dataa=>read_fifo_status_cnt(5), datab=>nx9182z1, datad=>PWR, cin=>
      nx21966z1);
   ix768_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_6_dup_119_dup_789, cout=>nx5635z1, 
      dataa=>read_fifo_status_cnt(6), datab=>nx9182z1, datad=>PWR, cin=>
      nx37540z1);
   ix770_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_7_dup_120_dup_791, cout=>nx52114z1, 
      dataa=>read_fifo_status_cnt(7), datab=>nx9182z1, datad=>PWR, cin=>
      nx5635z1);
   ix771_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_8_dup_121_dup_793, dataa=>
      read_fifo_status_cnt(8), datab=>nx9182z1, datad=>PWR, cin=>nx52114z1);
   ix7_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx30620z1, dataa=>write_fifo_status_cnt(0), datad=>
      PWR);
   ix656_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_1_dup_114, cout=>nx15046z1, dataa=>
      write_fifo_status_cnt(1), datab=>nx7605z1, datad=>PWR, cin=>nx30620z1
   );
   ix658_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_2_dup_115, cout=>nx46951z1, dataa=>
      write_fifo_status_cnt(2), datab=>nx7605z1, datad=>PWR, cin=>nx15046z1
   );
   ix660_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_3_dup_116, cout=>nx34159z1, dataa=>
      write_fifo_status_cnt(3), datab=>nx7605z1, datad=>PWR, cin=>nx46951z1
   );
   ix662_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_4_dup_117, cout=>nx49733z1, dataa=>
      write_fifo_status_cnt(4), datab=>nx7605z1, datad=>PWR, cin=>nx34159z1
   );
   ix664_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_5_dup_118, cout=>nx65307z1, dataa=>
      write_fifo_status_cnt(5), datab=>nx7605z1, datad=>PWR, cin=>nx49733z1
   );
   ix666_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_6_dup_119, cout=>nx50191z1, dataa=>
      write_fifo_status_cnt(6), datab=>nx7605z1, datad=>PWR, cin=>nx65307z1
   );
   ix668_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_7_dup_120, cout=>nx42404z1, dataa=>
      write_fifo_status_cnt(7), datab=>nx7605z1, datad=>PWR, cin=>nx50191z1
   );
   ix669_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>incdec_mux_8_dup_121, dataa=>
      write_fifo_status_cnt(8), datab=>nx7605z1, datad=>PWR, cin=>nx42404z1
   );
   u_kirsch_rtlc1_110_gt_19_ix21_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx46608z1, dataa=>u_kirsch_i_3(0), datab=>
      u_kirsch_i_2(0), datad=>PWR);
   u_kirsch_rtlc1_110_gt_19_ix23_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx34502z1, dataa=>u_kirsch_i_3(1), datab=>
      u_kirsch_i_2(1), datad=>PWR, cin=>nx46608z1);
   u_kirsch_rtlc1_110_gt_19_ix25_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx50076z1, dataa=>u_kirsch_i_3(2), datab=>
      u_kirsch_i_2(2), datad=>PWR, cin=>nx34502z1);
   u_kirsch_rtlc1_110_gt_19_ix27_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx114z1, dataa=>u_kirsch_i_3(3), datab=>
      u_kirsch_i_2(3), datad=>PWR, cin=>nx50076z1);
   u_kirsch_rtlc1_110_gt_19_ix29_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx31791z1, dataa=>u_kirsch_i_3(4), datab=>
      u_kirsch_i_2(4), datad=>PWR, cin=>nx114z1);
   u_kirsch_rtlc1_110_gt_19_ix31_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx16217z1, dataa=>u_kirsch_i_3(5), datab=>
      u_kirsch_i_2(5), datad=>PWR, cin=>nx31791z1);
   u_kirsch_rtlc1_110_gt_19_ix33_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx643z1, dataa=>u_kirsch_i_3(6), datab=>
      u_kirsch_i_2(6), datad=>PWR, cin=>nx16217z1);
   u_kirsch_rtlc1_110_gt_19_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx26313z1, dataa=>u_kirsch_i_3(7), datab=>
      u_kirsch_i_2(7), datad=>PWR, cin=>nx643z1);
   u_kirsch_rtlc5_205_gt_25_ix25_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx28806z1, dataa=>u_kirsch_r_add1_a(0), datab=>
      u_kirsch_r_max1(0), datad=>PWR);
   u_kirsch_rtlc5_205_gt_25_ix27_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx44380z1, dataa=>u_kirsch_r_add1_a(1), datab=>
      u_kirsch_r_max1(1), datad=>PWR, cin=>nx28806z1);
   u_kirsch_rtlc5_205_gt_25_ix29_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12475z1, dataa=>u_kirsch_r_add1_a(2), datab=>
      u_kirsch_r_max1(2), datad=>PWR, cin=>nx44380z1);
   u_kirsch_rtlc5_205_gt_25_ix31_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx37487z1, dataa=>u_kirsch_r_add1_a(3), datab=>
      u_kirsch_r_max1(3), datad=>PWR, cin=>nx12475z1);
   u_kirsch_rtlc5_205_gt_25_ix33_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx21913z1, dataa=>u_kirsch_r_add1_a(4), datab=>
      u_kirsch_r_max1(4), datad=>PWR, cin=>nx37487z1);
   u_kirsch_rtlc5_205_gt_25_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6339z1, dataa=>u_kirsch_r_add1_a(5), datab=>
      u_kirsch_r_max1(5), datad=>PWR, cin=>nx21913z1);
   u_kirsch_rtlc5_205_gt_25_ix37_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx56301z1, dataa=>u_kirsch_r_add1_a(6), datab=>
      u_kirsch_r_max1(6), datad=>PWR, cin=>nx6339z1);
   u_kirsch_rtlc5_205_gt_25_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx42866z1, dataa=>u_kirsch_r_add1_a(7), datab=>
      u_kirsch_r_max1(7), datad=>PWR, cin=>nx56301z1);
   u_kirsch_rtlc5_205_gt_25_ix41_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx58440z1, dataa=>u_kirsch_r_add1_a(8), datab=>
      u_kirsch_r_max1(8), datad=>PWR, cin=>nx42866z1);
   u_kirsch_rtlc5_205_gt_25_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx1252z1, dataa=>u_kirsch_r_add1_a(9), datab=>
      u_kirsch_r_max1(9), datad=>PWR, cin=>nx58440z1);
   u_kirsch_rtlc5_215_gt_26_ix25_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx26840z1, dataa=>u_kirsch_r_add1_a(0), datab=>
      u_kirsch_r_add1_b(0), datad=>PWR);
   u_kirsch_rtlc5_215_gt_26_ix27_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54270z1, dataa=>u_kirsch_r_add1_a(1), datab=>
      u_kirsch_r_add1_b(1), datad=>PWR, cin=>nx26840z1);
   u_kirsch_rtlc5_215_gt_26_ix29_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx22365z1, dataa=>u_kirsch_r_add1_a(2), datab=>
      u_kirsch_r_add1_b(2), datad=>PWR, cin=>nx54270z1);
   u_kirsch_rtlc5_215_gt_26_ix31_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx37939z1, dataa=>u_kirsch_r_add1_a(3), datab=>
      u_kirsch_r_add1_b(3), datad=>PWR, cin=>nx22365z1);
   u_kirsch_rtlc5_215_gt_26_ix33_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12023z1, dataa=>u_kirsch_r_add1_a(4), datab=>
      u_kirsch_r_add1_b(4), datad=>PWR, cin=>nx37939z1);
   u_kirsch_rtlc5_215_gt_26_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61985z1, dataa=>u_kirsch_r_add1_a(5), datab=>
      u_kirsch_r_add1_b(5), datad=>PWR, cin=>nx12023z1);
   u_kirsch_rtlc5_215_gt_26_ix37_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx46411z1, dataa=>u_kirsch_r_add1_a(6), datab=>
      u_kirsch_r_add1_b(6), datad=>PWR, cin=>nx61985z1);
   u_kirsch_rtlc5_215_gt_26_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12780z1, dataa=>u_kirsch_r_add1_a(7), datab=>
      u_kirsch_r_add1_b(7), datad=>PWR, cin=>nx46411z1);
   u_kirsch_rtlc5_215_gt_26_ix41_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx2794z1, dataa=>u_kirsch_r_add1_a(8), datab=>
      u_kirsch_r_add1_b(8), datad=>PWR, cin=>nx12780z1);
   u_kirsch_rtlc5_215_gt_26_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"004d",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6502z1, dataa=>u_kirsch_r_add1_a(9), datab=>
      u_kirsch_r_add1_b(9), datad=>PWR, cin=>nx2794z1);
   u_kirsch_r_add0_a_add8_0i1_ix35_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(0), cout=>nx14816z1, 
      dataa=>u_kirsch_i_0(0), datab=>u_kirsch_i_1(0), datad=>PWR);
   u_kirsch_r_add0_a_add8_0i1_ix39_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(1), cout=>nx1515z1, dataa
      =>u_kirsch_i_0(1), datab=>u_kirsch_i_1(1), datad=>PWR, cin=>nx14816z1
   );
   u_kirsch_r_add0_a_add8_0i1_ix43_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(2), cout=>nx29633z1, 
      dataa=>u_kirsch_i_0(2), datab=>u_kirsch_i_1(2), datad=>PWR, cin=>
      nx1515z1);
   u_kirsch_r_add0_a_add8_0i1_ix47_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(3), cout=>nx13302z1, 
      dataa=>u_kirsch_i_0(3), datab=>u_kirsch_i_1(3), datad=>PWR, cin=>
      nx29633z1);
   u_kirsch_r_add0_a_add8_0i1_ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(4), cout=>nx21086z1, 
      dataa=>u_kirsch_i_0(4), datab=>u_kirsch_i_1(4), datad=>PWR, cin=>
      nx13302z1);
   u_kirsch_r_add0_a_add8_0i1_ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(5), cout=>nx55474z1, 
      dataa=>u_kirsch_i_0(5), datab=>u_kirsch_i_1(5), datad=>PWR, cin=>
      nx21086z1);
   u_kirsch_r_add0_a_add8_0i1_ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(6), cout=>nx59267z1, 
      dataa=>u_kirsch_i_0(6), datab=>u_kirsch_i_1(6), datad=>PWR, cin=>
      nx55474z1);
   u_kirsch_r_add0_a_add8_0i1_ix63_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(7), cout=>nx51089z1, 
      dataa=>u_kirsch_i_0(7), datab=>u_kirsch_i_1(7), datad=>PWR, cin=>
      nx59267z1);
   u_kirsch_r_add1_a_add9_3i1_ix37_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(0), cout=>nx53938z1, 
      dataa=>u_kirsch_r_max0(0), datab=>u_kirsch_r_add0_a(0), datad=>PWR);
   u_kirsch_r_add1_a_add9_3i1_ix41_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(1), cout=>nx42746z1, 
      dataa=>u_kirsch_r_max0(1), datab=>u_kirsch_r_add0_a(1), datad=>PWR, 
      cin=>nx53938z1);
   u_kirsch_r_add1_a_add9_3i1_ix45_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(2), cout=>nx57178z1, 
      dataa=>u_kirsch_r_max0(2), datab=>u_kirsch_r_add0_a(2), datad=>PWR, 
      cin=>nx42746z1);
   u_kirsch_r_add1_a_add9_3i1_ix49_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(3), cout=>nx7973z1, dataa
      =>u_kirsch_r_max0(3), datab=>u_kirsch_r_add0_a(3), datad=>PWR, cin=>
      nx57178z1);
   u_kirsch_r_add1_a_add9_3i1_ix53_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(4), cout=>nx23175z1, 
      dataa=>u_kirsch_r_max0(4), datab=>u_kirsch_r_add0_a(4), datad=>PWR, 
      cin=>nx7973z1);
   u_kirsch_r_add1_a_add9_3i1_ix57_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(5), cout=>nx6844z1, dataa
      =>u_kirsch_r_max0(5), datab=>u_kirsch_r_add0_a(5), datad=>PWR, cin=>
      nx23175z1);
   u_kirsch_r_add1_a_add9_3i1_ix61_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(6), cout=>nx27544z1, 
      dataa=>u_kirsch_r_max0(6), datab=>u_kirsch_r_add0_a(6), datad=>PWR, 
      cin=>nx6844z1);
   u_kirsch_r_add1_a_add9_3i1_ix65_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(7), cout=>nx3604z1, dataa
      =>u_kirsch_r_max0(7), datab=>u_kirsch_r_add0_a(7), datad=>PWR, cin=>
      nx27544z1);
   u_kirsch_r_add1_a_add9_3i1_ix69_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(8), cout=>nx24080z1, 
      dataa=>u_kirsch_r_add0_a(8), datad=>PWR, cin=>nx3604z1);
   u_kirsch_r_sub0_sub13_6i1_ix22_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx13358z1, dataa=>u_kirsch_r_add2(1), datab=>
      u_kirsch_r_add2(0), datad=>PWR);
   u_kirsch_r_sub0_sub13_6i1_ix24_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx36604z1, dataa=>u_kirsch_r_add2(2), datad=>PWR, 
      cin=>nx13358z1);
   u_kirsch_r_sub0_sub13_6i1_ix26_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx21030z1, dataa=>u_kirsch_r_max1(0), datab=>
      u_kirsch_r_add2(3), datad=>PWR, cin=>nx36604z1);
   u_kirsch_r_sub0_sub13_6i1_ix28_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52935z1, dataa=>u_kirsch_r_max1(1), datab=>
      u_kirsch_r_add2(4), datad=>PWR, cin=>nx21030z1);
   u_kirsch_r_sub0_sub13_6i1_ix30_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx37361z1, dataa=>u_kirsch_r_max1(2), datab=>
      u_kirsch_r_add2(5), datad=>PWR, cin=>nx52935z1);
   u_kirsch_r_sub0_sub13_6i1_ix32_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b2",
         sum_lutc_input => "cin") 
       port map ( cout=>nx59323z1, dataa=>u_kirsch_r_max1(3), datab=>
      u_kirsch_r_add2(6), datad=>PWR, cin=>nx37361z1);
   u_kirsch_r_sub0_sub13_6i1_ix36_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_7, cout=>nx22544z1, dataa=>
      u_kirsch_r_max1(4), datab=>u_kirsch_r_add2(7), datad=>PWR, cin=>
      nx59323z1);
   u_kirsch_r_sub0_sub13_6i1_ix40_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_8, cout=>nx56932z1, dataa=>
      u_kirsch_r_max1(5), datab=>u_kirsch_r_add2(8), datad=>PWR, cin=>
      nx22544z1);
   u_kirsch_r_sub0_sub13_6i1_ix44_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_9, cout=>nx39752z1, dataa=>
      u_kirsch_r_max1(6), datab=>u_kirsch_r_add2(9), datad=>PWR, cin=>
      nx56932z1);
   u_kirsch_r_sub0_sub13_6i1_ix48_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_10, cout=>nx23421z3, dataa
      =>u_kirsch_r_max1(7), datab=>u_kirsch_r_add2(10), datad=>PWR, cin=>
      nx39752z1);
   u_kirsch_r_sub0_sub13_6i1_ix52_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"69b2",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_11, cout=>nx10967z1, dataa
      =>u_kirsch_r_max1(8), datab=>u_kirsch_r_add2(11), datad=>PWR, cin=>
      nx23421z3);
   u_kirsch_r_sub0_sub13_6i1_ix56_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"694d",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_12, cout=>nx21429z1, dataa
      =>u_kirsch_r_max1(9), datab=>u_kirsch_r_add2(12), datad=>PWR, cin=>
      nx10967z1);
   u_kirsch_r_add2_add13_4i1_ix51_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9c40",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(0), cout=>nx52980z1, dataa
      =>nx38950z2, datab=>u_kirsch_r_add2_4n1s1f1(0), datad=>PWR, cin=>
      u_kirsch_r_add0_a(0));
   u_kirsch_r_add2_add13_4i1_ix55_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(1), cout=>nx21832z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(1), datab=>u_kirsch_r_add2_4n1s1f2(1), datad
      =>PWR, cin=>nx52980z1);
   u_kirsch_r_add2_add13_4i1_ix59_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(2), cout=>nx27373z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(2), datab=>u_kirsch_r_add2_4n1s1f2(2), datad
      =>PWR, cin=>nx21832z1);
   u_kirsch_r_add2_add13_4i1_ix63_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(3), cout=>nx58521z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(3), datab=>u_kirsch_r_add2_4n1s1f2(3), datad
      =>PWR, cin=>nx27373z1);
   u_kirsch_r_add2_add13_4i1_ix67_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(4), cout=>nx23346z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(4), datab=>u_kirsch_r_add2_4n1s1f2(4), datad
      =>PWR, cin=>nx58521z1);
   u_kirsch_r_add2_add13_4i1_ix71_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(5), cout=>nx7802z1, dataa=>
      u_kirsch_r_add2_4n1s1f1(5), datab=>u_kirsch_r_add2_4n1s1f2(5), datad=>
      PWR, cin=>nx23346z1);
   u_kirsch_r_add2_add13_4i1_ix75_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(6), cout=>nx38950z5, dataa
      =>u_kirsch_r_add2_4n1s1f1(6), datab=>u_kirsch_r_add2_4n1s1f2(6), datad
      =>PWR, cin=>nx7802z1);
   u_kirsch_r_add2_add13_4i1_ix79_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(7), cout=>nx42917z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(7), datab=>u_kirsch_r_add2_4n1s1f2(7), datad
      =>PWR, cin=>nx38950z5);
   u_kirsch_r_add2_add13_4i1_ix83_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(8), cout=>nx11769z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(8), datab=>u_kirsch_r_add2_4n1s1f2(8), datad
      =>PWR, cin=>nx42917z1);
   u_kirsch_r_add2_add13_4i1_ix87_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(9), cout=>nx37436z1, dataa
      =>u_kirsch_r_add2_4n1s1f1(9), datab=>u_kirsch_r_add2_4n1s1f2(9), datad
      =>PWR, cin=>nx11769z1);
   u_kirsch_r_add2_add13_4i1_ix91_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(10), cout=>nx62488z1, dataa
      =>u_kirsch_r_add2(10), datab=>u_kirsch_r_add2_4n1s1f2(10), datad=>PWR, 
      cin=>nx37436z1);
   u_kirsch_r_add2_add13_4i1_ix95_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(11), cout=>nx46914z1, dataa
      =>u_kirsch_r_add2(11), datab=>u_kirsch_r_add2_4n1s1f2(11), datad=>PWR, 
      cin=>nx62488z1);
   u_kirsch_r_add2_add13_4i1_ix97_fadd : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add2_4n1s1(12), dataa=>
      u_kirsch_r_add2(12), datab=>u_kirsch_r_add2_4n1s1f2(12), datad=>PWR, 
      cin=>nx46914z1);
   u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx29221z4, datad=>PWR, cin=>nx6502z1);
   u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx29221z7, datad=>PWR, cin=>nx1252z1);
   u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx40631z1, datad=>PWR, cin=>nx26313z1);
   u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_sub0_6n1s1_14, datad=>PWR, cin=>
      nx21429z1);
   u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add1_a_3n1s1(9), datad=>PWR, cin=>
      nx24080z1);
   u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>u_kirsch_r_add0_a_0n1s1(8), datad=>PWR, cin=>
      nx51089z1);
   u_uart_reg_Tx_Reg_7 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_7, d=>
      NOT_rb_o_data_6, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_8, sload=>u_uart_TxFSM(1));
   nx24396z1 <= NOT uart_reset;
   u_uart_reg_Tx_Reg_6 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_6, d=>
      NOT_rb_o_data_5, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_7, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_5 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_5, d=>
      NOT_rb_o_data_4, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_6, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_4 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_4, d=>
      NOT_rb_o_data_3, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_5, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_3 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_3, d=>
      NOT_rb_o_data_2, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_4, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_2 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_2, d=>
      NOT_rb_o_data_1, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, 
      asdata=>NOT_u_uart_Tx_Reg_3, sload=>u_uart_TxFSM(1));
   u_uart_reg_Tx_Reg_1 : dffeas port map ( q=>nx17862z3, d=>NOT_rb_o_data_0, 
      clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, prn=>PWR, asdata=>
      NOT_u_uart_Tx_Reg_2, sload=>u_uart_TxFSM(1));
   u_kirsch_reg_i_3_7 : dffeas port map ( q=>u_kirsch_i_3(7), d=>nx64381z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_6 : dffeas port map ( q=>u_kirsch_i_3(6), d=>nx65378z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_5 : dffeas port map ( q=>u_kirsch_i_3(5), d=>nx839z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_4 : dffeas port map ( q=>u_kirsch_i_3(4), d=>nx1836z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_3 : dffeas port map ( q=>u_kirsch_i_3(3), d=>nx2833z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_2 : dffeas port map ( q=>u_kirsch_i_3(2), d=>nx3830z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_1 : dffeas port map ( q=>u_kirsch_i_3(1), d=>nx4827z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_3_0 : dffeas port map ( q=>u_kirsch_i_3(0), d=>nx5824z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_2_7 : dffeas port map ( q=>u_kirsch_i_2(7), d=>nx55962z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(7), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_6 : dffeas port map ( q=>u_kirsch_i_2(6), d=>nx56959z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(6), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_5 : dffeas port map ( q=>u_kirsch_i_2(5), d=>nx57956z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(5), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_4 : dffeas port map ( q=>u_kirsch_i_2(4), d=>nx58953z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(4), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_3 : dffeas port map ( q=>u_kirsch_i_2(3), d=>nx59950z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(3), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_2 : dffeas port map ( q=>u_kirsch_i_2(2), d=>nx60947z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(2), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_1 : dffeas port map ( q=>u_kirsch_i_2(1), d=>nx61944z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(1), 
      sload=>nx25391z3);
   u_kirsch_reg_i_2_0 : dffeas port map ( q=>u_kirsch_i_2(0), d=>nx62941z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a3(0), 
      sload=>nx25391z3);
   u_kirsch_reg_i_1_7 : dffeas port map ( q=>u_kirsch_i_1(7), d=>nx17993z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_6 : dffeas port map ( q=>u_kirsch_i_1(6), d=>nx16996z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_5 : dffeas port map ( q=>u_kirsch_i_1(5), d=>nx15999z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_4 : dffeas port map ( q=>u_kirsch_i_1(4), d=>nx15002z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_3 : dffeas port map ( q=>u_kirsch_i_1(3), d=>nx14005z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_2 : dffeas port map ( q=>u_kirsch_i_1(2), d=>nx13008z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_1 : dffeas port map ( q=>u_kirsch_i_1(1), d=>nx12011z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_1_0 : dffeas port map ( q=>u_kirsch_i_1(0), d=>nx11014z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_i_0_7 : dffeas port map ( q=>u_kirsch_i_0(7), d=>nx26412z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(7), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_6 : dffeas port map ( q=>u_kirsch_i_0(6), d=>nx25415z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(6), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_5 : dffeas port map ( q=>u_kirsch_i_0(5), d=>nx24418z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(5), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_4 : dffeas port map ( q=>u_kirsch_i_0(4), d=>nx23421z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(4), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_3 : dffeas port map ( q=>u_kirsch_i_0(3), d=>nx22424z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(3), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_2 : dffeas port map ( q=>u_kirsch_i_0(2), d=>nx21427z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(2), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_1 : dffeas port map ( q=>u_kirsch_i_0(1), d=>nx20430z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(1), 
      sload=>nx25391z3);
   u_kirsch_reg_i_0_0 : dffeas port map ( q=>u_kirsch_i_0(0), d=>nx19433z1, 
      clk=>clk, ena=>nx26412z7, clrn=>PWR, prn=>PWR, asdata=>u_kirsch_a2(0), 
      sload=>nx25391z3);
   u_kirsch_reg_d3_7 : dffeas port map ( q=>u_kirsch_d3(7), d=>nx53163z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_6 : dffeas port map ( q=>u_kirsch_d3(6), d=>nx52166z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_5 : dffeas port map ( q=>u_kirsch_d3(5), d=>nx51169z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_4 : dffeas port map ( q=>u_kirsch_d3(4), d=>nx50172z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_3 : dffeas port map ( q=>u_kirsch_d3(3), d=>nx49175z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_2 : dffeas port map ( q=>u_kirsch_d3(2), d=>nx48178z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_1 : dffeas port map ( q=>u_kirsch_d3(1), d=>nx47181z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_d3_0 : dffeas port map ( q=>u_kirsch_d3(0), d=>nx46184z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_7 : dffeas port map ( q=>u_kirsch_c3(7), d=>nx58298z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_6 : dffeas port map ( q=>u_kirsch_c3(6), d=>nx57301z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_5 : dffeas port map ( q=>u_kirsch_c3(5), d=>nx56304z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_4 : dffeas port map ( q=>u_kirsch_c3(4), d=>nx55307z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_3 : dffeas port map ( q=>u_kirsch_c3(3), d=>nx54310z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_2 : dffeas port map ( q=>u_kirsch_c3(2), d=>nx53313z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_1 : dffeas port map ( q=>u_kirsch_c3(1), d=>nx52316z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_c3_0 : dffeas port map ( q=>u_kirsch_c3(0), d=>nx51319z1, 
      clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir1_final_3 : dffeas port map ( q=>u_kirsch_dir1_final(3), 
      d=>nx5085z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_dir1_final_2 : dffeas port map ( q=>u_kirsch_dir1_final(2), 
      d=>nx4088z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_dir1_final_1 : dffeas port map ( q=>u_kirsch_dir1_final(1), 
      d=>nx3091z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_dir1_final_0 : dffeas port map ( q=>u_kirsch_dir1_final(0), 
      d=>nx2094z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_row_index_0 : dffeas port map ( q=>u_kirsch_row_index(0), d
      =>nx63596z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_row_index_1 : dffeas port map ( q=>u_kirsch_row_index(1), d
      =>nx62599z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_uart_reg_TxFSM_1 : dffeas port map ( q=>u_uart_TxFSM(1), d=>nx8356z1, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_uart_reg_TxFSM_0 : dffeas port map ( q=>u_uart_TxFSM(0), d=>nx7359z1, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_uart_reg_Tx_Reg_0 : dffeas port map ( q=>nx62197z1, d=>nx17862z1, clk=>
      clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>NOT_GND);
   reg_wait_for_tx_valid : dffeas port map ( q=>wait_for_tx_valid, d=>
      nx64502z1, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   u_uart_reg_RxErr : dffeas port map ( q=>k_o_data_6, d=>nx40325z1, clk=>
      clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir2_0 : dffeas port map ( q=>u_kirsch_dir2(0), d=>nx60486z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir2_1 : dffeas port map ( q=>u_kirsch_dir2(1), d=>nx59489z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir2_2 : dffeas port map ( q=>u_kirsch_dir2(2), d=>nx58492z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir1_1 : dffeas port map ( q=>u_kirsch_dir1(1), d=>nx51070z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir1_3 : dffeas port map ( q=>u_kirsch_dir1(3), d=>nx49076z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir1_0 : dffeas port map ( q=>u_kirsch_dir1(0), d=>nx52067z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_dir1_2 : dffeas port map ( q=>u_kirsch_dir1(2), d=>nx50073z1, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_r_add2_12 : dffeas port map ( q=>u_kirsch_r_add2(12), d=>
      nx55984z1, clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_r_add2_11 : dffeas port map ( q=>u_kirsch_r_add2(11), d=>
      nx56981z1, clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_r_add2_10 : dffeas port map ( q=>u_kirsch_r_add2(10), d=>
      nx57978z1, clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188);
   u_kirsch_reg_max0_bit_counter_1 : dffeas port map ( q=>
      u_kirsch_max0_bit_counter(1), d=>nx63319z1, clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_max0_bit_counter_0 : dffeas port map ( q=>
      u_kirsch_max0_bit_counter(0), d=>nx64316z1, clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_max1_bit_counter_1 : dffeas port map ( q=>
      u_kirsch_max1_bit_counter(1), d=>nx45738z1, clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_max1_bit_counter_0 : dffeas port map ( q=>
      u_kirsch_max1_bit_counter(0), d=>nx46735z1, clk=>clk, ena=>PWR, clrn=>
      PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   reg_uart_reset : dffeas port map ( q=>uart_reset, d=>nx60415z1, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter2_3 : dffeas port map ( q=>
      u_kirsch_stg_counter2(3), d=>nx15761z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter2_2 : dffeas port map ( q=>
      u_kirsch_stg_counter2(2), d=>nx16758z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter2_1 : dffeas port map ( q=>
      u_kirsch_stg_counter2(1), d=>nx17755z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter2_0 : dffeas port map ( q=>
      u_kirsch_stg_counter2(0), d=>nx18752z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter1_3 : dffeas port map ( q=>
      u_kirsch_stg_counter1(3), d=>nx58194z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter1_2 : dffeas port map ( q=>
      u_kirsch_stg_counter1(2), d=>nx57197z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter1_1 : dffeas port map ( q=>
      u_kirsch_stg_counter1(1), d=>nx56200z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_kirsch_reg_stg_counter1_0 : dffeas port map ( q=>
      u_kirsch_stg_counter1(0), d=>nx55203z1, clk=>clk, ena=>PWR, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, d
      =>nx51544z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, d
      =>nx28027z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
       port map ( q=>u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, d
      =>nx18625z1, clk=>clk, ena=>u_seg7_u_dual_seg7_load_reg, clrn=>PWR, 
      prn=>PWR, asdata=>GND_EXMPLR188);
   reg_q_10 : dffeas port map ( q=>reset_count(10), d=>inc_d_10, clk=>clk, 
      ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_9 : dffeas port map ( q=>reset_count(9), d=>inc_d_9, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_8 : dffeas port map ( q=>reset_count(8), d=>inc_d_8, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_7 : dffeas port map ( q=>reset_count(7), d=>inc_d_7, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_6 : dffeas port map ( q=>reset_count(6), d=>inc_d_6, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_5 : dffeas port map ( q=>reset_count(5), d=>inc_d_5, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_4 : dffeas port map ( q=>reset_count(4), d=>inc_d_4, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_3 : dffeas port map ( q=>reset_count(3), d=>inc_d_3, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_2 : dffeas port map ( q=>reset_count(2), d=>inc_d_2, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_1 : dffeas port map ( q=>reset_count(1), d=>inc_d_1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_0 : dffeas port map ( q=>reset_count(0), d=>inc_d_0, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>reset_n, 
      sload=>GND_EXMPLR188);
   reg_q_7_dup_0 : dffeas port map ( q=>write_fifo_wr_pointer(7), d=>
      inc_d_7_dup_616, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_1 : dffeas port map ( q=>write_fifo_wr_pointer(6), d=>
      inc_d_6_dup_614, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_2 : dffeas port map ( q=>write_fifo_wr_pointer(5), d=>
      inc_d_5_dup_612, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_3 : dffeas port map ( q=>write_fifo_wr_pointer(4), d=>
      inc_d_4_dup_610, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_4 : dffeas port map ( q=>write_fifo_wr_pointer(3), d=>
      inc_d_3_dup_608, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_5 : dffeas port map ( q=>write_fifo_wr_pointer(2), d=>
      inc_d_2_dup_606, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_6 : dffeas port map ( q=>write_fifo_wr_pointer(1), d=>
      inc_d_1_dup_604, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_7 : dffeas port map ( q=>write_fifo_wr_pointer(0), d=>
      inc_d_0_dup_602, clk=>clk, ena=>nx58151z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_8 : dffeas port map ( q=>write_fifo_rd_pointer(7), d=>
      inc_d_7_dup_652, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_9 : dffeas port map ( q=>write_fifo_rd_pointer(6), d=>
      inc_d_6_dup_650, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_10 : dffeas port map ( q=>write_fifo_rd_pointer(5), d=>
      inc_d_5_dup_648, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_11 : dffeas port map ( q=>write_fifo_rd_pointer(4), d=>
      inc_d_4_dup_646, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_12 : dffeas port map ( q=>write_fifo_rd_pointer(3), d=>
      inc_d_3_dup_644, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_13 : dffeas port map ( q=>write_fifo_rd_pointer(2), d=>
      inc_d_2_dup_642, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_14 : dffeas port map ( q=>write_fifo_rd_pointer(1), d=>
      inc_d_1_dup_640, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_15 : dffeas port map ( q=>write_fifo_rd_pointer(0), d=>
      inc_d_0_dup_638, clk=>clk, ena=>nx58143z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_8_dup_16 : dffeas port map ( q=>write_fifo_status_cnt(8), d=>
      incdec_mux_8_dup_121, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_17 : dffeas port map ( q=>write_fifo_status_cnt(7), d=>
      incdec_mux_7_dup_120, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_18 : dffeas port map ( q=>write_fifo_status_cnt(6), d=>
      incdec_mux_6_dup_119, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_19 : dffeas port map ( q=>write_fifo_status_cnt(5), d=>
      incdec_mux_5_dup_118, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_20 : dffeas port map ( q=>write_fifo_status_cnt(4), d=>
      incdec_mux_4_dup_117, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_21 : dffeas port map ( q=>write_fifo_status_cnt(3), d=>
      incdec_mux_3_dup_116, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_22 : dffeas port map ( q=>write_fifo_status_cnt(2), d=>
      incdec_mux_2_dup_115, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_23 : dffeas port map ( q=>write_fifo_status_cnt(1), d=>
      incdec_mux_1_dup_114, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_24 : dffeas port map ( q=>write_fifo_status_cnt(0), d=>
      incdec_mux_0_dup_113, clk=>clk, ena=>nx22869z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_25 : dffeas port map ( q=>read_fifo_wr_pointer(7), d=>
      inc_d_7_dup_717, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_26 : dffeas port map ( q=>read_fifo_wr_pointer(6), d=>
      inc_d_6_dup_715, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_27 : dffeas port map ( q=>read_fifo_wr_pointer(5), d=>
      inc_d_5_dup_713, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_28 : dffeas port map ( q=>read_fifo_wr_pointer(4), d=>
      inc_d_4_dup_711, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_29 : dffeas port map ( q=>read_fifo_wr_pointer(3), d=>
      inc_d_3_dup_709, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_30 : dffeas port map ( q=>read_fifo_wr_pointer(2), d=>
      inc_d_2_dup_707, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_31 : dffeas port map ( q=>read_fifo_wr_pointer(1), d=>
      inc_d_1_dup_705, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_32 : dffeas port map ( q=>read_fifo_wr_pointer(0), d=>
      inc_d_0_dup_703, clk=>clk, ena=>nx23864z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_33 : dffeas port map ( q=>read_fifo_rd_pointer(7), d=>
      inc_d_7_dup_753, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_34 : dffeas port map ( q=>read_fifo_rd_pointer(6), d=>
      inc_d_6_dup_751, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_35 : dffeas port map ( q=>read_fifo_rd_pointer(5), d=>
      inc_d_5_dup_749, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_36 : dffeas port map ( q=>read_fifo_rd_pointer(4), d=>
      inc_d_4_dup_747, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_37 : dffeas port map ( q=>read_fifo_rd_pointer(3), d=>
      inc_d_3_dup_745, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_38 : dffeas port map ( q=>read_fifo_rd_pointer(2), d=>
      inc_d_2_dup_743, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_39 : dffeas port map ( q=>read_fifo_rd_pointer(1), d=>
      inc_d_1_dup_741, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_40 : dffeas port map ( q=>read_fifo_rd_pointer(0), d=>
      inc_d_0_dup_739, clk=>clk, ena=>nx24859z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_8_dup_41 : dffeas port map ( q=>read_fifo_status_cnt(8), d=>
      incdec_mux_8_dup_121_dup_793, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_7_dup_42 : dffeas port map ( q=>read_fifo_status_cnt(7), d=>
      incdec_mux_7_dup_120_dup_791, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_6_dup_43 : dffeas port map ( q=>read_fifo_status_cnt(6), d=>
      incdec_mux_6_dup_119_dup_789, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_5_dup_44 : dffeas port map ( q=>read_fifo_status_cnt(5), d=>
      incdec_mux_5_dup_118_dup_787, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_4_dup_45 : dffeas port map ( q=>read_fifo_status_cnt(4), d=>
      incdec_mux_4_dup_117_dup_785, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_3_dup_46 : dffeas port map ( q=>read_fifo_status_cnt(3), d=>
      incdec_mux_3_dup_116_dup_783, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_2_dup_47 : dffeas port map ( q=>read_fifo_status_cnt(2), d=>
      incdec_mux_2_dup_115_dup_781, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_1_dup_48 : dffeas port map ( q=>read_fifo_status_cnt(1), d=>
      incdec_mux_1_dup_114_dup_779, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_0_dup_49 : dffeas port map ( q=>read_fifo_status_cnt(0), d=>
      incdec_mux_0_dup_113_dup_777, clk=>clk, ena=>nx383z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>GND_EXMPLR188);
   reg_q_10_dup_50 : dffeas port map ( q=>seg7_en_EXMPLR189(1), d=>
      inc_d_10_dup_824, clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>
      GND_EXMPLR188, sclr=>nx29573z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_51 : dffeas port map ( q=>nx44217z1, d=>inc_d_9_dup_823, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_52 : dffeas port map ( q=>nx55707z1, d=>inc_d_8_dup_822, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_53 : dffeas port map ( q=>nx49288z1, d=>inc_d_7_dup_821, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_54 : dffeas port map ( q=>nx674z1, d=>inc_d_6_dup_820, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_55 : dffeas port map ( q=>nx50636z1, d=>inc_d_5_dup_819, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_56 : dffeas port map ( q=>nx35062z1, d=>inc_d_4_dup_818, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_57 : dffeas port map ( q=>nx46048z1, d=>inc_d_3_dup_817, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_58 : dffeas port map ( q=>nx60108z1, d=>inc_d_2_dup_816, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_59 : dffeas port map ( q=>nx55390z1, d=>inc_d_1_dup_815, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_60 : dffeas port map ( q=>nx39816z1, d=>inc_d_0_dup_814, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx29573z1, sload=>GND_EXMPLR188);
   reg_q_10_dup_61 : dffeas port map ( q=>u_uart_RxDiv(10), d=>
      inc_d_10_dup_882, clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_62 : dffeas port map ( q=>u_uart_RxDiv(9), d=>inc_d_9_dup_880, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_63 : dffeas port map ( q=>u_uart_RxDiv(8), d=>inc_d_8_dup_878, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_64 : dffeas port map ( q=>u_uart_RxDiv(7), d=>inc_d_7_dup_876, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_65 : dffeas port map ( q=>u_uart_RxDiv(6), d=>inc_d_6_dup_874, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_66 : dffeas port map ( q=>u_uart_RxDiv(5), d=>inc_d_5_dup_872, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_67 : dffeas port map ( q=>u_uart_RxDiv(4), d=>inc_d_4_dup_870, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_68 : dffeas port map ( q=>u_uart_RxDiv(3), d=>inc_d_3_dup_868, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_69 : dffeas port map ( q=>u_uart_RxDiv(2), d=>inc_d_2_dup_866, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_70 : dffeas port map ( q=>u_uart_RxDiv(1), d=>inc_d_1_dup_864, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_71 : dffeas port map ( q=>u_uart_RxDiv(0), d=>inc_d_0_dup_862, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx2379z1, sload=>GND_EXMPLR188);
   reg_q_11 : dffeas port map ( q=>u_uart_TxDiv(11), d=>inc_d_11, clk=>clk, 
      ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      nx57349z1, sload=>GND_EXMPLR188);
   reg_q_10_dup_72 : dffeas port map ( q=>u_uart_TxDiv(10), d=>
      inc_d_10_dup_935, clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_9_dup_73 : dffeas port map ( q=>u_uart_TxDiv(9), d=>inc_d_9_dup_933, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_8_dup_74 : dffeas port map ( q=>u_uart_TxDiv(8), d=>inc_d_8_dup_931, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_75 : dffeas port map ( q=>u_uart_TxDiv(7), d=>inc_d_7_dup_929, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_6_dup_76 : dffeas port map ( q=>u_uart_TxDiv(6), d=>inc_d_6_dup_927, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_5_dup_77 : dffeas port map ( q=>u_uart_TxDiv(5), d=>inc_d_5_dup_925, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_4_dup_78 : dffeas port map ( q=>u_uart_TxDiv(4), d=>inc_d_4_dup_923, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_3_dup_79 : dffeas port map ( q=>u_uart_TxDiv(3), d=>inc_d_3_dup_921, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_2_dup_80 : dffeas port map ( q=>u_uart_TxDiv(2), d=>inc_d_2_dup_919, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_1_dup_81 : dffeas port map ( q=>u_uart_TxDiv(1), d=>inc_d_1_dup_917, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_0_dup_82 : dffeas port map ( q=>u_uart_TxDiv(0), d=>inc_d_0_dup_915, 
      clk=>clk, ena=>PWR, clrn=>nx24396z1, prn=>PWR, asdata=>GND_EXMPLR188, 
      sclr=>nx57349z1, sload=>GND_EXMPLR188);
   reg_q_7_dup_83 : dffeas port map ( q=>u_kirsch_row_count(7), d=>
      inc_d_7_dup_1011, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_6_dup_84 : dffeas port map ( q=>u_kirsch_row_count(6), d=>
      inc_d_6_dup_1009, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_5_dup_85 : dffeas port map ( q=>u_kirsch_row_count(5), d=>
      inc_d_5_dup_1007, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_4_dup_86 : dffeas port map ( q=>u_kirsch_row_count(4), d=>
      inc_d_4_dup_1005, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_3_dup_87 : dffeas port map ( q=>u_kirsch_row_count(3), d=>
      inc_d_3_dup_1003, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_2_dup_88 : dffeas port map ( q=>u_kirsch_row_count(2), d=>
      inc_d_2_dup_1001, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_1_dup_89 : dffeas port map ( q=>u_kirsch_row_count(1), d=>
      inc_d_1_dup_999, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_0_dup_90 : dffeas port map ( q=>u_kirsch_row_count(0), d=>
      inc_d_0_dup_997, clk=>clk, ena=>nx25391z1, clrn=>PWR, prn=>PWR, asdata
      =>GND_EXMPLR188, sclr=>nx25391z4, sload=>GND_EXMPLR188);
   reg_q_7_dup_91 : dffeas port map ( q=>u_kirsch_address(7), d=>
      inc_d_7_dup_1051, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_6_dup_92 : dffeas port map ( q=>u_kirsch_address(6), d=>
      inc_d_6_dup_1049, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_5_dup_93 : dffeas port map ( q=>u_kirsch_address(5), d=>
      inc_d_5_dup_1047, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_4_dup_94 : dffeas port map ( q=>u_kirsch_address(4), d=>
      inc_d_4_dup_1045, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_3_dup_95 : dffeas port map ( q=>u_kirsch_address(3), d=>
      inc_d_3_dup_1043, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_2_dup_96 : dffeas port map ( q=>u_kirsch_address(2), d=>
      inc_d_2_dup_1041, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_1_dup_97 : dffeas port map ( q=>u_kirsch_address(1), d=>
      inc_d_1_dup_1039, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_q_0_dup_98 : dffeas port map ( q=>u_kirsch_address(0), d=>
      inc_d_0_dup_1037, clk=>clk, ena=>nx37417z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>nx37417z2, sload=>GND_EXMPLR188);
   reg_wait_for_tx_valid_delayed : dffeas port map ( q=>
      wait_for_tx_valid_delayed, d=>wait_for_tx_valid, clk=>clk, ena=>PWR, 
      clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, sload=>
      GND_EXMPLR188);
   reg_tx_valid : dffeas port map ( q=>nx7359z3, d=>NOT_rb_rd_en_delayed, 
      clk=>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   reg_rb_rd_en : dffeas port map ( q=>rb_rd_en, d=>nx15004z1, clk=>clk, ena
      =>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>k_o_data_7, 
      sload=>GND_EXMPLR188);
   u_kirsch_reg_r_sub0_12 : dffeas port map ( q=>u_kirsch_r_sub0_12, d=>
      u_kirsch_r_sub0_6n1s1_12, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_r_sub0_11 : dffeas port map ( q=>u_kirsch_r_sub0_11, d=>
      u_kirsch_r_sub0_6n1s1_11, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_r_sub0_10 : dffeas port map ( q=>u_kirsch_r_sub0_10, d=>
      u_kirsch_r_sub0_6n1s1_10, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>
      PWR, asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_r_sub0_9 : dffeas port map ( q=>u_kirsch_r_sub0_9, d=>
      u_kirsch_r_sub0_6n1s1_9, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_r_sub0_8 : dffeas port map ( q=>u_kirsch_r_sub0_8, d=>
      u_kirsch_r_sub0_6n1s1_8, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_r_sub0_7 : dffeas port map ( q=>u_kirsch_r_sub0_7, d=>
      u_kirsch_r_sub0_6n1s1_7, clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR188, sclr=>u_kirsch_r_sub0_6n1s1_14, sload=>
      GND_EXMPLR188);
   u_kirsch_reg_o_mode_1 : dffeas port map ( q=>seg7_pts(1), d=>PWR, clk=>
      clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR188, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   u_kirsch_reg_o_mode_0 : dffeas port map ( q=>nx59319z1, d=>nx37156z1, clk
      =>clk, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>NOT_GND, sclr=>
      k_o_data_7, sload=>GND_EXMPLR188);
   reg_tx_busy_delayed : dffeas port map ( q=>tx_busy_delayed, d=>tx_busy, 
      clk=>clk, clrn=>PWR, prn=>PWR);
   reg_rb_rd_en_delayed : dffeas port map ( q=>rb_rd_en_delayed, d=>
      rb_rd_en_true, clk=>clk, clrn=>PWR, prn=>PWR);
   write_fifo_reg_rd_en_delayed : dffeas port map ( q=>
      write_fifo_rd_en_delayed, d=>nx7605z1, clk=>clk, clrn=>PWR, prn=>PWR);
   write_fifo_reg_q_saved_7 : dffeas port map ( q=>write_fifo_q_saved(7), d
      =>write_fifo_q(7), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_6 : dffeas port map ( q=>write_fifo_q_saved(6), d
      =>write_fifo_q(6), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_5 : dffeas port map ( q=>write_fifo_q_saved(5), d
      =>write_fifo_q(5), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_4 : dffeas port map ( q=>write_fifo_q_saved(4), d
      =>write_fifo_q(4), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_3 : dffeas port map ( q=>write_fifo_q_saved(3), d
      =>write_fifo_q(3), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_2 : dffeas port map ( q=>write_fifo_q_saved(2), d
      =>write_fifo_q(2), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_1 : dffeas port map ( q=>write_fifo_q_saved(1), d
      =>write_fifo_q(1), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   write_fifo_reg_q_saved_0 : dffeas port map ( q=>write_fifo_q_saved(0), d
      =>write_fifo_q(0), clk=>clk, ena=>write_fifo_rd_en_delayed, clrn=>PWR, 
      prn=>PWR);
   read_fifo_reg_q_saved_7 : dffeas port map ( q=>read_fifo_q_saved(7), d=>
      read_fifo_q(7), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_6 : dffeas port map ( q=>read_fifo_q_saved(6), d=>
      read_fifo_q(6), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_5 : dffeas port map ( q=>read_fifo_q_saved(5), d=>
      read_fifo_q(5), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_4 : dffeas port map ( q=>read_fifo_q_saved(4), d=>
      read_fifo_q(4), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_3 : dffeas port map ( q=>read_fifo_q_saved(3), d=>
      read_fifo_q(3), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_2 : dffeas port map ( q=>read_fifo_q_saved(2), d=>
      read_fifo_q(2), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_1 : dffeas port map ( q=>read_fifo_q_saved(1), d=>
      read_fifo_q(1), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   read_fifo_reg_q_saved_0 : dffeas port map ( q=>read_fifo_q_saved(0), d=>
      read_fifo_q(0), clk=>clk, ena=>rb_rd_en_delayed, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_prev_reset : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_reset, d=>k_o_data_7, clk=>clk, clrn=>PWR, prn
      =>PWR);
   u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas port map ( q=>
      u_seg7_u_dual_seg7_prev_char0_en, d=>seg7_en_EXMPLR189(0), clk=>clk, 
      clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_7 : dffeas port map ( q=>seg7_data(7), d=>
      u_seg7_u_dual_seg7_muxed_char_7, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_4 : dffeas port map ( q=>seg7_data(4), d=>
      u_seg7_u_dual_seg7_muxed_char_4, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_3 : dffeas port map ( q=>seg7_data(3), d=>
      u_seg7_u_dual_seg7_muxed_char_3, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_2 : dffeas port map ( q=>seg7_data(2), d=>
      u_seg7_u_dual_seg7_muxed_char_2, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_seg7_u_dual_seg7_reg_o_char_0 : dffeas port map ( q=>seg7_data(0), d=>
      u_seg7_u_dual_seg7_muxed_char_0, clk=>clk, ena=>
      u_seg7_u_dual_seg7_load_reg, clrn=>PWR, prn=>PWR);
   u_uart_reg_Rx_r : dffeas port map ( q=>nx12790z3, d=>NOT_uart_rx, clk=>
      clk, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxDivisor_4 : dffeas port map ( q=>u_uart_RxDivisor_4, d=>PWR, 
      clk=>clk, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_TopRx : dffeas port map ( q=>u_uart_TopRx, d=>nx59343z1, clk=>
      clk, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_TopTx : dffeas port map ( q=>u_uart_TopTx, d=>nx57349z1, clk=>
      clk, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_TxBusy : dffeas port map ( q=>tx_busy, d=>nx13251z1, clk=>clk, 
      clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_Tx_Reg_8 : dffeas port map ( q=>NOT_u_uart_Tx_Reg_8, d=>
      NOT_u_uart_Tx_Reg_14n6ss1_8, clk=>clk, ena=>nx18859z1, clrn=>nx24396z1, 
      prn=>PWR);
   u_uart_reg_RxFSM_5 : dffeas port map ( q=>u_uart_RxFSM(5), d=>nx8802z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxFSM_4 : dffeas port map ( q=>u_uart_RxFSM(4), d=>nx9799z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxFSM_3 : dffeas port map ( q=>u_uart_RxFSM(3), d=>nx10796z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxFSM_2 : dffeas port map ( q=>u_uart_RxFSM(2), d=>nx11793z1, 
      clk=>clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxFSM_1 : dffeas port map ( q=>u_uart_RxFSM(1), d=>
      u_uart_RxFSM(0), clk=>clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_RxFSM_0 : dffeas port map ( q=>nx64683z2, d=>nx13787z1, clk=>
      clk, ena=>nx12790z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_Dout_7 : dffeas port map ( q=>uart_pixel(7), d=>
      u_uart_Rx_Reg(7), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_6 : dffeas port map ( q=>uart_pixel(6), d=>
      u_uart_Rx_Reg(6), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_5 : dffeas port map ( q=>uart_pixel(5), d=>
      u_uart_Rx_Reg(5), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_4 : dffeas port map ( q=>uart_pixel(4), d=>
      u_uart_Rx_Reg(4), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_3 : dffeas port map ( q=>uart_pixel(3), d=>
      u_uart_Rx_Reg(3), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_2 : dffeas port map ( q=>uart_pixel(2), d=>
      u_uart_Rx_Reg(2), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_1 : dffeas port map ( q=>uart_pixel(1), d=>
      u_uart_Rx_Reg(1), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Dout_0 : dffeas port map ( q=>uart_pixel(0), d=>
      u_uart_Rx_Reg(0), clk=>clk, ena=>nx13938z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_7 : dffeas port map ( q=>u_uart_Rx_Reg(7), d=>
      u_uart_Rx_r, clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR);
   u_uart_reg_Rx_Reg_6 : dffeas port map ( q=>u_uart_Rx_Reg(6), d=>
      u_uart_Rx_Reg(7), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_5 : dffeas port map ( q=>u_uart_Rx_Reg(5), d=>
      u_uart_Rx_Reg(6), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_4 : dffeas port map ( q=>u_uart_Rx_Reg(4), d=>
      u_uart_Rx_Reg(5), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_3 : dffeas port map ( q=>u_uart_Rx_Reg(3), d=>
      u_uart_Rx_Reg(4), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_2 : dffeas port map ( q=>u_uart_Rx_Reg(2), d=>
      u_uart_Rx_Reg(3), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_1 : dffeas port map ( q=>u_uart_Rx_Reg(1), d=>
      u_uart_Rx_Reg(2), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_Rx_Reg_0 : dffeas port map ( q=>u_uart_Rx_Reg(0), d=>
      u_uart_Rx_Reg(1), clk=>clk, ena=>nx44871z1, clrn=>nx24396z1, prn=>PWR
   );
   u_uart_reg_RxRDYi : dffeas port map ( q=>rx_valid, d=>nx13938z1, clk=>clk, 
      clrn=>nx24396z1, prn=>PWR);
   u_kirsch_reg_r_add0_a_8 : dffeas port map ( q=>u_kirsch_r_add0_a(8), d=>
      u_kirsch_r_add0_a_0n1s1(8), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_7 : dffeas port map ( q=>u_kirsch_r_add0_a(7), d=>
      u_kirsch_r_add0_a_0n1s1(7), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_6 : dffeas port map ( q=>u_kirsch_r_add0_a(6), d=>
      u_kirsch_r_add0_a_0n1s1(6), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_5 : dffeas port map ( q=>u_kirsch_r_add0_a(5), d=>
      u_kirsch_r_add0_a_0n1s1(5), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_4 : dffeas port map ( q=>u_kirsch_r_add0_a(4), d=>
      u_kirsch_r_add0_a_0n1s1(4), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_3 : dffeas port map ( q=>u_kirsch_r_add0_a(3), d=>
      u_kirsch_r_add0_a_0n1s1(3), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_2 : dffeas port map ( q=>u_kirsch_r_add0_a(2), d=>
      u_kirsch_r_add0_a_0n1s1(2), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_1 : dffeas port map ( q=>u_kirsch_r_add0_a(1), d=>
      u_kirsch_r_add0_a_0n1s1(1), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_a_0 : dffeas port map ( q=>u_kirsch_r_add0_a(0), d=>
      u_kirsch_r_add0_a_0n1s1(0), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_7 : dffeas port map ( q=>u_kirsch_r_max0(7), d=>
      u_kirsch_r_max0_1n2ss1(7), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_6 : dffeas port map ( q=>u_kirsch_r_max0(6), d=>
      u_kirsch_r_max0_1n2ss1(6), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_5 : dffeas port map ( q=>u_kirsch_r_max0(5), d=>
      u_kirsch_r_max0_1n2ss1(5), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_4 : dffeas port map ( q=>u_kirsch_r_max0(4), d=>
      u_kirsch_r_max0_1n2ss1(4), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_3 : dffeas port map ( q=>u_kirsch_r_max0(3), d=>
      u_kirsch_r_max0_1n2ss1(3), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_2 : dffeas port map ( q=>u_kirsch_r_max0(2), d=>
      u_kirsch_r_max0_1n2ss1(2), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_1 : dffeas port map ( q=>u_kirsch_r_max0(1), d=>
      u_kirsch_r_max0_1n2ss1(1), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max0_0 : dffeas port map ( q=>u_kirsch_r_max0(0), d=>
      u_kirsch_r_max0_1n2ss1(0), clk=>clk, ena=>nx40631z2, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add0_b_8 : dffeas port map ( q=>u_kirsch_r_add0_b(8), d=>
      u_kirsch_r_add0_a(8), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_7 : dffeas port map ( q=>u_kirsch_r_add0_b(7), d=>
      u_kirsch_r_add0_a(7), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_6 : dffeas port map ( q=>u_kirsch_r_add0_b(6), d=>
      u_kirsch_r_add0_a(6), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_5 : dffeas port map ( q=>u_kirsch_r_add0_b(5), d=>
      u_kirsch_r_add0_a(5), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_4 : dffeas port map ( q=>u_kirsch_r_add0_b(4), d=>
      u_kirsch_r_add0_a(4), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_3 : dffeas port map ( q=>u_kirsch_r_add0_b(3), d=>
      u_kirsch_r_add0_a(3), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_2 : dffeas port map ( q=>u_kirsch_r_add0_b(2), d=>
      u_kirsch_r_add0_a(2), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_1 : dffeas port map ( q=>u_kirsch_r_add0_b(1), d=>
      u_kirsch_r_add0_a(1), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add0_b_0 : dffeas port map ( q=>u_kirsch_r_add0_b(0), d=>
      u_kirsch_r_add0_a(0), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_a_9 : dffeas port map ( q=>u_kirsch_r_add1_a(9), d=>
      u_kirsch_r_add1_a_3n1s1(9), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_8 : dffeas port map ( q=>u_kirsch_r_add1_a(8), d=>
      u_kirsch_r_add1_a_3n1s1(8), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_7 : dffeas port map ( q=>u_kirsch_r_add1_a(7), d=>
      u_kirsch_r_add1_a_3n1s1(7), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_6 : dffeas port map ( q=>u_kirsch_r_add1_a(6), d=>
      u_kirsch_r_add1_a_3n1s1(6), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_5 : dffeas port map ( q=>u_kirsch_r_add1_a(5), d=>
      u_kirsch_r_add1_a_3n1s1(5), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_4 : dffeas port map ( q=>u_kirsch_r_add1_a(4), d=>
      u_kirsch_r_add1_a_3n1s1(4), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_3 : dffeas port map ( q=>u_kirsch_r_add1_a(3), d=>
      u_kirsch_r_add1_a_3n1s1(3), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_2 : dffeas port map ( q=>u_kirsch_r_add1_a(2), d=>
      u_kirsch_r_add1_a_3n1s1(2), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_1 : dffeas port map ( q=>u_kirsch_r_add1_a(1), d=>
      u_kirsch_r_add1_a_3n1s1(1), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add1_a_0 : dffeas port map ( q=>u_kirsch_r_add1_a(0), d=>
      u_kirsch_r_add1_a_3n1s1(0), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_add2_9 : dffeas port map ( q=>u_kirsch_r_add2(9), d=>
      u_kirsch_r_add2_4n1s1(9), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_8 : dffeas port map ( q=>u_kirsch_r_add2(8), d=>
      u_kirsch_r_add2_4n1s1(8), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_7 : dffeas port map ( q=>u_kirsch_r_add2(7), d=>
      u_kirsch_r_add2_4n1s1(7), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_6 : dffeas port map ( q=>u_kirsch_r_add2(6), d=>
      u_kirsch_r_add2_4n1s1(6), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_5 : dffeas port map ( q=>u_kirsch_r_add2(5), d=>
      u_kirsch_r_add2_4n1s1(5), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_4 : dffeas port map ( q=>u_kirsch_r_add2(4), d=>
      u_kirsch_r_add2_4n1s1(4), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_3 : dffeas port map ( q=>u_kirsch_r_add2(3), d=>
      u_kirsch_r_add2_4n1s1(3), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_2 : dffeas port map ( q=>u_kirsch_r_add2(2), d=>
      u_kirsch_r_add2_4n1s1(2), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_1 : dffeas port map ( q=>u_kirsch_r_add2(1), d=>
      u_kirsch_r_add2_4n1s1(1), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_add2_0 : dffeas port map ( q=>u_kirsch_r_add2(0), d=>
      u_kirsch_r_add2_4n1s1(0), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_r_max1_9 : dffeas port map ( q=>u_kirsch_r_max1(9), d=>
      u_kirsch_r_max1_5n6ss1(9), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_8 : dffeas port map ( q=>u_kirsch_r_max1(8), d=>
      u_kirsch_r_max1_5n6ss1(8), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_7 : dffeas port map ( q=>u_kirsch_r_max1(7), d=>
      u_kirsch_r_max1_5n6ss1(7), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_6 : dffeas port map ( q=>u_kirsch_r_max1(6), d=>
      u_kirsch_r_max1_5n6ss1(6), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_5 : dffeas port map ( q=>u_kirsch_r_max1(5), d=>
      u_kirsch_r_max1_5n6ss1(5), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_4 : dffeas port map ( q=>u_kirsch_r_max1(4), d=>
      u_kirsch_r_max1_5n6ss1(4), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_3 : dffeas port map ( q=>u_kirsch_r_max1(3), d=>
      u_kirsch_r_max1_5n6ss1(3), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_2 : dffeas port map ( q=>u_kirsch_r_max1(2), d=>
      u_kirsch_r_max1_5n6ss1(2), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_1 : dffeas port map ( q=>u_kirsch_r_max1(1), d=>
      u_kirsch_r_max1_5n6ss1(1), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_r_max1_0 : dffeas port map ( q=>u_kirsch_r_max1(0), d=>
      u_kirsch_r_max1_5n6ss1(0), clk=>clk, ena=>nx29221z5, clrn=>PWR, prn=>
      PWR);
   u_kirsch_reg_dir2_final_2 : dffeas port map ( q=>u_kirsch_dir2_final(2), 
      d=>u_kirsch_dir2(2), clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_dir2_final_1 : dffeas port map ( q=>u_kirsch_dir2_final(1), 
      d=>u_kirsch_dir2(1), clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_dir2_final_0 : dffeas port map ( q=>u_kirsch_dir2_final(0), 
      d=>u_kirsch_dir2(0), clk=>clk, ena=>nx12123z1, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_9 : dffeas port map ( q=>u_kirsch_r_add1_b(9), d=>
      u_kirsch_r_add1_a(9), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_8 : dffeas port map ( q=>u_kirsch_r_add1_b(8), d=>
      u_kirsch_r_add1_a(8), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_7 : dffeas port map ( q=>u_kirsch_r_add1_b(7), d=>
      u_kirsch_r_add1_a(7), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_6 : dffeas port map ( q=>u_kirsch_r_add1_b(6), d=>
      u_kirsch_r_add1_a(6), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_5 : dffeas port map ( q=>u_kirsch_r_add1_b(5), d=>
      u_kirsch_r_add1_a(5), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_4 : dffeas port map ( q=>u_kirsch_r_add1_b(4), d=>
      u_kirsch_r_add1_a(4), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_3 : dffeas port map ( q=>u_kirsch_r_add1_b(3), d=>
      u_kirsch_r_add1_a(3), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_2 : dffeas port map ( q=>u_kirsch_r_add1_b(2), d=>
      u_kirsch_r_add1_a(2), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_1 : dffeas port map ( q=>u_kirsch_r_add1_b(1), d=>
      u_kirsch_r_add1_a(1), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_r_add1_b_0 : dffeas port map ( q=>u_kirsch_r_add1_b(0), d=>
      u_kirsch_r_add1_a(0), clk=>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_7 : dffeas port map ( q=>seg7_num(7), d=>
      u_kirsch_row_count(7), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_6 : dffeas port map ( q=>seg7_num(6), d=>
      u_kirsch_row_count(6), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_5 : dffeas port map ( q=>seg7_num(5), d=>
      u_kirsch_row_count(5), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_4 : dffeas port map ( q=>seg7_num(4), d=>
      u_kirsch_row_count(4), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_3 : dffeas port map ( q=>seg7_num(3), d=>
      u_kirsch_row_count(3), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_2 : dffeas port map ( q=>seg7_num(2), d=>
      u_kirsch_row_count(2), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_1 : dffeas port map ( q=>seg7_num(1), d=>
      u_kirsch_row_count(1), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_row_0 : dffeas port map ( q=>seg7_num(0), d=>
      u_kirsch_row_count(0), clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_valid : dffeas port map ( q=>k_o_valid, d=>nx4094z1, clk=>
      clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_intermediate_dir_2 : dffeas port map ( q=>k_o_data_2, d=>
      nx64328z1, clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_intermediate_dir_1 : dffeas port map ( q=>k_o_data_1, d=>
      nx63331z1, clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_intermediate_dir_0 : dffeas port map ( q=>k_o_data_0, d=>
      nx62334z1, clk=>clk, ena=>nx64328z4, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_o_edge : dffeas port map ( q=>k_o_data_3, d=>nx22605z1, clk
      =>clk, ena=>reset_n, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_f3_7 : dffeas port map ( q=>u_kirsch_g2(7), d=>
      u_kirsch_f3_9n22ss1(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_6 : dffeas port map ( q=>u_kirsch_g2(6), d=>
      u_kirsch_f3_9n22ss1(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_5 : dffeas port map ( q=>u_kirsch_g2(5), d=>
      u_kirsch_f3_9n22ss1(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_4 : dffeas port map ( q=>u_kirsch_g2(4), d=>
      u_kirsch_f3_9n22ss1(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_3 : dffeas port map ( q=>u_kirsch_g2(3), d=>
      u_kirsch_f3_9n22ss1(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_2 : dffeas port map ( q=>u_kirsch_g2(2), d=>
      u_kirsch_f3_9n22ss1(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_1 : dffeas port map ( q=>u_kirsch_g2(1), d=>
      u_kirsch_f3_9n22ss1(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g2_0 : dffeas port map ( q=>u_kirsch_g2(0), d=>
      u_kirsch_f3_9n22ss1(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_g3_7 : dffeas port map ( q=>u_kirsch_g3(7), d=>
      u_kirsch_g2(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_6 : dffeas port map ( q=>u_kirsch_g3(6), d=>
      u_kirsch_g2(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_5 : dffeas port map ( q=>u_kirsch_g3(5), d=>
      u_kirsch_g2(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_4 : dffeas port map ( q=>u_kirsch_g3(4), d=>
      u_kirsch_g2(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_3 : dffeas port map ( q=>u_kirsch_g3(3), d=>
      u_kirsch_g2(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_2 : dffeas port map ( q=>u_kirsch_g3(2), d=>
      u_kirsch_g2(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_1 : dffeas port map ( q=>u_kirsch_g3(1), d=>
      u_kirsch_g2(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_g3_0 : dffeas port map ( q=>u_kirsch_g3(0), d=>
      u_kirsch_g2(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_7 : dffeas port map ( q=>u_kirsch_h3(7), d=>
      u_kirsch_h2(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_6 : dffeas port map ( q=>u_kirsch_h3(6), d=>
      u_kirsch_h2(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_5 : dffeas port map ( q=>u_kirsch_h3(5), d=>
      u_kirsch_h2(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_4 : dffeas port map ( q=>u_kirsch_h3(4), d=>
      u_kirsch_h2(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_3 : dffeas port map ( q=>u_kirsch_h3(3), d=>
      u_kirsch_h2(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_2 : dffeas port map ( q=>u_kirsch_h3(2), d=>
      u_kirsch_h2(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_1 : dffeas port map ( q=>u_kirsch_h3(1), d=>
      u_kirsch_h2(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h3_0 : dffeas port map ( q=>u_kirsch_h3(0), d=>
      u_kirsch_h2(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_7 : dffeas port map ( q=>u_kirsch_a3(7), d=>
      u_kirsch_a2(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_6 : dffeas port map ( q=>u_kirsch_a3(6), d=>
      u_kirsch_a2(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_5 : dffeas port map ( q=>u_kirsch_a3(5), d=>
      u_kirsch_a2(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_4 : dffeas port map ( q=>u_kirsch_a3(4), d=>
      u_kirsch_a2(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_3 : dffeas port map ( q=>u_kirsch_a3(3), d=>
      u_kirsch_a2(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_2 : dffeas port map ( q=>u_kirsch_a3(2), d=>
      u_kirsch_a2(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_1 : dffeas port map ( q=>u_kirsch_a3(1), d=>
      u_kirsch_a2(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_a3_0 : dffeas port map ( q=>u_kirsch_a3(0), d=>
      u_kirsch_a2(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_h2_7 : dffeas port map ( q=>u_kirsch_h2(7), d=>
      u_kirsch_h2_9n22ss1(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_6 : dffeas port map ( q=>u_kirsch_h2(6), d=>
      u_kirsch_h2_9n22ss1(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_5 : dffeas port map ( q=>u_kirsch_h2(5), d=>
      u_kirsch_h2_9n22ss1(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_4 : dffeas port map ( q=>u_kirsch_h2(4), d=>
      u_kirsch_h2_9n22ss1(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_3 : dffeas port map ( q=>u_kirsch_h2(3), d=>
      u_kirsch_h2_9n22ss1(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_2 : dffeas port map ( q=>u_kirsch_h2(2), d=>
      u_kirsch_h2_9n22ss1(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_1 : dffeas port map ( q=>u_kirsch_h2(1), d=>
      u_kirsch_h2_9n22ss1(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_h2_0 : dffeas port map ( q=>u_kirsch_h2(0), d=>
      u_kirsch_h2_9n22ss1(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_b3_7 : dffeas port map ( q=>u_kirsch_a2(7), d=>
      u_kirsch_a2_9n22ss1(7), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_6 : dffeas port map ( q=>u_kirsch_a2(6), d=>
      u_kirsch_a2_9n22ss1(6), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_5 : dffeas port map ( q=>u_kirsch_a2(5), d=>
      u_kirsch_a2_9n22ss1(5), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_4 : dffeas port map ( q=>u_kirsch_a2(4), d=>
      u_kirsch_a2_9n22ss1(4), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_3 : dffeas port map ( q=>u_kirsch_a2(3), d=>
      u_kirsch_a2_9n22ss1(3), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_2 : dffeas port map ( q=>u_kirsch_a2(2), d=>
      u_kirsch_a2_9n22ss1(2), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_1 : dffeas port map ( q=>u_kirsch_a2(1), d=>
      u_kirsch_a2_9n22ss1(1), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_a2_0 : dffeas port map ( q=>u_kirsch_a2(0), d=>
      u_kirsch_a2_9n22ss1(0), clk=>clk, ena=>nx41042z5, clrn=>PWR, prn=>PWR
   );
   u_kirsch_reg_e3_7 : dffeas port map ( q=>u_kirsch_e3(7), d=>
      write_fifo_q(7), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_6 : dffeas port map ( q=>u_kirsch_e3(6), d=>
      write_fifo_q(6), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_5 : dffeas port map ( q=>u_kirsch_e3(5), d=>
      write_fifo_q(5), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_4 : dffeas port map ( q=>u_kirsch_e3(4), d=>
      write_fifo_q(4), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_3 : dffeas port map ( q=>u_kirsch_e3(3), d=>
      write_fifo_q(3), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_2 : dffeas port map ( q=>u_kirsch_e3(2), d=>
      write_fifo_q(2), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_1 : dffeas port map ( q=>u_kirsch_e3(1), d=>
      write_fifo_q(1), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_kirsch_reg_e3_0 : dffeas port map ( q=>u_kirsch_e3(0), d=>
      write_fifo_q(0), clk=>clk, ena=>nx53163z3, clrn=>PWR, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_3 : dffeas port map ( q=>
      u_uart_TxBitCnt(3), d=>nx62428z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_2 : dffeas port map ( q=>
      u_uart_TxBitCnt(2), d=>nx61431z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_1 : dffeas port map ( q=>
      u_uart_TxBitCnt(1), d=>nx60434z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_TxBitCnt_reg_q_0 : dffeas port map ( q=>
      u_uart_TxBitCnt(0), d=>nx59437z1, clk=>clk, ena=>nx59437z2, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_3 : dffeas port map ( q=>
      u_uart_RxBitCnt(3), d=>nx2138z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_2 : dffeas port map ( q=>
      u_uart_RxBitCnt(2), d=>nx1141z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_1 : dffeas port map ( q=>
      u_uart_RxBitCnt(1), d=>nx144z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx24396z1, prn=>PWR);
   u_uart_modgen_counter_RxBitCnt_reg_q_0 : dffeas port map ( q=>
      u_uart_RxBitCnt(0), d=>nx64683z1, clk=>clk, ena=>nx64683z3, clrn=>
      nx24396z1, prn=>PWR);
   ix24841z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_6, datab=>read_fifo_q_saved(6), 
      datac=>read_fifo_q(6), datad=>rb_rd_en_delayed);
   ix23844z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_5, datab=>read_fifo_q_saved(5), 
      datac=>read_fifo_q(5), datad=>rb_rd_en_delayed);
   ix22847z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_4, datab=>read_fifo_q_saved(4), 
      datac=>read_fifo_q(4), datad=>rb_rd_en_delayed);
   ix21850z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_3, datab=>read_fifo_q_saved(3), 
      datac=>read_fifo_q(3), datad=>rb_rd_en_delayed);
   ix20853z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_2, datab=>read_fifo_q_saved(2), 
      datac=>read_fifo_q(2), datad=>rb_rd_en_delayed);
   ix19856z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_1, datab=>read_fifo_q_saved(1), 
      datac=>read_fifo_q(1), datad=>rb_rd_en_delayed);
   ix18859z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f33") 
       port map ( combout=>NOT_rb_o_data_0, datab=>read_fifo_q_saved(0), 
      datac=>read_fifo_q(0), datad=>rb_rd_en_delayed);
   ix19433z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx19433z1, datab=>nx26412z2, datac=>nx19433z2, 
      datad=>u_kirsch_d3(0));
   ix20430z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx20430z1, datab=>nx26412z2, datac=>nx20430z2, 
      datad=>u_kirsch_d3(1));
   ix21427z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx21427z1, datab=>nx26412z2, datac=>nx21427z2, 
      datad=>u_kirsch_d3(2));
   ix22424z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx22424z1, datab=>nx26412z2, datac=>nx22424z2, 
      datad=>u_kirsch_d3(3));
   ix23421z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx23421z1, datab=>nx26412z2, datac=>nx23421z2, 
      datad=>u_kirsch_d3(4));
   ix24418z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx24418z1, datab=>nx26412z2, datac=>nx24418z2, 
      datad=>u_kirsch_d3(5));
   ix25415z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx25415z1, datab=>nx26412z2, datac=>nx25415z2, 
      datad=>u_kirsch_d3(6));
   ix26412z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx26412z1, datab=>nx26412z2, datac=>nx26412z5, 
      datad=>u_kirsch_d3(7));
   ix62941z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx62941z1, datab=>nx26412z2, datac=>nx62941z2, 
      datad=>u_kirsch_c3(0));
   ix61944z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx61944z1, datab=>nx26412z2, datac=>nx61944z2, 
      datad=>u_kirsch_c3(1));
   ix60947z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx60947z1, datab=>nx26412z2, datac=>nx60947z2, 
      datad=>u_kirsch_c3(2));
   ix59950z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx59950z1, datab=>nx26412z2, datac=>nx59950z2, 
      datad=>u_kirsch_c3(3));
   ix58953z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx58953z1, datab=>nx26412z2, datac=>nx58953z2, 
      datad=>u_kirsch_c3(4));
   ix57956z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx57956z1, datab=>nx26412z2, datac=>nx57956z2, 
      datad=>u_kirsch_c3(5));
   ix56959z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx56959z1, datab=>nx26412z2, datac=>nx56959z2, 
      datad=>u_kirsch_c3(6));
   ix55962z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx55962z1, datab=>nx26412z2, datac=>nx55962z2, 
      datad=>u_kirsch_c3(7));
   ix59319z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(7), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(7), datad=>write_fifo_q(7));
   ix59319z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(6), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(6), datad=>write_fifo_q(6));
   ix59319z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(5), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(5), datad=>write_fifo_q(5));
   ix59319z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(4), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(4), datad=>write_fifo_q(4));
   ix59319z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(3), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(3), datad=>write_fifo_q(3));
   ix4443z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(2), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(2), datad=>write_fifo_q(2));
   ix4443z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(1), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(1), datad=>write_fifo_q(1));
   ix4443z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>k_i_pixel(0), datab=>write_fifo_rd_en_delayed, 
      datac=>write_fifo_q_saved(0), datad=>write_fifo_q(0));
   ix15004z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>rb_empty, dataa=>nx15004z2, datab=>
      read_fifo_status_cnt(0), datac=>read_fifo_status_cnt(7), datad=>
      read_fifo_status_cnt(8));
   ix11963z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_valid, datab=>write_fifo_rd_en_delayed, 
      datac=>k_o_valid, datad=>pb(0));
   ix59319z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cfc") 
       port map ( combout=>rb_i_data(7), datab=>k_i_pixel(7), datac=>pb(0), 
      datad=>reset_n);
   ix59319z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(6), datab=>k_i_pixel(6), datac=>
      k_o_data_6, datad=>pb(0));
   ix59319z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(5), datab=>k_i_pixel(5), datac=>
      seg7_pts(1), datad=>pb(0));
   ix59319z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0fcc") 
       port map ( combout=>rb_i_data(4), datab=>k_i_pixel(4), datac=>
      nx59319z1, datad=>pb(0));
   ix59319z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(3), datab=>k_i_pixel(3), datac=>
      k_o_data_3, datad=>pb(0));
   ix59319z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(2), datab=>k_i_pixel(2), datac=>
      k_o_data_2, datad=>pb(0));
   ix59319z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(1), datab=>k_i_pixel(1), datac=>
      k_o_data_1, datad=>pb(0));
   ix59319z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>rb_i_data(0), datab=>k_i_pixel(0), datac=>
      k_o_data_0, datad=>pb(0));
   ix11963z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0300") 
       port map ( combout=>rb_rd_en_true, datab=>rb_i_valid, datac=>
      wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix25391z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx25391z3, datac=>write_fifo_rd_en_delayed, datad
      =>pb(0));
   ix7605z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f7") 
       port map ( combout=>nx7605z1, dataa=>nx7605z2, datab=>nx22869z2, 
      datac=>write_fifo_status_cnt(0), datad=>rx_valid);
   ix15004z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx15004z1, dataa=>rb_empty, datab=>rb_rd_en, 
      datac=>tx_busy, datad=>tx_busy_delayed);
   ix22869z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>write_fifo_full, dataa=>nx22869z2, datab=>
      write_fifo_status_cnt(0), datac=>write_fifo_status_cnt(7), datad=>
      write_fifo_status_cnt(8));
   ix49438z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(7), datab=>
      write_fifo_rd_pointer(7), datac=>write_fifo_wr_pointer(7), datad=>
      rx_valid);
   ix49438z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(6), datab=>
      write_fifo_rd_pointer(6), datac=>write_fifo_wr_pointer(6), datad=>
      rx_valid);
   ix49438z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(5), datab=>
      write_fifo_rd_pointer(5), datac=>write_fifo_wr_pointer(5), datad=>
      rx_valid);
   ix49438z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(4), datab=>
      write_fifo_rd_pointer(4), datac=>write_fifo_wr_pointer(4), datad=>
      rx_valid);
   ix49438z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(3), datab=>
      write_fifo_rd_pointer(3), datac=>write_fifo_wr_pointer(3), datad=>
      rx_valid);
   ix49438z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(2), datab=>
      write_fifo_rd_pointer(2), datac=>write_fifo_wr_pointer(2), datad=>
      rx_valid);
   ix49438z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(1), datab=>
      write_fifo_rd_pointer(1), datac=>write_fifo_wr_pointer(1), datad=>
      rx_valid);
   ix49438z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>write_fifo_pointer(0), datab=>
      write_fifo_rd_pointer(0), datac=>write_fifo_wr_pointer(0), datad=>
      rx_valid);
   ix59319z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(7), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(7), datad=>read_fifo_wr_pointer(7));
   ix59319z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(6), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(6), datad=>read_fifo_wr_pointer(6));
   ix59319z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(5), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(5), datad=>read_fifo_wr_pointer(5));
   ix59319z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(4), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(4), datad=>read_fifo_wr_pointer(4));
   ix59319z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(3), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(3), datad=>read_fifo_wr_pointer(3));
   ix59319z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(2), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(2), datad=>read_fifo_wr_pointer(2));
   ix59319z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(1), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(1), datad=>read_fifo_wr_pointer(1));
   ix59319z7115 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>read_fifo_pointer(0), datab=>rb_i_valid, datac=>
      read_fifo_rd_pointer(0), datad=>read_fifo_wr_pointer(0));
   ix9182z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx9182z1, dataa=>rb_i_valid, datab=>rb_empty, 
      datac=>wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix51544z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"bb3b") 
       port map ( combout=>nx51544z6, dataa=>nx51544z7, datab=>nx51544z8, 
      datac=>seg7_num(5), datad=>seg7_num(7));
   ix51544z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"279f") 
       port map ( combout=>nx51544z8, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>nx51544z5, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7114 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd45") 
       port map ( combout=>nx51544z20, dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix51544z7108 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eeef") 
       port map ( combout=>nx51544z14, dataa=>nx51544z15, datab=>nx51544z16, 
      datac=>nx51544z17, datad=>seg7_num(0));
   ix51544z7116 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eaee") 
       port map ( combout=>nx51544z22, dataa=>nx51544z23, datab=>nx51544z17, 
      datac=>seg7_num(0), datad=>seg7_num(1));
   ix51544z7111 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"abef") 
       port map ( combout=>nx51544z17, dataa=>nx51544z18, datab=>nx51544z19, 
      datac=>nx51544z20, datad=>seg7_num(2));
   ix51544z7113 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"d7ed") 
       port map ( combout=>nx51544z19, dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix7365z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eef0") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_4, dataa=>nx7365z1, 
      datab=>nx51544z4, datac=>nx51544z20, datad=>seg7_en_EXMPLR189(1));
   ix6368z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eef0") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_3, dataa=>nx51544z9, 
      datab=>nx51544z10, datac=>nx51544z14, datad=>seg7_en_EXMPLR189(1));
   ix5371z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_2, datab=>nx5371z1, 
      datac=>nx51544z22, datad=>seg7_en_EXMPLR189(1));
   ix3377z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_0, datab=>
      nx51544z19, datac=>nx51544z5, datad=>seg7_en_EXMPLR189(1));
   ix10356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f033") 
       port map ( combout=>u_seg7_u_dual_seg7_muxed_char_7, datab=>nx59319z1, 
      datac=>seg7_pts(1), datad=>seg7_en_EXMPLR189(1));
   ix29573z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx29573z1, datac=>u_seg7_u_dual_seg7_prev_reset, 
      datad=>reset_n);
   ix10356z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f00f") 
       port map ( combout=>u_seg7_u_dual_seg7_load_reg, datac=>
      u_seg7_u_dual_seg7_prev_char0_en, datad=>seg7_en_EXMPLR189(1));
   ix2379z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx2379z1, datac=>nx59343z2, datad=>nx64683z2);
   ix25838z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0511") 
       port map ( combout=>NOT_u_uart_Tx_Reg_14n6ss1_8, dataa=>
      u_uart_TxFSM(1), datab=>read_fifo_q_saved(7), datac=>read_fifo_q(7), 
      datad=>rb_rd_en_delayed);
   ix17862z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"03f3") 
       port map ( combout=>u_uart_Tx_Reg_14n6ss1_0, datab=>u_uart_TxFSM(0), 
      datac=>u_uart_TxFSM(1), datad=>nx17862z3);
   ix18859z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4051") 
       port map ( combout=>nx18859z1, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z3);
   ix61431z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx61431z2, datac=>u_uart_TxFSM(1), datad=>
      u_uart_TopTx);
   ix13938z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0c00") 
       port map ( combout=>nx13938z1, datab=>u_uart_RxFSM(4), datac=>
      nx12790z3, datad=>u_uart_TopRx);
   ix44871z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx44871z1, datac=>u_uart_RxFSM(3), datad=>
      u_uart_TopRx);
   ix12790z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3330") 
       port map ( combout=>nx12790z1, datab=>nx12790z2, datac=>nx64683z2, 
      datad=>nx12790z3);
   ix10796z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx10796z1, datac=>nx9799z2, datad=>
      u_uart_RxFSM(2));
   ix11793z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcf0") 
       port map ( combout=>nx11793z1, datab=>u_uart_RxFSM(1), datac=>
      u_uart_RxFSM(3), datad=>nx12790z3);
   ix13787z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f03") 
       port map ( combout=>nx13787z1, datab=>u_uart_RxFSM(4), datac=>
      u_uart_RxFSM(5), datad=>nx12790z3);
   ix9799z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx9799z1, datac=>nx9799z2, datad=>u_uart_RxFSM(2)
   );
   ix59343z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx59343z1, datac=>nx59343z2, datad=>nx64683z2);
   ix8802z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx8802z1, datab=>u_uart_RxFSM(1), datac=>
      u_uart_RxFSM(4), datad=>nx12790z3);
   ix13251z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fcff") 
       port map ( combout=>nx13251z1, datab=>u_uart_TxFSM(0), datac=>
      u_uart_TxFSM(1), datad=>nx7359z3);
   ix59343z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a0c0") 
       port map ( combout=>nx59343z2, dataa=>nx59343z3, datab=>nx59343z4, 
      datac=>nx59343z5, datad=>u_uart_RxDiv(6));
   ix57349z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx57349z1, dataa=>nx57349z2, datab=>nx57349z3, 
      datac=>nx57349z4, datad=>u_uart_TxDiv(6));
   ix8356z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx8356z3, dataa=>u_uart_TxBitCnt(0), datab=>
      u_uart_TxBitCnt(1), datac=>u_uart_TxBitCnt(2), datad=>
      u_uart_TxBitCnt(3));
   ix9799z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx9799z2, dataa=>u_uart_RxBitCnt(0), datab=>
      u_uart_RxBitCnt(1), datac=>u_uart_RxBitCnt(2), datad=>
      u_uart_RxBitCnt(3));
   ix40631z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(7), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(7), datad=>u_kirsch_i_2(7));
   ix39634z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(6), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(6), datad=>u_kirsch_i_2(6));
   ix38637z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(5), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(5), datad=>u_kirsch_i_2(5));
   ix37640z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(4), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(4), datad=>u_kirsch_i_2(4));
   ix36643z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(3), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(3), datad=>u_kirsch_i_2(3));
   ix35646z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(2), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(2), datad=>u_kirsch_i_2(2));
   ix34649z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(1), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(1), datad=>u_kirsch_i_2(1));
   ix33652z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max0_1n2ss1(0), datab=>nx40631z1, 
      datac=>u_kirsch_i_3(0), datad=>u_kirsch_i_2(0));
   ix52067z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"111f") 
       port map ( combout=>nx52067z3, dataa=>u_kirsch_stg_counter2(2), datab
      =>u_kirsch_stg_counter2(3), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix2094z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f800") 
       port map ( combout=>nx2094z2, dataa=>nx26412z3, datab=>nx12123z2, 
      datac=>nx60486z6, datad=>reset_n);
   ix26412z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cecc") 
       port map ( combout=>nx26412z9, dataa=>nx29221z2, datab=>nx41042z10, 
      datac=>u_kirsch_stg_counter1(0), datad=>u_kirsch_stg_counter1(1));
   ix38950z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1110") 
       port map ( combout=>nx38950z2, dataa=>nx41042z10, datab=>nx38950z1, 
      datac=>nx38950z3, datad=>nx38950z4);
   ix34206z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(9), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(9), datad=>u_kirsch_r_add1_a(9));
   ix33209z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(8), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(8), datad=>u_kirsch_r_add1_a(8));
   ix32212z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(7), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(7), datad=>u_kirsch_r_add1_a(7));
   ix31215z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(6), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(6), datad=>u_kirsch_r_add1_a(6));
   ix30218z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(5), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(5), datad=>u_kirsch_r_add1_a(5));
   ix29221z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(4), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(4), datad=>u_kirsch_r_add1_a(4));
   ix28224z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(3), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(3), datad=>u_kirsch_r_add1_a(3));
   ix27227z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(2), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(2), datad=>u_kirsch_r_add1_a(2));
   ix26230z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(1), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(1), datad=>u_kirsch_r_add1_a(1));
   ix25233z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_max1_5n6ss1(0), datab=>nx29221z1, 
      datac=>u_kirsch_r_add1_b(0), datad=>u_kirsch_r_add1_a(0));
   ix29221z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0038") 
       port map ( combout=>nx29221z10, dataa=>u_kirsch_stg_counter2(0), 
      datab=>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), 
      datad=>u_kirsch_stg_counter2(3));
   ix12123z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f800") 
       port map ( combout=>nx12123z1, dataa=>nx41042z9, datab=>nx12123z2, 
      datac=>nx12123z3, datad=>reset_n);
   ix29221z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx29221z5, datac=>nx29221z6, datad=>nx29221z8);
   ix4094z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccfc") 
       port map ( combout=>nx4094z1, datab=>nx4094z2, datac=>nx16758z7, 
      datad=>u_kirsch_stg_counter1(3));
   ix64328z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ae00") 
       port map ( combout=>nx64328z4, dataa=>nx4094z2, datab=>nx16758z7, 
      datac=>u_kirsch_stg_counter1(3), datad=>reset_n);
   ix22605z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx22605z2, datab=>nx22605z3, datac=>
      u_kirsch_r_sub0_11, datad=>u_kirsch_r_sub0_12);
   ix64381z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_7, datab=>nx64381z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(7));
   ix65378z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_6, datab=>nx65378z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(6));
   ix839z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_5, datab=>nx839z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(5));
   ix1836z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_4, datab=>nx1836z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(4));
   ix2833z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_3, datab=>nx2833z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(3));
   ix3830z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_2, datab=>nx3830z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(2));
   ix4827z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>u_kirsch_d3_9n15ss1_1, datab=>nx4827z4, datac=>
      nx41042z4, datad=>u_kirsch_o_dataC(1));
   ix63433z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(7), dataa=>nx63433z1, datab=>
      nx63433z2, datac=>nx25391z3, datad=>u_kirsch_c3(7));
   ix55082z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(6), dataa=>nx55082z1, datab=>
      nx55082z2, datac=>nx25391z3, datad=>u_kirsch_c3(6));
   ix56079z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(5), dataa=>nx56079z1, datab=>
      nx56079z2, datac=>nx25391z3, datad=>u_kirsch_c3(5));
   ix57076z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(4), dataa=>nx57076z1, datab=>
      nx57076z2, datac=>nx25391z3, datad=>u_kirsch_c3(4));
   ix58073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(3), dataa=>nx58073z1, datab=>
      nx58073z2, datac=>nx25391z3, datad=>u_kirsch_c3(3));
   ix59070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(2), dataa=>nx59070z1, datab=>
      nx59070z2, datac=>nx25391z3, datad=>u_kirsch_c3(2));
   ix60067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(1), dataa=>nx60067z1, datab=>
      nx60067z2, datac=>nx25391z3, datad=>u_kirsch_c3(1));
   ix61064z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_a2_9n22ss1(0), dataa=>nx61064z1, datab=>
      nx61064z2, datac=>nx25391z3, datad=>u_kirsch_c3(0));
   ix41042z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(7), dataa=>nx41042z1, datab=>
      nx41042z2, datac=>nx25391z3, datad=>u_kirsch_d3(7));
   ix40045z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(6), dataa=>nx40045z1, datab=>
      nx40045z2, datac=>nx25391z3, datad=>u_kirsch_d3(6));
   ix39048z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(5), dataa=>nx39048z1, datab=>
      nx39048z2, datac=>nx25391z3, datad=>u_kirsch_d3(5));
   ix38051z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(4), dataa=>nx38051z1, datab=>
      nx38051z2, datac=>nx25391z3, datad=>u_kirsch_d3(4));
   ix37054z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(3), dataa=>nx37054z1, datab=>
      nx37054z2, datac=>nx25391z3, datad=>u_kirsch_d3(3));
   ix36057z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(2), dataa=>nx36057z1, datab=>
      nx36057z2, datac=>nx25391z3, datad=>u_kirsch_d3(2));
   ix35060z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(1), dataa=>nx35060z1, datab=>
      nx35060z2, datac=>nx25391z3, datad=>u_kirsch_d3(1));
   ix34063z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8f80") 
       port map ( combout=>u_kirsch_h2_9n22ss1(0), dataa=>nx34063z1, datab=>
      nx34063z2, datac=>nx25391z3, datad=>u_kirsch_d3(0));
   ix42893z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(7), dataa=>k_i_pixel(7), 
      datab=>u_kirsch_e3(7), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix45180z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(6), dataa=>k_i_pixel(6), 
      datab=>u_kirsch_e3(6), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix44183z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(5), dataa=>k_i_pixel(5), 
      datab=>u_kirsch_e3(5), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix43186z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(4), dataa=>k_i_pixel(4), 
      datab=>u_kirsch_e3(4), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix42189z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(3), dataa=>k_i_pixel(3), 
      datab=>u_kirsch_e3(3), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix41192z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(2), dataa=>k_i_pixel(2), 
      datab=>u_kirsch_e3(2), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix40195z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(1), dataa=>k_i_pixel(1), 
      datab=>u_kirsch_e3(1), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix39198z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>u_kirsch_f3_9n22ss1(0), dataa=>k_i_pixel(0), 
      datab=>u_kirsch_e3(0), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix37156z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx37156z1, dataa=>nx16758z2, datab=>nx17755z2, 
      datac=>nx16758z7, datad=>u_kirsch_stg_counter1(3));
   ix41042z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"aaab") 
       port map ( combout=>nx41042z11, dataa=>nx26412z4, datab=>
      u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix55203z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx55203z2, dataa=>nx16758z4, datab=>nx16758z7, 
      datac=>nx55203z3, datad=>reset_n);
   ix18752z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"08ff") 
       port map ( combout=>nx18752z3, dataa=>nx16758z2, datab=>
      u_kirsch_stg_counter2(2), datac=>u_kirsch_stg_counter2(3), datad=>
      reset_n);
   ix16758z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx16758z3, dataa=>nx16758z4, datab=>nx16758z7, 
      datac=>nx55203z3, datad=>reset_n);
   ix53163z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"e000") 
       port map ( combout=>nx53163z3, dataa=>nx53163z4, datab=>nx16758z6, 
      datac=>nx25391z3, datad=>reset_n);
   ix26412z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx26412z7, datab=>nx41042z6, datac=>nx26412z8, 
      datad=>reset_n);
   ix41042z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx41042z5, datab=>nx41042z6, datac=>nx41042z7, 
      datad=>reset_n);
   ix55203z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx55203z3, dataa=>nx55203z4, datab=>
      u_kirsch_address(1), datac=>u_kirsch_address(2), datad=>
      u_kirsch_address(4));
   ix63596z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx63596z4, dataa=>nx25391z2, datab=>nx37417z3, 
      datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix49076z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx49076z2, dataa=>nx52067z3, datab=>
      u_kirsch_max0_bit_counter(0), datac=>u_kirsch_max0_bit_counter(1), 
      datad=>reset_n);
   ix52067z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>nx52067z2, dataa=>nx52067z3, datab=>
      u_kirsch_max0_bit_counter(0), datac=>u_kirsch_max0_bit_counter(1), 
      datad=>reset_n);
   ix50073z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx50073z2, dataa=>nx52067z3, datab=>
      u_kirsch_max0_bit_counter(0), datac=>u_kirsch_max0_bit_counter(1), 
      datad=>reset_n);
   ix22605z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a0e0") 
       port map ( combout=>nx22605z1, dataa=>nx4094z2, datab=>nx16758z7, 
      datac=>nx22605z2, datad=>u_kirsch_stg_counter1(3));
   ix29221z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ec00") 
       port map ( combout=>nx29221z1, dataa=>nx29221z2, datab=>nx29221z3, 
      datac=>nx57197z2, datad=>nx29221z4);
   ix4443z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4000") 
       port map ( combout=>nx4443z1, dataa=>u_kirsch_row_index(0), datab=>
      u_kirsch_row_index(1), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix62334z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>nx62334z1, dataa=>nx22605z3, datab=>nx62334z2, 
      datac=>u_kirsch_r_sub0_11, datad=>u_kirsch_r_sub0_12);
   ix60486z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ffe0") 
       port map ( combout=>nx60486z3, dataa=>nx60486z4, datab=>nx60486z7, 
      datac=>nx29221z6, datad=>nx29221z1);
   ix63331z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8a00") 
       port map ( combout=>nx63331z1, dataa=>nx22605z2, datab=>
      u_kirsch_dir2_final(0), datac=>u_kirsch_dir2_final(1), datad=>
      u_kirsch_dir2_final(2));
   ix64328z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8c80") 
       port map ( combout=>nx64328z1, dataa=>nx64328z2, datab=>nx22605z2, 
      datac=>u_kirsch_dir2_final(2), datad=>u_kirsch_dir1_final(3));
   ix41042z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx41042z4, dataa=>u_kirsch_row_index(0), datab=>
      u_kirsch_row_index(1), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix41042z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2000") 
       port map ( combout=>nx41042z3, dataa=>u_kirsch_row_index(0), datab=>
      u_kirsch_row_index(1), datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix40631z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ab00") 
       port map ( combout=>nx40631z2, dataa=>nx29221z2, datab=>
      u_kirsch_stg_counter2(2), datac=>u_kirsch_stg_counter2(3), datad=>
      reset_n);
   ix29221z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f800") 
       port map ( combout=>nx29221z8, dataa=>nx29221z9, datab=>nx57197z2, 
      datac=>nx29221z10, datad=>reset_n);
   ix60486z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0010") 
       port map ( combout=>nx60486z6, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix38950z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0020") 
       port map ( combout=>nx38950z4, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix4094z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx4094z2, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix41042z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx41042z10, dataa=>u_kirsch_stg_counter2(0), 
      datab=>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), 
      datad=>u_kirsch_stg_counter2(3));
   ix26412z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0003") 
       port map ( combout=>nx26412z4, datab=>u_kirsch_stg_counter2(1), datac
      =>u_kirsch_stg_counter2(2), datad=>u_kirsch_stg_counter2(3));
   ix18752z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx18752z2, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix38950z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0020") 
       port map ( combout=>nx38950z3, dataa=>u_kirsch_stg_counter1(0), datab
      =>u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix16758z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx16758z7, datab=>u_kirsch_stg_counter1(0), datac
      =>u_kirsch_stg_counter1(1), datad=>u_kirsch_stg_counter1(2));
   ix38950z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx38950z1, dataa=>u_kirsch_stg_counter1(0), datab
      =>u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix63596z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx63596z2, dataa=>nx63596z3, datab=>nx25391z6, 
      datac=>u_kirsch_row_count(4), datad=>u_kirsch_row_count(5));
   ix37417z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0ff") 
       port map ( combout=>nx37417z1, datab=>write_fifo_rd_en_delayed, datac
      =>pb(0), datad=>reset_n);
   ix11769z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0300") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(9), datab=>nx41042z10, 
      datac=>nx38950z1, datad=>u_kirsch_r_add2(9));
   ix42917z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(8), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(8), datad=>
      u_kirsch_r_add0_b(8));
   ix38950z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(7), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(7), datad=>
      u_kirsch_r_add0_b(7));
   ix7802z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(6), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(6), datad=>
      u_kirsch_r_add0_b(6));
   ix23346z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(5), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(5), datad=>
      u_kirsch_r_add0_b(5));
   ix58521z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(4), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(4), datad=>
      u_kirsch_r_add0_b(4));
   ix27373z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(3), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(3), datad=>
      u_kirsch_r_add0_b(3));
   ix21832z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(2), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(2), datad=>
      u_kirsch_r_add0_b(2));
   ix52980z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(1), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(1), datad=>
      u_kirsch_r_add0_b(1));
   ix46944z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f1(0), dataa=>nx41042z10, 
      datab=>nx38950z1, datac=>u_kirsch_r_add2(0), datad=>
      u_kirsch_r_add0_b(0));
   ix46914z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e00") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(12), dataa=>nx38950z3, 
      datab=>nx38950z4, datac=>nx26412z9, datad=>u_kirsch_r_add2(11));
   ix62488z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e00") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(11), dataa=>nx38950z3, 
      datab=>nx38950z4, datac=>nx26412z9, datad=>u_kirsch_r_add2(10));
   ix37436z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e00") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(10), dataa=>nx38950z3, 
      datab=>nx38950z4, datac=>nx26412z9, datad=>u_kirsch_r_add2(9));
   ix11769z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e00") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(9), dataa=>nx38950z3, 
      datab=>nx38950z4, datac=>nx26412z9, datad=>u_kirsch_r_add2(8));
   ix42917z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(8), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(7), datad=>u_kirsch_r_add0_a(8));
   ix38950z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(7), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(6), datad=>u_kirsch_r_add0_a(7));
   ix7802z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(6), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(5), datad=>u_kirsch_r_add0_a(6));
   ix23346z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(5), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(4), datad=>u_kirsch_r_add0_a(5));
   ix58521z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(4), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(3), datad=>u_kirsch_r_add0_a(4));
   ix27373z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(3), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(2), datad=>u_kirsch_r_add0_a(3));
   ix21832z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(2), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(1), datad=>u_kirsch_r_add0_a(2));
   ix52980z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>u_kirsch_r_add2_4n1s1f2(1), datab=>nx38950z2, 
      datac=>u_kirsch_r_add2(0), datad=>u_kirsch_r_add0_a(1));
   ix62334z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx62334z3, datac=>u_kirsch_dir2_final(0), datad=>
      u_kirsch_dir1_final(1));
   ix29221z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0013") 
       port map ( combout=>nx29221z6, dataa=>nx29221z2, datab=>nx29221z3, 
      datac=>nx57197z2, datad=>nx29221z7);
   ix19433z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx19433z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(0), datad=>u_kirsch_g2(0));
   ix20430z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx20430z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(1), datad=>u_kirsch_g2(1));
   ix21427z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx21427z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(2), datad=>u_kirsch_g2(2));
   ix22424z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx22424z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(3), datad=>u_kirsch_g2(3));
   ix23421z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx23421z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(4), datad=>u_kirsch_g2(4));
   ix24418z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx24418z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(5), datad=>u_kirsch_g2(5));
   ix25415z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx25415z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(6), datad=>u_kirsch_g2(6));
   ix26412z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx26412z5, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(7), datad=>u_kirsch_g2(7));
   ix11014z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx11014z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(0), datad=>u_kirsch_a3(0));
   ix12011z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx12011z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(1), datad=>u_kirsch_a3(1));
   ix13008z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx13008z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(2), datad=>u_kirsch_a3(2));
   ix14005z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx14005z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(3), datad=>u_kirsch_a3(3));
   ix15002z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx15002z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(4), datad=>u_kirsch_a3(4));
   ix15999z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx15999z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(5), datad=>u_kirsch_a3(5));
   ix16996z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx16996z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(6), datad=>u_kirsch_a3(6));
   ix17993z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx17993z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(7), datad=>u_kirsch_a3(7));
   ix62941z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx62941z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(0), datad=>u_kirsch_e3(0));
   ix61944z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx61944z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(1), datad=>u_kirsch_e3(1));
   ix60947z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx60947z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(2), datad=>u_kirsch_e3(2));
   ix59950z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx59950z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(3), datad=>u_kirsch_e3(3));
   ix58953z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx58953z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(4), datad=>u_kirsch_e3(4));
   ix57956z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx57956z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(5), datad=>u_kirsch_e3(5));
   ix56959z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx56959z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(6), datad=>u_kirsch_e3(6));
   ix55962z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>nx55962z2, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_g3(7), datad=>u_kirsch_e3(7));
   ix5824z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx5824z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(0), datad=>u_kirsch_a2(0));
   ix4827z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx4827z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(1), datad=>u_kirsch_a2(1));
   ix3830z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx3830z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(2), datad=>u_kirsch_a2(2));
   ix2833z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f1e0") 
       port map ( combout=>nx2833z3, dataa=>nx26412z6, datab=>nx26412z4, 
      datac=>u_kirsch_h3(3), datad=>u_kirsch_a2(3));
   ix1836z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx1836z3, datab=>nx41042z11, datac=>
      u_kirsch_h3(4), datad=>u_kirsch_a2(4));
   ix839z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx839z3, datab=>nx41042z11, datac=>u_kirsch_h3(5), 
      datad=>u_kirsch_a2(5));
   ix64381z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx64381z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(7), datad=>u_kirsch_o_dataA(7));
   ix65378z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx65378z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(6), datad=>u_kirsch_o_dataA(6));
   ix839z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx839z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(5), datad=>u_kirsch_o_dataA(5));
   ix1836z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx1836z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(4), datad=>u_kirsch_o_dataA(4));
   ix2833z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx2833z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(3), datad=>u_kirsch_o_dataA(3));
   ix3830z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx3830z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(2), datad=>u_kirsch_o_dataA(2));
   ix4827z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx4827z4, datab=>nx41042z3, datac=>
      u_kirsch_o_dataB(1), datad=>u_kirsch_o_dataA(1));
   ix18625z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx18625z1, datab=>nx51544z17, datac=>nx51544z8, 
      datad=>seg7_en_EXMPLR189(1));
   ix28027z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0bb") 
       port map ( combout=>nx28027z1, dataa=>nx51544z24, datab=>nx51544z17, 
      datac=>nx51544z6, datad=>seg7_en_EXMPLR189(1));
   ix51544z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eef0") 
       port map ( combout=>nx51544z1, dataa=>nx51544z2, datab=>nx51544z11, 
      datac=>nx51544z12, datad=>seg7_en_EXMPLR189(1));
   ix56200z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"e666") 
       port map ( combout=>nx56200z2, dataa=>u_kirsch_stg_counter1(0), datab
      =>u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix57197z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f878") 
       port map ( combout=>nx57197z2, dataa=>u_kirsch_stg_counter1(0), datab
      =>u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix17755z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"e666") 
       port map ( combout=>nx17755z2, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix60415z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f8") 
       port map ( combout=>nx60415z1, dataa=>nx60415z2, datab=>nx60415z3, 
      datac=>uart_reset, datad=>reset_n);
   ix46735z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4602") 
       port map ( combout=>nx46735z1, dataa=>nx29221z8, datab=>
      u_kirsch_max1_bit_counter(0), datac=>u_kirsch_max1_bit_counter(1), 
      datad=>reset_n);
   ix45738z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5808") 
       port map ( combout=>nx45738z1, dataa=>nx29221z8, datab=>
      u_kirsch_max1_bit_counter(0), datac=>u_kirsch_max1_bit_counter(1), 
      datad=>reset_n);
   ix64316z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3c00") 
       port map ( combout=>nx64316z1, datab=>nx52067z3, datac=>
      u_kirsch_max0_bit_counter(0), datad=>reset_n);
   ix63319z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7800") 
       port map ( combout=>nx63319z1, dataa=>nx52067z3, datab=>
      u_kirsch_max0_bit_counter(0), datac=>u_kirsch_max0_bit_counter(1), 
      datad=>reset_n);
   ix57978z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx57978z1, dataa=>nx29221z2, datab=>nx41042z9, 
      datac=>nx41042z10, datad=>u_kirsch_r_add2_4n1s1(10));
   ix56981z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx56981z1, dataa=>nx29221z2, datab=>nx41042z9, 
      datac=>nx41042z10, datad=>u_kirsch_r_add2_4n1s1(11));
   ix55984z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx55984z1, dataa=>nx29221z2, datab=>nx41042z9, 
      datac=>nx41042z10, datad=>u_kirsch_r_add2_4n1s1(12));
   ix55203z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2333") 
       port map ( combout=>nx55203z1, dataa=>nx16758z7, datab=>nx55203z2, 
      datac=>u_kirsch_stg_counter1(0), datad=>reset_n);
   ix56200z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e0f") 
       port map ( combout=>nx56200z1, dataa=>nx56200z2, datab=>nx16758z7, 
      datac=>nx55203z2, datad=>reset_n);
   ix57197z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e0f") 
       port map ( combout=>nx57197z1, dataa=>nx57197z2, datab=>nx16758z7, 
      datac=>nx55203z2, datad=>reset_n);
   ix58194z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3233") 
       port map ( combout=>nx58194z1, dataa=>nx16758z7, datab=>nx55203z2, 
      datac=>u_kirsch_stg_counter1(3), datad=>reset_n);
   ix18752z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3231") 
       port map ( combout=>nx18752z1, dataa=>nx18752z2, datab=>nx16758z3, 
      datac=>nx18752z3, datad=>u_kirsch_stg_counter2(0));
   ix17755z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0e0f") 
       port map ( combout=>nx17755z1, dataa=>nx4094z2, datab=>nx17755z2, 
      datac=>nx16758z3, datad=>reset_n);
   ix16758z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3233") 
       port map ( combout=>nx16758z1, dataa=>nx16758z2, datab=>nx16758z3, 
      datac=>u_kirsch_stg_counter2(2), datad=>reset_n);
   ix15761z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3233") 
       port map ( combout=>nx15761z1, dataa=>nx4094z2, datab=>nx16758z3, 
      datac=>u_kirsch_stg_counter2(3), datad=>reset_n);
   ix50073z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx50073z1, datab=>nx50073z2, datac=>nx40631z1, 
      datad=>u_kirsch_dir1(2));
   ix52067z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx52067z1, datab=>nx52067z2, datac=>nx40631z1, 
      datad=>u_kirsch_dir1(0));
   ix49076z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx49076z1, datab=>nx49076z2, datac=>nx40631z1, 
      datad=>u_kirsch_dir1(3));
   ix51070z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fd08") 
       port map ( combout=>nx51070z1, dataa=>nx63319z1, datab=>nx40631z1, 
      datac=>u_kirsch_max0_bit_counter(1), datad=>u_kirsch_dir1(1));
   ix58492z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx58492z1, datab=>nx58492z2, datac=>nx60486z3, 
      datad=>u_kirsch_dir2(2));
   ix59489z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx59489z1, datab=>nx59489z2, datac=>nx60486z3, 
      datad=>u_kirsch_dir2(1));
   ix60486z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx60486z1, datab=>nx60486z2, datac=>nx60486z3, 
      datad=>u_kirsch_dir2(0));
   ix40325z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cfcc") 
       port map ( combout=>nx40325z1, datab=>u_uart_RxFSM(5), datac=>
      rx_valid, datad=>k_o_data_6);
   ix64502z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"abaa") 
       port map ( combout=>nx64502z1, dataa=>nx64502z2, datab=>rb_i_valid, 
      datac=>wait_for_tx_valid_delayed, datad=>rb_rd_en);
   ix17862z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cf03") 
       port map ( combout=>nx17862z1, datab=>nx17862z2, datac=>
      u_uart_Tx_Reg_14n6ss1_0, datad=>nx62197z1);
   ix7359z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc03") 
       port map ( combout=>nx7359z1, datab=>nx7359z2, datac=>nx8356z2, datad
      =>u_uart_TxFSM(0));
   ix8356z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"eddc") 
       port map ( combout=>nx8356z1, dataa=>nx7359z2, datab=>nx8356z2, datac
      =>u_uart_TxFSM(0), datad=>u_uart_TxFSM(1));
   ix62599z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3340") 
       port map ( combout=>nx62599z1, dataa=>nx63596z2, datab=>nx63596z4, 
      datac=>u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix63596z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3034") 
       port map ( combout=>nx63596z1, dataa=>nx63596z2, datab=>nx63596z4, 
      datac=>u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix2094z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx2094z1, datab=>nx2094z2, datac=>
      u_kirsch_dir1_final(0), datad=>u_kirsch_dir1(0));
   ix3091z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx3091z1, datab=>nx2094z2, datac=>
      u_kirsch_dir1_final(1), datad=>u_kirsch_dir1(1));
   ix4088z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx4088z1, datab=>nx2094z2, datac=>
      u_kirsch_dir1_final(2), datad=>u_kirsch_dir1(2));
   ix5085z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx5085z1, datab=>nx2094z2, datac=>
      u_kirsch_dir1_final(3), datad=>u_kirsch_dir1(3));
   ix58151z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx58151z1, datac=>rx_valid, datad=>reset_n);
   ix58143z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0ff") 
       port map ( combout=>nx58143z1, datac=>nx7605z1, datad=>reset_n);
   ix22869z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"dcff") 
       port map ( combout=>nx22869z1, dataa=>write_fifo_full, datab=>
      nx7605z1, datac=>rx_valid, datad=>reset_n);
   ix23864z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caff") 
       port map ( combout=>nx23864z1, dataa=>write_fifo_rd_en_delayed, datab
      =>k_o_valid, datac=>pb(0), datad=>reset_n);
   ix24859z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"10ff") 
       port map ( combout=>nx24859z1, dataa=>rb_i_valid, datab=>
      wait_for_tx_valid_delayed, datac=>rb_rd_en, datad=>reset_n);
   ix383z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ecff") 
       port map ( combout=>nx383z1, dataa=>nx383z2, datab=>nx9182z1, datac=>
      rb_i_valid, datad=>reset_n);
   ix25391z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80ff") 
       port map ( combout=>nx25391z1, dataa=>nx25391z2, datab=>nx37417z3, 
      datac=>nx25391z3, datad=>reset_n);
   ix12790z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"02ce") 
       port map ( combout=>nx12790z2, dataa=>nx64683z2, datab=>
      u_uart_RxFSM(5), datac=>u_uart_TopRx, datad=>uart_rx);
   ix59437z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3c00") 
       port map ( combout=>nx59437z2, datab=>u_uart_TxFSM(0), datac=>
      u_uart_TxFSM(1), datad=>u_uart_TopTx);
   ix59437z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3f0f") 
       port map ( combout=>nx59437z1, datab=>u_uart_TxFSM(1), datac=>
      u_uart_TxBitCnt(0), datad=>u_uart_TopTx);
   ix60434z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"82c3") 
       port map ( combout=>nx60434z1, dataa=>u_uart_TxFSM(1), datab=>
      u_uart_TxBitCnt(0), datac=>u_uart_TxBitCnt(1), datad=>u_uart_TopTx);
   ix61431z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5401") 
       port map ( combout=>nx61431z1, dataa=>nx61431z2, datab=>
      u_uart_TxBitCnt(0), datac=>u_uart_TxBitCnt(1), datad=>
      u_uart_TxBitCnt(2));
   ix62428z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fecd") 
       port map ( combout=>nx62428z1, dataa=>nx62428z2, datab=>nx61431z2, 
      datac=>u_uart_TxBitCnt(2), datad=>u_uart_TxBitCnt(3));
   ix62428z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx62428z2, datac=>u_uart_TxBitCnt(0), datad=>
      u_uart_TxBitCnt(1));
   ix64683z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f303") 
       port map ( combout=>nx64683z3, datab=>nx64683z2, datac=>
      u_uart_RxFSM(3), datad=>u_uart_TopRx);
   ix64683z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f0") 
       port map ( combout=>nx64683z1, datac=>nx64683z2, datad=>
      u_uart_RxBitCnt(0));
   ix144z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cc0") 
       port map ( combout=>nx144z1, datab=>nx64683z2, datac=>
      u_uart_RxBitCnt(0), datad=>u_uart_RxBitCnt(1));
   ix1141z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2a80") 
       port map ( combout=>nx1141z1, dataa=>nx64683z2, datab=>
      u_uart_RxBitCnt(0), datac=>u_uart_RxBitCnt(1), datad=>
      u_uart_RxBitCnt(2));
   ix2138z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"4c80") 
       port map ( combout=>nx2138z1, dataa=>nx2138z2, datab=>nx64683z2, 
      datac=>u_uart_RxBitCnt(2), datad=>u_uart_RxBitCnt(3));
   ix2138z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx2138z2, datac=>u_uart_RxBitCnt(0), datad=>
      u_uart_RxBitCnt(1));
   ix16758z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx16758z2, datac=>u_kirsch_stg_counter2(0), datad
      =>u_kirsch_stg_counter2(1));
   ix16758z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0e0") 
       port map ( combout=>nx16758z4, dataa=>nx16758z5, datab=>nx16758z6, 
      datac=>nx25391z3, datad=>u_kirsch_row_count(2));
   ix22869z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx22869z2, datab=>nx22869z3, datac=>
      write_fifo_status_cnt(1), datad=>write_fifo_status_cnt(2));
   ix7605z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx7605z2, datac=>write_fifo_status_cnt(7), datad
      =>write_fifo_status_cnt(8));
   ix15004z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx15004z2, datab=>nx15004z3, datac=>
      read_fifo_status_cnt(1), datad=>read_fifo_status_cnt(2));
   ix22869z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx22869z3, dataa=>write_fifo_status_cnt(3), datab
      =>write_fifo_status_cnt(4), datac=>write_fifo_status_cnt(5), datad=>
      write_fifo_status_cnt(6));
   ix15004z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx15004z3, dataa=>read_fifo_status_cnt(3), datab
      =>read_fifo_status_cnt(4), datac=>read_fifo_status_cnt(5), datad=>
      read_fifo_status_cnt(6));
   ix60415z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60415z5, dataa=>reset_count(1), datab=>
      reset_count(2), datac=>reset_count(4), datad=>reset_count(6));
   ix60415z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx60415z3, dataa=>nx60415z4, datab=>nx60415z5, 
      datac=>reset_count(0), datad=>reset_count(8));
   ix60415z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c000") 
       port map ( combout=>nx60415z2, datab=>reset_count(5), datac=>
      reset_count(7), datad=>reset_count(10));
   ix55203z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx55203z4, dataa=>u_kirsch_address(3), datab=>
      u_kirsch_address(5), datac=>u_kirsch_address(6), datad=>
      u_kirsch_address(7));
   ix37417z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx37417z3, dataa=>u_kirsch_address(0), datab=>
      u_kirsch_address(1), datac=>u_kirsch_address(2), datad=>
      u_kirsch_address(3));
   ix25391z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25391z2, dataa=>u_kirsch_address(4), datab=>
      u_kirsch_address(5), datac=>u_kirsch_address(6), datad=>
      u_kirsch_address(7));
   ix25391z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25391z6, dataa=>u_kirsch_row_count(0), datab=>
      u_kirsch_row_count(1), datac=>u_kirsch_row_count(2), datad=>
      u_kirsch_row_count(3));
   ix25391z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx25391z5, dataa=>u_kirsch_row_count(4), datab=>
      u_kirsch_row_count(5), datac=>u_kirsch_row_count(6), datad=>
      u_kirsch_row_count(7));
   ix16758z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx16758z6, dataa=>u_kirsch_row_count(3), datab=>
      u_kirsch_row_count(4), datac=>u_kirsch_row_count(6), datad=>
      u_kirsch_row_count(7));
   ix16758z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff0") 
       port map ( combout=>nx16758z5, datac=>u_kirsch_row_count(1), datad=>
      u_kirsch_row_count(5));
   ix53163z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx53163z4, datab=>u_kirsch_row_count(1), datac=>
      u_kirsch_row_count(2), datad=>u_kirsch_row_count(5));
   ix8356z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"10f0") 
       port map ( combout=>nx8356z2, dataa=>nx8356z3, datab=>u_uart_TxFSM(0), 
      datac=>u_uart_TxFSM(1), datad=>u_uart_TopTx);
   ix7359z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"1302") 
       port map ( combout=>nx7359z2, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z3);
   ix53163z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx53163z2, datab=>u_kirsch_o_dataB(7), datac=>
      u_kirsch_o_dataA(7), datad=>u_kirsch_row_index(1));
   ix52166z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx52166z2, datab=>u_kirsch_o_dataB(6), datac=>
      u_kirsch_o_dataA(6), datad=>u_kirsch_row_index(1));
   ix51169z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx51169z2, datab=>u_kirsch_o_dataB(5), datac=>
      u_kirsch_o_dataA(5), datad=>u_kirsch_row_index(1));
   ix50172z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx50172z2, datab=>u_kirsch_o_dataB(4), datac=>
      u_kirsch_o_dataA(4), datad=>u_kirsch_row_index(1));
   ix49175z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx49175z2, datab=>u_kirsch_o_dataB(3), datac=>
      u_kirsch_o_dataA(3), datad=>u_kirsch_row_index(1));
   ix48178z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx48178z2, datab=>u_kirsch_o_dataB(2), datac=>
      u_kirsch_o_dataA(2), datad=>u_kirsch_row_index(1));
   ix47181z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx47181z2, datab=>u_kirsch_o_dataB(1), datac=>
      u_kirsch_o_dataA(1), datad=>u_kirsch_row_index(1));
   ix46184z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ccf0") 
       port map ( combout=>nx46184z2, datab=>u_kirsch_o_dataB(0), datac=>
      u_kirsch_o_dataA(0), datad=>u_kirsch_row_index(1));
   ix58298z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx58298z2, datab=>u_kirsch_o_dataC(7), datac=>
      u_kirsch_o_dataA(7), datad=>u_kirsch_row_index(1));
   ix57301z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx57301z2, datab=>u_kirsch_o_dataC(6), datac=>
      u_kirsch_o_dataA(6), datad=>u_kirsch_row_index(1));
   ix56304z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx56304z2, datab=>u_kirsch_o_dataC(5), datac=>
      u_kirsch_o_dataA(5), datad=>u_kirsch_row_index(1));
   ix55307z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx55307z2, datab=>u_kirsch_o_dataC(4), datac=>
      u_kirsch_o_dataA(4), datad=>u_kirsch_row_index(1));
   ix54310z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx54310z2, datab=>u_kirsch_o_dataC(3), datac=>
      u_kirsch_o_dataA(3), datad=>u_kirsch_row_index(1));
   ix53313z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx53313z2, datab=>u_kirsch_o_dataC(2), datac=>
      u_kirsch_o_dataA(2), datad=>u_kirsch_row_index(1));
   ix52316z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx52316z2, datab=>u_kirsch_o_dataC(1), datac=>
      u_kirsch_o_dataA(1), datad=>u_kirsch_row_index(1));
   ix51319z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx51319z2, datab=>u_kirsch_o_dataC(0), datac=>
      u_kirsch_o_dataA(0), datad=>u_kirsch_row_index(1));
   ix25391z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80ff") 
       port map ( combout=>nx25391z4, dataa=>nx25391z5, datab=>nx25391z6, 
      datac=>nx25391z2, datad=>reset_n);
   ix37417z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"c0ff") 
       port map ( combout=>nx37417z2, datab=>nx25391z2, datac=>nx37417z3, 
      datad=>reset_n);
   ix64381z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx64381z1, dataa=>nx64381z2, datab=>nx64381z3, 
      datac=>u_kirsch_d3_9n15ss1_7, datad=>nx25391z3);
   ix65378z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f088") 
       port map ( combout=>nx65378z1, dataa=>nx65378z2, datab=>nx65378z3, 
      datac=>u_kirsch_d3_9n15ss1_6, datad=>nx25391z3);
   ix839z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx839z1, dataa=>nx839z2, datab=>
      u_kirsch_d3_9n15ss1_5, datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix1836z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx1836z1, dataa=>nx1836z2, datab=>
      u_kirsch_d3_9n15ss1_4, datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix2833z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx2833z1, dataa=>nx2833z2, datab=>
      u_kirsch_d3_9n15ss1_3, datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix3830z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8aaa") 
       port map ( combout=>nx3830z1, dataa=>nx3830z2, datab=>
      u_kirsch_d3_9n15ss1_2, datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix4827z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8aaa") 
       port map ( combout=>nx4827z1, dataa=>nx4827z2, datab=>
      u_kirsch_d3_9n15ss1_1, datac=>write_fifo_rd_en_delayed, datad=>pb(0));
   ix5824z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx5824z1, dataa=>nx5824z2, datab=>nx5824z4, datac
      =>nx34063z2, datad=>nx25391z3);
   ix17993z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx17993z1, dataa=>nx17993z2, datab=>nx17993z4, 
      datac=>nx63433z2, datad=>nx25391z3);
   ix16996z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx16996z1, dataa=>nx16996z2, datab=>nx16996z4, 
      datac=>nx55082z2, datad=>nx25391z3);
   ix15999z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx15999z1, dataa=>nx15999z2, datab=>nx15999z4, 
      datac=>nx56079z2, datad=>nx25391z3);
   ix15002z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx15002z1, dataa=>nx15002z2, datab=>nx15002z4, 
      datac=>nx57076z2, datad=>nx25391z3);
   ix14005z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx14005z1, dataa=>nx14005z2, datab=>nx14005z4, 
      datac=>nx58073z2, datad=>nx25391z3);
   ix13008z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx13008z1, dataa=>nx13008z2, datab=>nx13008z4, 
      datac=>nx59070z2, datad=>nx25391z3);
   ix12011z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx12011z1, dataa=>nx12011z2, datab=>nx12011z4, 
      datac=>nx60067z2, datad=>nx25391z3);
   ix11014z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"80aa") 
       port map ( combout=>nx11014z1, dataa=>nx11014z2, datab=>nx11014z4, 
      datac=>nx61064z2, datad=>nx25391z3);
   ix53163z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx53163z1, datab=>nx53163z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(7));
   ix52166z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx52166z1, datab=>nx52166z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(6));
   ix51169z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx51169z1, datab=>nx51169z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(5));
   ix50172z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx50172z1, datab=>nx50172z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(4));
   ix49175z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx49175z1, datab=>nx49175z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(3));
   ix48178z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx48178z1, datab=>nx48178z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(2));
   ix47181z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx47181z1, datab=>nx47181z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(1));
   ix46184z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx46184z1, datab=>nx46184z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataC(0));
   ix58298z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx58298z1, datab=>nx58298z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(7));
   ix57301z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx57301z1, datab=>nx57301z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(6));
   ix56304z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx56304z1, datab=>nx56304z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(5));
   ix55307z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx55307z1, datab=>nx55307z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(4));
   ix54310z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx54310z1, datab=>nx54310z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(3));
   ix53313z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx53313z1, datab=>nx53313z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(2));
   ix52316z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx52316z1, datab=>nx52316z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(1));
   ix51319z7095 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc0c") 
       port map ( combout=>nx51319z1, datab=>nx51319z2, datac=>nx41042z4, 
      datad=>u_kirsch_o_dataB(0));
   ix41042z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx41042z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(7), datad=>u_kirsch_o_dataA(7));
   ix41042z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx41042z1, datab=>u_kirsch_o_dataC(7), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix40045z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx40045z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(6), datad=>u_kirsch_o_dataA(6));
   ix40045z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx40045z1, datab=>u_kirsch_o_dataC(6), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix39048z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx39048z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(5), datad=>u_kirsch_o_dataA(5));
   ix39048z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx39048z1, datab=>u_kirsch_o_dataC(5), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix38051z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx38051z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(4), datad=>u_kirsch_o_dataA(4));
   ix38051z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx38051z1, datab=>u_kirsch_o_dataC(4), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix37054z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx37054z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(3), datad=>u_kirsch_o_dataA(3));
   ix37054z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx37054z1, datab=>u_kirsch_o_dataC(3), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix36057z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx36057z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(2), datad=>u_kirsch_o_dataA(2));
   ix36057z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx36057z1, datab=>u_kirsch_o_dataC(2), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix35060z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx35060z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(1), datad=>u_kirsch_o_dataA(1));
   ix35060z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx35060z1, datab=>u_kirsch_o_dataC(1), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix34063z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx34063z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataB(0), datad=>u_kirsch_o_dataA(0));
   ix34063z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx34063z1, datab=>u_kirsch_o_dataC(0), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix63433z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx63433z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(7), datad=>u_kirsch_o_dataA(7));
   ix63433z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx63433z1, datab=>u_kirsch_o_dataB(7), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix55082z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx55082z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(6), datad=>u_kirsch_o_dataA(6));
   ix55082z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx55082z1, datab=>u_kirsch_o_dataB(6), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix56079z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx56079z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(5), datad=>u_kirsch_o_dataA(5));
   ix56079z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx56079z1, datab=>u_kirsch_o_dataB(5), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix57076z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx57076z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(4), datad=>u_kirsch_o_dataA(4));
   ix57076z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx57076z1, datab=>u_kirsch_o_dataB(4), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix58073z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx58073z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(3), datad=>u_kirsch_o_dataA(3));
   ix58073z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx58073z1, datab=>u_kirsch_o_dataB(3), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix59070z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx59070z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(2), datad=>u_kirsch_o_dataA(2));
   ix59070z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx59070z1, datab=>u_kirsch_o_dataB(2), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix60067z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx60067z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(1), datad=>u_kirsch_o_dataA(1));
   ix60067z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx60067z1, datab=>u_kirsch_o_dataB(1), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix61064z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx61064z2, dataa=>nx41042z3, datab=>nx41042z4, 
      datac=>u_kirsch_o_dataC(0), datad=>u_kirsch_o_dataA(0));
   ix61064z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffc") 
       port map ( combout=>nx61064z1, datab=>u_kirsch_o_dataB(0), datac=>
      u_kirsch_row_index(0), datad=>u_kirsch_row_index(1));
   ix60486z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60486z7, dataa=>nx60486z8, datab=>nx60486z9, 
      datac=>nx60486z10, datad=>nx60486z11);
   ix60486z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx60486z4, dataa=>nx26412z3, datab=>nx12123z2, 
      datac=>nx60486z5, datad=>nx60486z6);
   ix60486z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx60486z11, dataa=>u_kirsch_r_add1_a(5), datab=>
      u_kirsch_r_add1_a(9), datac=>u_kirsch_r_max1(5), datad=>
      u_kirsch_r_max1(9));
   ix60486z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx60486z10, dataa=>u_kirsch_r_add1_a(7), datab=>
      u_kirsch_r_add1_a(8), datac=>u_kirsch_r_max1(7), datad=>
      u_kirsch_r_max1(8));
   ix60486z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx60486z9, dataa=>u_kirsch_r_add1_a(1), datab=>
      u_kirsch_r_add1_a(6), datac=>u_kirsch_r_max1(1), datad=>
      u_kirsch_r_max1(6));
   ix60486z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx60486z8, dataa=>u_kirsch_r_add1_a(3), datab=>
      u_kirsch_r_add1_a(4), datac=>u_kirsch_r_max1(3), datad=>
      u_kirsch_r_max1(4));
   ix59343z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx59343z5, dataa=>nx59343z6, datab=>
      u_uart_RxDiv(5), datac=>u_uart_RxDiv(8), datad=>u_uart_RxDiv(9));
   ix59343z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx59343z6, dataa=>u_uart_RxDiv(0), datab=>
      u_uart_RxDiv(1), datac=>u_uart_RxDiv(2), datad=>u_uart_RxDiv(10));
   ix59343z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx59343z4, dataa=>u_uart_RxDiv(3), datab=>
      u_uart_RxDiv(4), datac=>u_uart_RxDiv(7), datad=>u_uart_RxDivisor_4);
   ix59343z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx59343z3, dataa=>u_uart_RxDiv(3), datab=>
      u_uart_RxDiv(4), datac=>u_uart_RxDiv(7), datad=>u_uart_RxDivisor_4);
   ix64328z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"cfc0") 
       port map ( combout=>nx64328z2, datab=>nx64328z3, datac=>
      u_kirsch_dir2_final(1), datad=>u_kirsch_dir1_final(2));
   ix57349z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"a00c") 
       port map ( combout=>nx57349z4, dataa=>nx57349z5, datab=>nx57349z6, 
      datac=>u_uart_TxDiv(5), datad=>u_uart_TxDiv(8));
   ix57349z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx57349z3, datac=>u_uart_TxDiv(10), datad=>
      u_uart_TxDiv(9));
   ix57349z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57349z2, dataa=>u_uart_TxDiv(1), datab=>
      u_uart_TxDiv(2), datac=>u_uart_TxDiv(3), datad=>u_uart_TxDiv(11));
   ix57349z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx57349z6, dataa=>u_uart_TxDiv(0), datab=>
      u_uart_TxDiv(4), datac=>u_uart_TxDiv(7), datad=>u_uart_RxDivisor_4);
   ix57349z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx57349z5, dataa=>u_uart_TxDiv(0), datab=>
      u_uart_TxDiv(4), datac=>u_uart_TxDiv(7), datad=>u_uart_RxDivisor_4);
   ix51544z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f800") 
       port map ( combout=>nx51544z4, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7118 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fe0e") 
       port map ( combout=>nx51544z24, dataa=>nx51544z25, datab=>nx51544z19, 
      datac=>seg7_num(1), datad=>seg7_num(3));
   ix51544z7117 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0ff0") 
       port map ( combout=>nx51544z23, datac=>seg7_num(2), datad=>
      seg7_num(3));
   ix839z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx839z2, datab=>nx26412z2, datac=>nx839z3, datad
      =>u_kirsch_g2(5));
   ix1836z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx1836z2, datab=>nx26412z2, datac=>nx1836z3, 
      datad=>u_kirsch_g2(4));
   ix2833z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fc30") 
       port map ( combout=>nx2833z2, datab=>nx26412z2, datac=>nx2833z3, 
      datad=>u_kirsch_g2(3));
   ix51544z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"132d") 
       port map ( combout=>nx51544z10, dataa=>seg7_num(4), datab=>
      seg7_num(5), datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7868") 
       port map ( combout=>nx51544z9, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7112 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0cc0") 
       port map ( combout=>nx51544z18, datab=>seg7_num(0), datac=>
      seg7_num(1), datad=>seg7_num(3));
   ix383z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fdff") 
       port map ( combout=>nx383z2, dataa=>nx15004z2, datab=>
      read_fifo_status_cnt(0), datac=>read_fifo_status_cnt(7), datad=>
      read_fifo_status_cnt(8));
   ix5371z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"2ffb") 
       port map ( combout=>nx5371z1, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix17993z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx17993z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(7), datad=>u_kirsch_row_index(1));
   ix16996z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx16996z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(6), datad=>u_kirsch_row_index(1));
   ix15999z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx15999z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(5), datad=>u_kirsch_row_index(1));
   ix15002z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx15002z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(4), datad=>u_kirsch_row_index(1));
   ix14005z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx14005z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(3), datad=>u_kirsch_row_index(1));
   ix13008z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx13008z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(2), datad=>u_kirsch_row_index(1));
   ix12011z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx12011z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(1), datad=>u_kirsch_row_index(1));
   ix11014z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx11014z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataB(0), datad=>u_kirsch_row_index(1));
   ix5824z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffb") 
       port map ( combout=>nx5824z4, dataa=>nx41042z3, datab=>nx25391z3, 
      datac=>u_kirsch_o_dataC(0), datad=>u_kirsch_row_index(1));
   ix26412z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"aafc") 
       port map ( combout=>nx26412z8, dataa=>nx55203z3, datab=>nx41042z11, 
      datac=>nx26412z9, datad=>nx25391z3);
   ix41042z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3305") 
       port map ( combout=>nx41042z7, dataa=>nx41042z8, datab=>nx55203z3, 
      datac=>nx41042z11, datad=>nx25391z3);
   ix62334z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"b0bf") 
       port map ( combout=>nx62334z2, dataa=>nx62334z3, datab=>
      u_kirsch_dir2_final(1), datac=>u_kirsch_dir2_final(2), datad=>
      u_kirsch_dir1_final(3));
   ix58492z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3ff") 
       port map ( combout=>nx58492z2, datab=>nx29221z8, datac=>
      u_kirsch_max1_bit_counter(0), datad=>u_kirsch_max1_bit_counter(1));
   ix17862z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"9f8e") 
       port map ( combout=>nx17862z2, dataa=>u_uart_TxFSM(0), datab=>
      u_uart_TxFSM(1), datac=>u_uart_TopTx, datad=>nx7359z3);
   ix41042z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx41042z6, dataa=>nx16758z6, datab=>
      u_kirsch_row_count(1), datac=>u_kirsch_row_count(2), datad=>
      u_kirsch_row_count(5));
   ix64328z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f3c0") 
       port map ( combout=>nx64328z3, datab=>u_kirsch_dir2_final(0), datac=>
      u_kirsch_dir1_final(0), datad=>u_kirsch_dir1_final(1));
   ix26412z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"88f8") 
       port map ( combout=>nx26412z2, dataa=>nx29221z2, datab=>nx26412z3, 
      datac=>nx26412z4, datad=>u_kirsch_stg_counter2(0));
   ix41042z7103 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3331") 
       port map ( combout=>nx41042z8, dataa=>nx41042z9, datab=>nx41042z10, 
      datac=>u_kirsch_stg_counter1(2), datad=>u_kirsch_stg_counter1(3));
   ix22605z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx22605z3, dataa=>u_kirsch_r_sub0_7, datab=>
      u_kirsch_r_sub0_8, datac=>u_kirsch_r_sub0_9, datad=>u_kirsch_r_sub0_10
   );
   ix12123z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx12123z3, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix51544z7109 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0045") 
       port map ( combout=>nx51544z15, dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix51544z7119 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00b0") 
       port map ( combout=>nx51544z25, dataa=>seg7_num(0), datab=>
      seg7_num(1), datac=>seg7_num(2), datad=>seg7_num(3));
   ix7365z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5545") 
       port map ( combout=>nx7365z1, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix60415z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx60415z4, datac=>reset_count(3), datad=>
      reset_count(9));
   ix60486z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000c") 
       port map ( combout=>nx60486z2, datab=>nx29221z8, datac=>
      u_kirsch_max1_bit_counter(0), datad=>u_kirsch_max1_bit_counter(1));
   ix59489z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00c0") 
       port map ( combout=>nx59489z2, datab=>nx29221z8, datac=>
      u_kirsch_max1_bit_counter(0), datad=>u_kirsch_max1_bit_counter(1));
   ix29221z7102 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00bf") 
       port map ( combout=>nx29221z9, dataa=>u_kirsch_stg_counter1(0), datab
      =>u_kirsch_stg_counter1(1), datac=>u_kirsch_stg_counter1(2), datad=>
      u_kirsch_stg_counter1(3));
   ix60486z7099 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"7bde") 
       port map ( combout=>nx60486z5, dataa=>u_kirsch_r_add1_a(0), datab=>
      u_kirsch_r_add1_a(2), datac=>u_kirsch_r_max1(0), datad=>
      u_kirsch_r_max1(2));
   ix29221z7098 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>nx29221z3, dataa=>u_kirsch_stg_counter2(0), datab
      =>u_kirsch_stg_counter2(1), datac=>u_kirsch_stg_counter2(2), datad=>
      u_kirsch_stg_counter2(3));
   ix64502z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx64502z2, datac=>wait_for_tx_valid, datad=>
      nx7359z3);
   ix63596z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f000") 
       port map ( combout=>nx63596z3, datac=>u_kirsch_row_count(6), datad=>
      u_kirsch_row_count(7));
   ix12123z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"00f0") 
       port map ( combout=>nx12123z2, datac=>u_kirsch_stg_counter1(2), datad
      =>u_kirsch_stg_counter1(3));
   ix41042z7104 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0f00") 
       port map ( combout=>nx41042z9, datac=>u_kirsch_stg_counter1(0), datad
      =>u_kirsch_stg_counter1(1));
   ix26412z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx26412z3, datac=>u_kirsch_stg_counter1(0), datad
      =>u_kirsch_stg_counter1(1));
   ix26412z7100 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0003") 
       port map ( combout=>nx26412z6, datab=>u_kirsch_stg_counter1(1), datac
      =>u_kirsch_stg_counter1(2), datad=>u_kirsch_stg_counter1(3));
   ix29221z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"000f") 
       port map ( combout=>nx29221z2, datac=>u_kirsch_stg_counter1(2), datad
      =>u_kirsch_stg_counter1(3));
   ix64381z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fbea") 
       port map ( combout=>nx64381z3, dataa=>nx26412z2, datab=>nx41042z11, 
      datac=>u_kirsch_h3(7), datad=>u_kirsch_a2(7));
   ix64381z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff0f") 
       port map ( combout=>nx64381z2, datac=>nx26412z2, datad=>
      u_kirsch_g2(7));
   ix65378z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fbea") 
       port map ( combout=>nx65378z3, dataa=>nx26412z2, datab=>nx41042z11, 
      datac=>u_kirsch_h3(6), datad=>u_kirsch_a2(6));
   ix65378z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"ff0f") 
       port map ( combout=>nx65378z2, datac=>nx26412z2, datad=>
      u_kirsch_g2(6));
   ix3830z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx3830z2, dataa=>nx26412z2, datab=>nx3830z3, 
      datac=>nx25391z3, datad=>u_kirsch_g2(2));
   ix4827z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx4827z2, dataa=>nx26412z2, datab=>nx4827z3, 
      datac=>nx25391z3, datad=>u_kirsch_g2(1));
   ix5824z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx5824z2, dataa=>nx26412z2, datab=>nx5824z3, 
      datac=>nx25391z3, datad=>u_kirsch_g2(0));
   ix17993z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx17993z2, dataa=>nx26412z2, datab=>nx17993z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(7));
   ix16996z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx16996z2, dataa=>nx26412z2, datab=>nx16996z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(6));
   ix15999z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx15999z2, dataa=>nx26412z2, datab=>nx15999z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(5));
   ix15002z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx15002z2, dataa=>nx26412z2, datab=>nx15002z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(4));
   ix14005z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx14005z2, dataa=>nx26412z2, datab=>nx14005z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(3));
   ix13008z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx13008z2, dataa=>nx26412z2, datab=>nx13008z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(2));
   ix12011z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx12011z2, dataa=>nx26412z2, datab=>nx12011z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(1));
   ix11014z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"fef4") 
       port map ( combout=>nx11014z2, dataa=>nx26412z2, datab=>nx11014z3, 
      datac=>nx25391z3, datad=>u_kirsch_e3(0));
   ix51544z7101 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"dffd") 
       port map ( combout=>nx51544z7, dataa=>seg7_num(4), datab=>seg7_num(5), 
      datac=>seg7_num(6), datad=>seg7_num(7));
   ix51544z7106 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>nx51544z12, dataa=>nx51544z13, datab=>nx51544z21, 
      datac=>nx51544z24, datad=>seg7_num(0));
   ix51544z7097 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"5100") 
       port map ( combout=>nx51544z3, dataa=>nx51544z4, datab=>nx51544z5, 
      datac=>seg7_num(4), datad=>nx51544z6);
   ix51544z7105 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f030") 
       port map ( combout=>nx51544z11, datab=>seg7_num(6), datac=>
      seg7_num(7), datad=>seg7_num(4));
   ix51544z7096 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"feaa") 
       port map ( combout=>nx51544z2, dataa=>nx51544z3, datab=>nx51544z9, 
      datac=>nx51544z10, datad=>seg7_num(5));
   ix51544z7115 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"0c00") 
       port map ( combout=>nx51544z21, datab=>nx51544z22, datac=>seg7_num(1), 
      datad=>seg7_num(2));
   ix51544z7107 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"f888") 
       port map ( combout=>nx51544z13, dataa=>nx51544z14, datab=>seg7_num(1), 
      datac=>nx51544z17, datad=>seg7_num(3));
   ix51544z7110 : fiftyfivenm_lcell_comb
      generic map (lut_mask => X"3e0b") 
       port map ( combout=>nx51544z16, dataa=>seg7_num(3), datab=>
      seg7_num(2), datac=>seg7_num(1), datad=>seg7_num(0));
end main ;

