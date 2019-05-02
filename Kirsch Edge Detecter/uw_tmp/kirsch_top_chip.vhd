-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/15/2018 11:18:53"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kirsch_top IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	uart_rx : IN std_logic;
	uart_tx : OUT std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	pb : IN std_logic_vector(3 DOWNTO 0);
	seg7_en : OUT std_logic_vector(1 DOWNTO 0);
	seg7_data : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END kirsch_top;

-- Design Ports Information
-- uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_uart_rx : std_logic;
SIGNAL ww_uart_tx : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg7_en : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL sw_a0_a_ainput_o : std_logic;
SIGNAL sw_a1_a_ainput_o : std_logic;
SIGNAL sw_a2_a_ainput_o : std_logic;
SIGNAL sw_a3_a_ainput_o : std_logic;
SIGNAL sw_a4_a_ainput_o : std_logic;
SIGNAL sw_a5_a_ainput_o : std_logic;
SIGNAL sw_a6_a_ainput_o : std_logic;
SIGNAL sw_a7_a_ainput_o : std_logic;
SIGNAL pb_a1_a_ainput_o : std_logic;
SIGNAL pb_a2_a_ainput_o : std_logic;
SIGNAL pb_a3_a_ainput_o : std_logic;
SIGNAL a_aQUARTUS_CREATED_GND_aI_combout : std_logic;
SIGNAL a_aQUARTUS_CREATED_UNVM_a_abusy : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_aeoc : std_logic;
SIGNAL seg7_data_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a5_a_aoutput_o : std_logic;
SIGNAL seg7_data_a6_a_aoutput_o : std_logic;
SIGNAL led_a0_a_aoutput_o : std_logic;
SIGNAL led_a1_a_aoutput_o : std_logic;
SIGNAL led_a2_a_aoutput_o : std_logic;
SIGNAL led_a3_a_aoutput_o : std_logic;
SIGNAL led_a4_a_aoutput_o : std_logic;
SIGNAL led_a5_a_aoutput_o : std_logic;
SIGNAL led_a6_a_aoutput_o : std_logic;
SIGNAL led_a7_a_aoutput_o : std_logic;
SIGNAL uart_tx_aoutput_o : std_logic;
SIGNAL seg7_en_a0_a_aoutput_o : std_logic;
SIGNAL seg7_en_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a0_a_aoutput_o : std_logic;
SIGNAL seg7_data_a2_a_aoutput_o : std_logic;
SIGNAL seg7_data_a3_a_aoutput_o : std_logic;
SIGNAL seg7_data_a4_a_aoutput_o : std_logic;
SIGNAL seg7_data_a7_a_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL clk_ainputclkctrl_outclk : std_logic;
SIGNAL inc_d_0_dup_997 : std_logic;
SIGNAL nx25391z6 : std_logic;
SIGNAL nx3853z1 : std_logic;
SIGNAL inc_d_6_dup_1009 : std_logic;
SIGNAL reset_n_ainput_o : std_logic;
SIGNAL inc_d_0_dup_1037 : std_logic;
SIGNAL nx37417z3 : std_logic;
SIGNAL nx37417z2 : std_logic;
SIGNAL reg_q_0_dup_24_a_wirecell_combout : std_logic;
SIGNAL nx30620z1 : std_logic;
SIGNAL incdec_mux_1_dup_114 : std_logic;
SIGNAL reg_q_1_dup_23_aq : std_logic;
SIGNAL nx15046z1 : std_logic;
SIGNAL incdec_mux_2_dup_115 : std_logic;
SIGNAL reg_q_2_dup_22_aq : std_logic;
SIGNAL nx46951z1 : std_logic;
SIGNAL incdec_mux_3_dup_116 : std_logic;
SIGNAL reg_q_3_dup_21_aq : std_logic;
SIGNAL nx34159z1 : std_logic;
SIGNAL incdec_mux_4_dup_117 : std_logic;
SIGNAL reg_q_4_dup_20_aq : std_logic;
SIGNAL nx49733z1 : std_logic;
SIGNAL incdec_mux_5_dup_118 : std_logic;
SIGNAL reg_q_5_dup_19_aq : std_logic;
SIGNAL nx65307z1 : std_logic;
SIGNAL incdec_mux_6_dup_119 : std_logic;
SIGNAL reg_q_6_dup_18_aq : std_logic;
SIGNAL nx22869z3 : std_logic;
SIGNAL nx22869z2 : std_logic;
SIGNAL nx50191z1 : std_logic;
SIGNAL incdec_mux_7_dup_120 : std_logic;
SIGNAL reg_q_7_dup_17_aq : std_logic;
SIGNAL nx42404z1 : std_logic;
SIGNAL incdec_mux_8_dup_121 : std_logic;
SIGNAL reg_q_8_dup_16_aq : std_logic;
SIGNAL write_fifo_full : std_logic;
SIGNAL u_uart_reg_RxFSM_1_a0_combout : std_logic;
SIGNAL inc_d_0_a : std_logic;
SIGNAL reg_q_0_aq : std_logic;
SIGNAL nx27063z1 : std_logic;
SIGNAL inc_d_1_a : std_logic;
SIGNAL reg_q_1_aq : std_logic;
SIGNAL nx39256z1 : std_logic;
SIGNAL inc_d_2_a : std_logic;
SIGNAL reg_q_2_aq : std_logic;
SIGNAL nx57428z1 : std_logic;
SIGNAL inc_d_3_a : std_logic;
SIGNAL reg_q_3_aq : std_logic;
SIGNAL nx23040z1 : std_logic;
SIGNAL inc_d_4_a : std_logic;
SIGNAL reg_q_4_aq : std_logic;
SIGNAL nx58827z1 : std_logic;
SIGNAL inc_d_5_a : std_logic;
SIGNAL reg_q_5_aq : std_logic;
SIGNAL nx37857z1 : std_logic;
SIGNAL inc_d_6_a : std_logic;
SIGNAL reg_q_6_aq : std_logic;
SIGNAL nx41995z1 : std_logic;
SIGNAL inc_d_7_a : std_logic;
SIGNAL reg_q_7_aq : std_logic;
SIGNAL nx8364z1 : std_logic;
SIGNAL inc_d_8_a : std_logic;
SIGNAL reg_q_8_aq : std_logic;
SIGNAL nx9072z1 : std_logic;
SIGNAL inc_d_9_a : std_logic;
SIGNAL reg_q_9_aq : std_logic;
SIGNAL nx40977z1 : std_logic;
SIGNAL inc_d_10_a : std_logic;
SIGNAL reg_q_10_aq : std_logic;
SIGNAL nx60415z2 : std_logic;
SIGNAL nx60415z5 : std_logic;
SIGNAL nx60415z4 : std_logic;
SIGNAL nx60415z3 : std_logic;
SIGNAL nx60415z1 : std_logic;
SIGNAL reg_uart_reset_aq : std_logic;
SIGNAL uart_rx_ainput_o : std_logic;
SIGNAL nx12790z2 : std_logic;
SIGNAL u_uart_reg_Rx_r_a0_combout : std_logic;
SIGNAL u_uart_reg_Rx_r_aq : std_logic;
SIGNAL nx12790z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_1_aq : std_logic;
SIGNAL nx64683z1 : std_logic;
SIGNAL nx64683z3 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx144z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx1141z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx2138z2 : std_logic;
SIGNAL nx2138z1 : std_logic;
SIGNAL u_uart_modgen_counter_RxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx9799z2 : std_logic;
SIGNAL nx10796z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_3_aq : std_logic;
SIGNAL nx11793z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_2_aq : std_logic;
SIGNAL nx9799z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_4_aq : std_logic;
SIGNAL nx8802z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_5_aq : std_logic;
SIGNAL nx13787z1 : std_logic;
SIGNAL u_uart_reg_RxFSM_0_aq : std_logic;
SIGNAL inc_d_0_dup_862 : std_logic;
SIGNAL nx2379z1 : std_logic;
SIGNAL reg_q_0_dup_71_aq : std_logic;
SIGNAL nx52912z1 : std_logic;
SIGNAL inc_d_1_dup_864 : std_logic;
SIGNAL reg_q_1_dup_70_aq : std_logic;
SIGNAL nx2950z1 : std_logic;
SIGNAL inc_d_2_dup_866 : std_logic;
SIGNAL reg_q_2_dup_69_aq : std_logic;
SIGNAL nx47012z1 : std_logic;
SIGNAL inc_d_3_dup_868 : std_logic;
SIGNAL reg_q_3_dup_68_aq : std_logic;
SIGNAL nx31438z1 : std_logic;
SIGNAL inc_d_4_dup_870 : std_logic;
SIGNAL reg_q_4_dup_67_aq : std_logic;
SIGNAL nx63343z1 : std_logic;
SIGNAL inc_d_5_dup_872 : std_logic;
SIGNAL reg_q_5_dup_66_aq : std_logic;
SIGNAL nx17767z1 : std_logic;
SIGNAL inc_d_6_dup_874 : std_logic;
SIGNAL reg_q_6_dup_65_aq : std_logic;
SIGNAL nx33341z1 : std_logic;
SIGNAL inc_d_7_dup_876 : std_logic;
SIGNAL reg_q_7_dup_64_aq : std_logic;
SIGNAL nx48915z1 : std_logic;
SIGNAL inc_d_8_dup_878 : std_logic;
SIGNAL reg_q_8_dup_63_aq : std_logic;
SIGNAL nx64489z1 : std_logic;
SIGNAL inc_d_9_dup_880 : std_logic;
SIGNAL reg_q_9_dup_62_aq : std_logic;
SIGNAL nx58796z1 : std_logic;
SIGNAL inc_d_10_dup_882 : std_logic;
SIGNAL reg_q_10_dup_61_aq : std_logic;
SIGNAL nx59343z6 : std_logic;
SIGNAL nx59343z5 : std_logic;
SIGNAL u_uart_reg_RxDivisor_4_afeeder_combout : std_logic;
SIGNAL u_uart_reg_RxDivisor_4_aq : std_logic;
SIGNAL nx59343z3 : std_logic;
SIGNAL nx59343z4 : std_logic;
SIGNAL nx59343z2 : std_logic;
SIGNAL nx59343z1 : std_logic;
SIGNAL u_uart_reg_TopRx_aq : std_logic;
SIGNAL nx13938z1 : std_logic;
SIGNAL u_uart_reg_RxRDYi_afeeder_combout : std_logic;
SIGNAL u_uart_reg_RxRDYi_aq : std_logic;
SIGNAL nx22869z1 : std_logic;
SIGNAL reg_q_0_dup_24_aq : std_logic;
SIGNAL nx7605z2 : std_logic;
SIGNAL nx7605z1 : std_logic;
SIGNAL write_fifo_reg_rd_en_delayed_aq : std_logic;
SIGNAL pb_a0_a_ainput_o : std_logic;
SIGNAL nx37417z1 : std_logic;
SIGNAL reg_q_0_dup_98_aq : std_logic;
SIGNAL nx16836z1 : std_logic;
SIGNAL inc_d_1_dup_1039 : std_logic;
SIGNAL reg_q_1_dup_97_aq : std_logic;
SIGNAL nx64274z1 : std_logic;
SIGNAL inc_d_2_dup_1041 : std_logic;
SIGNAL reg_q_2_dup_96_aq : std_logic;
SIGNAL nx32369z1 : std_logic;
SIGNAL inc_d_3_dup_1043 : std_logic;
SIGNAL reg_q_3_dup_95_aq : std_logic;
SIGNAL nx47943z1 : std_logic;
SIGNAL inc_d_4_dup_1045 : std_logic;
SIGNAL reg_q_4_dup_94_aq : std_logic;
SIGNAL nx2019z1 : std_logic;
SIGNAL inc_d_5_dup_1047 : std_logic;
SIGNAL reg_q_5_dup_93_aq : std_logic;
SIGNAL nx51981z1 : std_logic;
SIGNAL inc_d_6_dup_1049 : std_logic;
SIGNAL reg_q_6_dup_92_aq : std_logic;
SIGNAL nx44194z1 : std_logic;
SIGNAL inc_d_7_dup_1051 : std_logic;
SIGNAL reg_q_7_dup_91_aq : std_logic;
SIGNAL nx25391z2 : std_logic;
SIGNAL nx25391z3 : std_logic;
SIGNAL nx25391z1 : std_logic;
SIGNAL reg_q_6_dup_84_aq : std_logic;
SIGNAL nx11640z1 : std_logic;
SIGNAL inc_d_7_dup_1011 : std_logic;
SIGNAL reg_q_7_dup_83_aq : std_logic;
SIGNAL nx25391z5 : std_logic;
SIGNAL nx25391z4 : std_logic;
SIGNAL reg_q_0_dup_90_aq : std_logic;
SIGNAL nx38998z1 : std_logic;
SIGNAL inc_d_1_dup_999 : std_logic;
SIGNAL reg_q_1_dup_89_aq : std_logic;
SIGNAL nx10964z1 : std_logic;
SIGNAL inc_d_2_dup_1001 : std_logic;
SIGNAL reg_q_2_dup_88_aq : std_logic;
SIGNAL nx42869z1 : std_logic;
SIGNAL inc_d_3_dup_1003 : std_logic;
SIGNAL reg_q_3_dup_87_aq : std_logic;
SIGNAL nx27295z1 : std_logic;
SIGNAL inc_d_4_dup_1005 : std_logic;
SIGNAL reg_q_4_dup_86_aq : std_logic;
SIGNAL nx53815z1 : std_logic;
SIGNAL inc_d_5_dup_1007 : std_logic;
SIGNAL reg_q_5_dup_85_aq : std_logic;
SIGNAL nx55203z4 : std_logic;
SIGNAL nx55203z3 : std_logic;
SIGNAL nx16758z5 : std_logic;
SIGNAL nx16758z6 : std_logic;
SIGNAL nx16758z4 : std_logic;
SIGNAL nx55203z2 : std_logic;
SIGNAL nx55203z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter1_0_aq : std_logic;
SIGNAL nx58194z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter1_3_aq : std_logic;
SIGNAL nx57197z2 : std_logic;
SIGNAL nx57197z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter1_2_aq : std_logic;
SIGNAL nx56200z2 : std_logic;
SIGNAL nx56200z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter1_1_aq : std_logic;
SIGNAL nx16758z7 : std_logic;
SIGNAL nx16758z3 : std_logic;
SIGNAL nx15761z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter2_3_aq : std_logic;
SIGNAL nx17755z2 : std_logic;
SIGNAL nx17755z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter2_1_aq : std_logic;
SIGNAL nx18752z2 : std_logic;
SIGNAL nx18752z3 : std_logic;
SIGNAL nx18752z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter2_0_aq : std_logic;
SIGNAL nx16758z2 : std_logic;
SIGNAL nx16758z1 : std_logic;
SIGNAL u_kirsch_reg_stg_counter2_2_aq : std_logic;
SIGNAL nx4094z2 : std_logic;
SIGNAL nx64328z4 : std_logic;
SIGNAL u_kirsch_reg_o_row_5_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_4_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_6_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_7_aq : std_logic;
SIGNAL nx51544z8 : std_logic;
SIGNAL inc_d_0_dup_814 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_aq : std_logic;
SIGNAL nx29573z1 : std_logic;
SIGNAL reg_q_0_dup_60_aq : std_logic;
SIGNAL nx55390z2 : std_logic;
SIGNAL inc_d_1_dup_815 : std_logic;
SIGNAL reg_q_1_dup_59_aq : std_logic;
SIGNAL nx60108z2 : std_logic;
SIGNAL inc_d_2_dup_816 : std_logic;
SIGNAL reg_q_2_dup_58_aq : std_logic;
SIGNAL nx46048z2 : std_logic;
SIGNAL inc_d_3_dup_817 : std_logic;
SIGNAL reg_q_3_dup_57_aq : std_logic;
SIGNAL nx35062z2 : std_logic;
SIGNAL inc_d_4_dup_818 : std_logic;
SIGNAL reg_q_4_dup_56_aq : std_logic;
SIGNAL nx50636z2 : std_logic;
SIGNAL inc_d_5_dup_819 : std_logic;
SIGNAL reg_q_5_dup_55_aq : std_logic;
SIGNAL nx674z2 : std_logic;
SIGNAL inc_d_6_dup_820 : std_logic;
SIGNAL reg_q_6_dup_54_aq : std_logic;
SIGNAL nx49288z2 : std_logic;
SIGNAL inc_d_7_dup_821 : std_logic;
SIGNAL reg_q_7_dup_53_aq : std_logic;
SIGNAL nx55707z2 : std_logic;
SIGNAL inc_d_8_dup_822 : std_logic;
SIGNAL reg_q_8_dup_52_aq : std_logic;
SIGNAL nx44217z2 : std_logic;
SIGNAL inc_d_9_dup_823 : std_logic;
SIGNAL reg_q_9_dup_51_aq : std_logic;
SIGNAL nx10586z1 : std_logic;
SIGNAL inc_d_10_dup_824 : std_logic;
SIGNAL reg_q_10_dup_50_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_0_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_3_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_2_aq : std_logic;
SIGNAL u_kirsch_reg_o_row_1_aq : std_logic;
SIGNAL nx51544z19 : std_logic;
SIGNAL nx51544z18 : std_logic;
SIGNAL nx51544z20 : std_logic;
SIGNAL nx51544z17 : std_logic;
SIGNAL nx18625z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_load_reg : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq : std_logic;
SIGNAL nx51544z7 : std_logic;
SIGNAL nx51544z6 : std_logic;
SIGNAL nx51544z25 : std_logic;
SIGNAL nx51544z24 : std_logic;
SIGNAL nx28027z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq : std_logic;
SIGNAL nx51544z23 : std_logic;
SIGNAL nx51544z22 : std_logic;
SIGNAL nx51544z21 : std_logic;
SIGNAL nx51544z16 : std_logic;
SIGNAL nx51544z15 : std_logic;
SIGNAL nx51544z14 : std_logic;
SIGNAL nx51544z13 : std_logic;
SIGNAL nx51544z12 : std_logic;
SIGNAL nx51544z5 : std_logic;
SIGNAL nx51544z4 : std_logic;
SIGNAL nx51544z3 : std_logic;
SIGNAL nx51544z9 : std_logic;
SIGNAL nx51544z10 : std_logic;
SIGNAL nx51544z2 : std_logic;
SIGNAL nx51544z11 : std_logic;
SIGNAL nx51544z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq : std_logic;
SIGNAL inc_d_0_dup_915 : std_logic;
SIGNAL reg_q_0_dup_82_aq : std_logic;
SIGNAL nx39407z1 : std_logic;
SIGNAL inc_d_1_dup_917 : std_logic;
SIGNAL reg_q_1_dup_81_aq : std_logic;
SIGNAL nx10555z1 : std_logic;
SIGNAL inc_d_2_dup_919 : std_logic;
SIGNAL reg_q_2_dup_80_aq : std_logic;
SIGNAL nx42460z1 : std_logic;
SIGNAL inc_d_3_dup_921 : std_logic;
SIGNAL reg_q_3_dup_79_aq : std_logic;
SIGNAL nx26886z1 : std_logic;
SIGNAL inc_d_4_dup_923 : std_logic;
SIGNAL reg_q_4_dup_78_aq : std_logic;
SIGNAL nx11312z1 : std_logic;
SIGNAL inc_d_5_dup_925 : std_logic;
SIGNAL reg_q_5_dup_77_aq : std_logic;
SIGNAL nx4262z1 : std_logic;
SIGNAL inc_d_6_dup_927 : std_logic;
SIGNAL reg_q_6_dup_76_aq : std_logic;
SIGNAL nx19836z1 : std_logic;
SIGNAL inc_d_7_dup_929 : std_logic;
SIGNAL reg_q_7_dup_75_aq : std_logic;
SIGNAL nx31640z1 : std_logic;
SIGNAL inc_d_8_dup_931 : std_logic;
SIGNAL reg_q_8_dup_74_aq : std_logic;
SIGNAL nx47250z1 : std_logic;
SIGNAL inc_d_9_dup_933 : std_logic;
SIGNAL reg_q_9_dup_73_aq : std_logic;
SIGNAL nx16066z1 : std_logic;
SIGNAL inc_d_10_dup_935 : std_logic;
SIGNAL reg_q_10_dup_72_aq : std_logic;
SIGNAL nx57349z3 : std_logic;
SIGNAL nx8279z1 : std_logic;
SIGNAL inc_d_11_a : std_logic;
SIGNAL reg_q_11_aq : std_logic;
SIGNAL nx57349z2 : std_logic;
SIGNAL nx57349z6 : std_logic;
SIGNAL nx57349z5 : std_logic;
SIGNAL nx57349z4 : std_logic;
SIGNAL nx57349z1 : std_logic;
SIGNAL u_uart_reg_TopTx_aq : std_logic;
SIGNAL nx61431z2 : std_logic;
SIGNAL nx59437z1 : std_logic;
SIGNAL nx59437z2 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx60434z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx61431z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx62428z2 : std_logic;
SIGNAL nx62428z1 : std_logic;
SIGNAL u_uart_modgen_counter_TxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx8356z3 : std_logic;
SIGNAL nx8356z2 : std_logic;
SIGNAL nx8356z1 : std_logic;
SIGNAL u_uart_reg_TxFSM_1_aq : std_logic;
SIGNAL nx4094z1 : std_logic;
SIGNAL u_kirsch_reg_o_valid_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_o_valid_aq : std_logic;
SIGNAL rb_i_valid : std_logic;
SIGNAL nx13251z1 : std_logic;
SIGNAL u_uart_reg_TxBusy_aq : std_logic;
SIGNAL reg_tx_busy_delayed_afeeder_combout : std_logic;
SIGNAL reg_tx_busy_delayed_aq : std_logic;
SIGNAL reg_q_0_dup_49_a_wirecell_combout : std_logic;
SIGNAL nx9182z1 : std_logic;
SIGNAL nx58387z1 : std_logic;
SIGNAL incdec_mux_1_dup_114_dup_779 : std_logic;
SIGNAL reg_q_1_dup_48_aq : std_logic;
SIGNAL nx24756z1 : std_logic;
SIGNAL incdec_mux_2_dup_115_dup_781 : std_logic;
SIGNAL reg_q_2_dup_47_aq : std_logic;
SIGNAL nx9182z2 : std_logic;
SIGNAL incdec_mux_3_dup_116_dup_783 : std_logic;
SIGNAL reg_q_3_dup_46_aq : std_logic;
SIGNAL nx59144z1 : std_logic;
SIGNAL incdec_mux_4_dup_117_dup_785 : std_logic;
SIGNAL reg_q_4_dup_45_aq : std_logic;
SIGNAL nx21966z1 : std_logic;
SIGNAL incdec_mux_5_dup_118_dup_787 : std_logic;
SIGNAL reg_q_5_dup_44_aq : std_logic;
SIGNAL nx37540z1 : std_logic;
SIGNAL incdec_mux_6_dup_119_dup_789 : std_logic;
SIGNAL reg_q_6_dup_43_aq : std_logic;
SIGNAL nx5635z1 : std_logic;
SIGNAL incdec_mux_7_dup_120_dup_791 : std_logic;
SIGNAL reg_q_7_dup_42_aq : std_logic;
SIGNAL nx52114z1 : std_logic;
SIGNAL incdec_mux_8_dup_121_dup_793 : std_logic;
SIGNAL reg_q_8_dup_41_aq : std_logic;
SIGNAL nx15004z3 : std_logic;
SIGNAL nx15004z2 : std_logic;
SIGNAL nx383z2 : std_logic;
SIGNAL nx383z1 : std_logic;
SIGNAL reg_q_0_dup_49_aq : std_logic;
SIGNAL rb_empty : std_logic;
SIGNAL nx15004z1 : std_logic;
SIGNAL reg_rb_rd_en_aq : std_logic;
SIGNAL nx64502z2 : std_logic;
SIGNAL nx64502z1 : std_logic;
SIGNAL reg_wait_for_tx_valid_aq : std_logic;
SIGNAL reg_wait_for_tx_valid_delayed_aq : std_logic;
SIGNAL rb_rd_en_true : std_logic;
SIGNAL reg_rb_rd_en_delayed_aq : std_logic;
SIGNAL reg_rb_rd_en_delayed_a_wirecell_combout : std_logic;
SIGNAL reg_tx_valid_aq : std_logic;
SIGNAL nx7359z2 : std_logic;
SIGNAL nx7359z1 : std_logic;
SIGNAL u_uart_reg_TxFSM_0_aq : std_logic;
SIGNAL nx29221z10 : std_logic;
SIGNAL nx29221z9 : std_logic;
SIGNAL nx29221z8 : std_logic;
SIGNAL nx45738z1 : std_logic;
SIGNAL u_kirsch_reg_max1_bit_counter_1_aq : std_logic;
SIGNAL nx46735z1 : std_logic;
SIGNAL u_kirsch_reg_max1_bit_counter_0_aq : std_logic;
SIGNAL nx58492z2 : std_logic;
SIGNAL nx26412z4 : std_logic;
SIGNAL u_uart_reg_Rx_Reg_7_a0_combout : std_logic;
SIGNAL nx44871z1 : std_logic;
SIGNAL u_uart_reg_Rx_Reg_7_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_6_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_6_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_5_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_4_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_4_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_3_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Rx_Reg_3_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_2_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_1_aq : std_logic;
SIGNAL u_uart_reg_Rx_Reg_0_aq : std_logic;
SIGNAL u_uart_reg_Dout_0_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_0_aq : std_logic;
SIGNAL inc_d_0_dup_638 : std_logic;
SIGNAL nx58143z1 : std_logic;
SIGNAL reg_q_0_dup_15_aq : std_logic;
SIGNAL inc_d_0_dup_602 : std_logic;
SIGNAL nx58151z1 : std_logic;
SIGNAL reg_q_0_dup_7_aq : std_logic;
SIGNAL nx35880z1 : std_logic;
SIGNAL inc_d_1_dup_640 : std_logic;
SIGNAL reg_q_1_dup_14_aq : std_logic;
SIGNAL nx38358z1 : std_logic;
SIGNAL inc_d_1_dup_604 : std_logic;
SIGNAL reg_q_1_dup_6_aq : std_logic;
SIGNAL nx51454z1 : std_logic;
SIGNAL inc_d_2_dup_642 : std_logic;
SIGNAL reg_q_2_dup_13_aq : std_logic;
SIGNAL nx53932z1 : std_logic;
SIGNAL inc_d_2_dup_606 : std_logic;
SIGNAL reg_q_2_dup_5_aq : std_logic;
SIGNAL nx1492z1 : std_logic;
SIGNAL inc_d_3_dup_644 : std_logic;
SIGNAL reg_q_3_dup_12_aq : std_logic;
SIGNAL nx43509z1 : std_logic;
SIGNAL inc_d_3_dup_608 : std_logic;
SIGNAL reg_q_3_dup_4_aq : std_logic;
SIGNAL nx17066z1 : std_logic;
SIGNAL inc_d_4_dup_646 : std_logic;
SIGNAL reg_q_4_dup_11_aq : std_logic;
SIGNAL nx27935z1 : std_logic;
SIGNAL inc_d_4_dup_610 : std_logic;
SIGNAL reg_q_4_dup_3_aq : std_logic;
SIGNAL nx12361z1 : std_logic;
SIGNAL inc_d_5_dup_612 : std_logic;
SIGNAL reg_q_5_dup_2_aq : std_logic;
SIGNAL nx32896z1 : std_logic;
SIGNAL inc_d_5_dup_648 : std_logic;
SIGNAL reg_q_5_dup_10_aq : std_logic;
SIGNAL nx64801z1 : std_logic;
SIGNAL inc_d_6_dup_650 : std_logic;
SIGNAL reg_q_6_dup_9_aq : std_logic;
SIGNAL nx62323z1 : std_logic;
SIGNAL inc_d_6_dup_614 : std_logic;
SIGNAL reg_q_6_dup_1_aq : std_logic;
SIGNAL nx57014z1 : std_logic;
SIGNAL inc_d_7_dup_652 : std_logic;
SIGNAL reg_q_7_dup_8_aq : std_logic;
SIGNAL nx11000z1 : std_logic;
SIGNAL inc_d_7_dup_616 : std_logic;
SIGNAL reg_q_7_dup_0_aq : std_logic;
SIGNAL u_uart_reg_Dout_1_aq : std_logic;
SIGNAL u_uart_reg_Dout_2_aq : std_logic;
SIGNAL u_uart_reg_Dout_3_aq : std_logic;
SIGNAL u_uart_reg_Dout_4_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_4_aq : std_logic;
SIGNAL u_uart_reg_Dout_5_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_5_aq : std_logic;
SIGNAL u_uart_reg_Dout_6_aq : std_logic;
SIGNAL u_uart_reg_Dout_7_afeeder_combout : std_logic;
SIGNAL u_uart_reg_Dout_7_aq : std_logic;
SIGNAL nx53163z4 : std_logic;
SIGNAL nx53163z3 : std_logic;
SIGNAL u_kirsch_reg_e3_4_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_4_aq : std_logic;
SIGNAL nx41042z6 : std_logic;
SIGNAL nx41042z10 : std_logic;
SIGNAL nx41042z9 : std_logic;
SIGNAL nx41042z8 : std_logic;
SIGNAL nx41042z11 : std_logic;
SIGNAL nx41042z7 : std_logic;
SIGNAL nx41042z5 : std_logic;
SIGNAL u_kirsch_reg_g2_4_aq : std_logic;
SIGNAL u_kirsch_reg_g3_4_aq : std_logic;
SIGNAL nx26412z6 : std_logic;
SIGNAL nx58953z2 : std_logic;
SIGNAL nx63596z4 : std_logic;
SIGNAL nx63596z3 : std_logic;
SIGNAL nx63596z2 : std_logic;
SIGNAL nx62599z1 : std_logic;
SIGNAL u_kirsch_reg_row_index_1_aq : std_logic;
SIGNAL nx63596z1 : std_logic;
SIGNAL u_kirsch_reg_row_index_0_aq : std_logic;
SIGNAL nx41042z4 : std_logic;
SIGNAL write_fifo_reg_q_saved_0_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_1_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_2_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_3_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_5_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_6_aq : std_logic;
SIGNAL write_fifo_reg_q_saved_7_aq : std_logic;
SIGNAL nx4443z1 : std_logic;
SIGNAL nx55307z2 : std_logic;
SIGNAL nx41042z3 : std_logic;
SIGNAL nx55307z1 : std_logic;
SIGNAL u_kirsch_reg_c3_4_aq : std_logic;
SIGNAL nx29221z2 : std_logic;
SIGNAL nx26412z3 : std_logic;
SIGNAL nx26412z2 : std_logic;
SIGNAL nx58953z1 : std_logic;
SIGNAL nx57076z1 : std_logic;
SIGNAL nx57076z2 : std_logic;
SIGNAL u_kirsch_reg_a2_4_aq : std_logic;
SIGNAL u_kirsch_reg_a3_4_aq : std_logic;
SIGNAL nx26412z9 : std_logic;
SIGNAL nx26412z8 : std_logic;
SIGNAL nx26412z7 : std_logic;
SIGNAL u_kirsch_reg_i_2_4_aq : std_logic;
SIGNAL u_kirsch_reg_e3_7_aq : std_logic;
SIGNAL u_kirsch_reg_f3_7_aq : std_logic;
SIGNAL nx64381z2 : std_logic;
SIGNAL nx53163z2 : std_logic;
SIGNAL nx53163z1 : std_logic;
SIGNAL u_kirsch_reg_d3_7_aq : std_logic;
SIGNAL nx41042z1 : std_logic;
SIGNAL nx41042z2 : std_logic;
SIGNAL u_kirsch_reg_h2_7_aq : std_logic;
SIGNAL u_kirsch_reg_h3_7_aq : std_logic;
SIGNAL nx58298z2 : std_logic;
SIGNAL nx58298z1 : std_logic;
SIGNAL u_kirsch_reg_c3_7_aq : std_logic;
SIGNAL nx63433z2 : std_logic;
SIGNAL nx63433z1 : std_logic;
SIGNAL u_kirsch_reg_b3_7_aq : std_logic;
SIGNAL nx64381z3 : std_logic;
SIGNAL nx64381z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_7_a : std_logic;
SIGNAL nx64381z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_7_aq : std_logic;
SIGNAL u_kirsch_reg_g3_7_aq : std_logic;
SIGNAL nx55962z2 : std_logic;
SIGNAL nx55962z1 : std_logic;
SIGNAL u_kirsch_reg_a3_7_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_7_aq : std_logic;
SIGNAL nx57301z2 : std_logic;
SIGNAL nx57301z1 : std_logic;
SIGNAL u_kirsch_reg_c3_6_aq : std_logic;
SIGNAL nx55082z2 : std_logic;
SIGNAL nx55082z1 : std_logic;
SIGNAL u_kirsch_reg_a2_6_aq : std_logic;
SIGNAL nx52166z2 : std_logic;
SIGNAL nx52166z1 : std_logic;
SIGNAL u_kirsch_reg_d3_6_aq : std_logic;
SIGNAL nx40045z1 : std_logic;
SIGNAL nx40045z2 : std_logic;
SIGNAL u_kirsch_reg_h2_6_aq : std_logic;
SIGNAL u_kirsch_reg_h3_6_aq : std_logic;
SIGNAL nx65378z3 : std_logic;
SIGNAL nx65378z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_6_a : std_logic;
SIGNAL u_kirsch_reg_e3_6_aq : std_logic;
SIGNAL u_kirsch_reg_g2_6_aq : std_logic;
SIGNAL nx65378z2 : std_logic;
SIGNAL nx65378z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_6_aq : std_logic;
SIGNAL u_kirsch_reg_g3_6_aq : std_logic;
SIGNAL nx56959z2 : std_logic;
SIGNAL nx56959z1 : std_logic;
SIGNAL u_kirsch_reg_a3_6_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_6_aq : std_logic;
SIGNAL u_kirsch_reg_e3_5_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_e3_5_aq : std_logic;
SIGNAL u_kirsch_reg_g2_5_aq : std_logic;
SIGNAL nx51169z2 : std_logic;
SIGNAL nx51169z1 : std_logic;
SIGNAL u_kirsch_reg_d3_5_aq : std_logic;
SIGNAL nx39048z1 : std_logic;
SIGNAL nx39048z2 : std_logic;
SIGNAL u_kirsch_reg_h2_5_aq : std_logic;
SIGNAL u_kirsch_reg_h3_5_aq : std_logic;
SIGNAL nx56304z2 : std_logic;
SIGNAL nx56304z1 : std_logic;
SIGNAL u_kirsch_reg_c3_5_aq : std_logic;
SIGNAL nx56079z2 : std_logic;
SIGNAL nx56079z1 : std_logic;
SIGNAL u_kirsch_reg_a2_5_aq : std_logic;
SIGNAL nx839z3 : std_logic;
SIGNAL nx839z2 : std_logic;
SIGNAL nx839z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_5_a : std_logic;
SIGNAL nx839z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_5_aq : std_logic;
SIGNAL u_kirsch_reg_g3_5_aq : std_logic;
SIGNAL nx57956z2 : std_logic;
SIGNAL nx57956z1 : std_logic;
SIGNAL u_kirsch_reg_a3_5_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_5_aq : std_logic;
SIGNAL nx50172z2 : std_logic;
SIGNAL nx50172z1 : std_logic;
SIGNAL u_kirsch_reg_d3_4_aq : std_logic;
SIGNAL nx38051z2 : std_logic;
SIGNAL nx38051z1 : std_logic;
SIGNAL u_kirsch_reg_h2_4_aq : std_logic;
SIGNAL u_kirsch_reg_h3_4_aq : std_logic;
SIGNAL nx1836z3 : std_logic;
SIGNAL nx1836z2 : std_logic;
SIGNAL nx1836z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_4_a : std_logic;
SIGNAL nx1836z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_4_aq : std_logic;
SIGNAL u_kirsch_reg_e3_3_aq : std_logic;
SIGNAL u_kirsch_reg_g2_3_aq : std_logic;
SIGNAL u_kirsch_reg_g3_3_aq : std_logic;
SIGNAL nx59950z2 : std_logic;
SIGNAL nx54310z2 : std_logic;
SIGNAL nx54310z1 : std_logic;
SIGNAL u_kirsch_reg_c3_3_aq : std_logic;
SIGNAL nx59950z1 : std_logic;
SIGNAL nx58073z1 : std_logic;
SIGNAL nx58073z2 : std_logic;
SIGNAL u_kirsch_reg_a2_3_aq : std_logic;
SIGNAL u_kirsch_reg_a3_3_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_3_aq : std_logic;
SIGNAL nx49175z2 : std_logic;
SIGNAL nx49175z1 : std_logic;
SIGNAL u_kirsch_reg_d3_3_aq : std_logic;
SIGNAL nx37054z1 : std_logic;
SIGNAL nx37054z2 : std_logic;
SIGNAL u_kirsch_reg_h2_3_aq : std_logic;
SIGNAL u_kirsch_reg_h3_3_aq : std_logic;
SIGNAL nx2833z3 : std_logic;
SIGNAL nx2833z2 : std_logic;
SIGNAL nx2833z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_3_a : std_logic;
SIGNAL nx2833z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_3_aq : std_logic;
SIGNAL u_kirsch_reg_e3_2_aq : std_logic;
SIGNAL u_kirsch_reg_g2_2_aq : std_logic;
SIGNAL nx53313z2 : std_logic;
SIGNAL nx53313z1 : std_logic;
SIGNAL u_kirsch_reg_c3_2_aq : std_logic;
SIGNAL nx59070z1 : std_logic;
SIGNAL nx59070z2 : std_logic;
SIGNAL u_kirsch_reg_a2_2_aq : std_logic;
SIGNAL nx36057z2 : std_logic;
SIGNAL nx48178z2 : std_logic;
SIGNAL nx48178z1 : std_logic;
SIGNAL u_kirsch_reg_d3_2_aq : std_logic;
SIGNAL nx36057z1 : std_logic;
SIGNAL u_kirsch_reg_h2_2_aq : std_logic;
SIGNAL u_kirsch_reg_h3_2_aq : std_logic;
SIGNAL nx3830z3 : std_logic;
SIGNAL nx3830z2 : std_logic;
SIGNAL nx3830z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_2_a : std_logic;
SIGNAL nx3830z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_2_aq : std_logic;
SIGNAL u_kirsch_reg_g3_2_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_g3_2_aq : std_logic;
SIGNAL nx60947z2 : std_logic;
SIGNAL nx60947z1 : std_logic;
SIGNAL u_kirsch_reg_a3_2_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_2_aq : std_logic;
SIGNAL u_kirsch_reg_e3_1_aq : std_logic;
SIGNAL u_kirsch_reg_g2_1_aq : std_logic;
SIGNAL nx52316z2 : std_logic;
SIGNAL nx52316z1 : std_logic;
SIGNAL u_kirsch_reg_c3_1_aq : std_logic;
SIGNAL nx60067z2 : std_logic;
SIGNAL nx60067z1 : std_logic;
SIGNAL u_kirsch_reg_a2_1_aq : std_logic;
SIGNAL nx47181z2 : std_logic;
SIGNAL nx47181z1 : std_logic;
SIGNAL u_kirsch_reg_d3_1_aq : std_logic;
SIGNAL nx35060z1 : std_logic;
SIGNAL nx35060z2 : std_logic;
SIGNAL u_kirsch_reg_h2_1_aq : std_logic;
SIGNAL u_kirsch_reg_h3_1_aq : std_logic;
SIGNAL nx4827z3 : std_logic;
SIGNAL nx4827z2 : std_logic;
SIGNAL nx4827z4 : std_logic;
SIGNAL u_kirsch_d3_9n15ss1_1_a : std_logic;
SIGNAL nx4827z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_1_aq : std_logic;
SIGNAL u_kirsch_reg_g3_1_aq : std_logic;
SIGNAL nx61944z2 : std_logic;
SIGNAL nx61944z1 : std_logic;
SIGNAL u_kirsch_reg_a3_1_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_1_aq : std_logic;
SIGNAL u_kirsch_reg_e3_0_aq : std_logic;
SIGNAL u_kirsch_reg_g2_0_aq : std_logic;
SIGNAL u_kirsch_reg_g3_0_aq : std_logic;
SIGNAL nx62941z2 : std_logic;
SIGNAL nx51319z2 : std_logic;
SIGNAL nx51319z1 : std_logic;
SIGNAL u_kirsch_reg_c3_0_aq : std_logic;
SIGNAL nx62941z1 : std_logic;
SIGNAL nx61064z2 : std_logic;
SIGNAL nx61064z1 : std_logic;
SIGNAL u_kirsch_reg_a2_0_aq : std_logic;
SIGNAL u_kirsch_reg_a3_0_aq : std_logic;
SIGNAL u_kirsch_reg_i_2_0_aq : std_logic;
SIGNAL nx34063z1 : std_logic;
SIGNAL nx46184z2 : std_logic;
SIGNAL nx46184z1 : std_logic;
SIGNAL u_kirsch_reg_d3_0_aq : std_logic;
SIGNAL nx34063z2 : std_logic;
SIGNAL u_kirsch_reg_h2_0_aq : std_logic;
SIGNAL u_kirsch_reg_h3_0_aq : std_logic;
SIGNAL nx5824z3 : std_logic;
SIGNAL nx5824z2 : std_logic;
SIGNAL nx5824z4 : std_logic;
SIGNAL nx5824z1 : std_logic;
SIGNAL u_kirsch_reg_i_3_0_aq : std_logic;
SIGNAL nx46608z1 : std_logic;
SIGNAL nx34502z1 : std_logic;
SIGNAL nx50076z1 : std_logic;
SIGNAL nx114z1 : std_logic;
SIGNAL nx31791z1 : std_logic;
SIGNAL nx16217z1 : std_logic;
SIGNAL nx643z1 : std_logic;
SIGNAL nx26313z1 : std_logic;
SIGNAL nx40631z1 : std_logic;
SIGNAL nx40631z2 : std_logic;
SIGNAL u_kirsch_reg_r_max0_4_aq : std_logic;
SIGNAL nx23421z2 : std_logic;
SIGNAL nx23421z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_4_aq : std_logic;
SIGNAL nx15002z3 : std_logic;
SIGNAL nx15002z2 : std_logic;
SIGNAL nx15002z4 : std_logic;
SIGNAL nx15002z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_4_aq : std_logic;
SIGNAL nx22424z2 : std_logic;
SIGNAL nx22424z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_3_aq : std_logic;
SIGNAL nx14005z4 : std_logic;
SIGNAL nx14005z3 : std_logic;
SIGNAL nx14005z2 : std_logic;
SIGNAL nx14005z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_3_aq : std_logic;
SIGNAL nx21427z2 : std_logic;
SIGNAL nx21427z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_2_aq : std_logic;
SIGNAL nx13008z3 : std_logic;
SIGNAL nx13008z2 : std_logic;
SIGNAL nx13008z4 : std_logic;
SIGNAL nx13008z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_2_aq : std_logic;
SIGNAL nx20430z2 : std_logic;
SIGNAL nx20430z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_1_aq : std_logic;
SIGNAL nx12011z3 : std_logic;
SIGNAL nx12011z2 : std_logic;
SIGNAL nx12011z4 : std_logic;
SIGNAL nx12011z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_1_aq : std_logic;
SIGNAL nx11014z3 : std_logic;
SIGNAL nx11014z2 : std_logic;
SIGNAL nx11014z4 : std_logic;
SIGNAL nx11014z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_0_aq : std_logic;
SIGNAL nx19433z2 : std_logic;
SIGNAL nx19433z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_0_aq : std_logic;
SIGNAL nx14816z1 : std_logic;
SIGNAL nx1515z1 : std_logic;
SIGNAL nx29633z1 : std_logic;
SIGNAL nx13302z1 : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_0_aq : std_logic;
SIGNAL nx53938z1 : std_logic;
SIGNAL nx42746z1 : std_logic;
SIGNAL nx57178z1 : std_logic;
SIGNAL nx7973z1 : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_4_aq : std_logic;
SIGNAL nx29221z3 : std_logic;
SIGNAL nx17993z4 : std_logic;
SIGNAL nx17993z3 : std_logic;
SIGNAL nx17993z2 : std_logic;
SIGNAL nx17993z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_7_aq : std_logic;
SIGNAL nx26412z5 : std_logic;
SIGNAL nx26412z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_7_aq : std_logic;
SIGNAL nx25415z2 : std_logic;
SIGNAL nx25415z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_6_aq : std_logic;
SIGNAL nx16996z3 : std_logic;
SIGNAL nx16996z2 : std_logic;
SIGNAL nx16996z4 : std_logic;
SIGNAL nx16996z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_6_aq : std_logic;
SIGNAL nx24418z2 : std_logic;
SIGNAL nx24418z1 : std_logic;
SIGNAL u_kirsch_reg_i_0_5_aq : std_logic;
SIGNAL nx15999z3 : std_logic;
SIGNAL nx15999z2 : std_logic;
SIGNAL nx15999z4 : std_logic;
SIGNAL nx15999z1 : std_logic;
SIGNAL u_kirsch_reg_i_1_5_aq : std_logic;
SIGNAL nx21086z1 : std_logic;
SIGNAL nx55474z1 : std_logic;
SIGNAL nx59267z1 : std_logic;
SIGNAL nx51089z1 : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_8_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_max0_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_a_5_aq : std_logic;
SIGNAL nx23175z1 : std_logic;
SIGNAL nx6844z1 : std_logic;
SIGNAL nx27544z1 : std_logic;
SIGNAL nx3604z1 : std_logic;
SIGNAL nx24080z1 : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_9_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_9_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_8_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_8_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_a_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_0_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_r_add1_b_0_aq : std_logic;
SIGNAL nx26840z1 : std_logic;
SIGNAL nx54270z1 : std_logic;
SIGNAL nx22365z1 : std_logic;
SIGNAL nx37939z1 : std_logic;
SIGNAL nx12023z1 : std_logic;
SIGNAL nx61985z1 : std_logic;
SIGNAL nx46411z1 : std_logic;
SIGNAL nx12780z1 : std_logic;
SIGNAL nx2794z1 : std_logic;
SIGNAL nx6502z1 : std_logic;
SIGNAL nx29221z4 : std_logic;
SIGNAL nx29221z1 : std_logic;
SIGNAL u_kirsch_reg_r_max1_9_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_8_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_5_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_3_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_1_aq : std_logic;
SIGNAL u_kirsch_reg_r_max1_0_aq : std_logic;
SIGNAL nx28806z1 : std_logic;
SIGNAL nx44380z1 : std_logic;
SIGNAL nx12475z1 : std_logic;
SIGNAL nx37487z1 : std_logic;
SIGNAL nx21913z1 : std_logic;
SIGNAL nx6339z1 : std_logic;
SIGNAL nx56301z1 : std_logic;
SIGNAL nx42866z1 : std_logic;
SIGNAL nx58440z1 : std_logic;
SIGNAL nx1252z1 : std_logic;
SIGNAL nx29221z7 : std_logic;
SIGNAL nx29221z6 : std_logic;
SIGNAL nx29221z5 : std_logic;
SIGNAL u_kirsch_reg_r_max1_4_aq : std_logic;
SIGNAL nx60486z8 : std_logic;
SIGNAL nx60486z11 : std_logic;
SIGNAL nx60486z10 : std_logic;
SIGNAL nx60486z9 : std_logic;
SIGNAL nx60486z7 : std_logic;
SIGNAL nx60486z6 : std_logic;
SIGNAL nx12123z2 : std_logic;
SIGNAL nx60486z5 : std_logic;
SIGNAL nx60486z4 : std_logic;
SIGNAL nx60486z3 : std_logic;
SIGNAL nx58492z1 : std_logic;
SIGNAL u_kirsch_reg_dir2_2_aq : std_logic;
SIGNAL nx12123z3 : std_logic;
SIGNAL nx12123z1 : std_logic;
SIGNAL u_kirsch_reg_dir2_final_2_aq : std_logic;
SIGNAL nx2094z2 : std_logic;
SIGNAL nx52067z3 : std_logic;
SIGNAL nx64316z1 : std_logic;
SIGNAL u_kirsch_reg_max0_bit_counter_0_aq : std_logic;
SIGNAL nx63319z1 : std_logic;
SIGNAL u_kirsch_reg_max0_bit_counter_1_aq : std_logic;
SIGNAL nx51070z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_1_aq : std_logic;
SIGNAL nx3091z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_final_1_aq : std_logic;
SIGNAL nx60486z2 : std_logic;
SIGNAL nx60486z1 : std_logic;
SIGNAL u_kirsch_reg_dir2_0_aq : std_logic;
SIGNAL u_kirsch_reg_dir2_final_0_aq : std_logic;
SIGNAL nx62334z3 : std_logic;
SIGNAL nx59489z2 : std_logic;
SIGNAL nx59489z1 : std_logic;
SIGNAL u_kirsch_reg_dir2_1_aq : std_logic;
SIGNAL u_kirsch_reg_dir2_final_1_aq : std_logic;
SIGNAL nx49076z2 : std_logic;
SIGNAL nx49076z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_3_aq : std_logic;
SIGNAL nx5085z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_final_3_aq : std_logic;
SIGNAL nx62334z2 : std_logic;
SIGNAL nx38950z3 : std_logic;
SIGNAL nx38950z4 : std_logic;
SIGNAL nx38950z1 : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_6_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_2_aq : std_logic;
SIGNAL nx38950z2 : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_0_aq : std_logic;
SIGNAL u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout : std_logic;
SIGNAL u_kirsch_reg_r_add2_0_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_1_aq : std_logic;
SIGNAL nx52980z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_1_aq : std_logic;
SIGNAL nx21832z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_2_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_3_aq : std_logic;
SIGNAL nx27373z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_3_aq : std_logic;
SIGNAL nx58521z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_4_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_5_aq : std_logic;
SIGNAL nx23346z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_5_aq : std_logic;
SIGNAL nx7802z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_6_aq : std_logic;
SIGNAL nx38950z5 : std_logic;
SIGNAL u_kirsch_reg_r_add2_7_aq : std_logic;
SIGNAL u_kirsch_reg_r_add0_b_8_aq : std_logic;
SIGNAL nx42917z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_8_aq : std_logic;
SIGNAL nx11769z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_9_aq : std_logic;
SIGNAL nx37436z1 : std_logic;
SIGNAL nx57978z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_10_aq : std_logic;
SIGNAL nx62488z1 : std_logic;
SIGNAL nx56981z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_11_aq : std_logic;
SIGNAL nx13358z1 : std_logic;
SIGNAL nx36604z1 : std_logic;
SIGNAL nx21030z1 : std_logic;
SIGNAL nx52935z1 : std_logic;
SIGNAL nx37361z1 : std_logic;
SIGNAL nx59323z1 : std_logic;
SIGNAL nx22544z1 : std_logic;
SIGNAL nx56932z1 : std_logic;
SIGNAL nx39752z1 : std_logic;
SIGNAL nx23421z3 : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_11_a : std_logic;
SIGNAL nx46914z1 : std_logic;
SIGNAL nx55984z1 : std_logic;
SIGNAL u_kirsch_reg_r_add2_12_aq : std_logic;
SIGNAL nx10967z1 : std_logic;
SIGNAL nx21429z1 : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_14_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_11_aq : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_12_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_12_aq : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_8_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_8_aq : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_9_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_9_aq : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_10_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_10_aq : std_logic;
SIGNAL u_kirsch_r_sub0_6n1s1_7_a : std_logic;
SIGNAL u_kirsch_reg_r_sub0_7_aq : std_logic;
SIGNAL nx22605z3 : std_logic;
SIGNAL nx62334z1 : std_logic;
SIGNAL u_kirsch_reg_intermediate_dir_0_aq : std_logic;
SIGNAL inc_d_0_dup_703 : std_logic;
SIGNAL nx23864z1 : std_logic;
SIGNAL reg_q_0_dup_32_aq : std_logic;
SIGNAL inc_d_0_dup_739 : std_logic;
SIGNAL nx24859z1 : std_logic;
SIGNAL reg_q_0_dup_40_aq : std_logic;
SIGNAL nx4983z1 : std_logic;
SIGNAL inc_d_1_dup_705 : std_logic;
SIGNAL reg_q_1_dup_31_aq : std_logic;
SIGNAL nx65210z1 : std_logic;
SIGNAL inc_d_1_dup_741 : std_logic;
SIGNAL reg_q_1_dup_39_aq : std_logic;
SIGNAL nx10591z1 : std_logic;
SIGNAL inc_d_2_dup_707 : std_logic;
SIGNAL reg_q_2_dup_30_aq : std_logic;
SIGNAL nx49636z1 : std_logic;
SIGNAL inc_d_2_dup_743 : std_logic;
SIGNAL reg_q_2_dup_38_aq : std_logic;
SIGNAL nx44222z1 : std_logic;
SIGNAL inc_d_3_dup_709 : std_logic;
SIGNAL reg_q_3_dup_29_aq : std_logic;
SIGNAL nx31474z1 : std_logic;
SIGNAL inc_d_3_dup_745 : std_logic;
SIGNAL reg_q_3_dup_37_aq : std_logic;
SIGNAL nx59796z1 : std_logic;
SIGNAL inc_d_4_dup_711 : std_logic;
SIGNAL reg_q_4_dup_28_aq : std_logic;
SIGNAL nx47048z1 : std_logic;
SIGNAL inc_d_4_dup_747 : std_logic;
SIGNAL reg_q_4_dup_36_aq : std_logic;
SIGNAL nx55702z1 : std_logic;
SIGNAL inc_d_5_dup_713 : std_logic;
SIGNAL reg_q_5_dup_27_aq : std_logic;
SIGNAL nx15143z1 : std_logic;
SIGNAL inc_d_5_dup_749 : std_logic;
SIGNAL reg_q_5_dup_35_aq : std_logic;
SIGNAL nx40128z1 : std_logic;
SIGNAL inc_d_6_dup_715 : std_logic;
SIGNAL reg_q_6_dup_26_aq : std_logic;
SIGNAL nx34819z1 : std_logic;
SIGNAL inc_d_6_dup_751 : std_logic;
SIGNAL reg_q_6_dup_34_aq : std_logic;
SIGNAL nx32341z1 : std_logic;
SIGNAL inc_d_7_dup_717 : std_logic;
SIGNAL reg_q_7_dup_25_aq : std_logic;
SIGNAL nx27032z1 : std_logic;
SIGNAL inc_d_7_dup_753 : std_logic;
SIGNAL reg_q_7_dup_33_aq : std_logic;
SIGNAL nx22605z2 : std_logic;
SIGNAL nx63331z1 : std_logic;
SIGNAL u_kirsch_reg_intermediate_dir_1_aq : std_logic;
SIGNAL nx50073z2 : std_logic;
SIGNAL nx50073z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_2_aq : std_logic;
SIGNAL nx4088z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_final_2_aq : std_logic;
SIGNAL nx52067z2 : std_logic;
SIGNAL nx52067z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_0_aq : std_logic;
SIGNAL nx2094z1 : std_logic;
SIGNAL u_kirsch_reg_dir1_final_0_aq : std_logic;
SIGNAL nx64328z3 : std_logic;
SIGNAL nx64328z2 : std_logic;
SIGNAL nx64328z1 : std_logic;
SIGNAL u_kirsch_reg_intermediate_dir_2_aq : std_logic;
SIGNAL nx22605z1 : std_logic;
SIGNAL u_kirsch_reg_o_edge_aq : std_logic;
SIGNAL nx37156z1 : std_logic;
SIGNAL u_kirsch_reg_o_mode_0_aq : std_logic;
SIGNAL u_kirsch_reg_o_mode_1_afeeder_combout : std_logic;
SIGNAL u_kirsch_reg_o_mode_1_aq : std_logic;
SIGNAL nx40325z1 : std_logic;
SIGNAL u_uart_reg_RxErr_aq : std_logic;
SIGNAL read_fifo_reg_q_saved_0_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_0_aq : std_logic;
SIGNAL NOT_rb_o_data_0_a : std_logic;
SIGNAL read_fifo_reg_q_saved_1_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_1_aq : std_logic;
SIGNAL NOT_rb_o_data_1_a : std_logic;
SIGNAL read_fifo_reg_q_saved_2_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_2_aq : std_logic;
SIGNAL NOT_rb_o_data_2_a : std_logic;
SIGNAL read_fifo_reg_q_saved_3_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_3_aq : std_logic;
SIGNAL NOT_rb_o_data_3_a : std_logic;
SIGNAL read_fifo_reg_q_saved_4_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_4_aq : std_logic;
SIGNAL NOT_rb_o_data_4_a : std_logic;
SIGNAL read_fifo_reg_q_saved_5_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_5_aq : std_logic;
SIGNAL NOT_rb_o_data_5_a : std_logic;
SIGNAL read_fifo_reg_q_saved_6_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_6_aq : std_logic;
SIGNAL NOT_rb_o_data_6_a : std_logic;
SIGNAL read_fifo_reg_q_saved_7_afeeder_combout : std_logic;
SIGNAL read_fifo_reg_q_saved_7_aq : std_logic;
SIGNAL NOT_u_uart_Tx_Reg_14n6ss1_8_a : std_logic;
SIGNAL nx18859z1 : std_logic;
SIGNAL u_uart_reg_Tx_Reg_8_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_7_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_6_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_5_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_4_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_3_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_2_aq : std_logic;
SIGNAL u_uart_reg_Tx_Reg_1_aq : std_logic;
SIGNAL u_uart_Tx_Reg_14n6ss1_0_a : std_logic;
SIGNAL nx17862z2 : std_logic;
SIGNAL nx17862z1 : std_logic;
SIGNAL u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_0_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_0_aq : std_logic;
SIGNAL nx5371z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_2_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_2_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_3_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_3_aq : std_logic;
SIGNAL nx7365z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_4_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_4_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_7_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_7_aq : std_logic;
SIGNAL u_kirsch_a2_9n22ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_f3_9n22ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_max0_1n2ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_add0_a_0n1s1 : std_logic_vector(8 DOWNTO 0);
SIGNAL u_kirsch_r_add1_a_3n1s1 : std_logic_vector(9 DOWNTO 0);
SIGNAL rb_i_data : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_max1_5n6ss1 : std_logic_vector(9 DOWNTO 0);
SIGNAL u_kirsch_h2_9n22ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL k_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL read_fifo_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL write_fifo_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_add2_4n1s1f1 : std_logic_vector(9 DOWNTO 0);
SIGNAL u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL u_kirsch_r_add2_4n1s1f2 : std_logic_vector(12 DOWNTO 1);
SIGNAL u_kirsch_r_add2_4n1s1 : std_logic_vector(12 DOWNTO 0);
SIGNAL ALT_INV_reset_n_ainput_o : std_logic;
SIGNAL ALT_INV_reg_uart_reset_aq : std_logic;
SIGNAL ALT_INV_u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL ALT_INV_reg_q_10_dup_50_aq : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_uart_rx <= uart_rx;
uart_tx <= ww_uart_tx;
ww_sw <= sw;
ww_pb <= pb;
seg7_en <= ww_seg7_en;
seg7_data <= ww_seg7_data;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & rb_i_data(7) & rb_i_data(6) & rb_i_data(5) & rb_i_data(4) & rb_i_data(3) & rb_i_data(2) & 
rb_i_data(1) & rb_i_data(0));

read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (read_fifo_pointer(7) & read_fifo_pointer(6) & read_fifo_pointer(5) & read_fifo_pointer(4) & read_fifo_pointer(3) & read_fifo_pointer(2) & read_fifo_pointer(1)
& read_fifo_pointer(0));

read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7) <= read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & u_uart_reg_Dout_7_aq & u_uart_reg_Dout_6_aq & u_uart_reg_Dout_5_aq & u_uart_reg_Dout_4_aq & 
u_uart_reg_Dout_3_aq & u_uart_reg_Dout_2_aq & u_uart_reg_Dout_1_aq & u_uart_reg_Dout_0_aq);

write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (write_fifo_pointer(7) & write_fifo_pointer(6) & write_fifo_pointer(5) & write_fifo_pointer(4) & write_fifo_pointer(3) & write_fifo_pointer(2) & 
write_fifo_pointer(1) & write_fifo_pointer(0));

write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7) <= write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_91_aq & reg_q_6_dup_92_aq & reg_q_5_dup_93_aq & reg_q_4_dup_94_aq & reg_q_3_dup_95_aq & reg_q_2_dup_96_aq & reg_q_1_dup_97_aq & reg_q_0_dup_98_aq);

u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7) <= u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_91_aq & reg_q_6_dup_92_aq & reg_q_5_dup_93_aq & reg_q_4_dup_94_aq & reg_q_3_dup_95_aq & reg_q_2_dup_96_aq & reg_q_1_dup_97_aq & reg_q_0_dup_98_aq);

u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7) <= u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & k_i_pixel(7) & k_i_pixel(6) & k_i_pixel(5) & k_i_pixel(4) & k_i_pixel(3) & k_i_pixel(2) & 
k_i_pixel(1) & k_i_pixel(0));

u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (reg_q_7_dup_91_aq & reg_q_6_dup_92_aq & reg_q_5_dup_93_aq & reg_q_4_dup_94_aq & reg_q_3_dup_95_aq & reg_q_2_dup_96_aq & reg_q_1_dup_97_aq & reg_q_0_dup_98_aq);

u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7) <= u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus <= (a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout);

clk_ainputclkctrl_INCLK_bus <= (vcc & vcc & vcc & clk_ainput_o);
ALT_INV_reset_n_ainput_o <= NOT reset_n_ainput_o;
ALT_INV_reg_uart_reset_aq <= NOT reg_uart_reset_aq;
ALT_INV_u_uart_reg_Tx_Reg_0_aq <= NOT u_uart_reg_Tx_Reg_0_aq;
ALT_INV_reg_q_10_dup_50_aq <= NOT reg_q_10_dup_50_aq;

-- Location: LCCOMB_X11_Y12_N16
a_aQUARTUS_CREATED_GND_aI : fiftyfivenm_lcell_comb
-- Equation(s):
-- a_aQUARTUS_CREATED_GND_aI_combout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aQUARTUS_CREATED_GND_aI_combout);

-- Location: IOOBUF_X3_Y10_N23
seg7_data_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq,
	devoe => ww_devoe,
	o => seg7_data_a1_a_aoutput_o);

-- Location: IOOBUF_X6_Y10_N30
seg7_data_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq,
	devoe => ww_devoe,
	o => seg7_data_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y10_N16
seg7_data_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq,
	devoe => ww_devoe,
	o => seg7_data_a6_a_aoutput_o);

-- Location: IOOBUF_X0_Y7_N23
led_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a0_a_aoutput_o);

-- Location: IOOBUF_X0_Y6_N16
led_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a1_a_aoutput_o);

-- Location: IOOBUF_X10_Y17_N2
led_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a2_a_aoutput_o);

-- Location: IOOBUF_X10_Y20_N23
led_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a3_a_aoutput_o);

-- Location: IOOBUF_X10_Y21_N23
led_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a4_a_aoutput_o);

-- Location: IOOBUF_X10_Y22_N23
led_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y0_N16
led_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a6_a_aoutput_o);

-- Location: IOOBUF_X6_Y0_N23
led_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => led_a7_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N16
uart_tx_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_u_uart_reg_Tx_Reg_0_aq,
	devoe => ww_devoe,
	o => uart_tx_aoutput_o);

-- Location: IOOBUF_X15_Y25_N16
seg7_en_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_reg_q_10_dup_50_aq,
	devoe => ww_devoe,
	o => seg7_en_a0_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N9
seg7_en_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_q_10_dup_50_aq,
	devoe => ww_devoe,
	o => seg7_en_a1_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N30
seg7_data_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_0_aq,
	devoe => ww_devoe,
	o => seg7_data_a0_a_aoutput_o);

-- Location: IOOBUF_X1_Y10_N9
seg7_data_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_2_aq,
	devoe => ww_devoe,
	o => seg7_data_a2_a_aoutput_o);

-- Location: IOOBUF_X31_Y22_N23
seg7_data_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_3_aq,
	devoe => ww_devoe,
	o => seg7_data_a3_a_aoutput_o);

-- Location: IOOBUF_X15_Y25_N23
seg7_data_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_4_aq,
	devoe => ww_devoe,
	o => seg7_data_a4_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N2
seg7_data_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_7_aq,
	devoe => ww_devoe,
	o => seg7_data_a7_a_aoutput_o);

-- Location: IOIBUF_X0_Y6_N22
clk_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => clk_ainput_o);

-- Location: CLKCTRL_G4
clk_ainputclkctrl : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_ainputclkctrl_outclk);

-- Location: LCCOMB_X15_Y14_N8
ix975_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_997 = reg_q_0_dup_90_aq $ (VCC)
-- nx38998z1 = CARRY(reg_q_0_dup_90_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_90_aq,
	datad => VCC,
	combout => inc_d_0_dup_997,
	cout => nx38998z1);

-- Location: LCCOMB_X15_Y14_N26
ix25391z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z6 = (reg_q_2_dup_88_aq & (reg_q_3_dup_87_aq & (reg_q_0_dup_90_aq & reg_q_1_dup_89_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_88_aq,
	datab => reg_q_3_dup_87_aq,
	datac => reg_q_0_dup_90_aq,
	datad => reg_q_1_dup_89_aq,
	combout => nx25391z6);

-- Location: LCCOMB_X15_Y14_N18
ix985_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1007 = (reg_q_5_dup_85_aq & (!nx53815z1)) # (!reg_q_5_dup_85_aq & ((nx53815z1) # (GND)))
-- nx3853z1 = CARRY((!nx53815z1) # (!reg_q_5_dup_85_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_85_aq,
	datad => VCC,
	cin => nx53815z1,
	combout => inc_d_5_dup_1007,
	cout => nx3853z1);

-- Location: LCCOMB_X15_Y14_N20
ix987_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1009 = (reg_q_6_dup_84_aq & (nx3853z1 $ (GND))) # (!reg_q_6_dup_84_aq & (!nx3853z1 & VCC))
-- nx11640z1 = CARRY((reg_q_6_dup_84_aq & !nx3853z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_84_aq,
	datad => VCC,
	cin => nx3853z1,
	combout => inc_d_6_dup_1009,
	cout => nx11640z1);

-- Location: IOIBUF_X0_Y2_N15
reset_n_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => reset_n_ainput_o);

-- Location: LCCOMB_X17_Y16_N4
ix1015_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1037 = reg_q_0_dup_98_aq $ (VCC)
-- nx16836z1 = CARRY(reg_q_0_dup_98_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_98_aq,
	datad => VCC,
	combout => inc_d_0_dup_1037,
	cout => nx16836z1);

-- Location: LCCOMB_X17_Y16_N2
ix37417z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37417z3 = (reg_q_3_dup_95_aq & (reg_q_0_dup_98_aq & (reg_q_2_dup_96_aq & reg_q_1_dup_97_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datab => reg_q_0_dup_98_aq,
	datac => reg_q_2_dup_96_aq,
	datad => reg_q_1_dup_97_aq,
	combout => nx37417z3);

-- Location: LCCOMB_X17_Y16_N30
ix37417z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37417z2 = ((nx25391z2 & nx37417z3)) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx25391z2,
	datac => reset_n_ainput_o,
	datad => nx37417z3,
	combout => nx37417z2);

-- Location: LCCOMB_X24_Y17_N6
reg_q_0_dup_24_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_q_0_dup_24_a_wirecell_combout = !reg_q_0_dup_24_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_0_dup_24_aq,
	combout => reg_q_0_dup_24_a_wirecell_combout);

-- Location: LCCOMB_X24_Y17_N8
ix7_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx30620z1 = CARRY(reg_q_0_dup_24_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_24_aq,
	datad => VCC,
	cout => nx30620z1);

-- Location: LCCOMB_X24_Y17_N10
ix656_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_1_dup_114 = (reg_q_1_dup_23_aq & ((nx7605z1 & (nx30620z1 & VCC)) # (!nx7605z1 & (!nx30620z1)))) # (!reg_q_1_dup_23_aq & ((nx7605z1 & (!nx30620z1)) # (!nx7605z1 & ((nx30620z1) # (GND)))))
-- nx15046z1 = CARRY((reg_q_1_dup_23_aq & (!nx7605z1 & !nx30620z1)) # (!reg_q_1_dup_23_aq & ((!nx30620z1) # (!nx7605z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_23_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx30620z1,
	combout => incdec_mux_1_dup_114,
	cout => nx15046z1);

-- Location: FF_X24_Y17_N11
reg_q_1_dup_23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_1_dup_114,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_23_aq);

-- Location: LCCOMB_X24_Y17_N12
ix658_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_2_dup_115 = ((reg_q_2_dup_22_aq $ (nx7605z1 $ (!nx15046z1)))) # (GND)
-- nx46951z1 = CARRY((reg_q_2_dup_22_aq & ((nx7605z1) # (!nx15046z1))) # (!reg_q_2_dup_22_aq & (nx7605z1 & !nx15046z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_22_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx15046z1,
	combout => incdec_mux_2_dup_115,
	cout => nx46951z1);

-- Location: FF_X24_Y17_N13
reg_q_2_dup_22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_2_dup_115,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_22_aq);

-- Location: LCCOMB_X24_Y17_N14
ix660_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_3_dup_116 = (reg_q_3_dup_21_aq & ((nx7605z1 & (nx46951z1 & VCC)) # (!nx7605z1 & (!nx46951z1)))) # (!reg_q_3_dup_21_aq & ((nx7605z1 & (!nx46951z1)) # (!nx7605z1 & ((nx46951z1) # (GND)))))
-- nx34159z1 = CARRY((reg_q_3_dup_21_aq & (!nx7605z1 & !nx46951z1)) # (!reg_q_3_dup_21_aq & ((!nx46951z1) # (!nx7605z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_21_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx46951z1,
	combout => incdec_mux_3_dup_116,
	cout => nx34159z1);

-- Location: FF_X24_Y17_N15
reg_q_3_dup_21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_3_dup_116,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_21_aq);

-- Location: LCCOMB_X24_Y17_N16
ix662_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_4_dup_117 = ((reg_q_4_dup_20_aq $ (nx7605z1 $ (!nx34159z1)))) # (GND)
-- nx49733z1 = CARRY((reg_q_4_dup_20_aq & ((nx7605z1) # (!nx34159z1))) # (!reg_q_4_dup_20_aq & (nx7605z1 & !nx34159z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_20_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx34159z1,
	combout => incdec_mux_4_dup_117,
	cout => nx49733z1);

-- Location: FF_X24_Y17_N17
reg_q_4_dup_20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_4_dup_117,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_20_aq);

-- Location: LCCOMB_X24_Y17_N18
ix664_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_5_dup_118 = (reg_q_5_dup_19_aq & ((nx7605z1 & (nx49733z1 & VCC)) # (!nx7605z1 & (!nx49733z1)))) # (!reg_q_5_dup_19_aq & ((nx7605z1 & (!nx49733z1)) # (!nx7605z1 & ((nx49733z1) # (GND)))))
-- nx65307z1 = CARRY((reg_q_5_dup_19_aq & (!nx7605z1 & !nx49733z1)) # (!reg_q_5_dup_19_aq & ((!nx49733z1) # (!nx7605z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_19_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx49733z1,
	combout => incdec_mux_5_dup_118,
	cout => nx65307z1);

-- Location: FF_X24_Y17_N19
reg_q_5_dup_19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_5_dup_118,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_19_aq);

-- Location: LCCOMB_X24_Y17_N20
ix666_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_6_dup_119 = ((reg_q_6_dup_18_aq $ (nx7605z1 $ (!nx65307z1)))) # (GND)
-- nx50191z1 = CARRY((reg_q_6_dup_18_aq & ((nx7605z1) # (!nx65307z1))) # (!reg_q_6_dup_18_aq & (nx7605z1 & !nx65307z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_18_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx65307z1,
	combout => incdec_mux_6_dup_119,
	cout => nx50191z1);

-- Location: FF_X24_Y17_N21
reg_q_6_dup_18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_6_dup_119,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_18_aq);

-- Location: LCCOMB_X24_Y17_N26
ix22869z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22869z3 = (!reg_q_6_dup_18_aq & (!reg_q_5_dup_19_aq & (!reg_q_3_dup_21_aq & !reg_q_4_dup_20_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_18_aq,
	datab => reg_q_5_dup_19_aq,
	datac => reg_q_3_dup_21_aq,
	datad => reg_q_4_dup_20_aq,
	combout => nx22869z3);

-- Location: LCCOMB_X24_Y17_N4
ix22869z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22869z2 = (!reg_q_2_dup_22_aq & (nx22869z3 & !reg_q_1_dup_23_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_22_aq,
	datac => nx22869z3,
	datad => reg_q_1_dup_23_aq,
	combout => nx22869z2);

-- Location: LCCOMB_X24_Y17_N22
ix668_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_7_dup_120 = (reg_q_7_dup_17_aq & ((nx7605z1 & (nx50191z1 & VCC)) # (!nx7605z1 & (!nx50191z1)))) # (!reg_q_7_dup_17_aq & ((nx7605z1 & (!nx50191z1)) # (!nx7605z1 & ((nx50191z1) # (GND)))))
-- nx42404z1 = CARRY((reg_q_7_dup_17_aq & (!nx7605z1 & !nx50191z1)) # (!reg_q_7_dup_17_aq & ((!nx50191z1) # (!nx7605z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_17_aq,
	datab => nx7605z1,
	datad => VCC,
	cin => nx50191z1,
	combout => incdec_mux_7_dup_120,
	cout => nx42404z1);

-- Location: FF_X24_Y17_N23
reg_q_7_dup_17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_7_dup_120,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_17_aq);

-- Location: LCCOMB_X24_Y17_N24
ix669_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_8_dup_121 = reg_q_8_dup_16_aq $ (nx42404z1 $ (!nx7605z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_16_aq,
	datad => nx7605z1,
	cin => nx42404z1,
	combout => incdec_mux_8_dup_121);

-- Location: FF_X24_Y17_N25
reg_q_8_dup_16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_8_dup_121,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_16_aq);

-- Location: LCCOMB_X24_Y17_N28
ix22869z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_full = (!reg_q_0_dup_24_aq & (nx22869z2 & (!reg_q_7_dup_17_aq & reg_q_8_dup_16_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_24_aq,
	datab => nx22869z2,
	datac => reg_q_7_dup_17_aq,
	datad => reg_q_8_dup_16_aq,
	combout => write_fifo_full);

-- Location: LCCOMB_X19_Y21_N18
u_uart_reg_RxFSM_1_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxFSM_1_a0_combout = !u_uart_reg_RxFSM_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_RxFSM_0_aq,
	combout => u_uart_reg_RxFSM_1_a0_combout);

-- Location: LCCOMB_X23_Y21_N0
ix2_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_a = reg_q_0_aq $ (VCC)
-- nx27063z1 = CARRY(reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_aq,
	datad => VCC,
	combout => inc_d_0_a,
	cout => nx27063z1);

-- Location: FF_X23_Y21_N1
reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_aq);

-- Location: LCCOMB_X23_Y21_N2
ix6_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_a = (reg_q_1_aq & (!nx27063z1)) # (!reg_q_1_aq & ((nx27063z1) # (GND)))
-- nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_aq,
	datad => VCC,
	cin => nx27063z1,
	combout => inc_d_1_a,
	cout => nx39256z1);

-- Location: FF_X23_Y21_N3
reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_aq);

-- Location: LCCOMB_X23_Y21_N4
ix10_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_a = (reg_q_2_aq & (nx39256z1 $ (GND))) # (!reg_q_2_aq & (!nx39256z1 & VCC))
-- nx57428z1 = CARRY((reg_q_2_aq & !nx39256z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_aq,
	datad => VCC,
	cin => nx39256z1,
	combout => inc_d_2_a,
	cout => nx57428z1);

-- Location: FF_X23_Y21_N5
reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_aq);

-- Location: LCCOMB_X23_Y21_N6
ix14_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_a = (reg_q_3_aq & (!nx57428z1)) # (!reg_q_3_aq & ((nx57428z1) # (GND)))
-- nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_aq,
	datad => VCC,
	cin => nx57428z1,
	combout => inc_d_3_a,
	cout => nx23040z1);

-- Location: FF_X23_Y21_N7
reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_aq);

-- Location: LCCOMB_X23_Y21_N8
ix18_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_a = (reg_q_4_aq & (nx23040z1 $ (GND))) # (!reg_q_4_aq & (!nx23040z1 & VCC))
-- nx58827z1 = CARRY((reg_q_4_aq & !nx23040z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_aq,
	datad => VCC,
	cin => nx23040z1,
	combout => inc_d_4_a,
	cout => nx58827z1);

-- Location: FF_X23_Y21_N9
reg_q_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_aq);

-- Location: LCCOMB_X23_Y21_N10
ix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_a = (reg_q_5_aq & (!nx58827z1)) # (!reg_q_5_aq & ((nx58827z1) # (GND)))
-- nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_aq,
	datad => VCC,
	cin => nx58827z1,
	combout => inc_d_5_a,
	cout => nx37857z1);

-- Location: FF_X23_Y21_N11
reg_q_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_aq);

-- Location: LCCOMB_X23_Y21_N12
ix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_a = (reg_q_6_aq & (nx37857z1 $ (GND))) # (!reg_q_6_aq & (!nx37857z1 & VCC))
-- nx41995z1 = CARRY((reg_q_6_aq & !nx37857z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_aq,
	datad => VCC,
	cin => nx37857z1,
	combout => inc_d_6_a,
	cout => nx41995z1);

-- Location: FF_X23_Y21_N13
reg_q_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_aq);

-- Location: LCCOMB_X23_Y21_N14
ix578_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_a = (reg_q_7_aq & (!nx41995z1)) # (!reg_q_7_aq & ((nx41995z1) # (GND)))
-- nx8364z1 = CARRY((!nx41995z1) # (!reg_q_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_aq,
	datad => VCC,
	cin => nx41995z1,
	combout => inc_d_7_a,
	cout => nx8364z1);

-- Location: FF_X23_Y21_N15
reg_q_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_aq);

-- Location: LCCOMB_X23_Y21_N16
ix580_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_a = (reg_q_8_aq & (nx8364z1 $ (GND))) # (!reg_q_8_aq & (!nx8364z1 & VCC))
-- nx9072z1 = CARRY((reg_q_8_aq & !nx8364z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_aq,
	datad => VCC,
	cin => nx8364z1,
	combout => inc_d_8_a,
	cout => nx9072z1);

-- Location: FF_X23_Y21_N17
reg_q_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_aq);

-- Location: LCCOMB_X23_Y21_N18
ix49_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_a = (reg_q_9_aq & (!nx9072z1)) # (!reg_q_9_aq & ((nx9072z1) # (GND)))
-- nx40977z1 = CARRY((!nx9072z1) # (!reg_q_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_aq,
	datad => VCC,
	cin => nx9072z1,
	combout => inc_d_9_a,
	cout => nx40977z1);

-- Location: FF_X23_Y21_N19
reg_q_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_aq);

-- Location: LCCOMB_X23_Y21_N20
ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_a = nx40977z1 $ (!reg_q_10_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_10_aq,
	cin => nx40977z1,
	combout => inc_d_10_a);

-- Location: FF_X23_Y21_N21
reg_q_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_a,
	sclr => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_aq);

-- Location: LCCOMB_X23_Y21_N22
ix60415z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z2 = (reg_q_5_aq & (reg_q_7_aq & reg_q_10_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_aq,
	datac => reg_q_7_aq,
	datad => reg_q_10_aq,
	combout => nx60415z2);

-- Location: LCCOMB_X23_Y21_N26
ix60415z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z5 = (reg_q_6_aq & (reg_q_1_aq & (reg_q_4_aq & reg_q_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_aq,
	datab => reg_q_1_aq,
	datac => reg_q_4_aq,
	datad => reg_q_2_aq,
	combout => nx60415z5);

-- Location: LCCOMB_X23_Y21_N24
ix60415z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z4 = (reg_q_3_aq & reg_q_9_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_aq,
	datad => reg_q_9_aq,
	combout => nx60415z4);

-- Location: LCCOMB_X23_Y21_N28
ix60415z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z3 = (reg_q_0_aq & (reg_q_8_aq & (nx60415z5 & nx60415z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_aq,
	datab => reg_q_8_aq,
	datac => nx60415z5,
	datad => nx60415z4,
	combout => nx60415z3);

-- Location: LCCOMB_X20_Y21_N0
ix60415z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60415z1 = (!reset_n_ainput_o & ((reg_uart_reset_aq) # ((nx60415z2 & nx60415z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx60415z2,
	datac => reg_uart_reset_aq,
	datad => nx60415z3,
	combout => nx60415z1);

-- Location: FF_X20_Y21_N1
reg_uart_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60415z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_uart_reset_aq);

-- Location: IOIBUF_X11_Y25_N22
uart_rx_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rx,
	o => uart_rx_ainput_o);

-- Location: LCCOMB_X19_Y21_N10
ix12790z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12790z2 = (u_uart_reg_RxFSM_5_aq & (!uart_rx_ainput_o)) # (!u_uart_reg_RxFSM_5_aq & (((!u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uart_rx_ainput_o,
	datab => u_uart_reg_RxFSM_5_aq,
	datac => u_uart_reg_TopRx_aq,
	datad => u_uart_reg_RxFSM_0_aq,
	combout => nx12790z2);

-- Location: LCCOMB_X19_Y21_N8
u_uart_reg_Rx_r_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => uart_rx_ainput_o,
	combout => u_uart_reg_Rx_r_a0_combout);

-- Location: FF_X19_Y21_N9
u_uart_reg_Rx_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_r_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_r_aq);

-- Location: LCCOMB_X19_Y21_N4
ix12790z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12790z1 = (!nx12790z2 & ((u_uart_reg_Rx_r_aq) # (u_uart_reg_RxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx12790z2,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_0_aq,
	combout => nx12790z1);

-- Location: FF_X19_Y21_N19
u_uart_reg_RxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxFSM_1_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_1_aq);

-- Location: LCCOMB_X20_Y24_N10
ix64683z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64683z1 = (u_uart_reg_RxFSM_0_aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx64683z1);

-- Location: LCCOMB_X19_Y21_N26
ix64683z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64683z3 = (u_uart_reg_RxFSM_3_aq & ((u_uart_reg_TopRx_aq))) # (!u_uart_reg_RxFSM_3_aq & (!u_uart_reg_RxFSM_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_reg_TopRx_aq,
	datad => u_uart_reg_RxFSM_3_aq,
	combout => nx64683z3);

-- Location: FF_X20_Y24_N11
u_uart_modgen_counter_RxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64683z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X20_Y24_N12
ix144z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx144z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_1_aq $ (u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx144z1);

-- Location: FF_X20_Y24_N13
u_uart_modgen_counter_RxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx144z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X20_Y24_N6
ix1141z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1141z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_2_aq $ (((u_uart_modgen_counter_RxBitCnt_reg_q_1_aq & u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datab => u_uart_reg_RxFSM_0_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx1141z1);

-- Location: FF_X20_Y24_N7
u_uart_modgen_counter_RxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1141z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X20_Y24_N24
ix2138z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2138z2 = (u_uart_modgen_counter_RxBitCnt_reg_q_1_aq & u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx2138z2);

-- Location: LCCOMB_X20_Y24_N26
ix2138z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2138z1 = (u_uart_reg_RxFSM_0_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3_aq $ (((nx2138z2 & u_uart_modgen_counter_RxBitCnt_reg_q_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datab => nx2138z2,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	combout => nx2138z1);

-- Location: FF_X20_Y24_N27
u_uart_modgen_counter_RxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2138z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx64683z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X20_Y24_N8
ix9799z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9799z2 = (!u_uart_modgen_counter_RxBitCnt_reg_q_1_aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_2_aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3_aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datab => u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datac => u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	datad => u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	combout => nx9799z2);

-- Location: LCCOMB_X20_Y21_N28
ix10796z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10796z1 = (u_uart_reg_RxFSM_2_aq & !nx9799z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_2_aq,
	datad => nx9799z2,
	combout => nx10796z1);

-- Location: FF_X20_Y21_N29
u_uart_reg_RxFSM_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx10796z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_3_aq);

-- Location: LCCOMB_X19_Y21_N12
ix11793z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11793z1 = (u_uart_reg_RxFSM_3_aq) # ((u_uart_reg_RxFSM_1_aq & u_uart_reg_Rx_r_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxFSM_1_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_3_aq,
	combout => nx11793z1);

-- Location: FF_X19_Y21_N13
u_uart_reg_RxFSM_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11793z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_2_aq);

-- Location: LCCOMB_X20_Y21_N26
ix9799z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9799z1 = (u_uart_reg_RxFSM_2_aq & nx9799z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_2_aq,
	datad => nx9799z2,
	combout => nx9799z1);

-- Location: FF_X20_Y21_N27
u_uart_reg_RxFSM_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx9799z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_4_aq);

-- Location: LCCOMB_X19_Y21_N0
ix8802z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8802z1 = (u_uart_reg_Rx_r_aq & ((u_uart_reg_RxFSM_4_aq))) # (!u_uart_reg_Rx_r_aq & (u_uart_reg_RxFSM_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxFSM_1_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_4_aq,
	combout => nx8802z1);

-- Location: FF_X19_Y21_N1
u_uart_reg_RxFSM_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8802z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_5_aq);

-- Location: LCCOMB_X19_Y21_N6
ix13787z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13787z1 = (!u_uart_reg_RxFSM_5_aq & ((u_uart_reg_Rx_r_aq) # (!u_uart_reg_RxFSM_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_RxFSM_5_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_4_aq,
	combout => nx13787z1);

-- Location: FF_X19_Y21_N7
u_uart_reg_RxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13787z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx12790z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxFSM_0_aq);

-- Location: LCCOMB_X20_Y21_N2
ix830_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_862 = reg_q_0_dup_71_aq $ (VCC)
-- nx52912z1 = CARRY(reg_q_0_dup_71_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_71_aq,
	datad => VCC,
	combout => inc_d_0_dup_862,
	cout => nx52912z1);

-- Location: LCCOMB_X19_Y21_N2
ix2379z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2379z1 = (nx59343z2) # (!u_uart_reg_RxFSM_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => nx59343z2,
	combout => nx2379z1);

-- Location: FF_X20_Y21_N3
reg_q_0_dup_71 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_862,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_71_aq);

-- Location: LCCOMB_X20_Y21_N4
ix832_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_864 = (reg_q_1_dup_70_aq & (!nx52912z1)) # (!reg_q_1_dup_70_aq & ((nx52912z1) # (GND)))
-- nx2950z1 = CARRY((!nx52912z1) # (!reg_q_1_dup_70_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_70_aq,
	datad => VCC,
	cin => nx52912z1,
	combout => inc_d_1_dup_864,
	cout => nx2950z1);

-- Location: FF_X20_Y21_N5
reg_q_1_dup_70 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_864,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_70_aq);

-- Location: LCCOMB_X20_Y21_N6
ix834_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_866 = (reg_q_2_dup_69_aq & (nx2950z1 $ (GND))) # (!reg_q_2_dup_69_aq & (!nx2950z1 & VCC))
-- nx47012z1 = CARRY((reg_q_2_dup_69_aq & !nx2950z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_69_aq,
	datad => VCC,
	cin => nx2950z1,
	combout => inc_d_2_dup_866,
	cout => nx47012z1);

-- Location: FF_X20_Y21_N7
reg_q_2_dup_69 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_866,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_69_aq);

-- Location: LCCOMB_X20_Y21_N8
ix836_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_868 = (reg_q_3_dup_68_aq & (!nx47012z1)) # (!reg_q_3_dup_68_aq & ((nx47012z1) # (GND)))
-- nx31438z1 = CARRY((!nx47012z1) # (!reg_q_3_dup_68_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_68_aq,
	datad => VCC,
	cin => nx47012z1,
	combout => inc_d_3_dup_868,
	cout => nx31438z1);

-- Location: FF_X20_Y21_N9
reg_q_3_dup_68 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_868,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_68_aq);

-- Location: LCCOMB_X20_Y21_N10
ix838_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_870 = (reg_q_4_dup_67_aq & (nx31438z1 $ (GND))) # (!reg_q_4_dup_67_aq & (!nx31438z1 & VCC))
-- nx63343z1 = CARRY((reg_q_4_dup_67_aq & !nx31438z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_67_aq,
	datad => VCC,
	cin => nx31438z1,
	combout => inc_d_4_dup_870,
	cout => nx63343z1);

-- Location: FF_X20_Y21_N11
reg_q_4_dup_67 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_870,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_67_aq);

-- Location: LCCOMB_X20_Y21_N12
ix840_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_872 = (reg_q_5_dup_66_aq & (!nx63343z1)) # (!reg_q_5_dup_66_aq & ((nx63343z1) # (GND)))
-- nx17767z1 = CARRY((!nx63343z1) # (!reg_q_5_dup_66_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_66_aq,
	datad => VCC,
	cin => nx63343z1,
	combout => inc_d_5_dup_872,
	cout => nx17767z1);

-- Location: FF_X20_Y21_N13
reg_q_5_dup_66 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_872,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_66_aq);

-- Location: LCCOMB_X20_Y21_N14
ix842_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_874 = (reg_q_6_dup_65_aq & (nx17767z1 $ (GND))) # (!reg_q_6_dup_65_aq & (!nx17767z1 & VCC))
-- nx33341z1 = CARRY((reg_q_6_dup_65_aq & !nx17767z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_65_aq,
	datad => VCC,
	cin => nx17767z1,
	combout => inc_d_6_dup_874,
	cout => nx33341z1);

-- Location: FF_X20_Y21_N15
reg_q_6_dup_65 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_874,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_65_aq);

-- Location: LCCOMB_X20_Y21_N16
ix844_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_876 = (reg_q_7_dup_64_aq & (!nx33341z1)) # (!reg_q_7_dup_64_aq & ((nx33341z1) # (GND)))
-- nx48915z1 = CARRY((!nx33341z1) # (!reg_q_7_dup_64_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_64_aq,
	datad => VCC,
	cin => nx33341z1,
	combout => inc_d_7_dup_876,
	cout => nx48915z1);

-- Location: FF_X20_Y21_N17
reg_q_7_dup_64 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_876,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_64_aq);

-- Location: LCCOMB_X20_Y21_N18
ix846_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_878 = (reg_q_8_dup_63_aq & (nx48915z1 $ (GND))) # (!reg_q_8_dup_63_aq & (!nx48915z1 & VCC))
-- nx64489z1 = CARRY((reg_q_8_dup_63_aq & !nx48915z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_63_aq,
	datad => VCC,
	cin => nx48915z1,
	combout => inc_d_8_dup_878,
	cout => nx64489z1);

-- Location: FF_X20_Y21_N19
reg_q_8_dup_63 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_878,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_63_aq);

-- Location: LCCOMB_X20_Y21_N20
ix848_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_880 = (reg_q_9_dup_62_aq & (!nx64489z1)) # (!reg_q_9_dup_62_aq & ((nx64489z1) # (GND)))
-- nx58796z1 = CARRY((!nx64489z1) # (!reg_q_9_dup_62_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_62_aq,
	datad => VCC,
	cin => nx64489z1,
	combout => inc_d_9_dup_880,
	cout => nx58796z1);

-- Location: FF_X20_Y21_N21
reg_q_9_dup_62 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_880,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_62_aq);

-- Location: LCCOMB_X20_Y21_N22
ix849_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_882 = reg_q_10_dup_61_aq $ (!nx58796z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_dup_61_aq,
	cin => nx58796z1,
	combout => inc_d_10_dup_882);

-- Location: FF_X20_Y21_N23
reg_q_10_dup_61 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_882,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx2379z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_61_aq);

-- Location: LCCOMB_X19_Y22_N24
ix59343z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z6 = (!reg_q_2_dup_69_aq & (!reg_q_0_dup_71_aq & (!reg_q_10_dup_61_aq & !reg_q_1_dup_70_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_69_aq,
	datab => reg_q_0_dup_71_aq,
	datac => reg_q_10_dup_61_aq,
	datad => reg_q_1_dup_70_aq,
	combout => nx59343z6);

-- Location: LCCOMB_X19_Y22_N10
ix59343z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z5 = (!reg_q_9_dup_62_aq & (nx59343z6 & (!reg_q_5_dup_66_aq & !reg_q_8_dup_63_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_9_dup_62_aq,
	datab => nx59343z6,
	datac => reg_q_5_dup_66_aq,
	datad => reg_q_8_dup_63_aq,
	combout => nx59343z5);

-- Location: LCCOMB_X20_Y21_N30
u_uart_reg_RxDivisor_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxDivisor_4_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => u_uart_reg_RxDivisor_4_afeeder_combout);

-- Location: FF_X20_Y21_N31
u_uart_reg_RxDivisor_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxDivisor_4_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxDivisor_4_aq);

-- Location: LCCOMB_X19_Y22_N28
ix59343z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z3 = (reg_q_4_dup_67_aq & (reg_q_3_dup_68_aq & (reg_q_7_dup_64_aq & u_uart_reg_RxDivisor_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_67_aq,
	datab => reg_q_3_dup_68_aq,
	datac => reg_q_7_dup_64_aq,
	datad => u_uart_reg_RxDivisor_4_aq,
	combout => nx59343z3);

-- Location: LCCOMB_X19_Y22_N14
ix59343z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z4 = (!reg_q_4_dup_67_aq & (!reg_q_3_dup_68_aq & (!reg_q_7_dup_64_aq & !u_uart_reg_RxDivisor_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_67_aq,
	datab => reg_q_3_dup_68_aq,
	datac => reg_q_7_dup_64_aq,
	datad => u_uart_reg_RxDivisor_4_aq,
	combout => nx59343z4);

-- Location: LCCOMB_X19_Y22_N12
ix59343z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z2 = (nx59343z5 & ((reg_q_6_dup_65_aq & (nx59343z3)) # (!reg_q_6_dup_65_aq & ((nx59343z4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59343z5,
	datab => nx59343z3,
	datac => nx59343z4,
	datad => reg_q_6_dup_65_aq,
	combout => nx59343z2);

-- Location: LCCOMB_X19_Y21_N30
ix59343z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59343z1 = (u_uart_reg_RxFSM_0_aq & nx59343z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxFSM_0_aq,
	datac => nx59343z2,
	combout => nx59343z1);

-- Location: FF_X19_Y21_N31
u_uart_reg_TopRx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59343z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TopRx_aq);

-- Location: LCCOMB_X19_Y21_N24
ix13938z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13938z1 = (u_uart_reg_TopRx_aq & (!u_uart_reg_Rx_r_aq & u_uart_reg_RxFSM_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TopRx_aq,
	datac => u_uart_reg_Rx_r_aq,
	datad => u_uart_reg_RxFSM_4_aq,
	combout => nx13938z1);

-- Location: LCCOMB_X19_Y21_N22
u_uart_reg_RxRDYi_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_RxRDYi_afeeder_combout = nx13938z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx13938z1,
	combout => u_uart_reg_RxRDYi_afeeder_combout);

-- Location: FF_X19_Y21_N23
u_uart_reg_RxRDYi : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_RxRDYi_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxRDYi_aq);

-- Location: LCCOMB_X24_Y17_N30
ix22869z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22869z1 = ((nx7605z1) # ((!write_fifo_full & u_uart_reg_RxRDYi_aq))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_full,
	datab => reset_n_ainput_o,
	datac => u_uart_reg_RxRDYi_aq,
	datad => nx7605z1,
	combout => nx22869z1);

-- Location: FF_X24_Y17_N7
reg_q_0_dup_24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_q_0_dup_24_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx22869z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_24_aq);

-- Location: LCCOMB_X24_Y17_N0
ix7605z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7605z2 = (!reg_q_7_dup_17_aq & !reg_q_8_dup_16_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_7_dup_17_aq,
	datad => reg_q_8_dup_16_aq,
	combout => nx7605z2);

-- Location: LCCOMB_X24_Y17_N2
ix7605z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7605z1 = (!u_uart_reg_RxRDYi_aq & ((reg_q_0_dup_24_aq) # ((!nx7605z2) # (!nx22869z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_24_aq,
	datab => nx22869z2,
	datac => u_uart_reg_RxRDYi_aq,
	datad => nx7605z2,
	combout => nx7605z1);

-- Location: FF_X24_Y17_N3
write_fifo_reg_rd_en_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx7605z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_rd_en_delayed_aq);

-- Location: IOIBUF_X9_Y0_N1
pb_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => pb_a0_a_ainput_o);

-- Location: LCCOMB_X17_Y16_N24
ix37417z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37417z1 = ((write_fifo_reg_rd_en_delayed_aq & pb_a0_a_ainput_o)) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datac => pb_a0_a_ainput_o,
	datad => reset_n_ainput_o,
	combout => nx37417z1);

-- Location: FF_X17_Y16_N5
reg_q_0_dup_98 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_1037,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_98_aq);

-- Location: LCCOMB_X17_Y16_N6
ix1017_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1039 = (reg_q_1_dup_97_aq & (!nx16836z1)) # (!reg_q_1_dup_97_aq & ((nx16836z1) # (GND)))
-- nx64274z1 = CARRY((!nx16836z1) # (!reg_q_1_dup_97_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_97_aq,
	datad => VCC,
	cin => nx16836z1,
	combout => inc_d_1_dup_1039,
	cout => nx64274z1);

-- Location: FF_X17_Y16_N7
reg_q_1_dup_97 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_1039,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_97_aq);

-- Location: LCCOMB_X17_Y16_N8
ix1019_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1041 = (reg_q_2_dup_96_aq & (nx64274z1 $ (GND))) # (!reg_q_2_dup_96_aq & (!nx64274z1 & VCC))
-- nx32369z1 = CARRY((reg_q_2_dup_96_aq & !nx64274z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_96_aq,
	datad => VCC,
	cin => nx64274z1,
	combout => inc_d_2_dup_1041,
	cout => nx32369z1);

-- Location: FF_X17_Y16_N9
reg_q_2_dup_96 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1041,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_96_aq);

-- Location: LCCOMB_X17_Y16_N10
ix1021_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1043 = (reg_q_3_dup_95_aq & (!nx32369z1)) # (!reg_q_3_dup_95_aq & ((nx32369z1) # (GND)))
-- nx47943z1 = CARRY((!nx32369z1) # (!reg_q_3_dup_95_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datad => VCC,
	cin => nx32369z1,
	combout => inc_d_3_dup_1043,
	cout => nx47943z1);

-- Location: FF_X17_Y16_N11
reg_q_3_dup_95 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1043,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_95_aq);

-- Location: LCCOMB_X17_Y16_N12
ix1023_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1045 = (reg_q_4_dup_94_aq & (nx47943z1 $ (GND))) # (!reg_q_4_dup_94_aq & (!nx47943z1 & VCC))
-- nx2019z1 = CARRY((reg_q_4_dup_94_aq & !nx47943z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datad => VCC,
	cin => nx47943z1,
	combout => inc_d_4_dup_1045,
	cout => nx2019z1);

-- Location: FF_X17_Y16_N13
reg_q_4_dup_94 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1045,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_94_aq);

-- Location: LCCOMB_X17_Y16_N14
ix1025_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1047 = (reg_q_5_dup_93_aq & (!nx2019z1)) # (!reg_q_5_dup_93_aq & ((nx2019z1) # (GND)))
-- nx51981z1 = CARRY((!nx2019z1) # (!reg_q_5_dup_93_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_93_aq,
	datad => VCC,
	cin => nx2019z1,
	combout => inc_d_5_dup_1047,
	cout => nx51981z1);

-- Location: FF_X17_Y16_N15
reg_q_5_dup_93 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1047,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_93_aq);

-- Location: LCCOMB_X17_Y16_N16
ix1027_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1049 = (reg_q_6_dup_92_aq & (nx51981z1 $ (GND))) # (!reg_q_6_dup_92_aq & (!nx51981z1 & VCC))
-- nx44194z1 = CARRY((reg_q_6_dup_92_aq & !nx51981z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_92_aq,
	datad => VCC,
	cin => nx51981z1,
	combout => inc_d_6_dup_1049,
	cout => nx44194z1);

-- Location: FF_X17_Y16_N17
reg_q_6_dup_92 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1049,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_92_aq);

-- Location: LCCOMB_X17_Y16_N18
ix1028_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1051 = nx44194z1 $ (reg_q_7_dup_91_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_7_dup_91_aq,
	cin => nx44194z1,
	combout => inc_d_7_dup_1051);

-- Location: FF_X17_Y16_N19
reg_q_7_dup_91 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1051,
	sclr => nx37417z2,
	ena => nx37417z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_91_aq);

-- Location: LCCOMB_X17_Y16_N0
ix25391z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z2 = (reg_q_4_dup_94_aq & (reg_q_7_dup_91_aq & (reg_q_5_dup_93_aq & reg_q_6_dup_92_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx25391z2);

-- Location: LCCOMB_X25_Y16_N0
ix25391z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z3 = (pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pb_a0_a_ainput_o,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx25391z3);

-- Location: LCCOMB_X15_Y14_N30
ix25391z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z1 = ((nx25391z2 & (nx25391z3 & nx37417z3))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx25391z2,
	datac => nx25391z3,
	datad => nx37417z3,
	combout => nx25391z1);

-- Location: FF_X15_Y14_N21
reg_q_6_dup_84 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_1009,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_84_aq);

-- Location: LCCOMB_X15_Y14_N22
ix988_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1011 = reg_q_7_dup_83_aq $ (nx11640z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_83_aq,
	cin => nx11640z1,
	combout => inc_d_7_dup_1011);

-- Location: FF_X15_Y14_N23
reg_q_7_dup_83 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_1011,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_83_aq);

-- Location: LCCOMB_X15_Y14_N24
ix25391z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z5 = (reg_q_4_dup_86_aq & (reg_q_6_dup_84_aq & (reg_q_7_dup_83_aq & reg_q_5_dup_85_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_86_aq,
	datab => reg_q_6_dup_84_aq,
	datac => reg_q_7_dup_83_aq,
	datad => reg_q_5_dup_85_aq,
	combout => nx25391z5);

-- Location: LCCOMB_X15_Y14_N28
ix25391z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25391z4 = ((nx25391z6 & (nx25391z5 & nx25391z2))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z6,
	datab => nx25391z5,
	datac => reset_n_ainput_o,
	datad => nx25391z2,
	combout => nx25391z4);

-- Location: FF_X15_Y14_N9
reg_q_0_dup_90 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_997,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_90_aq);

-- Location: LCCOMB_X15_Y14_N10
ix977_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_999 = (reg_q_1_dup_89_aq & (!nx38998z1)) # (!reg_q_1_dup_89_aq & ((nx38998z1) # (GND)))
-- nx10964z1 = CARRY((!nx38998z1) # (!reg_q_1_dup_89_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_89_aq,
	datad => VCC,
	cin => nx38998z1,
	combout => inc_d_1_dup_999,
	cout => nx10964z1);

-- Location: FF_X15_Y14_N11
reg_q_1_dup_89 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_999,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_89_aq);

-- Location: LCCOMB_X15_Y14_N12
ix979_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1001 = (reg_q_2_dup_88_aq & (nx10964z1 $ (GND))) # (!reg_q_2_dup_88_aq & (!nx10964z1 & VCC))
-- nx42869z1 = CARRY((reg_q_2_dup_88_aq & !nx10964z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_88_aq,
	datad => VCC,
	cin => nx10964z1,
	combout => inc_d_2_dup_1001,
	cout => nx42869z1);

-- Location: FF_X15_Y14_N13
reg_q_2_dup_88 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_1001,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_88_aq);

-- Location: LCCOMB_X15_Y14_N14
ix981_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1003 = (reg_q_3_dup_87_aq & (!nx42869z1)) # (!reg_q_3_dup_87_aq & ((nx42869z1) # (GND)))
-- nx27295z1 = CARRY((!nx42869z1) # (!reg_q_3_dup_87_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_87_aq,
	datad => VCC,
	cin => nx42869z1,
	combout => inc_d_3_dup_1003,
	cout => nx27295z1);

-- Location: FF_X15_Y14_N15
reg_q_3_dup_87 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_1003,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_87_aq);

-- Location: LCCOMB_X15_Y14_N16
ix983_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1005 = (reg_q_4_dup_86_aq & (nx27295z1 $ (GND))) # (!reg_q_4_dup_86_aq & (!nx27295z1 & VCC))
-- nx53815z1 = CARRY((reg_q_4_dup_86_aq & !nx27295z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_86_aq,
	datad => VCC,
	cin => nx27295z1,
	combout => inc_d_4_dup_1005,
	cout => nx53815z1);

-- Location: FF_X15_Y14_N17
reg_q_4_dup_86 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_1005,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_86_aq);

-- Location: FF_X15_Y14_N19
reg_q_5_dup_85 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_1007,
	sclr => nx25391z4,
	ena => nx25391z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_85_aq);

-- Location: LCCOMB_X17_Y16_N28
ix55203z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55203z4 = (reg_q_3_dup_95_aq) # ((reg_q_7_dup_91_aq) # ((reg_q_5_dup_93_aq) # (reg_q_6_dup_92_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_95_aq,
	datab => reg_q_7_dup_91_aq,
	datac => reg_q_5_dup_93_aq,
	datad => reg_q_6_dup_92_aq,
	combout => nx55203z4);

-- Location: LCCOMB_X19_Y16_N0
ix55203z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55203z3 = (reg_q_4_dup_94_aq) # ((reg_q_2_dup_96_aq) # ((nx55203z4) # (reg_q_1_dup_97_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_94_aq,
	datab => reg_q_2_dup_96_aq,
	datac => nx55203z4,
	datad => reg_q_1_dup_97_aq,
	combout => nx55203z3);

-- Location: LCCOMB_X14_Y18_N10
ix16758z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z5 = (reg_q_1_dup_89_aq) # (reg_q_5_dup_85_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_1_dup_89_aq,
	datad => reg_q_5_dup_85_aq,
	combout => nx16758z5);

-- Location: LCCOMB_X15_Y14_N0
ix16758z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z6 = (reg_q_4_dup_86_aq) # ((reg_q_3_dup_87_aq) # ((reg_q_7_dup_83_aq) # (reg_q_6_dup_84_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_86_aq,
	datab => reg_q_3_dup_87_aq,
	datac => reg_q_7_dup_83_aq,
	datad => reg_q_6_dup_84_aq,
	combout => nx16758z6);

-- Location: LCCOMB_X14_Y18_N28
ix16758z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z4 = (nx25391z3 & ((reg_q_2_dup_88_aq) # ((nx16758z5) # (nx16758z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_88_aq,
	datab => nx16758z5,
	datac => nx25391z3,
	datad => nx16758z6,
	combout => nx16758z4);

-- Location: LCCOMB_X20_Y20_N28
ix55203z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55203z2 = (reset_n_ainput_o & (nx16758z7 & (nx55203z3 & nx16758z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => nx55203z3,
	datad => nx16758z4,
	combout => nx55203z2);

-- Location: LCCOMB_X20_Y20_N6
ix55203z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55203z1 = (!nx55203z2 & (((nx16758z7) # (!u_kirsch_reg_stg_counter1_0_aq)) # (!reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => u_kirsch_reg_stg_counter1_0_aq,
	datad => nx55203z2,
	combout => nx55203z1);

-- Location: FF_X20_Y20_N7
u_kirsch_reg_stg_counter1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55203z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter1_0_aq);

-- Location: LCCOMB_X20_Y20_N0
ix58194z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58194z1 = (!nx55203z2 & (((nx16758z7) # (u_kirsch_reg_stg_counter1_3_aq)) # (!reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => nx55203z2,
	combout => nx58194z1);

-- Location: FF_X20_Y20_N1
u_kirsch_reg_stg_counter1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx58194z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter1_3_aq);

-- Location: LCCOMB_X20_Y20_N4
ix57197z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57197z2 = (u_kirsch_reg_stg_counter1_0_aq & ((u_kirsch_reg_stg_counter1_2_aq & ((u_kirsch_reg_stg_counter1_3_aq) # (!u_kirsch_reg_stg_counter1_1_aq))) # (!u_kirsch_reg_stg_counter1_2_aq & ((u_kirsch_reg_stg_counter1_1_aq))))) # 
-- (!u_kirsch_reg_stg_counter1_0_aq & (((u_kirsch_reg_stg_counter1_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_0_aq,
	datab => u_kirsch_reg_stg_counter1_3_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx57197z2);

-- Location: LCCOMB_X20_Y20_N22
ix57197z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57197z1 = (!nx55203z2 & (((nx16758z7) # (nx57197z2)) # (!reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => nx57197z2,
	datad => nx55203z2,
	combout => nx57197z1);

-- Location: FF_X20_Y20_N23
u_kirsch_reg_stg_counter1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57197z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter1_2_aq);

-- Location: LCCOMB_X20_Y20_N8
ix56200z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56200z2 = (u_kirsch_reg_stg_counter1_0_aq & (((u_kirsch_reg_stg_counter1_3_aq & u_kirsch_reg_stg_counter1_2_aq)) # (!u_kirsch_reg_stg_counter1_1_aq))) # (!u_kirsch_reg_stg_counter1_0_aq & (((u_kirsch_reg_stg_counter1_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_0_aq,
	datab => u_kirsch_reg_stg_counter1_3_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx56200z2);

-- Location: LCCOMB_X20_Y20_N10
ix56200z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56200z1 = (!nx55203z2 & (((nx16758z7) # (nx56200z2)) # (!reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => nx56200z2,
	datad => nx55203z2,
	combout => nx56200z1);

-- Location: FF_X20_Y20_N11
u_kirsch_reg_stg_counter1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56200z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter1_1_aq);

-- Location: LCCOMB_X20_Y20_N24
ix16758z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z7 = (u_kirsch_reg_stg_counter1_1_aq & (u_kirsch_reg_stg_counter1_2_aq & u_kirsch_reg_stg_counter1_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_1_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_0_aq,
	combout => nx16758z7);

-- Location: LCCOMB_X20_Y20_N2
ix16758z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z3 = (reset_n_ainput_o & (!nx16758z7 & (nx55203z3 & nx16758z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z7,
	datac => nx55203z3,
	datad => nx16758z4,
	combout => nx16758z3);

-- Location: LCCOMB_X20_Y18_N8
ix15761z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15761z1 = (!nx16758z3 & ((nx4094z2) # ((u_kirsch_reg_stg_counter2_3_aq) # (!reset_n_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4094z2,
	datab => reset_n_ainput_o,
	datac => u_kirsch_reg_stg_counter2_3_aq,
	datad => nx16758z3,
	combout => nx15761z1);

-- Location: FF_X20_Y18_N9
u_kirsch_reg_stg_counter2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15761z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter2_3_aq);

-- Location: LCCOMB_X20_Y18_N4
ix17755z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17755z2 = (u_kirsch_reg_stg_counter2_1_aq & (((u_kirsch_reg_stg_counter2_3_aq & u_kirsch_reg_stg_counter2_2_aq)) # (!u_kirsch_reg_stg_counter2_0_aq))) # (!u_kirsch_reg_stg_counter2_1_aq & (((u_kirsch_reg_stg_counter2_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx17755z2);

-- Location: LCCOMB_X20_Y18_N20
ix17755z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17755z1 = (!nx16758z3 & ((nx4094z2) # ((nx17755z2) # (!reset_n_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4094z2,
	datab => reset_n_ainput_o,
	datac => nx17755z2,
	datad => nx16758z3,
	combout => nx17755z1);

-- Location: FF_X20_Y18_N21
u_kirsch_reg_stg_counter2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17755z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter2_1_aq);

-- Location: LCCOMB_X20_Y18_N14
ix18752z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18752z2 = (u_kirsch_reg_stg_counter2_3_aq & (u_kirsch_reg_stg_counter2_1_aq & (u_kirsch_reg_stg_counter2_2_aq & u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx18752z2);

-- Location: LCCOMB_X20_Y18_N16
ix18752z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18752z3 = ((!u_kirsch_reg_stg_counter2_3_aq & (u_kirsch_reg_stg_counter2_2_aq & nx16758z2))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => reset_n_ainput_o,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => nx16758z2,
	combout => nx18752z3);

-- Location: LCCOMB_X20_Y18_N2
ix18752z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18752z1 = (!nx16758z3 & ((nx18752z3) # (nx18752z2 $ (!u_kirsch_reg_stg_counter2_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx18752z2,
	datab => nx18752z3,
	datac => u_kirsch_reg_stg_counter2_0_aq,
	datad => nx16758z3,
	combout => nx18752z1);

-- Location: FF_X20_Y18_N3
u_kirsch_reg_stg_counter2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18752z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter2_0_aq);

-- Location: LCCOMB_X20_Y18_N18
ix16758z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z2 = (u_kirsch_reg_stg_counter2_0_aq & u_kirsch_reg_stg_counter2_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_stg_counter2_0_aq,
	datad => u_kirsch_reg_stg_counter2_1_aq,
	combout => nx16758z2);

-- Location: LCCOMB_X20_Y18_N6
ix16758z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16758z1 = (!nx16758z3 & (((nx16758z2) # (u_kirsch_reg_stg_counter2_2_aq)) # (!reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx16758z2,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => nx16758z3,
	combout => nx16758z1);

-- Location: FF_X20_Y18_N7
u_kirsch_reg_stg_counter2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx16758z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_stg_counter2_2_aq);

-- Location: LCCOMB_X20_Y18_N0
ix4094z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4094z2 = (u_kirsch_reg_stg_counter2_2_aq & (u_kirsch_reg_stg_counter2_1_aq & (!u_kirsch_reg_stg_counter2_3_aq & u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_2_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_3_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx4094z2);

-- Location: LCCOMB_X20_Y19_N8
ix64328z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64328z4 = (reset_n_ainput_o & ((nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx4094z2,
	datac => nx16758z7,
	datad => u_kirsch_reg_stg_counter1_3_aq,
	combout => nx64328z4);

-- Location: FF_X15_Y18_N31
u_kirsch_reg_o_row_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_5_dup_85_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_5_aq);

-- Location: FF_X15_Y18_N17
u_kirsch_reg_o_row_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_4_dup_86_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_4_aq);

-- Location: FF_X15_Y18_N3
u_kirsch_reg_o_row_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_6_dup_84_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_6_aq);

-- Location: FF_X15_Y18_N29
u_kirsch_reg_o_row_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_7_dup_83_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_7_aq);

-- Location: LCCOMB_X15_Y18_N2
ix51544z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z8 = (u_kirsch_reg_o_row_5_aq & ((u_kirsch_reg_o_row_4_aq & ((!u_kirsch_reg_o_row_7_aq))) # (!u_kirsch_reg_o_row_4_aq & (!u_kirsch_reg_o_row_6_aq)))) # (!u_kirsch_reg_o_row_5_aq & ((u_kirsch_reg_o_row_4_aq $ (!u_kirsch_reg_o_row_7_aq)) # 
-- (!u_kirsch_reg_o_row_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_5_aq,
	datab => u_kirsch_reg_o_row_4_aq,
	datac => u_kirsch_reg_o_row_6_aq,
	datad => u_kirsch_reg_o_row_7_aq,
	combout => nx51544z8);

-- Location: LCCOMB_X13_Y18_N6
ix795_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_814 = reg_q_0_dup_60_aq $ (VCC)
-- nx55390z2 = CARRY(reg_q_0_dup_60_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_60_aq,
	datad => VCC,
	combout => inc_d_0_dup_814,
	cout => nx55390z2);

-- Location: LCCOMB_X14_Y18_N12
u_seg7_u_dual_seg7_reg_prev_reset_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	combout => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout);

-- Location: FF_X14_Y18_N13
u_seg7_u_dual_seg7_reg_prev_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_reset_aq);

-- Location: LCCOMB_X14_Y18_N0
ix29573z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29573z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_n_ainput_o,
	datad => u_seg7_u_dual_seg7_reg_prev_reset_aq,
	combout => nx29573z1);

-- Location: FF_X13_Y18_N7
reg_q_0_dup_60 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_814,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_60_aq);

-- Location: LCCOMB_X13_Y18_N8
ix797_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_815 = (reg_q_1_dup_59_aq & (!nx55390z2)) # (!reg_q_1_dup_59_aq & ((nx55390z2) # (GND)))
-- nx60108z2 = CARRY((!nx55390z2) # (!reg_q_1_dup_59_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_59_aq,
	datad => VCC,
	cin => nx55390z2,
	combout => inc_d_1_dup_815,
	cout => nx60108z2);

-- Location: FF_X13_Y18_N9
reg_q_1_dup_59 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_815,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_59_aq);

-- Location: LCCOMB_X13_Y18_N10
ix799_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_816 = (reg_q_2_dup_58_aq & (nx60108z2 $ (GND))) # (!reg_q_2_dup_58_aq & (!nx60108z2 & VCC))
-- nx46048z2 = CARRY((reg_q_2_dup_58_aq & !nx60108z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_58_aq,
	datad => VCC,
	cin => nx60108z2,
	combout => inc_d_2_dup_816,
	cout => nx46048z2);

-- Location: FF_X13_Y18_N11
reg_q_2_dup_58 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_816,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_58_aq);

-- Location: LCCOMB_X13_Y18_N12
ix801_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_817 = (reg_q_3_dup_57_aq & (!nx46048z2)) # (!reg_q_3_dup_57_aq & ((nx46048z2) # (GND)))
-- nx35062z2 = CARRY((!nx46048z2) # (!reg_q_3_dup_57_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_57_aq,
	datad => VCC,
	cin => nx46048z2,
	combout => inc_d_3_dup_817,
	cout => nx35062z2);

-- Location: FF_X13_Y18_N13
reg_q_3_dup_57 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_817,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_57_aq);

-- Location: LCCOMB_X13_Y18_N14
ix803_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_818 = (reg_q_4_dup_56_aq & (nx35062z2 $ (GND))) # (!reg_q_4_dup_56_aq & (!nx35062z2 & VCC))
-- nx50636z2 = CARRY((reg_q_4_dup_56_aq & !nx35062z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_56_aq,
	datad => VCC,
	cin => nx35062z2,
	combout => inc_d_4_dup_818,
	cout => nx50636z2);

-- Location: FF_X13_Y18_N15
reg_q_4_dup_56 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_818,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_56_aq);

-- Location: LCCOMB_X13_Y18_N16
ix805_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_819 = (reg_q_5_dup_55_aq & (!nx50636z2)) # (!reg_q_5_dup_55_aq & ((nx50636z2) # (GND)))
-- nx674z2 = CARRY((!nx50636z2) # (!reg_q_5_dup_55_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_55_aq,
	datad => VCC,
	cin => nx50636z2,
	combout => inc_d_5_dup_819,
	cout => nx674z2);

-- Location: FF_X13_Y18_N17
reg_q_5_dup_55 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_819,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_55_aq);

-- Location: LCCOMB_X13_Y18_N18
ix807_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_820 = (reg_q_6_dup_54_aq & (nx674z2 $ (GND))) # (!reg_q_6_dup_54_aq & (!nx674z2 & VCC))
-- nx49288z2 = CARRY((reg_q_6_dup_54_aq & !nx674z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_54_aq,
	datad => VCC,
	cin => nx674z2,
	combout => inc_d_6_dup_820,
	cout => nx49288z2);

-- Location: FF_X13_Y18_N19
reg_q_6_dup_54 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_820,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_54_aq);

-- Location: LCCOMB_X13_Y18_N20
ix809_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_821 = (reg_q_7_dup_53_aq & (!nx49288z2)) # (!reg_q_7_dup_53_aq & ((nx49288z2) # (GND)))
-- nx55707z2 = CARRY((!nx49288z2) # (!reg_q_7_dup_53_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_53_aq,
	datad => VCC,
	cin => nx49288z2,
	combout => inc_d_7_dup_821,
	cout => nx55707z2);

-- Location: FF_X13_Y18_N21
reg_q_7_dup_53 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_821,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_53_aq);

-- Location: LCCOMB_X13_Y18_N22
ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_822 = (reg_q_8_dup_52_aq & (nx55707z2 $ (GND))) # (!reg_q_8_dup_52_aq & (!nx55707z2 & VCC))
-- nx44217z2 = CARRY((reg_q_8_dup_52_aq & !nx55707z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_8_dup_52_aq,
	datad => VCC,
	cin => nx55707z2,
	combout => inc_d_8_dup_822,
	cout => nx44217z2);

-- Location: FF_X13_Y18_N23
reg_q_8_dup_52 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_822,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_52_aq);

-- Location: LCCOMB_X13_Y18_N24
ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_823 = (reg_q_9_dup_51_aq & (!nx44217z2)) # (!reg_q_9_dup_51_aq & ((nx44217z2) # (GND)))
-- nx10586z1 = CARRY((!nx44217z2) # (!reg_q_9_dup_51_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_51_aq,
	datad => VCC,
	cin => nx44217z2,
	combout => inc_d_9_dup_823,
	cout => nx10586z1);

-- Location: FF_X13_Y18_N25
reg_q_9_dup_51 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_823,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_51_aq);

-- Location: LCCOMB_X13_Y18_N26
ix61_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_824 = reg_q_10_dup_50_aq $ (!nx10586z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_dup_50_aq,
	cin => nx10586z1,
	combout => inc_d_10_dup_824);

-- Location: FF_X13_Y18_N27
reg_q_10_dup_50 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_824,
	sclr => nx29573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_50_aq);

-- Location: FF_X16_Y18_N23
u_kirsch_reg_o_row_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_0_dup_90_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_0_aq);

-- Location: FF_X16_Y18_N5
u_kirsch_reg_o_row_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_3_dup_87_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_3_aq);

-- Location: FF_X16_Y18_N1
u_kirsch_reg_o_row_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_2_dup_88_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_2_aq);

-- Location: FF_X16_Y18_N7
u_kirsch_reg_o_row_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_q_1_dup_89_aq,
	sload => VCC,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_row_1_aq);

-- Location: LCCOMB_X16_Y18_N0
ix51544z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z19 = (u_kirsch_reg_o_row_3_aq & ((u_kirsch_reg_o_row_2_aq $ (!u_kirsch_reg_o_row_1_aq)) # (!u_kirsch_reg_o_row_0_aq))) # (!u_kirsch_reg_o_row_3_aq & ((u_kirsch_reg_o_row_1_aq) # (u_kirsch_reg_o_row_0_aq $ (!u_kirsch_reg_o_row_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_0_aq,
	datab => u_kirsch_reg_o_row_3_aq,
	datac => u_kirsch_reg_o_row_2_aq,
	datad => u_kirsch_reg_o_row_1_aq,
	combout => nx51544z19);

-- Location: LCCOMB_X16_Y18_N4
ix51544z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z18 = (u_kirsch_reg_o_row_0_aq & (u_kirsch_reg_o_row_3_aq $ (u_kirsch_reg_o_row_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_0_aq,
	datac => u_kirsch_reg_o_row_3_aq,
	datad => u_kirsch_reg_o_row_1_aq,
	combout => nx51544z18);

-- Location: LCCOMB_X16_Y18_N22
ix51544z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z20 = (u_kirsch_reg_o_row_1_aq & (((u_kirsch_reg_o_row_3_aq) # (!u_kirsch_reg_o_row_0_aq)))) # (!u_kirsch_reg_o_row_1_aq & ((u_kirsch_reg_o_row_2_aq & ((u_kirsch_reg_o_row_3_aq))) # (!u_kirsch_reg_o_row_2_aq & (!u_kirsch_reg_o_row_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_1_aq,
	datab => u_kirsch_reg_o_row_2_aq,
	datac => u_kirsch_reg_o_row_0_aq,
	datad => u_kirsch_reg_o_row_3_aq,
	combout => nx51544z20);

-- Location: LCCOMB_X16_Y18_N24
ix51544z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z17 = (nx51544z18) # ((nx51544z19 & (!u_kirsch_reg_o_row_2_aq)) # (!nx51544z19 & ((!nx51544z20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z19,
	datab => u_kirsch_reg_o_row_2_aq,
	datac => nx51544z18,
	datad => nx51544z20,
	combout => nx51544z17);

-- Location: LCCOMB_X13_Y18_N28
ix18625z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18625z1 = (reg_q_10_dup_50_aq & (nx51544z8)) # (!reg_q_10_dup_50_aq & ((nx51544z17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx51544z8,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z17,
	combout => nx18625z1);

-- Location: LCCOMB_X13_Y18_N30
u_seg7_u_dual_seg7_reg_prev_char0_en_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10_dup_50_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_10_dup_50_aq,
	combout => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout);

-- Location: FF_X13_Y18_N31
u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_char0_en_aq);

-- Location: LCCOMB_X13_Y18_N2
ix10356z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10_dup_50_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_seg7_u_dual_seg7_reg_prev_char0_en_aq,
	datac => reg_q_10_dup_50_aq,
	combout => u_seg7_u_dual_seg7_load_reg);

-- Location: FF_X13_Y18_N29
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18625z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq);

-- Location: LCCOMB_X15_Y18_N28
ix51544z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z7 = (u_kirsch_reg_o_row_5_aq) # ((u_kirsch_reg_o_row_7_aq $ (u_kirsch_reg_o_row_6_aq)) # (!u_kirsch_reg_o_row_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_5_aq,
	datab => u_kirsch_reg_o_row_4_aq,
	datac => u_kirsch_reg_o_row_7_aq,
	datad => u_kirsch_reg_o_row_6_aq,
	combout => nx51544z7);

-- Location: LCCOMB_X15_Y18_N30
ix51544z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z6 = ((nx51544z7 & ((u_kirsch_reg_o_row_7_aq) # (!u_kirsch_reg_o_row_5_aq)))) # (!nx51544z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => nx51544z7,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => nx51544z8,
	combout => nx51544z6);

-- Location: LCCOMB_X16_Y18_N10
ix51544z7119 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z25 = (u_kirsch_reg_o_row_2_aq & (!u_kirsch_reg_o_row_3_aq & ((u_kirsch_reg_o_row_0_aq) # (!u_kirsch_reg_o_row_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_1_aq,
	datab => u_kirsch_reg_o_row_2_aq,
	datac => u_kirsch_reg_o_row_0_aq,
	datad => u_kirsch_reg_o_row_3_aq,
	combout => nx51544z25);

-- Location: LCCOMB_X16_Y18_N12
ix51544z7118 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z24 = (u_kirsch_reg_o_row_1_aq & (((u_kirsch_reg_o_row_3_aq)))) # (!u_kirsch_reg_o_row_1_aq & ((nx51544z25) # ((nx51544z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z25,
	datab => u_kirsch_reg_o_row_3_aq,
	datac => nx51544z19,
	datad => u_kirsch_reg_o_row_1_aq,
	combout => nx51544z24);

-- Location: LCCOMB_X13_Y18_N4
ix28027z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28027z1 = (reg_q_10_dup_50_aq & (nx51544z6)) # (!reg_q_10_dup_50_aq & (((nx51544z24) # (!nx51544z17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z6,
	datab => nx51544z24,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z17,
	combout => nx28027z1);

-- Location: FF_X13_Y18_N5
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx28027z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq);

-- Location: LCCOMB_X16_Y18_N26
ix51544z7117 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z23 = u_kirsch_reg_o_row_2_aq $ (u_kirsch_reg_o_row_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_o_row_2_aq,
	datad => u_kirsch_reg_o_row_3_aq,
	combout => nx51544z23);

-- Location: LCCOMB_X16_Y18_N18
ix51544z7116 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z22 = (nx51544z23) # ((nx51544z17 & ((u_kirsch_reg_o_row_0_aq) # (!u_kirsch_reg_o_row_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_0_aq,
	datab => nx51544z17,
	datac => nx51544z23,
	datad => u_kirsch_reg_o_row_1_aq,
	combout => nx51544z22);

-- Location: LCCOMB_X16_Y18_N16
ix51544z7115 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z21 = (!u_kirsch_reg_o_row_1_aq & (u_kirsch_reg_o_row_2_aq & nx51544z22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_1_aq,
	datab => u_kirsch_reg_o_row_2_aq,
	datad => nx51544z22,
	combout => nx51544z21);

-- Location: LCCOMB_X16_Y18_N6
ix51544z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z16 = (u_kirsch_reg_o_row_1_aq & (u_kirsch_reg_o_row_0_aq & (!u_kirsch_reg_o_row_2_aq))) # (!u_kirsch_reg_o_row_1_aq & ((u_kirsch_reg_o_row_3_aq) # (u_kirsch_reg_o_row_0_aq $ (!u_kirsch_reg_o_row_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_0_aq,
	datab => u_kirsch_reg_o_row_2_aq,
	datac => u_kirsch_reg_o_row_1_aq,
	datad => u_kirsch_reg_o_row_3_aq,
	combout => nx51544z16);

-- Location: LCCOMB_X16_Y18_N28
ix51544z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z15 = (!u_kirsch_reg_o_row_0_aq & (!u_kirsch_reg_o_row_3_aq & ((u_kirsch_reg_o_row_1_aq) # (!u_kirsch_reg_o_row_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_1_aq,
	datab => u_kirsch_reg_o_row_2_aq,
	datac => u_kirsch_reg_o_row_0_aq,
	datad => u_kirsch_reg_o_row_3_aq,
	combout => nx51544z15);

-- Location: LCCOMB_X16_Y18_N8
ix51544z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z14 = (nx51544z16) # ((nx51544z15) # ((!u_kirsch_reg_o_row_0_aq & !nx51544z17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z16,
	datab => nx51544z15,
	datac => u_kirsch_reg_o_row_0_aq,
	datad => nx51544z17,
	combout => nx51544z14);

-- Location: LCCOMB_X16_Y18_N30
ix51544z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z13 = (u_kirsch_reg_o_row_1_aq & ((nx51544z14) # ((u_kirsch_reg_o_row_3_aq & nx51544z17)))) # (!u_kirsch_reg_o_row_1_aq & (u_kirsch_reg_o_row_3_aq & ((nx51544z17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_1_aq,
	datab => u_kirsch_reg_o_row_3_aq,
	datac => nx51544z14,
	datad => nx51544z17,
	combout => nx51544z13);

-- Location: LCCOMB_X16_Y18_N2
ix51544z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z12 = (nx51544z21) # ((nx51544z13) # ((u_kirsch_reg_o_row_0_aq & nx51544z24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_0_aq,
	datab => nx51544z21,
	datac => nx51544z13,
	datad => nx51544z24,
	combout => nx51544z12);

-- Location: LCCOMB_X15_Y18_N16
ix51544z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z5 = (u_kirsch_reg_o_row_7_aq & ((u_kirsch_reg_o_row_5_aq $ (!u_kirsch_reg_o_row_6_aq)) # (!u_kirsch_reg_o_row_4_aq))) # (!u_kirsch_reg_o_row_7_aq & ((u_kirsch_reg_o_row_5_aq) # (u_kirsch_reg_o_row_4_aq $ (!u_kirsch_reg_o_row_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_5_aq,
	datab => u_kirsch_reg_o_row_7_aq,
	datac => u_kirsch_reg_o_row_4_aq,
	datad => u_kirsch_reg_o_row_6_aq,
	combout => nx51544z5);

-- Location: LCCOMB_X15_Y18_N22
ix51544z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z4 = (u_kirsch_reg_o_row_7_aq & ((u_kirsch_reg_o_row_6_aq) # ((u_kirsch_reg_o_row_5_aq & u_kirsch_reg_o_row_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx51544z4);

-- Location: LCCOMB_X15_Y18_N24
ix51544z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z3 = (nx51544z6 & (!nx51544z4 & ((u_kirsch_reg_o_row_4_aq) # (!nx51544z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z5,
	datab => u_kirsch_reg_o_row_4_aq,
	datac => nx51544z6,
	datad => nx51544z4,
	combout => nx51544z3);

-- Location: LCCOMB_X15_Y18_N6
ix51544z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z9 = (u_kirsch_reg_o_row_5_aq & ((u_kirsch_reg_o_row_6_aq $ (u_kirsch_reg_o_row_4_aq)))) # (!u_kirsch_reg_o_row_5_aq & (u_kirsch_reg_o_row_6_aq & ((u_kirsch_reg_o_row_7_aq) # (u_kirsch_reg_o_row_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx51544z9);

-- Location: LCCOMB_X15_Y18_N0
ix51544z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z10 = (u_kirsch_reg_o_row_7_aq & (!u_kirsch_reg_o_row_5_aq & ((!u_kirsch_reg_o_row_4_aq) # (!u_kirsch_reg_o_row_6_aq)))) # (!u_kirsch_reg_o_row_7_aq & (u_kirsch_reg_o_row_6_aq $ (((u_kirsch_reg_o_row_5_aq) # (!u_kirsch_reg_o_row_4_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx51544z10);

-- Location: LCCOMB_X15_Y18_N26
ix51544z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z2 = (nx51544z3) # ((u_kirsch_reg_o_row_5_aq & ((nx51544z9) # (nx51544z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_5_aq,
	datab => nx51544z3,
	datac => nx51544z9,
	datad => nx51544z10,
	combout => nx51544z2);

-- Location: LCCOMB_X15_Y18_N20
ix51544z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z11 = (u_kirsch_reg_o_row_7_aq & ((u_kirsch_reg_o_row_4_aq) # (!u_kirsch_reg_o_row_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_7_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx51544z11);

-- Location: LCCOMB_X15_Y18_N14
ix51544z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z1 = (reg_q_10_dup_50_aq & (((nx51544z2) # (nx51544z11)))) # (!reg_q_10_dup_50_aq & (nx51544z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z12,
	datab => nx51544z2,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z11,
	combout => nx51544z1);

-- Location: FF_X15_Y18_N15
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51544z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq);

-- Location: LCCOMB_X27_Y21_N6
ix884_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_915 = reg_q_0_dup_82_aq $ (VCC)
-- nx39407z1 = CARRY(reg_q_0_dup_82_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_82_aq,
	datad => VCC,
	combout => inc_d_0_dup_915,
	cout => nx39407z1);

-- Location: FF_X27_Y21_N7
reg_q_0_dup_82 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_915,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_82_aq);

-- Location: LCCOMB_X27_Y21_N8
ix886_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_917 = (reg_q_1_dup_81_aq & (!nx39407z1)) # (!reg_q_1_dup_81_aq & ((nx39407z1) # (GND)))
-- nx10555z1 = CARRY((!nx39407z1) # (!reg_q_1_dup_81_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_81_aq,
	datad => VCC,
	cin => nx39407z1,
	combout => inc_d_1_dup_917,
	cout => nx10555z1);

-- Location: FF_X27_Y21_N9
reg_q_1_dup_81 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_917,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_81_aq);

-- Location: LCCOMB_X27_Y21_N10
ix888_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_919 = (reg_q_2_dup_80_aq & (nx10555z1 $ (GND))) # (!reg_q_2_dup_80_aq & (!nx10555z1 & VCC))
-- nx42460z1 = CARRY((reg_q_2_dup_80_aq & !nx10555z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_80_aq,
	datad => VCC,
	cin => nx10555z1,
	combout => inc_d_2_dup_919,
	cout => nx42460z1);

-- Location: FF_X27_Y21_N11
reg_q_2_dup_80 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_919,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_80_aq);

-- Location: LCCOMB_X27_Y21_N12
ix890_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_921 = (reg_q_3_dup_79_aq & (!nx42460z1)) # (!reg_q_3_dup_79_aq & ((nx42460z1) # (GND)))
-- nx26886z1 = CARRY((!nx42460z1) # (!reg_q_3_dup_79_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_79_aq,
	datad => VCC,
	cin => nx42460z1,
	combout => inc_d_3_dup_921,
	cout => nx26886z1);

-- Location: FF_X27_Y21_N13
reg_q_3_dup_79 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_921,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_79_aq);

-- Location: LCCOMB_X27_Y21_N14
ix892_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_923 = (reg_q_4_dup_78_aq & (nx26886z1 $ (GND))) # (!reg_q_4_dup_78_aq & (!nx26886z1 & VCC))
-- nx11312z1 = CARRY((reg_q_4_dup_78_aq & !nx26886z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_78_aq,
	datad => VCC,
	cin => nx26886z1,
	combout => inc_d_4_dup_923,
	cout => nx11312z1);

-- Location: FF_X27_Y21_N15
reg_q_4_dup_78 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_923,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_78_aq);

-- Location: LCCOMB_X27_Y21_N16
ix894_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_925 = (reg_q_5_dup_77_aq & (!nx11312z1)) # (!reg_q_5_dup_77_aq & ((nx11312z1) # (GND)))
-- nx4262z1 = CARRY((!nx11312z1) # (!reg_q_5_dup_77_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_77_aq,
	datad => VCC,
	cin => nx11312z1,
	combout => inc_d_5_dup_925,
	cout => nx4262z1);

-- Location: FF_X27_Y21_N17
reg_q_5_dup_77 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_925,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_77_aq);

-- Location: LCCOMB_X27_Y21_N18
ix896_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_927 = (reg_q_6_dup_76_aq & (nx4262z1 $ (GND))) # (!reg_q_6_dup_76_aq & (!nx4262z1 & VCC))
-- nx19836z1 = CARRY((reg_q_6_dup_76_aq & !nx4262z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_76_aq,
	datad => VCC,
	cin => nx4262z1,
	combout => inc_d_6_dup_927,
	cout => nx19836z1);

-- Location: FF_X27_Y21_N19
reg_q_6_dup_76 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_927,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_76_aq);

-- Location: LCCOMB_X27_Y21_N20
ix898_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_929 = (reg_q_7_dup_75_aq & (!nx19836z1)) # (!reg_q_7_dup_75_aq & ((nx19836z1) # (GND)))
-- nx31640z1 = CARRY((!nx19836z1) # (!reg_q_7_dup_75_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_75_aq,
	datad => VCC,
	cin => nx19836z1,
	combout => inc_d_7_dup_929,
	cout => nx31640z1);

-- Location: FF_X27_Y21_N21
reg_q_7_dup_75 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_929,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_75_aq);

-- Location: LCCOMB_X27_Y21_N22
ix900_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_931 = (reg_q_8_dup_74_aq & (nx31640z1 $ (GND))) # (!reg_q_8_dup_74_aq & (!nx31640z1 & VCC))
-- nx47250z1 = CARRY((reg_q_8_dup_74_aq & !nx31640z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_8_dup_74_aq,
	datad => VCC,
	cin => nx31640z1,
	combout => inc_d_8_dup_931,
	cout => nx47250z1);

-- Location: FF_X27_Y21_N23
reg_q_8_dup_74 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_931,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_74_aq);

-- Location: LCCOMB_X27_Y21_N24
ix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_933 = (reg_q_9_dup_73_aq & (!nx47250z1)) # (!reg_q_9_dup_73_aq & ((nx47250z1) # (GND)))
-- nx16066z1 = CARRY((!nx47250z1) # (!reg_q_9_dup_73_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_73_aq,
	datad => VCC,
	cin => nx47250z1,
	combout => inc_d_9_dup_933,
	cout => nx16066z1);

-- Location: FF_X27_Y21_N25
reg_q_9_dup_73 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_933,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_73_aq);

-- Location: LCCOMB_X27_Y21_N26
ix902_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_935 = (reg_q_10_dup_72_aq & (nx16066z1 $ (GND))) # (!reg_q_10_dup_72_aq & (!nx16066z1 & VCC))
-- nx8279z1 = CARRY((reg_q_10_dup_72_aq & !nx16066z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_dup_72_aq,
	datad => VCC,
	cin => nx16066z1,
	combout => inc_d_10_dup_935,
	cout => nx8279z1);

-- Location: FF_X27_Y21_N27
reg_q_10_dup_72 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_935,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_72_aq);

-- Location: LCCOMB_X27_Y21_N2
ix57349z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z3 = (!reg_q_10_dup_72_aq & !reg_q_9_dup_73_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_10_dup_72_aq,
	datad => reg_q_9_dup_73_aq,
	combout => nx57349z3);

-- Location: LCCOMB_X27_Y21_N28
ix903_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_11_a = nx8279z1 $ (reg_q_11_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_11_aq,
	cin => nx8279z1,
	combout => inc_d_11_a);

-- Location: FF_X27_Y21_N29
reg_q_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_11_a,
	clrn => ALT_INV_reg_uart_reset_aq,
	sclr => nx57349z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_11_aq);

-- Location: LCCOMB_X27_Y21_N0
ix57349z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z2 = (!reg_q_3_dup_79_aq & (!reg_q_11_aq & (!reg_q_1_dup_81_aq & !reg_q_2_dup_80_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_79_aq,
	datab => reg_q_11_aq,
	datac => reg_q_1_dup_81_aq,
	datad => reg_q_2_dup_80_aq,
	combout => nx57349z2);

-- Location: LCCOMB_X19_Y22_N26
ix57349z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z6 = (!reg_q_7_dup_75_aq & (!u_uart_reg_RxDivisor_4_aq & (!reg_q_0_dup_82_aq & !reg_q_4_dup_78_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_75_aq,
	datab => u_uart_reg_RxDivisor_4_aq,
	datac => reg_q_0_dup_82_aq,
	datad => reg_q_4_dup_78_aq,
	combout => nx57349z6);

-- Location: LCCOMB_X19_Y22_N0
ix57349z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z5 = (reg_q_7_dup_75_aq & (u_uart_reg_RxDivisor_4_aq & (reg_q_0_dup_82_aq & reg_q_4_dup_78_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_75_aq,
	datab => u_uart_reg_RxDivisor_4_aq,
	datac => reg_q_0_dup_82_aq,
	datad => reg_q_4_dup_78_aq,
	combout => nx57349z5);

-- Location: LCCOMB_X27_Y21_N4
ix57349z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z4 = (reg_q_8_dup_74_aq & (reg_q_5_dup_77_aq & ((nx57349z5)))) # (!reg_q_8_dup_74_aq & (!reg_q_5_dup_77_aq & (nx57349z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_8_dup_74_aq,
	datab => reg_q_5_dup_77_aq,
	datac => nx57349z6,
	datad => nx57349z5,
	combout => nx57349z4);

-- Location: LCCOMB_X27_Y21_N30
ix57349z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57349z1 = (nx57349z3 & (nx57349z2 & (nx57349z4 & !reg_q_6_dup_76_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57349z3,
	datab => nx57349z2,
	datac => nx57349z4,
	datad => reg_q_6_dup_76_aq,
	combout => nx57349z1);

-- Location: FF_X27_Y21_N31
u_uart_reg_TopTx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57349z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TopTx_aq);

-- Location: LCCOMB_X25_Y21_N22
ix61431z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61431z2 = (!u_uart_reg_TxFSM_1_aq & u_uart_reg_TopTx_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx61431z2);

-- Location: LCCOMB_X25_Y21_N24
ix59437z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59437z1 = ((!u_uart_reg_TxFSM_1_aq & u_uart_reg_TopTx_aq)) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_reg_TxFSM_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx59437z1);

-- Location: LCCOMB_X25_Y21_N26
ix59437z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59437z2 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_0_aq $ (u_uart_reg_TxFSM_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx59437z2);

-- Location: FF_X25_Y21_N25
u_uart_modgen_counter_TxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59437z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X25_Y21_N28
ix60434z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60434z1 = (u_uart_reg_TxFSM_1_aq & (u_uart_modgen_counter_TxBitCnt_reg_q_0_aq $ ((!u_uart_modgen_counter_TxBitCnt_reg_q_1_aq)))) # (!u_uart_reg_TxFSM_1_aq & (!u_uart_reg_TopTx_aq & (u_uart_modgen_counter_TxBitCnt_reg_q_0_aq $ 
-- (!u_uart_modgen_counter_TxBitCnt_reg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => u_uart_reg_TopTx_aq,
	combout => nx60434z1);

-- Location: FF_X25_Y21_N29
u_uart_modgen_counter_TxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60434z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X25_Y21_N8
ix61431z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61431z1 = (!nx61431z2 & (u_uart_modgen_counter_TxBitCnt_reg_q_2_aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_1_aq & !u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx61431z2,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx61431z1);

-- Location: FF_X25_Y21_N9
u_uart_modgen_counter_TxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61431z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X25_Y21_N2
ix62428z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62428z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_1_aq) # (u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx62428z2);

-- Location: LCCOMB_X25_Y21_N12
ix62428z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62428z1 = (nx61431z2) # (u_uart_modgen_counter_TxBitCnt_reg_q_3_aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_2_aq & !nx62428z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx61431z2,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datad => nx62428z2,
	combout => nx62428z1);

-- Location: FF_X25_Y21_N13
u_uart_modgen_counter_TxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62428z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx59437z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X25_Y21_N6
ix8356z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8356z3 = (!u_uart_modgen_counter_TxBitCnt_reg_q_3_aq & (!u_uart_modgen_counter_TxBitCnt_reg_q_1_aq & (!u_uart_modgen_counter_TxBitCnt_reg_q_2_aq & u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datab => u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datac => u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datad => u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	combout => nx8356z3);

-- Location: LCCOMB_X25_Y21_N16
ix8356z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8356z2 = (u_uart_reg_TxFSM_1_aq & (((!u_uart_reg_TxFSM_0_aq & !nx8356z3)) # (!u_uart_reg_TopTx_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datac => nx8356z3,
	datad => u_uart_reg_TopTx_aq,
	combout => nx8356z2);

-- Location: LCCOMB_X25_Y21_N20
ix8356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8356z1 = (nx8356z2) # ((u_uart_reg_TxFSM_0_aq & (nx7359z2 $ (!u_uart_reg_TxFSM_1_aq))) # (!u_uart_reg_TxFSM_0_aq & (!nx7359z2 & u_uart_reg_TxFSM_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => nx7359z2,
	datac => u_uart_reg_TxFSM_1_aq,
	datad => nx8356z2,
	combout => nx8356z1);

-- Location: FF_X25_Y21_N21
u_uart_reg_TxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8356z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxFSM_1_aq);

-- Location: LCCOMB_X20_Y19_N2
ix4094z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4094z1 = (nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx4094z2,
	datac => nx16758z7,
	datad => u_kirsch_reg_stg_counter1_3_aq,
	combout => nx4094z1);

-- Location: LCCOMB_X23_Y18_N24
u_kirsch_reg_o_valid_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_o_valid_afeeder_combout = nx4094z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx4094z1,
	combout => u_kirsch_reg_o_valid_afeeder_combout);

-- Location: FF_X23_Y18_N25
u_kirsch_reg_o_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_o_valid_afeeder_combout,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_valid_aq);

-- Location: LCCOMB_X25_Y14_N0
ix11963z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_valid = (pb_a0_a_ainput_o & ((u_kirsch_reg_o_valid_aq))) # (!pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datac => pb_a0_a_ainput_o,
	datad => u_kirsch_reg_o_valid_aq,
	combout => rb_i_valid);

-- Location: LCCOMB_X25_Y21_N30
ix13251z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13251z1 = ((u_uart_reg_TxFSM_1_aq) # (u_uart_reg_TxFSM_0_aq)) # (!reg_tx_valid_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_tx_valid_aq,
	datab => u_uart_reg_TxFSM_1_aq,
	datad => u_uart_reg_TxFSM_0_aq,
	combout => nx13251z1);

-- Location: FF_X25_Y21_N31
u_uart_reg_TxBusy : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13251z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxBusy_aq);

-- Location: LCCOMB_X24_Y20_N6
reg_tx_busy_delayed_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_tx_busy_delayed_afeeder_combout = u_uart_reg_TxBusy_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_TxBusy_aq,
	combout => reg_tx_busy_delayed_afeeder_combout);

-- Location: FF_X24_Y20_N7
reg_tx_busy_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_tx_busy_delayed_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_tx_busy_delayed_aq);

-- Location: LCCOMB_X15_Y12_N30
reg_q_0_dup_49_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_q_0_dup_49_a_wirecell_combout = !reg_q_0_dup_49_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_0_dup_49_aq,
	combout => reg_q_0_dup_49_a_wirecell_combout);

-- Location: LCCOMB_X18_Y12_N8
ix9182z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9182z1 = (!reg_wait_for_tx_valid_delayed_aq & (reg_rb_rd_en_aq & (!rb_empty & !rb_i_valid)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_wait_for_tx_valid_delayed_aq,
	datab => reg_rb_rd_en_aq,
	datac => rb_empty,
	datad => rb_i_valid,
	combout => nx9182z1);

-- Location: LCCOMB_X15_Y12_N0
ix5_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58387z1 = CARRY(reg_q_0_dup_49_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_49_aq,
	datad => VCC,
	cout => nx58387z1);

-- Location: LCCOMB_X15_Y12_N2
ix758_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_1_dup_114_dup_779 = (nx9182z1 & ((reg_q_1_dup_48_aq & (nx58387z1 & VCC)) # (!reg_q_1_dup_48_aq & (!nx58387z1)))) # (!nx9182z1 & ((reg_q_1_dup_48_aq & (!nx58387z1)) # (!reg_q_1_dup_48_aq & ((nx58387z1) # (GND)))))
-- nx24756z1 = CARRY((nx9182z1 & (!reg_q_1_dup_48_aq & !nx58387z1)) # (!nx9182z1 & ((!nx58387z1) # (!reg_q_1_dup_48_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_1_dup_48_aq,
	datad => VCC,
	cin => nx58387z1,
	combout => incdec_mux_1_dup_114_dup_779,
	cout => nx24756z1);

-- Location: FF_X15_Y12_N3
reg_q_1_dup_48 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_1_dup_114_dup_779,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_48_aq);

-- Location: LCCOMB_X15_Y12_N4
ix760_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_2_dup_115_dup_781 = ((nx9182z1 $ (reg_q_2_dup_47_aq $ (!nx24756z1)))) # (GND)
-- nx9182z2 = CARRY((nx9182z1 & ((reg_q_2_dup_47_aq) # (!nx24756z1))) # (!nx9182z1 & (reg_q_2_dup_47_aq & !nx24756z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_2_dup_47_aq,
	datad => VCC,
	cin => nx24756z1,
	combout => incdec_mux_2_dup_115_dup_781,
	cout => nx9182z2);

-- Location: FF_X15_Y12_N5
reg_q_2_dup_47 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_2_dup_115_dup_781,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_47_aq);

-- Location: LCCOMB_X15_Y12_N6
ix762_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_3_dup_116_dup_783 = (nx9182z1 & ((reg_q_3_dup_46_aq & (nx9182z2 & VCC)) # (!reg_q_3_dup_46_aq & (!nx9182z2)))) # (!nx9182z1 & ((reg_q_3_dup_46_aq & (!nx9182z2)) # (!reg_q_3_dup_46_aq & ((nx9182z2) # (GND)))))
-- nx59144z1 = CARRY((nx9182z1 & (!reg_q_3_dup_46_aq & !nx9182z2)) # (!nx9182z1 & ((!nx9182z2) # (!reg_q_3_dup_46_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_3_dup_46_aq,
	datad => VCC,
	cin => nx9182z2,
	combout => incdec_mux_3_dup_116_dup_783,
	cout => nx59144z1);

-- Location: FF_X15_Y12_N7
reg_q_3_dup_46 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_3_dup_116_dup_783,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_46_aq);

-- Location: LCCOMB_X15_Y12_N8
ix764_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_4_dup_117_dup_785 = ((nx9182z1 $ (reg_q_4_dup_45_aq $ (!nx59144z1)))) # (GND)
-- nx21966z1 = CARRY((nx9182z1 & ((reg_q_4_dup_45_aq) # (!nx59144z1))) # (!nx9182z1 & (reg_q_4_dup_45_aq & !nx59144z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_4_dup_45_aq,
	datad => VCC,
	cin => nx59144z1,
	combout => incdec_mux_4_dup_117_dup_785,
	cout => nx21966z1);

-- Location: FF_X15_Y12_N9
reg_q_4_dup_45 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_4_dup_117_dup_785,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_45_aq);

-- Location: LCCOMB_X15_Y12_N10
ix766_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_5_dup_118_dup_787 = (nx9182z1 & ((reg_q_5_dup_44_aq & (nx21966z1 & VCC)) # (!reg_q_5_dup_44_aq & (!nx21966z1)))) # (!nx9182z1 & ((reg_q_5_dup_44_aq & (!nx21966z1)) # (!reg_q_5_dup_44_aq & ((nx21966z1) # (GND)))))
-- nx37540z1 = CARRY((nx9182z1 & (!reg_q_5_dup_44_aq & !nx21966z1)) # (!nx9182z1 & ((!nx21966z1) # (!reg_q_5_dup_44_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_5_dup_44_aq,
	datad => VCC,
	cin => nx21966z1,
	combout => incdec_mux_5_dup_118_dup_787,
	cout => nx37540z1);

-- Location: FF_X15_Y12_N11
reg_q_5_dup_44 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_5_dup_118_dup_787,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_44_aq);

-- Location: LCCOMB_X15_Y12_N12
ix768_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_6_dup_119_dup_789 = ((reg_q_6_dup_43_aq $ (nx9182z1 $ (!nx37540z1)))) # (GND)
-- nx5635z1 = CARRY((reg_q_6_dup_43_aq & ((nx9182z1) # (!nx37540z1))) # (!reg_q_6_dup_43_aq & (nx9182z1 & !nx37540z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_43_aq,
	datab => nx9182z1,
	datad => VCC,
	cin => nx37540z1,
	combout => incdec_mux_6_dup_119_dup_789,
	cout => nx5635z1);

-- Location: FF_X15_Y12_N13
reg_q_6_dup_43 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_6_dup_119_dup_789,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_43_aq);

-- Location: LCCOMB_X15_Y12_N14
ix770_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_7_dup_120_dup_791 = (nx9182z1 & ((reg_q_7_dup_42_aq & (nx5635z1 & VCC)) # (!reg_q_7_dup_42_aq & (!nx5635z1)))) # (!nx9182z1 & ((reg_q_7_dup_42_aq & (!nx5635z1)) # (!reg_q_7_dup_42_aq & ((nx5635z1) # (GND)))))
-- nx52114z1 = CARRY((nx9182z1 & (!reg_q_7_dup_42_aq & !nx5635z1)) # (!nx9182z1 & ((!nx5635z1) # (!reg_q_7_dup_42_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datab => reg_q_7_dup_42_aq,
	datad => VCC,
	cin => nx5635z1,
	combout => incdec_mux_7_dup_120_dup_791,
	cout => nx52114z1);

-- Location: FF_X15_Y12_N15
reg_q_7_dup_42 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_7_dup_120_dup_791,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_42_aq);

-- Location: LCCOMB_X15_Y12_N16
ix771_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- incdec_mux_8_dup_121_dup_793 = nx9182z1 $ (nx52114z1 $ (!reg_q_8_dup_41_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx9182z1,
	datad => reg_q_8_dup_41_aq,
	cin => nx52114z1,
	combout => incdec_mux_8_dup_121_dup_793);

-- Location: FF_X15_Y12_N17
reg_q_8_dup_41 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => incdec_mux_8_dup_121_dup_793,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_41_aq);

-- Location: LCCOMB_X15_Y12_N18
ix15004z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z3 = (!reg_q_6_dup_43_aq & (!reg_q_5_dup_44_aq & (!reg_q_4_dup_45_aq & !reg_q_3_dup_46_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_43_aq,
	datab => reg_q_5_dup_44_aq,
	datac => reg_q_4_dup_45_aq,
	datad => reg_q_3_dup_46_aq,
	combout => nx15004z3);

-- Location: LCCOMB_X15_Y12_N20
ix15004z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z2 = (!reg_q_1_dup_48_aq & (!reg_q_2_dup_47_aq & nx15004z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_48_aq,
	datac => reg_q_2_dup_47_aq,
	datad => nx15004z3,
	combout => nx15004z2);

-- Location: LCCOMB_X15_Y12_N26
ix383z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx383z2 = (reg_q_0_dup_49_aq) # (((reg_q_7_dup_42_aq) # (!nx15004z2)) # (!reg_q_8_dup_41_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_49_aq,
	datab => reg_q_8_dup_41_aq,
	datac => reg_q_7_dup_42_aq,
	datad => nx15004z2,
	combout => nx383z2);

-- Location: LCCOMB_X15_Y12_N28
ix383z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx383z1 = ((nx9182z1) # ((nx383z2 & rb_i_valid))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx383z2,
	datab => reset_n_ainput_o,
	datac => nx9182z1,
	datad => rb_i_valid,
	combout => nx383z1);

-- Location: FF_X15_Y12_N31
reg_q_0_dup_49 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_q_0_dup_49_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx383z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_49_aq);

-- Location: LCCOMB_X15_Y12_N24
ix15004z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_empty = (!reg_q_0_dup_49_aq & (!reg_q_8_dup_41_aq & (!reg_q_7_dup_42_aq & nx15004z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_49_aq,
	datab => reg_q_8_dup_41_aq,
	datac => reg_q_7_dup_42_aq,
	datad => nx15004z2,
	combout => rb_empty);

-- Location: LCCOMB_X24_Y20_N2
ix15004z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15004z1 = (!reg_tx_busy_delayed_aq & (!rb_empty & (!reg_rb_rd_en_aq & !u_uart_reg_TxBusy_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_tx_busy_delayed_aq,
	datab => rb_empty,
	datac => reg_rb_rd_en_aq,
	datad => u_uart_reg_TxBusy_aq,
	combout => nx15004z1);

-- Location: FF_X24_Y20_N3
reg_rb_rd_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15004z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_rb_rd_en_aq);

-- Location: LCCOMB_X24_Y20_N10
ix64502z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64502z2 = (reg_tx_valid_aq & reg_wait_for_tx_valid_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_tx_valid_aq,
	datac => reg_wait_for_tx_valid_aq,
	combout => nx64502z2);

-- Location: LCCOMB_X24_Y20_N30
ix64502z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64502z1 = (nx64502z2) # ((!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_wait_for_tx_valid_delayed_aq,
	datab => rb_i_valid,
	datac => reg_rb_rd_en_aq,
	datad => nx64502z2,
	combout => nx64502z1);

-- Location: FF_X24_Y20_N31
reg_wait_for_tx_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64502z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_wait_for_tx_valid_aq);

-- Location: FF_X18_Y16_N9
reg_wait_for_tx_valid_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => reg_wait_for_tx_valid_aq,
	sclr => ALT_INV_reset_n_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_wait_for_tx_valid_delayed_aq);

-- Location: LCCOMB_X24_Y20_N12
ix11963z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_rd_en_true = (!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_wait_for_tx_valid_delayed_aq,
	datab => rb_i_valid,
	datac => reg_rb_rd_en_aq,
	combout => rb_rd_en_true);

-- Location: FF_X24_Y20_N13
reg_rb_rd_en_delayed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => rb_rd_en_true,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_rb_rd_en_delayed_aq);

-- Location: LCCOMB_X24_Y20_N8
reg_rb_rd_en_delayed_a_wirecell : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_rb_rd_en_delayed_a_wirecell_combout = !reg_rb_rd_en_delayed_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_rb_rd_en_delayed_aq,
	combout => reg_rb_rd_en_delayed_a_wirecell_combout);

-- Location: FF_X24_Y20_N9
reg_tx_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => reg_rb_rd_en_delayed_a_wirecell_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_tx_valid_aq);

-- Location: LCCOMB_X25_Y21_N4
ix7359z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7359z2 = (!u_uart_reg_TxFSM_1_aq & ((u_uart_reg_TxFSM_0_aq & (!u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_0_aq & ((reg_tx_valid_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TopTx_aq,
	datac => u_uart_reg_TxFSM_1_aq,
	datad => reg_tx_valid_aq,
	combout => nx7359z2);

-- Location: LCCOMB_X25_Y21_N10
ix7359z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7359z1 = u_uart_reg_TxFSM_0_aq $ (((!nx7359z2 & !nx8356z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx7359z2,
	datac => u_uart_reg_TxFSM_0_aq,
	datad => nx8356z2,
	combout => nx7359z1);

-- Location: FF_X25_Y21_N11
u_uart_reg_TxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx7359z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_TxFSM_0_aq);

-- Location: LCCOMB_X20_Y18_N24
ix29221z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z10 = (!u_kirsch_reg_stg_counter2_3_aq & ((u_kirsch_reg_stg_counter2_1_aq & (!u_kirsch_reg_stg_counter2_2_aq & u_kirsch_reg_stg_counter2_0_aq)) # (!u_kirsch_reg_stg_counter2_1_aq & (u_kirsch_reg_stg_counter2_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx29221z10);

-- Location: LCCOMB_X20_Y20_N20
ix29221z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z9 = (!u_kirsch_reg_stg_counter1_3_aq & ((u_kirsch_reg_stg_counter1_0_aq) # ((!u_kirsch_reg_stg_counter1_1_aq) # (!u_kirsch_reg_stg_counter1_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_0_aq,
	datab => u_kirsch_reg_stg_counter1_3_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx29221z9);

-- Location: LCCOMB_X20_Y20_N30
ix29221z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z8 = (reset_n_ainput_o & ((nx29221z10) # ((nx57197z2 & nx29221z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29221z10,
	datab => reset_n_ainput_o,
	datac => nx57197z2,
	datad => nx29221z9,
	combout => nx29221z8);

-- Location: LCCOMB_X16_Y17_N4
ix45738z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx45738z1 = (nx29221z8 & (((!u_kirsch_reg_max1_bit_counter_1_aq & u_kirsch_reg_max1_bit_counter_0_aq)))) # (!nx29221z8 & (reset_n_ainput_o & (u_kirsch_reg_max1_bit_counter_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx29221z8,
	datac => u_kirsch_reg_max1_bit_counter_1_aq,
	datad => u_kirsch_reg_max1_bit_counter_0_aq,
	combout => nx45738z1);

-- Location: FF_X16_Y17_N5
u_kirsch_reg_max1_bit_counter_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx45738z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_max1_bit_counter_1_aq);

-- Location: LCCOMB_X16_Y17_N10
ix46735z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46735z1 = (u_kirsch_reg_max1_bit_counter_0_aq & (reset_n_ainput_o & ((!nx29221z8)))) # (!u_kirsch_reg_max1_bit_counter_0_aq & (((!u_kirsch_reg_max1_bit_counter_1_aq & nx29221z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => u_kirsch_reg_max1_bit_counter_1_aq,
	datac => u_kirsch_reg_max1_bit_counter_0_aq,
	datad => nx29221z8,
	combout => nx46735z1);

-- Location: FF_X16_Y17_N11
u_kirsch_reg_max1_bit_counter_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46735z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_max1_bit_counter_0_aq);

-- Location: LCCOMB_X16_Y17_N12
ix58492z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58492z2 = (u_kirsch_reg_max1_bit_counter_0_aq) # ((!nx29221z8) # (!u_kirsch_reg_max1_bit_counter_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max1_bit_counter_0_aq,
	datab => u_kirsch_reg_max1_bit_counter_1_aq,
	datad => nx29221z8,
	combout => nx58492z2);

-- Location: LCCOMB_X20_Y18_N30
ix26412z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z4 = (!u_kirsch_reg_stg_counter2_2_aq & (!u_kirsch_reg_stg_counter2_3_aq & !u_kirsch_reg_stg_counter2_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_2_aq,
	datac => u_kirsch_reg_stg_counter2_3_aq,
	datad => u_kirsch_reg_stg_counter2_1_aq,
	combout => nx26412z4);

-- Location: LCCOMB_X22_Y21_N12
u_uart_reg_Rx_Reg_7_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_7_a0_combout = !u_uart_reg_Rx_r_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_r_aq,
	combout => u_uart_reg_Rx_Reg_7_a0_combout);

-- Location: LCCOMB_X19_Y21_N16
ix44871z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44871z1 = (u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uart_reg_TopRx_aq,
	datad => u_uart_reg_RxFSM_3_aq,
	combout => nx44871z1);

-- Location: FF_X22_Y21_N13
u_uart_reg_Rx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_7_a0_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_7_aq);

-- Location: LCCOMB_X22_Y21_N14
u_uart_reg_Rx_Reg_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_6_afeeder_combout = u_uart_reg_Rx_Reg_7_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_7_aq,
	combout => u_uart_reg_Rx_Reg_6_afeeder_combout);

-- Location: FF_X22_Y21_N15
u_uart_reg_Rx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_6_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_6_aq);

-- Location: FF_X22_Y21_N19
u_uart_reg_Rx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_6_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_5_aq);

-- Location: LCCOMB_X22_Y21_N2
u_uart_reg_Rx_Reg_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_4_afeeder_combout = u_uart_reg_Rx_Reg_5_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_5_aq,
	combout => u_uart_reg_Rx_Reg_4_afeeder_combout);

-- Location: FF_X22_Y21_N3
u_uart_reg_Rx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_4_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_4_aq);

-- Location: LCCOMB_X22_Y21_N30
u_uart_reg_Rx_Reg_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Rx_Reg_3_afeeder_combout = u_uart_reg_Rx_Reg_4_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_4_aq,
	combout => u_uart_reg_Rx_Reg_3_afeeder_combout);

-- Location: FF_X22_Y21_N31
u_uart_reg_Rx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Rx_Reg_3_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_3_aq);

-- Location: FF_X22_Y21_N27
u_uart_reg_Rx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_2_aq);

-- Location: FF_X22_Y21_N23
u_uart_reg_Rx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_1_aq);

-- Location: FF_X22_Y21_N11
u_uart_reg_Rx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_1_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx44871z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Rx_Reg_0_aq);

-- Location: LCCOMB_X22_Y21_N16
u_uart_reg_Dout_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_0_afeeder_combout = u_uart_reg_Rx_Reg_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_0_aq,
	combout => u_uart_reg_Dout_0_afeeder_combout);

-- Location: FF_X22_Y21_N17
u_uart_reg_Dout_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_0_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_0_aq);

-- Location: LCCOMB_X24_Y19_N0
ix619_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_638 = reg_q_0_dup_15_aq $ (VCC)
-- nx35880z1 = CARRY(reg_q_0_dup_15_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_15_aq,
	datad => VCC,
	combout => inc_d_0_dup_638,
	cout => nx35880z1);

-- Location: LCCOMB_X24_Y19_N22
ix58143z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58143z1 = (nx7605z1) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx7605z1,
	datac => reset_n_ainput_o,
	combout => nx58143z1);

-- Location: FF_X24_Y19_N1
reg_q_0_dup_15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_638,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_15_aq);

-- Location: LCCOMB_X24_Y20_N14
ix584_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_602 = reg_q_0_dup_7_aq $ (VCC)
-- nx38358z1 = CARRY(reg_q_0_dup_7_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_7_aq,
	datad => VCC,
	combout => inc_d_0_dup_602,
	cout => nx38358z1);

-- Location: LCCOMB_X24_Y20_N4
ix58151z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58151z1 = (u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datac => u_uart_reg_RxRDYi_aq,
	combout => nx58151z1);

-- Location: FF_X24_Y20_N15
reg_q_0_dup_7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_602,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_7_aq);

-- Location: LCCOMB_X24_Y19_N24
ix49438z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(0) = (u_uart_reg_RxRDYi_aq & ((reg_q_0_dup_7_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_0_dup_15_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_15_aq,
	datac => u_uart_reg_RxRDYi_aq,
	datad => reg_q_0_dup_7_aq,
	combout => write_fifo_pointer(0));

-- Location: LCCOMB_X24_Y19_N2
ix621_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_640 = (reg_q_1_dup_14_aq & (!nx35880z1)) # (!reg_q_1_dup_14_aq & ((nx35880z1) # (GND)))
-- nx51454z1 = CARRY((!nx35880z1) # (!reg_q_1_dup_14_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_14_aq,
	datad => VCC,
	cin => nx35880z1,
	combout => inc_d_1_dup_640,
	cout => nx51454z1);

-- Location: FF_X24_Y19_N3
reg_q_1_dup_14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_640,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_14_aq);

-- Location: LCCOMB_X24_Y20_N16
ix586_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_604 = (reg_q_1_dup_6_aq & (!nx38358z1)) # (!reg_q_1_dup_6_aq & ((nx38358z1) # (GND)))
-- nx53932z1 = CARRY((!nx38358z1) # (!reg_q_1_dup_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_6_aq,
	datad => VCC,
	cin => nx38358z1,
	combout => inc_d_1_dup_604,
	cout => nx53932z1);

-- Location: FF_X24_Y20_N17
reg_q_1_dup_6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_604,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_6_aq);

-- Location: LCCOMB_X24_Y19_N18
ix49438z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(1) = (u_uart_reg_RxRDYi_aq & ((reg_q_1_dup_6_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_1_dup_14_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_14_aq,
	datac => u_uart_reg_RxRDYi_aq,
	datad => reg_q_1_dup_6_aq,
	combout => write_fifo_pointer(1));

-- Location: LCCOMB_X24_Y19_N4
ix623_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_642 = (reg_q_2_dup_13_aq & (nx51454z1 $ (GND))) # (!reg_q_2_dup_13_aq & (!nx51454z1 & VCC))
-- nx1492z1 = CARRY((reg_q_2_dup_13_aq & !nx51454z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_13_aq,
	datad => VCC,
	cin => nx51454z1,
	combout => inc_d_2_dup_642,
	cout => nx1492z1);

-- Location: FF_X24_Y19_N5
reg_q_2_dup_13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_642,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_13_aq);

-- Location: LCCOMB_X24_Y20_N18
ix588_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_606 = (reg_q_2_dup_5_aq & (nx53932z1 $ (GND))) # (!reg_q_2_dup_5_aq & (!nx53932z1 & VCC))
-- nx43509z1 = CARRY((reg_q_2_dup_5_aq & !nx53932z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_5_aq,
	datad => VCC,
	cin => nx53932z1,
	combout => inc_d_2_dup_606,
	cout => nx43509z1);

-- Location: FF_X24_Y20_N19
reg_q_2_dup_5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_606,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_5_aq);

-- Location: LCCOMB_X24_Y19_N20
ix49438z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(2) = (u_uart_reg_RxRDYi_aq & ((reg_q_2_dup_5_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_2_dup_13_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datac => reg_q_2_dup_13_aq,
	datad => reg_q_2_dup_5_aq,
	combout => write_fifo_pointer(2));

-- Location: LCCOMB_X24_Y19_N6
ix625_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_644 = (reg_q_3_dup_12_aq & (!nx1492z1)) # (!reg_q_3_dup_12_aq & ((nx1492z1) # (GND)))
-- nx17066z1 = CARRY((!nx1492z1) # (!reg_q_3_dup_12_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_12_aq,
	datad => VCC,
	cin => nx1492z1,
	combout => inc_d_3_dup_644,
	cout => nx17066z1);

-- Location: FF_X24_Y19_N7
reg_q_3_dup_12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_644,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_12_aq);

-- Location: LCCOMB_X24_Y20_N20
ix590_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_608 = (reg_q_3_dup_4_aq & (!nx43509z1)) # (!reg_q_3_dup_4_aq & ((nx43509z1) # (GND)))
-- nx27935z1 = CARRY((!nx43509z1) # (!reg_q_3_dup_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_4_aq,
	datad => VCC,
	cin => nx43509z1,
	combout => inc_d_3_dup_608,
	cout => nx27935z1);

-- Location: FF_X24_Y20_N21
reg_q_3_dup_4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_608,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_4_aq);

-- Location: LCCOMB_X24_Y20_N0
ix49438z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(3) = (u_uart_reg_RxRDYi_aq & ((reg_q_3_dup_4_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_3_dup_12_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_12_aq,
	datac => u_uart_reg_RxRDYi_aq,
	datad => reg_q_3_dup_4_aq,
	combout => write_fifo_pointer(3));

-- Location: LCCOMB_X24_Y19_N8
ix627_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_646 = (reg_q_4_dup_11_aq & (nx17066z1 $ (GND))) # (!reg_q_4_dup_11_aq & (!nx17066z1 & VCC))
-- nx32896z1 = CARRY((reg_q_4_dup_11_aq & !nx17066z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_11_aq,
	datad => VCC,
	cin => nx17066z1,
	combout => inc_d_4_dup_646,
	cout => nx32896z1);

-- Location: FF_X24_Y19_N9
reg_q_4_dup_11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_646,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_11_aq);

-- Location: LCCOMB_X24_Y20_N22
ix592_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_610 = (reg_q_4_dup_3_aq & (nx27935z1 $ (GND))) # (!reg_q_4_dup_3_aq & (!nx27935z1 & VCC))
-- nx12361z1 = CARRY((reg_q_4_dup_3_aq & !nx27935z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_3_aq,
	datad => VCC,
	cin => nx27935z1,
	combout => inc_d_4_dup_610,
	cout => nx12361z1);

-- Location: FF_X24_Y20_N23
reg_q_4_dup_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_610,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_3_aq);

-- Location: LCCOMB_X24_Y19_N30
ix49438z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(4) = (u_uart_reg_RxRDYi_aq & ((reg_q_4_dup_3_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_4_dup_11_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datac => reg_q_4_dup_11_aq,
	datad => reg_q_4_dup_3_aq,
	combout => write_fifo_pointer(4));

-- Location: LCCOMB_X24_Y20_N24
ix594_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_612 = (reg_q_5_dup_2_aq & (!nx12361z1)) # (!reg_q_5_dup_2_aq & ((nx12361z1) # (GND)))
-- nx62323z1 = CARRY((!nx12361z1) # (!reg_q_5_dup_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_2_aq,
	datad => VCC,
	cin => nx12361z1,
	combout => inc_d_5_dup_612,
	cout => nx62323z1);

-- Location: FF_X24_Y20_N25
reg_q_5_dup_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_612,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_2_aq);

-- Location: LCCOMB_X24_Y19_N10
ix629_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_648 = (reg_q_5_dup_10_aq & (!nx32896z1)) # (!reg_q_5_dup_10_aq & ((nx32896z1) # (GND)))
-- nx64801z1 = CARRY((!nx32896z1) # (!reg_q_5_dup_10_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_10_aq,
	datad => VCC,
	cin => nx32896z1,
	combout => inc_d_5_dup_648,
	cout => nx64801z1);

-- Location: FF_X24_Y19_N11
reg_q_5_dup_10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_648,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_10_aq);

-- Location: LCCOMB_X24_Y19_N16
ix49438z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(5) = (u_uart_reg_RxRDYi_aq & (reg_q_5_dup_2_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_5_dup_10_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datac => reg_q_5_dup_2_aq,
	datad => reg_q_5_dup_10_aq,
	combout => write_fifo_pointer(5));

-- Location: LCCOMB_X24_Y19_N12
ix631_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_650 = (reg_q_6_dup_9_aq & (nx64801z1 $ (GND))) # (!reg_q_6_dup_9_aq & (!nx64801z1 & VCC))
-- nx57014z1 = CARRY((reg_q_6_dup_9_aq & !nx64801z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_9_aq,
	datad => VCC,
	cin => nx64801z1,
	combout => inc_d_6_dup_650,
	cout => nx57014z1);

-- Location: FF_X24_Y19_N13
reg_q_6_dup_9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_650,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_9_aq);

-- Location: LCCOMB_X24_Y20_N26
ix596_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_614 = (reg_q_6_dup_1_aq & (nx62323z1 $ (GND))) # (!reg_q_6_dup_1_aq & (!nx62323z1 & VCC))
-- nx11000z1 = CARRY((reg_q_6_dup_1_aq & !nx62323z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_1_aq,
	datad => VCC,
	cin => nx62323z1,
	combout => inc_d_6_dup_614,
	cout => nx11000z1);

-- Location: FF_X24_Y20_N27
reg_q_6_dup_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_614,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_1_aq);

-- Location: LCCOMB_X24_Y19_N26
ix49438z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(6) = (u_uart_reg_RxRDYi_aq & ((reg_q_6_dup_1_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_6_dup_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_9_aq,
	datac => u_uart_reg_RxRDYi_aq,
	datad => reg_q_6_dup_1_aq,
	combout => write_fifo_pointer(6));

-- Location: LCCOMB_X24_Y19_N14
ix632_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_652 = reg_q_7_dup_8_aq $ (nx57014z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_8_aq,
	cin => nx57014z1,
	combout => inc_d_7_dup_652);

-- Location: FF_X24_Y19_N15
reg_q_7_dup_8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_652,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58143z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_8_aq);

-- Location: LCCOMB_X24_Y20_N28
ix597_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_616 = nx11000z1 $ (reg_q_7_dup_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_7_dup_0_aq,
	cin => nx11000z1,
	combout => inc_d_7_dup_616);

-- Location: FF_X24_Y20_N29
reg_q_7_dup_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_616,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx58151z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_0_aq);

-- Location: LCCOMB_X24_Y19_N28
ix49438z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- write_fifo_pointer(7) = (u_uart_reg_RxRDYi_aq & ((reg_q_7_dup_0_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_7_dup_8_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datac => reg_q_7_dup_8_aq,
	datad => reg_q_7_dup_0_aq,
	combout => write_fifo_pointer(7));

-- Location: FF_X22_Y21_N21
u_uart_reg_Dout_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_1_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_1_aq);

-- Location: FF_X22_Y21_N1
u_uart_reg_Dout_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_2_aq);

-- Location: FF_X22_Y21_N5
u_uart_reg_Dout_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_3_aq);

-- Location: LCCOMB_X22_Y21_N8
u_uart_reg_Dout_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_4_afeeder_combout = u_uart_reg_Rx_Reg_4_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_4_aq,
	combout => u_uart_reg_Dout_4_afeeder_combout);

-- Location: FF_X22_Y21_N9
u_uart_reg_Dout_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_4_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_4_aq);

-- Location: LCCOMB_X22_Y21_N24
u_uart_reg_Dout_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_5_afeeder_combout = u_uart_reg_Rx_Reg_5_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_5_aq,
	combout => u_uart_reg_Dout_5_afeeder_combout);

-- Location: FF_X22_Y21_N25
u_uart_reg_Dout_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_5_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_5_aq);

-- Location: FF_X22_Y21_N7
u_uart_reg_Dout_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_uart_reg_Rx_Reg_6_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => VCC,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_6_aq);

-- Location: LCCOMB_X22_Y21_N28
u_uart_reg_Dout_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_reg_Dout_7_afeeder_combout = u_uart_reg_Rx_Reg_7_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_uart_reg_Rx_Reg_7_aq,
	combout => u_uart_reg_Dout_7_afeeder_combout);

-- Location: FF_X22_Y21_N29
u_uart_reg_Dout_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_uart_reg_Dout_7_afeeder_combout,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx13938z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Dout_7_aq);

-- Location: M9K_X26_Y19_N0
write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:write_fifo_mem_mem|altsyncram:ix64056z29481|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => u_uart_reg_RxRDYi_aq,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X14_Y18_N24
ix53163z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53163z4 = (reg_q_2_dup_88_aq) # ((reg_q_1_dup_89_aq) # (reg_q_5_dup_85_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_88_aq,
	datac => reg_q_1_dup_89_aq,
	datad => reg_q_5_dup_85_aq,
	combout => nx53163z4);

-- Location: LCCOMB_X14_Y18_N18
ix53163z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53163z3 = (reset_n_ainput_o & (nx25391z3 & ((nx53163z4) # (nx16758z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx53163z4,
	datac => nx25391z3,
	datad => nx16758z6,
	combout => nx53163z3);

-- Location: FF_X24_Y16_N19
u_kirsch_reg_e3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_4_aq);

-- Location: FF_X24_Y14_N27
write_fifo_reg_q_saved_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_4_aq);

-- Location: LCCOMB_X25_Y14_N22
ix59319z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(4) = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4)))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datac => write_fifo_reg_q_saved_4_aq,
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(4),
	combout => k_i_pixel(4));

-- Location: LCCOMB_X24_Y14_N30
ix43186z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(4) = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel(4)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_4_aq)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_e3_4_aq,
	datab => pb_a0_a_ainput_o,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => k_i_pixel(4),
	combout => u_kirsch_f3_9n22ss1(4));

-- Location: LCCOMB_X14_Y18_N30
ix41042z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z6 = (reg_q_2_dup_88_aq) # ((reg_q_5_dup_85_aq) # ((reg_q_1_dup_89_aq) # (nx16758z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_88_aq,
	datab => reg_q_5_dup_85_aq,
	datac => reg_q_1_dup_89_aq,
	datad => nx16758z6,
	combout => nx41042z6);

-- Location: LCCOMB_X20_Y18_N26
ix41042z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z10 = (!u_kirsch_reg_stg_counter2_2_aq & (u_kirsch_reg_stg_counter2_1_aq & (!u_kirsch_reg_stg_counter2_3_aq & !u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_2_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_3_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx41042z10);

-- Location: LCCOMB_X20_Y20_N26
ix41042z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z9 = (u_kirsch_reg_stg_counter1_1_aq & !u_kirsch_reg_stg_counter1_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_1_aq,
	datad => u_kirsch_reg_stg_counter1_0_aq,
	combout => nx41042z9);

-- Location: LCCOMB_X20_Y16_N8
ix41042z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z8 = (!nx41042z10 & ((u_kirsch_reg_stg_counter1_2_aq) # ((u_kirsch_reg_stg_counter1_3_aq) # (!nx41042z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_2_aq,
	datab => nx41042z10,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => nx41042z9,
	combout => nx41042z8);

-- Location: LCCOMB_X19_Y17_N26
ix41042z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z11 = (nx26412z4) # ((!u_kirsch_reg_stg_counter1_2_aq & (!u_kirsch_reg_stg_counter1_3_aq & !u_kirsch_reg_stg_counter1_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_2_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx41042z11);

-- Location: LCCOMB_X20_Y16_N10
ix41042z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z7 = (nx25391z3 & (((!nx55203z3)))) # (!nx25391z3 & (!nx41042z8 & ((!nx41042z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx41042z8,
	datac => nx55203z3,
	datad => nx41042z11,
	combout => nx41042z7);

-- Location: LCCOMB_X20_Y16_N12
ix41042z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z5 = (reset_n_ainput_o & (nx41042z6 & nx41042z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_n_ainput_o,
	datac => nx41042z6,
	datad => nx41042z7,
	combout => nx41042z5);

-- Location: FF_X24_Y14_N31
u_kirsch_reg_g2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(4),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_4_aq);

-- Location: FF_X24_Y14_N25
u_kirsch_reg_g3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_4_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_4_aq);

-- Location: LCCOMB_X22_Y18_N30
ix26412z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z6 = (!u_kirsch_reg_stg_counter1_2_aq & (!u_kirsch_reg_stg_counter1_3_aq & !u_kirsch_reg_stg_counter1_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_2_aq,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx26412z6);

-- Location: LCCOMB_X24_Y16_N18
ix58953z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58953z2 = (nx26412z4 & (((u_kirsch_reg_e3_4_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_4_aq))) # (!nx26412z6 & (u_kirsch_reg_g3_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g3_4_aq,
	datac => u_kirsch_reg_e3_4_aq,
	datad => nx26412z6,
	combout => nx58953z2);

-- Location: LCCOMB_X17_Y16_N26
ix63596z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63596z4 = (write_fifo_reg_rd_en_delayed_aq & (nx25391z2 & (pb_a0_a_ainput_o & nx37417z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => nx25391z2,
	datac => pb_a0_a_ainput_o,
	datad => nx37417z3,
	combout => nx63596z4);

-- Location: LCCOMB_X15_Y14_N2
ix63596z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63596z3 = (reg_q_7_dup_83_aq & reg_q_6_dup_84_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_q_7_dup_83_aq,
	datad => reg_q_6_dup_84_aq,
	combout => nx63596z3);

-- Location: LCCOMB_X15_Y14_N4
ix63596z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63596z2 = (nx63596z3 & (reg_q_4_dup_86_aq & (nx25391z6 & reg_q_5_dup_85_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63596z3,
	datab => reg_q_4_dup_86_aq,
	datac => nx25391z6,
	datad => reg_q_5_dup_85_aq,
	combout => nx63596z2);

-- Location: LCCOMB_X19_Y18_N18
ix62599z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62599z1 = (nx63596z4 & (u_kirsch_reg_row_index_0_aq & (!u_kirsch_reg_row_index_1_aq & !nx63596z2))) # (!nx63596z4 & (((u_kirsch_reg_row_index_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63596z4,
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_reg_row_index_1_aq,
	datad => nx63596z2,
	combout => nx62599z1);

-- Location: FF_X19_Y18_N19
u_kirsch_reg_row_index_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62599z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_row_index_1_aq);

-- Location: LCCOMB_X19_Y18_N24
ix63596z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63596z1 = (nx63596z4 & (!u_kirsch_reg_row_index_1_aq & (!u_kirsch_reg_row_index_0_aq & !nx63596z2))) # (!nx63596z4 & (((u_kirsch_reg_row_index_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63596z4,
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => nx63596z2,
	combout => nx63596z1);

-- Location: FF_X19_Y18_N25
u_kirsch_reg_row_index_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63596z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_row_index_0_aq);

-- Location: LCCOMB_X25_Y16_N22
ix41042z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z4 = (pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq & (!u_kirsch_reg_row_index_0_aq & !u_kirsch_reg_row_index_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx41042z4);

-- Location: FF_X24_Y15_N1
write_fifo_reg_q_saved_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_0_aq);

-- Location: LCCOMB_X24_Y15_N0
ix4443z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(0) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	datac => write_fifo_reg_q_saved_0_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(0));

-- Location: FF_X22_Y16_N31
write_fifo_reg_q_saved_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_1_aq);

-- Location: LCCOMB_X22_Y16_N30
ix4443z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(1) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	datac => write_fifo_reg_q_saved_1_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(1));

-- Location: FF_X24_Y16_N25
write_fifo_reg_q_saved_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_2_aq);

-- Location: LCCOMB_X24_Y16_N24
ix4443z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(2) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	datac => write_fifo_reg_q_saved_2_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(2));

-- Location: FF_X24_Y16_N13
write_fifo_reg_q_saved_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_3_aq);

-- Location: LCCOMB_X24_Y16_N12
ix59319z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(3) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	datac => write_fifo_reg_q_saved_3_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(3));

-- Location: FF_X24_Y15_N5
write_fifo_reg_q_saved_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_5_aq);

-- Location: LCCOMB_X24_Y15_N4
ix59319z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(5) = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5)))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => write_fifo_reg_q_saved_5_aq,
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	combout => k_i_pixel(5));

-- Location: FF_X24_Y16_N9
write_fifo_reg_q_saved_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_6_aq);

-- Location: LCCOMB_X24_Y16_N8
ix59319z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(6) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	datac => write_fifo_reg_q_saved_6_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(6));

-- Location: FF_X24_Y16_N7
write_fifo_reg_q_saved_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => VCC,
	ena => write_fifo_reg_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_fifo_reg_q_saved_7_aq);

-- Location: LCCOMB_X24_Y16_N6
ix59319z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- k_i_pixel(7) = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7))) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	datac => write_fifo_reg_q_saved_7_aq,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => k_i_pixel(7));

-- Location: M9K_X26_Y15_N0
u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:u_kirsch_memA_mem|altsyncram:ix64056z29483|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => nx41042z4,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X19_Y14_N16
ix4443z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4443z1 = (pb_a0_a_ainput_o & (!u_kirsch_reg_row_index_0_aq & (write_fifo_reg_rd_en_delayed_aq & u_kirsch_reg_row_index_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => u_kirsch_reg_row_index_0_aq,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx4443z1);

-- Location: M9K_X26_Y16_N0
u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_4:u_kirsch_memC_mem|altsyncram:ix64056z29485|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => nx4443z1,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X23_Y14_N28
ix55307z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55307z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => nx55307z2);

-- Location: LCCOMB_X25_Y16_N12
ix41042z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z3 = (pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_row_index_0_aq & !u_kirsch_reg_row_index_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx41042z3);

-- Location: M9K_X26_Y14_N0
u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_3:u_kirsch_memB_mem|altsyncram:ix64056z29484|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => nx41042z3,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X25_Y14_N2
ix55307z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55307z1 = (nx41042z4 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4)))) # (!nx41042z4 & (nx55307z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => nx55307z2,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx55307z1);

-- Location: FF_X25_Y14_N3
u_kirsch_reg_c3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55307z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_4_aq);

-- Location: LCCOMB_X19_Y17_N0
ix29221z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z2 = (!u_kirsch_reg_stg_counter1_2_aq & !u_kirsch_reg_stg_counter1_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_2_aq,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	combout => nx29221z2);

-- Location: LCCOMB_X22_Y18_N28
ix26412z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z3 = (!u_kirsch_reg_stg_counter1_0_aq & !u_kirsch_reg_stg_counter1_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_kirsch_reg_stg_counter1_0_aq,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx26412z3);

-- Location: LCCOMB_X22_Y18_N12
ix26412z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z2 = (u_kirsch_reg_stg_counter2_0_aq & (((nx29221z2 & nx26412z3)))) # (!u_kirsch_reg_stg_counter2_0_aq & ((nx26412z4) # ((nx29221z2 & nx26412z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_0_aq,
	datab => nx26412z4,
	datac => nx29221z2,
	datad => nx26412z3,
	combout => nx26412z2);

-- Location: LCCOMB_X27_Y14_N0
ix58953z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58953z1 = (nx26412z2 & ((u_kirsch_reg_c3_4_aq))) # (!nx26412z2 & (nx58953z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx58953z2,
	datab => u_kirsch_reg_c3_4_aq,
	datad => nx26412z2,
	combout => nx58953z1);

-- Location: LCCOMB_X23_Y14_N8
ix57076z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57076z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx57076z1);

-- Location: LCCOMB_X23_Y14_N20
ix57076z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57076z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4)))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4),
	datab => nx41042z4,
	datac => nx41042z3,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => nx57076z2);

-- Location: LCCOMB_X23_Y14_N14
ix57076z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(4) = (nx25391z3 & (((nx57076z1 & nx57076z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_c3_4_aq,
	datac => nx57076z1,
	datad => nx57076z2,
	combout => u_kirsch_a2_9n22ss1(4));

-- Location: FF_X23_Y14_N15
u_kirsch_reg_a2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(4),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_4_aq);

-- Location: FF_X24_Y14_N9
u_kirsch_reg_a3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_4_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_4_aq);

-- Location: LCCOMB_X19_Y17_N18
ix26412z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z9 = (nx41042z10) # ((!u_kirsch_reg_stg_counter1_0_aq & (nx29221z2 & u_kirsch_reg_stg_counter1_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_0_aq,
	datab => nx41042z10,
	datac => nx29221z2,
	datad => u_kirsch_reg_stg_counter1_1_aq,
	combout => nx26412z9);

-- Location: LCCOMB_X19_Y17_N28
ix26412z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z8 = (nx25391z3 & (((nx55203z3)))) # (!nx25391z3 & ((nx41042z11) # ((nx26412z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z11,
	datab => nx25391z3,
	datac => nx55203z3,
	datad => nx26412z9,
	combout => nx26412z8);

-- Location: LCCOMB_X19_Y17_N14
ix26412z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z7 = (reset_n_ainput_o & (nx41042z6 & nx26412z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datac => nx41042z6,
	datad => nx26412z8,
	combout => nx26412z7);

-- Location: FF_X27_Y14_N1
u_kirsch_reg_i_2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx58953z1,
	asdata => u_kirsch_reg_a3_4_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_4_aq);

-- Location: FF_X24_Y16_N15
u_kirsch_reg_e3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_7_aq);

-- Location: LCCOMB_X24_Y14_N10
ix42893z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(7) = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel(7)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_7_aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => u_kirsch_reg_e3_7_aq,
	datac => k_i_pixel(7),
	datad => pb_a0_a_ainput_o,
	combout => u_kirsch_f3_9n22ss1(7));

-- Location: FF_X24_Y14_N11
u_kirsch_reg_f3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(7),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_f3_7_aq);

-- Location: LCCOMB_X19_Y16_N26
ix64381z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64381z2 = (u_kirsch_reg_f3_7_aq) # (!nx26412z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_f3_7_aq,
	datad => nx26412z2,
	combout => nx64381z2);

-- Location: LCCOMB_X25_Y16_N6
ix53163z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53163z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx53163z2);

-- Location: LCCOMB_X25_Y16_N16
ix53163z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53163z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7))) # (!nx41042z4 & ((nx53163z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7),
	datad => nx53163z2,
	combout => nx53163z1);

-- Location: FF_X25_Y16_N17
u_kirsch_reg_d3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx53163z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_7_aq);

-- Location: LCCOMB_X19_Y16_N24
ix41042z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z1 = (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7)) # ((u_kirsch_reg_row_index_1_aq) # (u_kirsch_reg_row_index_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7),
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	combout => nx41042z1);

-- Location: LCCOMB_X19_Y16_N6
ix41042z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41042z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datab => nx41042z4,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	combout => nx41042z2);

-- Location: LCCOMB_X19_Y16_N4
ix41042z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(7) = (nx25391z3 & (((nx41042z1 & nx41042z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_7_aq,
	datab => nx41042z1,
	datac => nx25391z3,
	datad => nx41042z2,
	combout => u_kirsch_h2_9n22ss1(7));

-- Location: FF_X19_Y16_N5
u_kirsch_reg_h2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(7),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_7_aq);

-- Location: FF_X19_Y16_N31
u_kirsch_reg_h3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_7_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_7_aq);

-- Location: LCCOMB_X19_Y16_N12
ix58298z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58298z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7),
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7),
	combout => nx58298z2);

-- Location: LCCOMB_X20_Y16_N6
ix58298z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58298z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7))) # (!nx41042z4 & ((nx58298z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	datad => nx58298z2,
	combout => nx58298z1);

-- Location: FF_X20_Y16_N7
u_kirsch_reg_c3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx58298z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_7_aq);

-- Location: LCCOMB_X19_Y16_N16
ix63433z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63433z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7)))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7),
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7),
	datad => nx41042z3,
	combout => nx63433z2);

-- Location: LCCOMB_X19_Y16_N18
ix63433z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63433z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	combout => nx63433z1);

-- Location: LCCOMB_X19_Y16_N8
ix63433z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(7) = (nx25391z3 & (((nx63433z2 & nx63433z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_c3_7_aq,
	datab => nx63433z2,
	datac => nx25391z3,
	datad => nx63433z1,
	combout => u_kirsch_a2_9n22ss1(7));

-- Location: FF_X19_Y16_N9
u_kirsch_reg_b3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(7),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_b3_7_aq);

-- Location: LCCOMB_X19_Y16_N22
ix64381z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64381z3 = (nx26412z2) # ((nx41042z11 & (u_kirsch_reg_h3_7_aq)) # (!nx41042z11 & ((u_kirsch_reg_b3_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_h3_7_aq,
	datab => nx41042z11,
	datac => u_kirsch_reg_b3_7_aq,
	datad => nx26412z2,
	combout => nx64381z3);

-- Location: LCCOMB_X19_Y16_N20
ix64381z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64381z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(7),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	combout => nx64381z4);

-- Location: LCCOMB_X19_Y16_N2
ix64381z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_7_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7))) # (!nx41042z4 & ((nx64381z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(7),
	datad => nx64381z4,
	combout => u_kirsch_d3_9n15ss1_7_a);

-- Location: LCCOMB_X19_Y16_N28
ix64381z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64381z1 = (nx25391z3 & (((u_kirsch_d3_9n15ss1_7_a)))) # (!nx25391z3 & (nx64381z2 & (nx64381z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx64381z2,
	datab => nx25391z3,
	datac => nx64381z3,
	datad => u_kirsch_d3_9n15ss1_7_a,
	combout => nx64381z1);

-- Location: FF_X19_Y16_N29
u_kirsch_reg_i_3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64381z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_7_aq);

-- Location: FF_X24_Y14_N21
u_kirsch_reg_g3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_f3_7_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_7_aq);

-- Location: LCCOMB_X24_Y16_N16
ix55962z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55962z2 = (nx26412z4 & (((u_kirsch_reg_e3_7_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_7_aq))) # (!nx26412z6 & (u_kirsch_reg_g3_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g3_7_aq,
	datac => u_kirsch_reg_e3_7_aq,
	datad => nx26412z6,
	combout => nx55962z2);

-- Location: LCCOMB_X27_Y16_N16
ix55962z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55962z1 = (nx26412z2 & ((u_kirsch_reg_c3_7_aq))) # (!nx26412z2 & (nx55962z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx55962z2,
	datab => u_kirsch_reg_c3_7_aq,
	datad => nx26412z2,
	combout => nx55962z1);

-- Location: FF_X24_Y14_N15
u_kirsch_reg_a3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_b3_7_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_7_aq);

-- Location: FF_X27_Y16_N17
u_kirsch_reg_i_2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55962z1,
	asdata => u_kirsch_reg_a3_7_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_7_aq);

-- Location: LCCOMB_X20_Y15_N10
ix57301z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57301z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6),
	combout => nx57301z2);

-- Location: LCCOMB_X20_Y15_N28
ix57301z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57301z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6))) # (!nx41042z4 & ((nx57301z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	datad => nx57301z2,
	combout => nx57301z1);

-- Location: FF_X20_Y15_N29
u_kirsch_reg_c3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57301z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_6_aq);

-- Location: LCCOMB_X22_Y14_N14
ix55082z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55082z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6)))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6),
	datac => nx41042z3,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6),
	combout => nx55082z2);

-- Location: LCCOMB_X22_Y14_N12
ix55082z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55082z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	combout => nx55082z1);

-- Location: LCCOMB_X22_Y14_N30
ix55082z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(6) = (nx25391z3 & (((nx55082z2 & nx55082z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_c3_6_aq,
	datac => nx55082z2,
	datad => nx55082z1,
	combout => u_kirsch_a2_9n22ss1(6));

-- Location: FF_X22_Y14_N31
u_kirsch_reg_a2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(6),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_6_aq);

-- Location: LCCOMB_X20_Y15_N14
ix52166z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52166z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	combout => nx52166z2);

-- Location: LCCOMB_X20_Y15_N24
ix52166z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52166z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6)))) # (!nx41042z4 & (nx52166z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => nx52166z2,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6),
	combout => nx52166z1);

-- Location: FF_X20_Y15_N25
u_kirsch_reg_d3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx52166z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_6_aq);

-- Location: LCCOMB_X22_Y14_N0
ix40045z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40045z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6),
	combout => nx40045z1);

-- Location: LCCOMB_X22_Y14_N18
ix40045z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40045z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6)))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => nx41042z3,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6),
	combout => nx40045z2);

-- Location: LCCOMB_X22_Y14_N4
ix40045z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(6) = (nx25391z3 & (((nx40045z1 & nx40045z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_6_aq,
	datab => nx40045z1,
	datac => nx25391z3,
	datad => nx40045z2,
	combout => u_kirsch_h2_9n22ss1(6));

-- Location: FF_X22_Y14_N5
u_kirsch_reg_h2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(6),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_6_aq);

-- Location: FF_X24_Y14_N19
u_kirsch_reg_h3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_6_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_6_aq);

-- Location: LCCOMB_X22_Y14_N10
ix65378z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65378z3 = (nx26412z2) # ((nx41042z11 & ((u_kirsch_reg_h3_6_aq))) # (!nx41042z11 & (u_kirsch_reg_a2_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_a2_6_aq,
	datab => u_kirsch_reg_h3_6_aq,
	datac => nx41042z11,
	datad => nx26412z2,
	combout => nx65378z3);

-- Location: LCCOMB_X22_Y14_N28
ix65378z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65378z4 = (nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6)))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z3,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(6),
	combout => nx65378z4);

-- Location: LCCOMB_X22_Y14_N22
ix65378z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_6_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6))) # (!nx41042z4 & ((nx65378z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(6),
	datac => nx41042z4,
	datad => nx65378z4,
	combout => u_kirsch_d3_9n15ss1_6_a);

-- Location: FF_X24_Y16_N1
u_kirsch_reg_e3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_6_aq);

-- Location: LCCOMB_X24_Y14_N12
ix45180z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(6) = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel(6)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_6_aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_e3_6_aq,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => k_i_pixel(6),
	datad => pb_a0_a_ainput_o,
	combout => u_kirsch_f3_9n22ss1(6));

-- Location: FF_X24_Y14_N13
u_kirsch_reg_g2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(6),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_6_aq);

-- Location: LCCOMB_X23_Y14_N6
ix65378z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65378z2 = (u_kirsch_reg_g2_6_aq) # (!nx26412z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_g2_6_aq,
	datad => nx26412z2,
	combout => nx65378z2);

-- Location: LCCOMB_X22_Y14_N24
ix65378z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65378z1 = (nx25391z3 & (((u_kirsch_d3_9n15ss1_6_a)))) # (!nx25391z3 & (nx65378z3 & ((nx65378z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx65378z3,
	datab => nx25391z3,
	datac => u_kirsch_d3_9n15ss1_6_a,
	datad => nx65378z2,
	combout => nx65378z1);

-- Location: FF_X22_Y14_N25
u_kirsch_reg_i_3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx65378z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_6_aq);

-- Location: FF_X24_Y14_N1
u_kirsch_reg_g3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_6_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_6_aq);

-- Location: LCCOMB_X24_Y14_N0
ix56959z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56959z2 = (nx26412z4 & (u_kirsch_reg_e3_6_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_e3_6_aq)) # (!nx26412z6 & ((u_kirsch_reg_g3_6_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_e3_6_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_g3_6_aq,
	datad => nx26412z6,
	combout => nx56959z2);

-- Location: LCCOMB_X23_Y15_N0
ix56959z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56959z1 = (nx26412z2 & (u_kirsch_reg_c3_6_aq)) # (!nx26412z2 & ((nx56959z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_c3_6_aq,
	datab => nx26412z2,
	datad => nx56959z2,
	combout => nx56959z1);

-- Location: FF_X24_Y14_N29
u_kirsch_reg_a3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_6_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_6_aq);

-- Location: FF_X23_Y15_N1
u_kirsch_reg_i_2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56959z1,
	asdata => u_kirsch_reg_a3_6_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_6_aq);

-- Location: LCCOMB_X22_Y18_N16
u_kirsch_reg_e3_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_e3_5_afeeder_combout = write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(5),
	combout => u_kirsch_reg_e3_5_afeeder_combout);

-- Location: FF_X22_Y18_N17
u_kirsch_reg_e3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_e3_5_afeeder_combout,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_5_aq);

-- Location: LCCOMB_X24_Y15_N6
ix44183z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(5) = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel(5)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_5_aq)))) # (!pb_a0_a_ainput_o & (((u_kirsch_reg_e3_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => u_kirsch_reg_e3_5_aq,
	datad => k_i_pixel(5),
	combout => u_kirsch_f3_9n22ss1(5));

-- Location: FF_X24_Y15_N7
u_kirsch_reg_g2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(5),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_5_aq);

-- Location: LCCOMB_X20_Y15_N18
ix51169z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51169z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx51169z2);

-- Location: LCCOMB_X20_Y15_N4
ix51169z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51169z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5))) # (!nx41042z4 & ((nx51169z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5),
	datad => nx51169z2,
	combout => nx51169z1);

-- Location: FF_X20_Y15_N5
u_kirsch_reg_d3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51169z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_5_aq);

-- Location: LCCOMB_X20_Y14_N30
ix39048z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39048z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5),
	combout => nx39048z1);

-- Location: LCCOMB_X20_Y14_N0
ix39048z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39048z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5)))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	datab => nx41042z4,
	datac => nx41042z3,
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx39048z2);

-- Location: LCCOMB_X20_Y14_N26
ix39048z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(5) = (nx25391z3 & (((nx39048z1 & nx39048z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_d3_5_aq,
	datac => nx39048z1,
	datad => nx39048z2,
	combout => u_kirsch_h2_9n22ss1(5));

-- Location: FF_X20_Y14_N27
u_kirsch_reg_h2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(5),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_5_aq);

-- Location: FF_X22_Y18_N25
u_kirsch_reg_h3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_5_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_5_aq);

-- Location: LCCOMB_X20_Y15_N30
ix56304z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56304z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx56304z2);

-- Location: LCCOMB_X20_Y15_N8
ix56304z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56304z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5))) # (!nx41042z4 & ((nx56304z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	datac => nx56304z2,
	datad => nx41042z4,
	combout => nx56304z1);

-- Location: FF_X20_Y15_N9
u_kirsch_reg_c3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56304z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_5_aq);

-- Location: LCCOMB_X20_Y14_N22
ix56079z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56079z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5))) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx56079z2);

-- Location: LCCOMB_X20_Y14_N10
ix56079z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56079z1 = (u_kirsch_reg_row_index_0_aq) # ((u_kirsch_reg_row_index_1_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_reg_row_index_1_aq,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	combout => nx56079z1);

-- Location: LCCOMB_X20_Y14_N20
ix56079z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(5) = (nx25391z3 & (((nx56079z2 & nx56079z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_c3_5_aq,
	datac => nx56079z2,
	datad => nx56079z1,
	combout => u_kirsch_a2_9n22ss1(5));

-- Location: FF_X20_Y14_N21
u_kirsch_reg_a2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(5),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_5_aq);

-- Location: LCCOMB_X22_Y18_N24
ix839z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx839z3 = (nx41042z11 & (u_kirsch_reg_h3_5_aq)) # (!nx41042z11 & ((u_kirsch_reg_a2_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z11,
	datac => u_kirsch_reg_h3_5_aq,
	datad => u_kirsch_reg_a2_5_aq,
	combout => nx839z3);

-- Location: LCCOMB_X20_Y14_N18
ix839z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx839z2 = (nx26412z2 & (u_kirsch_reg_g2_5_aq)) # (!nx26412z2 & ((nx839z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g2_5_aq,
	datac => nx26412z2,
	datad => nx839z3,
	combout => nx839z2);

-- Location: LCCOMB_X20_Y14_N28
ix839z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx839z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(5),
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	combout => nx839z4);

-- Location: LCCOMB_X20_Y14_N6
ix839z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_5_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5))) # (!nx41042z4 & ((nx839z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(5),
	datad => nx839z4,
	combout => u_kirsch_d3_9n15ss1_5_a);

-- Location: LCCOMB_X20_Y14_N24
ix839z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx839z1 = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((u_kirsch_d3_9n15ss1_5_a))) # (!pb_a0_a_ainput_o & (nx839z2)))) # (!write_fifo_reg_rd_en_delayed_aq & (nx839z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => nx839z2,
	datac => pb_a0_a_ainput_o,
	datad => u_kirsch_d3_9n15ss1_5_a,
	combout => nx839z1);

-- Location: FF_X20_Y14_N25
u_kirsch_reg_i_3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx839z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_5_aq);

-- Location: FF_X22_Y18_N27
u_kirsch_reg_g3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_5_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_5_aq);

-- Location: LCCOMB_X22_Y18_N26
ix57956z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57956z2 = (nx26412z6 & (((u_kirsch_reg_e3_5_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_e3_5_aq))) # (!nx26412z4 & (u_kirsch_reg_g3_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_g3_5_aq,
	datad => u_kirsch_reg_e3_5_aq,
	combout => nx57956z2);

-- Location: LCCOMB_X23_Y16_N16
ix57956z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57956z1 = (nx26412z2 & ((u_kirsch_reg_c3_5_aq))) # (!nx26412z2 & (nx57956z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx57956z2,
	datab => u_kirsch_reg_c3_5_aq,
	datad => nx26412z2,
	combout => nx57956z1);

-- Location: FF_X22_Y18_N23
u_kirsch_reg_a3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_5_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_5_aq);

-- Location: FF_X23_Y16_N17
u_kirsch_reg_i_2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57956z1,
	asdata => u_kirsch_reg_a3_5_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_5_aq);

-- Location: LCCOMB_X23_Y14_N30
ix50172z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50172z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx50172z2);

-- Location: LCCOMB_X23_Y13_N0
ix50172z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50172z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4)))) # (!nx41042z4 & (nx50172z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => nx50172z2,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => nx50172z1);

-- Location: FF_X23_Y13_N1
u_kirsch_reg_d3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50172z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_4_aq);

-- Location: LCCOMB_X23_Y14_N4
ix38051z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38051z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4),
	datab => nx41042z4,
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx38051z2);

-- Location: LCCOMB_X23_Y14_N10
ix38051z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38051z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4),
	combout => nx38051z1);

-- Location: LCCOMB_X23_Y14_N16
ix38051z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(4) = (nx25391z3 & (((nx38051z2 & nx38051z1)))) # (!nx25391z3 & (u_kirsch_reg_d3_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_d3_4_aq,
	datac => nx38051z2,
	datad => nx38051z1,
	combout => u_kirsch_h2_9n22ss1(4));

-- Location: FF_X23_Y14_N17
u_kirsch_reg_h2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(4),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_4_aq);

-- Location: FF_X24_Y14_N3
u_kirsch_reg_h3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_4_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_4_aq);

-- Location: LCCOMB_X24_Y14_N2
ix1836z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1836z3 = (nx41042z11 & ((u_kirsch_reg_h3_4_aq))) # (!nx41042z11 & (u_kirsch_reg_a2_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_a2_4_aq,
	datac => u_kirsch_reg_h3_4_aq,
	datad => nx41042z11,
	combout => nx1836z3);

-- Location: LCCOMB_X24_Y14_N20
ix1836z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1836z2 = (nx26412z2 & (u_kirsch_reg_g2_4_aq)) # (!nx26412z2 & ((nx1836z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g2_4_aq,
	datab => nx26412z2,
	datad => nx1836z3,
	combout => nx1836z2);

-- Location: LCCOMB_X23_Y14_N12
ix1836z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1836z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(4),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx1836z4);

-- Location: LCCOMB_X23_Y14_N2
ix1836z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_4_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4))) # (!nx41042z4 & ((nx1836z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(4),
	datad => nx1836z4,
	combout => u_kirsch_d3_9n15ss1_4_a);

-- Location: LCCOMB_X23_Y14_N0
ix1836z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1836z1 = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((u_kirsch_d3_9n15ss1_4_a))) # (!pb_a0_a_ainput_o & (nx1836z2)))) # (!write_fifo_reg_rd_en_delayed_aq & (((nx1836z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => pb_a0_a_ainput_o,
	datac => nx1836z2,
	datad => u_kirsch_d3_9n15ss1_4_a,
	combout => nx1836z1);

-- Location: FF_X23_Y14_N1
u_kirsch_reg_i_3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1836z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_4_aq);

-- Location: FF_X24_Y16_N11
u_kirsch_reg_e3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_3_aq);

-- Location: LCCOMB_X22_Y16_N8
ix42189z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(3) = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel(3)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_3_aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => u_kirsch_reg_e3_3_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(3),
	combout => u_kirsch_f3_9n22ss1(3));

-- Location: FF_X22_Y16_N9
u_kirsch_reg_g2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(3),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_3_aq);

-- Location: FF_X22_Y16_N21
u_kirsch_reg_g3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_3_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_3_aq);

-- Location: LCCOMB_X22_Y16_N20
ix59950z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59950z2 = (nx26412z6 & (u_kirsch_reg_e3_3_aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_e3_3_aq)) # (!nx26412z4 & ((u_kirsch_reg_g3_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => u_kirsch_reg_e3_3_aq,
	datac => u_kirsch_reg_g3_3_aq,
	datad => nx26412z4,
	combout => nx59950z2);

-- Location: LCCOMB_X22_Y15_N28
ix54310z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54310z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx54310z2);

-- Location: LCCOMB_X23_Y12_N24
ix54310z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54310z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3))) # (!nx41042z4 & ((nx54310z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datad => nx54310z2,
	combout => nx54310z1);

-- Location: FF_X23_Y12_N25
u_kirsch_reg_c3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx54310z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_3_aq);

-- Location: LCCOMB_X23_Y15_N10
ix59950z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59950z1 = (nx26412z2 & ((u_kirsch_reg_c3_3_aq))) # (!nx26412z2 & (nx59950z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59950z2,
	datab => nx26412z2,
	datad => u_kirsch_reg_c3_3_aq,
	combout => nx59950z1);

-- Location: LCCOMB_X22_Y15_N14
ix58073z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58073z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3)) # (u_kirsch_reg_row_index_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datad => u_kirsch_reg_row_index_0_aq,
	combout => nx58073z1);

-- Location: LCCOMB_X22_Y15_N2
ix58073z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58073z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3))) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3),
	datab => nx41042z3,
	datac => nx41042z4,
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx58073z2);

-- Location: LCCOMB_X22_Y15_N22
ix58073z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(3) = (nx25391z3 & (((nx58073z1 & nx58073z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_c3_3_aq,
	datac => nx58073z1,
	datad => nx58073z2,
	combout => u_kirsch_a2_9n22ss1(3));

-- Location: FF_X22_Y15_N23
u_kirsch_reg_a2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(3),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_3_aq);

-- Location: FF_X22_Y16_N23
u_kirsch_reg_a3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_3_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_3_aq);

-- Location: FF_X23_Y15_N11
u_kirsch_reg_i_2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59950z1,
	asdata => u_kirsch_reg_a3_3_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_3_aq);

-- Location: LCCOMB_X22_Y15_N8
ix49175z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49175z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx49175z2);

-- Location: LCCOMB_X23_Y12_N2
ix49175z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49175z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3))) # (!nx41042z4 & ((nx49175z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3),
	datac => nx41042z4,
	datad => nx49175z2,
	combout => nx49175z1);

-- Location: FF_X23_Y12_N3
u_kirsch_reg_d3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx49175z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_3_aq);

-- Location: LCCOMB_X22_Y15_N4
ix37054z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37054z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3)) # (u_kirsch_reg_row_index_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3),
	datad => u_kirsch_reg_row_index_0_aq,
	combout => nx37054z1);

-- Location: LCCOMB_X22_Y15_N20
ix37054z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37054z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3)))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datab => nx41042z3,
	datac => nx41042z4,
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx37054z2);

-- Location: LCCOMB_X22_Y15_N0
ix37054z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(3) = (nx25391z3 & (((nx37054z1 & nx37054z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_3_aq,
	datab => nx25391z3,
	datac => nx37054z1,
	datad => nx37054z2,
	combout => u_kirsch_h2_9n22ss1(3));

-- Location: FF_X22_Y15_N1
u_kirsch_reg_h2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(3),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_3_aq);

-- Location: FF_X22_Y16_N15
u_kirsch_reg_h3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_3_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_3_aq);

-- Location: LCCOMB_X22_Y16_N14
ix2833z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2833z3 = (nx26412z4 & (((u_kirsch_reg_h3_3_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_3_aq))) # (!nx26412z6 & (u_kirsch_reg_a2_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_a2_3_aq,
	datac => u_kirsch_reg_h3_3_aq,
	datad => nx26412z6,
	combout => nx2833z3);

-- Location: LCCOMB_X22_Y15_N18
ix2833z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2833z2 = (nx26412z2 & (u_kirsch_reg_g2_3_aq)) # (!nx26412z2 & ((nx2833z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_g2_3_aq,
	datac => nx2833z3,
	datad => nx26412z2,
	combout => nx2833z2);

-- Location: LCCOMB_X22_Y15_N10
ix2833z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2833z4 = (nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3)))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z3,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(3),
	combout => nx2833z4);

-- Location: LCCOMB_X22_Y15_N16
ix2833z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_3_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3))) # (!nx41042z4 & ((nx2833z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(3),
	datad => nx2833z4,
	combout => u_kirsch_d3_9n15ss1_3_a);

-- Location: LCCOMB_X22_Y15_N6
ix2833z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2833z1 = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((u_kirsch_d3_9n15ss1_3_a))) # (!write_fifo_reg_rd_en_delayed_aq & (nx2833z2)))) # (!pb_a0_a_ainput_o & (nx2833z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => nx2833z2,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => u_kirsch_d3_9n15ss1_3_a,
	combout => nx2833z1);

-- Location: FF_X22_Y15_N7
u_kirsch_reg_i_3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2833z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_3_aq);

-- Location: FF_X24_Y16_N29
u_kirsch_reg_e3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(2),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_2_aq);

-- Location: LCCOMB_X22_Y16_N10
ix41192z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(2) = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel(2)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_2_aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_fifo_reg_rd_en_delayed_aq,
	datab => u_kirsch_reg_e3_2_aq,
	datac => pb_a0_a_ainput_o,
	datad => k_i_pixel(2),
	combout => u_kirsch_f3_9n22ss1(2));

-- Location: FF_X22_Y16_N11
u_kirsch_reg_g2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(2),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_2_aq);

-- Location: LCCOMB_X25_Y14_N28
ix53313z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53313z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx53313z2);

-- Location: LCCOMB_X25_Y14_N30
ix53313z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53313z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2))) # (!nx41042z4 & ((nx53313z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	datad => nx53313z2,
	combout => nx53313z1);

-- Location: FF_X25_Y14_N31
u_kirsch_reg_c3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx53313z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_2_aq);

-- Location: LCCOMB_X19_Y14_N26
ix59070z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59070z1 = (u_kirsch_reg_row_index_0_aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2)) # (u_kirsch_reg_row_index_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx59070z1);

-- Location: LCCOMB_X19_Y14_N12
ix59070z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59070z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2))) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx59070z2);

-- Location: LCCOMB_X19_Y14_N4
ix59070z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(2) = (nx25391z3 & (((nx59070z1 & nx59070z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_c3_2_aq,
	datab => nx25391z3,
	datac => nx59070z1,
	datad => nx59070z2,
	combout => u_kirsch_a2_9n22ss1(2));

-- Location: FF_X19_Y14_N5
u_kirsch_reg_a2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(2),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_2_aq);

-- Location: LCCOMB_X19_Y14_N10
ix36057z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36057z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2),
	datab => nx41042z4,
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	combout => nx36057z2);

-- Location: LCCOMB_X19_Y14_N6
ix48178z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48178z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx48178z2);

-- Location: LCCOMB_X19_Y12_N0
ix48178z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48178z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2)))) # (!nx41042z4 & (nx48178z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => nx48178z2,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2),
	combout => nx48178z1);

-- Location: FF_X19_Y12_N1
u_kirsch_reg_d3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx48178z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_2_aq);

-- Location: LCCOMB_X19_Y14_N24
ix36057z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36057z1 = (u_kirsch_reg_row_index_0_aq) # ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2)) # (u_kirsch_reg_row_index_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2),
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx36057z1);

-- Location: LCCOMB_X19_Y14_N28
ix36057z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(2) = (nx25391z3 & (nx36057z2 & ((nx36057z1)))) # (!nx25391z3 & (((u_kirsch_reg_d3_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx36057z2,
	datab => u_kirsch_reg_d3_2_aq,
	datac => nx25391z3,
	datad => nx36057z1,
	combout => u_kirsch_h2_9n22ss1(2));

-- Location: FF_X19_Y14_N29
u_kirsch_reg_h2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(2),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_2_aq);

-- Location: FF_X22_Y16_N17
u_kirsch_reg_h3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_2_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_2_aq);

-- Location: LCCOMB_X22_Y16_N16
ix3830z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3830z3 = (nx26412z6 & (((u_kirsch_reg_h3_2_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_h3_2_aq))) # (!nx26412z4 & (u_kirsch_reg_a2_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_a2_2_aq,
	datab => nx26412z6,
	datac => u_kirsch_reg_h3_2_aq,
	datad => nx26412z4,
	combout => nx3830z3);

-- Location: LCCOMB_X23_Y16_N26
ix3830z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3830z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_g2_2_aq)) # (!nx26412z2 & ((nx3830z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g2_2_aq,
	datab => nx25391z3,
	datac => nx3830z3,
	datad => nx26412z2,
	combout => nx3830z2);

-- Location: LCCOMB_X19_Y14_N18
ix3830z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3830z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(2),
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	combout => nx3830z4);

-- Location: LCCOMB_X19_Y14_N20
ix3830z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_2_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2))) # (!nx41042z4 & ((nx3830z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(2),
	datad => nx3830z4,
	combout => u_kirsch_d3_9n15ss1_2_a);

-- Location: LCCOMB_X19_Y14_N14
ix3830z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3830z1 = (nx3830z2 & (((u_kirsch_d3_9n15ss1_2_a) # (!write_fifo_reg_rd_en_delayed_aq)) # (!pb_a0_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => nx3830z2,
	datac => write_fifo_reg_rd_en_delayed_aq,
	datad => u_kirsch_d3_9n15ss1_2_a,
	combout => nx3830z1);

-- Location: FF_X19_Y14_N15
u_kirsch_reg_i_3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx3830z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_2_aq);

-- Location: LCCOMB_X22_Y16_N26
u_kirsch_reg_g3_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_g3_2_afeeder_combout = u_kirsch_reg_g2_2_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_g2_2_aq,
	combout => u_kirsch_reg_g3_2_afeeder_combout);

-- Location: FF_X22_Y16_N27
u_kirsch_reg_g3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_g3_2_afeeder_combout,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_2_aq);

-- Location: LCCOMB_X24_Y16_N28
ix60947z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60947z2 = (nx26412z4 & (((u_kirsch_reg_e3_2_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_2_aq))) # (!nx26412z6 & (u_kirsch_reg_g3_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g3_2_aq,
	datac => u_kirsch_reg_e3_2_aq,
	datad => nx26412z6,
	combout => nx60947z2);

-- Location: LCCOMB_X27_Y16_N18
ix60947z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60947z1 = (nx26412z2 & ((u_kirsch_reg_c3_2_aq))) # (!nx26412z2 & (nx60947z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60947z2,
	datab => u_kirsch_reg_c3_2_aq,
	datad => nx26412z2,
	combout => nx60947z1);

-- Location: FF_X22_Y16_N5
u_kirsch_reg_a3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_2_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_2_aq);

-- Location: FF_X27_Y16_N19
u_kirsch_reg_i_2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60947z1,
	asdata => u_kirsch_reg_a3_2_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_2_aq);

-- Location: FF_X24_Y16_N21
u_kirsch_reg_e3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_1_aq);

-- Location: LCCOMB_X22_Y16_N6
ix40195z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(1) = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel(1)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_1_aq)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_e3_1_aq,
	datab => pb_a0_a_ainput_o,
	datac => k_i_pixel(1),
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => u_kirsch_f3_9n22ss1(1));

-- Location: FF_X22_Y16_N7
u_kirsch_reg_g2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(1),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_1_aq);

-- Location: LCCOMB_X20_Y15_N2
ix52316z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52316z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1),
	combout => nx52316z2);

-- Location: LCCOMB_X20_Y15_N20
ix52316z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52316z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1))) # (!nx41042z4 & ((nx52316z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	datad => nx52316z2,
	combout => nx52316z1);

-- Location: FF_X20_Y15_N21
u_kirsch_reg_c3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx52316z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_1_aq);

-- Location: LCCOMB_X23_Y17_N30
ix60067z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60067z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1)))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1),
	datac => nx41042z3,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1),
	combout => nx60067z2);

-- Location: LCCOMB_X23_Y17_N2
ix60067z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60067z1 = (u_kirsch_reg_row_index_0_aq) # ((u_kirsch_reg_row_index_1_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_reg_row_index_1_aq,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx60067z1);

-- Location: LCCOMB_X23_Y17_N20
ix60067z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(1) = (nx25391z3 & (((nx60067z2 & nx60067z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_c3_1_aq,
	datab => nx25391z3,
	datac => nx60067z2,
	datad => nx60067z1,
	combout => u_kirsch_a2_9n22ss1(1));

-- Location: FF_X23_Y17_N21
u_kirsch_reg_a2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(1),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_1_aq);

-- Location: LCCOMB_X23_Y13_N10
ix47181z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47181z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx47181z2);

-- Location: LCCOMB_X23_Y13_N4
ix47181z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47181z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1))) # (!nx41042z4 & ((nx47181z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1),
	datad => nx47181z2,
	combout => nx47181z1);

-- Location: FF_X23_Y13_N5
u_kirsch_reg_d3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx47181z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_1_aq);

-- Location: LCCOMB_X23_Y17_N14
ix35060z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35060z1 = (u_kirsch_reg_row_index_0_aq) # ((u_kirsch_reg_row_index_1_aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_0_aq,
	datac => u_kirsch_reg_row_index_1_aq,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1),
	combout => nx35060z1);

-- Location: LCCOMB_X23_Y17_N0
ix35060z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35060z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1),
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx35060z2);

-- Location: LCCOMB_X23_Y17_N18
ix35060z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(1) = (nx25391z3 & (((nx35060z1 & nx35060z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_1_aq,
	datab => nx25391z3,
	datac => nx35060z1,
	datad => nx35060z2,
	combout => u_kirsch_h2_9n22ss1(1));

-- Location: FF_X23_Y17_N19
u_kirsch_reg_h2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(1),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_1_aq);

-- Location: FF_X22_Y16_N25
u_kirsch_reg_h3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_1_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_1_aq);

-- Location: LCCOMB_X22_Y16_N24
ix4827z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4827z3 = (nx26412z4 & (((u_kirsch_reg_h3_1_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_1_aq))) # (!nx26412z6 & (u_kirsch_reg_a2_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_a2_1_aq,
	datac => u_kirsch_reg_h3_1_aq,
	datad => nx26412z6,
	combout => nx4827z3);

-- Location: LCCOMB_X23_Y17_N10
ix4827z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4827z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_g2_1_aq)) # (!nx26412z2 & ((nx4827z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => nx25391z3,
	datac => u_kirsch_reg_g2_1_aq,
	datad => nx4827z3,
	combout => nx4827z2);

-- Location: LCCOMB_X23_Y17_N28
ix4827z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4827z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datac => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx4827z4);

-- Location: LCCOMB_X23_Y17_N6
ix4827z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_d3_9n15ss1_1_a = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1))) # (!nx41042z4 & ((nx4827z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datac => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(1),
	datad => nx4827z4,
	combout => u_kirsch_d3_9n15ss1_1_a);

-- Location: LCCOMB_X23_Y17_N16
ix4827z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4827z1 = (nx4827z2 & (((u_kirsch_d3_9n15ss1_1_a) # (!pb_a0_a_ainput_o)) # (!write_fifo_reg_rd_en_delayed_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4827z2,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => pb_a0_a_ainput_o,
	datad => u_kirsch_d3_9n15ss1_1_a,
	combout => nx4827z1);

-- Location: FF_X23_Y17_N17
u_kirsch_reg_i_3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx4827z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_1_aq);

-- Location: FF_X22_Y16_N13
u_kirsch_reg_g3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_1_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_1_aq);

-- Location: LCCOMB_X23_Y16_N28
ix61944z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61944z2 = (nx26412z4 & (((u_kirsch_reg_e3_1_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_1_aq))) # (!nx26412z6 & (u_kirsch_reg_g3_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g3_1_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_e3_1_aq,
	datad => nx26412z6,
	combout => nx61944z2);

-- Location: LCCOMB_X23_Y15_N12
ix61944z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61944z1 = (nx26412z2 & (u_kirsch_reg_c3_1_aq)) # (!nx26412z2 & ((nx61944z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_c3_1_aq,
	datab => nx26412z2,
	datad => nx61944z2,
	combout => nx61944z1);

-- Location: FF_X22_Y16_N19
u_kirsch_reg_a3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_1_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_1_aq);

-- Location: FF_X23_Y15_N13
u_kirsch_reg_i_2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61944z1,
	asdata => u_kirsch_reg_a3_1_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_1_aq);

-- Location: FF_X24_Y18_N17
u_kirsch_reg_e3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => VCC,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_e3_0_aq);

-- Location: LCCOMB_X24_Y15_N8
ix39198z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_f3_9n22ss1(0) = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel(0)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_0_aq)))) # (!pb_a0_a_ainput_o & (((u_kirsch_reg_e3_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => write_fifo_reg_rd_en_delayed_aq,
	datac => u_kirsch_reg_e3_0_aq,
	datad => k_i_pixel(0),
	combout => u_kirsch_f3_9n22ss1(0));

-- Location: FF_X24_Y15_N9
u_kirsch_reg_g2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_f3_9n22ss1(0),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g2_0_aq);

-- Location: FF_X24_Y15_N11
u_kirsch_reg_g3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_g2_0_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_g3_0_aq);

-- Location: LCCOMB_X23_Y16_N6
ix62941z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62941z2 = (nx26412z6 & (((u_kirsch_reg_e3_0_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_e3_0_aq))) # (!nx26412z4 & (u_kirsch_reg_g3_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_g3_0_aq,
	datad => u_kirsch_reg_e3_0_aq,
	combout => nx62941z2);

-- Location: LCCOMB_X25_Y16_N10
ix51319z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51319z2 = (u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0)))) # (!u_kirsch_reg_row_index_1_aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0),
	datab => u_kirsch_reg_row_index_1_aq,
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx51319z2);

-- Location: LCCOMB_X25_Y16_N20
ix51319z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51319z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0))) # (!nx41042z4 & ((nx51319z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0),
	datac => nx41042z4,
	datad => nx51319z2,
	combout => nx51319z1);

-- Location: FF_X25_Y16_N21
u_kirsch_reg_c3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51319z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_c3_0_aq);

-- Location: LCCOMB_X27_Y16_N20
ix62941z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62941z1 = (nx26412z2 & ((u_kirsch_reg_c3_0_aq))) # (!nx26412z2 & (nx62941z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62941z2,
	datab => u_kirsch_reg_c3_0_aq,
	datad => nx26412z2,
	combout => nx62941z1);

-- Location: LCCOMB_X25_Y16_N4
ix61064z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61064z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0)))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0),
	datac => nx41042z3,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0),
	combout => nx61064z2);

-- Location: LCCOMB_X25_Y16_N14
ix61064z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61064z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0),
	combout => nx61064z1);

-- Location: LCCOMB_X25_Y16_N24
ix61064z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_a2_9n22ss1(0) = (nx25391z3 & (nx61064z2 & (nx61064z1))) # (!nx25391z3 & (((u_kirsch_reg_c3_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx61064z2,
	datac => nx61064z1,
	datad => u_kirsch_reg_c3_0_aq,
	combout => u_kirsch_a2_9n22ss1(0));

-- Location: FF_X25_Y16_N25
u_kirsch_reg_a2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_a2_9n22ss1(0),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a2_0_aq);

-- Location: FF_X24_Y15_N25
u_kirsch_reg_a3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_a2_0_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_a3_0_aq);

-- Location: FF_X27_Y16_N21
u_kirsch_reg_i_2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62941z1,
	asdata => u_kirsch_reg_a3_0_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_2_0_aq);

-- Location: LCCOMB_X24_Y16_N2
ix34063z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34063z1 = (u_kirsch_reg_row_index_1_aq) # ((u_kirsch_reg_row_index_0_aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_row_index_1_aq,
	datac => u_kirsch_reg_row_index_0_aq,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0),
	combout => nx34063z1);

-- Location: LCCOMB_X25_Y16_N2
ix46184z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46184z2 = (u_kirsch_reg_row_index_1_aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0))) # (!u_kirsch_reg_row_index_1_aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0),
	datab => u_kirsch_reg_row_index_1_aq,
	datad => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0),
	combout => nx46184z2);

-- Location: LCCOMB_X25_Y16_N28
ix46184z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46184z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0))) # (!nx41042z4 & ((nx46184z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0),
	datac => nx41042z4,
	datad => nx46184z2,
	combout => nx46184z1);

-- Location: FF_X25_Y16_N29
u_kirsch_reg_d3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46184z1,
	ena => nx53163z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_d3_0_aq);

-- Location: LCCOMB_X25_Y16_N18
ix34063z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34063z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0))) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z4,
	datab => u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a(0),
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0),
	combout => nx34063z2);

-- Location: LCCOMB_X25_Y16_N30
ix34063z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_h2_9n22ss1(0) = (nx25391z3 & (nx34063z1 & ((nx34063z2)))) # (!nx25391z3 & (((u_kirsch_reg_d3_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx34063z1,
	datab => nx25391z3,
	datac => u_kirsch_reg_d3_0_aq,
	datad => nx34063z2,
	combout => u_kirsch_h2_9n22ss1(0));

-- Location: FF_X25_Y16_N31
u_kirsch_reg_h2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_h2_9n22ss1(0),
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h2_0_aq);

-- Location: FF_X24_Y15_N13
u_kirsch_reg_h3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_h2_0_aq,
	sload => VCC,
	ena => nx41042z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_h3_0_aq);

-- Location: LCCOMB_X24_Y15_N12
ix5824z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5824z3 = (nx26412z4 & (((u_kirsch_reg_h3_0_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_0_aq))) # (!nx26412z6 & (u_kirsch_reg_a2_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_a2_0_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_h3_0_aq,
	datad => nx26412z6,
	combout => nx5824z3);

-- Location: LCCOMB_X24_Y15_N30
ix5824z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5824z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_g2_0_aq))) # (!nx26412z2 & (nx5824z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx5824z3,
	datab => u_kirsch_reg_g2_0_aq,
	datac => nx25391z3,
	datad => nx26412z2,
	combout => nx5824z2);

-- Location: LCCOMB_X25_Y16_N8
ix5824z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5824z4 = ((u_kirsch_reg_row_index_1_aq) # ((nx41042z3) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0)))) # (!nx25391z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_row_index_1_aq,
	datac => nx41042z3,
	datad => u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a(0),
	combout => nx5824z4);

-- Location: LCCOMB_X27_Y16_N0
ix5824z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5824z1 = (nx5824z2 & (((nx34063z2 & nx5824z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx5824z2,
	datac => nx34063z2,
	datad => nx5824z4,
	combout => nx5824z1);

-- Location: FF_X27_Y16_N1
u_kirsch_reg_i_3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx5824z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_3_0_aq);

-- Location: LCCOMB_X23_Y15_N14
u_kirsch_rtlc1_110_gt_19_ix21_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46608z1 = CARRY((!u_kirsch_reg_i_2_0_aq & u_kirsch_reg_i_3_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_0_aq,
	datab => u_kirsch_reg_i_3_0_aq,
	datad => VCC,
	cout => nx46608z1);

-- Location: LCCOMB_X23_Y15_N16
u_kirsch_rtlc1_110_gt_19_ix23_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34502z1 = CARRY((u_kirsch_reg_i_3_1_aq & (u_kirsch_reg_i_2_1_aq & !nx46608z1)) # (!u_kirsch_reg_i_3_1_aq & ((u_kirsch_reg_i_2_1_aq) # (!nx46608z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_1_aq,
	datab => u_kirsch_reg_i_2_1_aq,
	datad => VCC,
	cin => nx46608z1,
	cout => nx34502z1);

-- Location: LCCOMB_X23_Y15_N18
u_kirsch_rtlc1_110_gt_19_ix25_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50076z1 = CARRY((u_kirsch_reg_i_3_2_aq & ((!nx34502z1) # (!u_kirsch_reg_i_2_2_aq))) # (!u_kirsch_reg_i_3_2_aq & (!u_kirsch_reg_i_2_2_aq & !nx34502z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_2_aq,
	datab => u_kirsch_reg_i_2_2_aq,
	datad => VCC,
	cin => nx34502z1,
	cout => nx50076z1);

-- Location: LCCOMB_X23_Y15_N20
u_kirsch_rtlc1_110_gt_19_ix27_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx114z1 = CARRY((u_kirsch_reg_i_2_3_aq & ((!nx50076z1) # (!u_kirsch_reg_i_3_3_aq))) # (!u_kirsch_reg_i_2_3_aq & (!u_kirsch_reg_i_3_3_aq & !nx50076z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_3_aq,
	datab => u_kirsch_reg_i_3_3_aq,
	datad => VCC,
	cin => nx50076z1,
	cout => nx114z1);

-- Location: LCCOMB_X23_Y15_N22
u_kirsch_rtlc1_110_gt_19_ix29_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31791z1 = CARRY((u_kirsch_reg_i_2_4_aq & (u_kirsch_reg_i_3_4_aq & !nx114z1)) # (!u_kirsch_reg_i_2_4_aq & ((u_kirsch_reg_i_3_4_aq) # (!nx114z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_4_aq,
	datab => u_kirsch_reg_i_3_4_aq,
	datad => VCC,
	cin => nx114z1,
	cout => nx31791z1);

-- Location: LCCOMB_X23_Y15_N24
u_kirsch_rtlc1_110_gt_19_ix31_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16217z1 = CARRY((u_kirsch_reg_i_3_5_aq & (u_kirsch_reg_i_2_5_aq & !nx31791z1)) # (!u_kirsch_reg_i_3_5_aq & ((u_kirsch_reg_i_2_5_aq) # (!nx31791z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_5_aq,
	datab => u_kirsch_reg_i_2_5_aq,
	datad => VCC,
	cin => nx31791z1,
	cout => nx16217z1);

-- Location: LCCOMB_X23_Y15_N26
u_kirsch_rtlc1_110_gt_19_ix33_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx643z1 = CARRY((u_kirsch_reg_i_3_6_aq & ((!nx16217z1) # (!u_kirsch_reg_i_2_6_aq))) # (!u_kirsch_reg_i_3_6_aq & (!u_kirsch_reg_i_2_6_aq & !nx16217z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_6_aq,
	datab => u_kirsch_reg_i_2_6_aq,
	datad => VCC,
	cin => nx16217z1,
	cout => nx643z1);

-- Location: LCCOMB_X23_Y15_N28
u_kirsch_rtlc1_110_gt_19_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26313z1 = CARRY((u_kirsch_reg_i_3_7_aq & (u_kirsch_reg_i_2_7_aq & !nx643z1)) # (!u_kirsch_reg_i_3_7_aq & ((u_kirsch_reg_i_2_7_aq) # (!nx643z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_7_aq,
	datab => u_kirsch_reg_i_2_7_aq,
	datad => VCC,
	cin => nx643z1,
	cout => nx26313z1);

-- Location: LCCOMB_X23_Y15_N30
u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40631z1 = !nx26313z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx26313z1,
	combout => nx40631z1);

-- Location: LCCOMB_X23_Y15_N8
ix37640z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(4) = (nx40631z1 & ((u_kirsch_reg_i_3_4_aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_4_aq,
	datac => nx40631z1,
	datad => u_kirsch_reg_i_3_4_aq,
	combout => u_kirsch_r_max0_1n2ss1(4));

-- Location: LCCOMB_X19_Y18_N20
ix40631z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40631z2 = (reset_n_ainput_o & ((nx29221z2) # ((!u_kirsch_reg_stg_counter2_3_aq & !u_kirsch_reg_stg_counter2_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => u_kirsch_reg_stg_counter2_3_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => nx29221z2,
	combout => nx40631z2);

-- Location: FF_X23_Y15_N9
u_kirsch_reg_r_max0_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(4),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_4_aq);

-- Location: LCCOMB_X24_Y14_N22
ix23421z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23421z2 = (nx26412z4 & (u_kirsch_reg_g2_4_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g2_4_aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_4_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g2_4_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_h3_4_aq,
	datad => nx26412z6,
	combout => nx23421z2);

-- Location: LCCOMB_X23_Y14_N24
ix23421z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23421z1 = (nx26412z2 & (u_kirsch_reg_d3_4_aq)) # (!nx26412z2 & ((nx23421z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => u_kirsch_reg_d3_4_aq,
	datad => nx23421z2,
	combout => nx23421z1);

-- Location: FF_X23_Y14_N25
u_kirsch_reg_i_0_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx23421z1,
	asdata => u_kirsch_reg_a2_4_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_4_aq);

-- Location: LCCOMB_X24_Y14_N8
ix15002z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15002z3 = (nx26412z6 & (((u_kirsch_reg_g3_4_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_4_aq))) # (!nx26412z4 & (u_kirsch_reg_a3_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_a3_4_aq,
	datad => u_kirsch_reg_g3_4_aq,
	combout => nx15002z3);

-- Location: LCCOMB_X23_Y14_N18
ix15002z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15002z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_4_aq))) # (!nx26412z2 & (nx15002z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => nx25391z3,
	datac => nx15002z3,
	datad => u_kirsch_reg_e3_4_aq,
	combout => nx15002z2);

-- Location: LCCOMB_X23_Y14_N26
ix15002z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15002z4 = ((u_kirsch_reg_row_index_1_aq) # ((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4)))) # (!nx25391z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_row_index_1_aq,
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(4),
	combout => nx15002z4);

-- Location: LCCOMB_X23_Y14_N22
ix15002z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15002z1 = (nx15002z2 & (((nx15002z4 & nx57076z2)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx15002z2,
	datac => nx15002z4,
	datad => nx57076z2,
	combout => nx15002z1);

-- Location: FF_X23_Y14_N23
u_kirsch_reg_i_1_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15002z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_4_aq);

-- Location: LCCOMB_X22_Y16_N28
ix22424z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22424z2 = (nx26412z4 & (((u_kirsch_reg_g2_3_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_3_aq))) # (!nx26412z6 & (u_kirsch_reg_h3_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_h3_3_aq,
	datac => nx26412z6,
	datad => u_kirsch_reg_g2_3_aq,
	combout => nx22424z2);

-- Location: LCCOMB_X22_Y15_N30
ix22424z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22424z1 = (nx26412z2 & (u_kirsch_reg_d3_3_aq)) # (!nx26412z2 & ((nx22424z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_3_aq,
	datab => nx22424z2,
	datad => nx26412z2,
	combout => nx22424z1);

-- Location: FF_X22_Y15_N31
u_kirsch_reg_i_0_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx22424z1,
	asdata => u_kirsch_reg_a2_3_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_3_aq);

-- Location: LCCOMB_X22_Y15_N12
ix14005z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14005z4 = (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3)) # (((u_kirsch_reg_row_index_1_aq) # (nx41042z3)) # (!nx25391z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(3),
	datab => nx25391z3,
	datac => u_kirsch_reg_row_index_1_aq,
	datad => nx41042z3,
	combout => nx14005z4);

-- Location: LCCOMB_X22_Y16_N22
ix14005z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14005z3 = (nx26412z6 & (u_kirsch_reg_g3_3_aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_3_aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => u_kirsch_reg_g3_3_aq,
	datac => u_kirsch_reg_a3_3_aq,
	datad => nx26412z4,
	combout => nx14005z3);

-- Location: LCCOMB_X22_Y15_N26
ix14005z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14005z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_3_aq))) # (!nx26412z2 & (nx14005z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx26412z2,
	datac => nx14005z3,
	datad => u_kirsch_reg_e3_3_aq,
	combout => nx14005z2);

-- Location: LCCOMB_X22_Y15_N24
ix14005z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14005z1 = (nx14005z2 & (((nx14005z4 & nx58073z2)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx14005z4,
	datab => nx25391z3,
	datac => nx14005z2,
	datad => nx58073z2,
	combout => nx14005z1);

-- Location: FF_X22_Y15_N25
u_kirsch_reg_i_1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx14005z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_3_aq);

-- Location: LCCOMB_X22_Y16_N2
ix21427z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21427z2 = (nx26412z4 & (((u_kirsch_reg_g2_2_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_2_aq))) # (!nx26412z6 & (u_kirsch_reg_h3_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_h3_2_aq,
	datac => nx26412z6,
	datad => u_kirsch_reg_g2_2_aq,
	combout => nx21427z2);

-- Location: LCCOMB_X19_Y14_N0
ix21427z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21427z1 = (nx26412z2 & (u_kirsch_reg_d3_2_aq)) # (!nx26412z2 & ((nx21427z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_2_aq,
	datab => nx26412z2,
	datad => nx21427z2,
	combout => nx21427z1);

-- Location: FF_X19_Y14_N1
u_kirsch_reg_i_0_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx21427z1,
	asdata => u_kirsch_reg_a2_2_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_2_aq);

-- Location: LCCOMB_X22_Y16_N4
ix13008z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13008z3 = (nx26412z6 & (u_kirsch_reg_g3_2_aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_2_aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g3_2_aq,
	datab => nx26412z6,
	datac => u_kirsch_reg_a3_2_aq,
	datad => nx26412z4,
	combout => nx13008z3);

-- Location: LCCOMB_X19_Y14_N8
ix13008z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13008z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_2_aq))) # (!nx26412z2 & (nx13008z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx13008z3,
	datab => nx25391z3,
	datac => nx26412z2,
	datad => u_kirsch_reg_e3_2_aq,
	combout => nx13008z2);

-- Location: LCCOMB_X19_Y14_N2
ix13008z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13008z4 = (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2)) # (((nx41042z3) # (u_kirsch_reg_row_index_1_aq)) # (!nx25391z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(2),
	datab => nx25391z3,
	datac => nx41042z3,
	datad => u_kirsch_reg_row_index_1_aq,
	combout => nx13008z4);

-- Location: LCCOMB_X19_Y14_N30
ix13008z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13008z1 = (nx13008z2 & (((nx59070z2 & nx13008z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59070z2,
	datab => nx25391z3,
	datac => nx13008z2,
	datad => nx13008z4,
	combout => nx13008z1);

-- Location: FF_X19_Y14_N31
u_kirsch_reg_i_1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13008z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_2_aq);

-- Location: LCCOMB_X22_Y16_N0
ix20430z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20430z2 = (nx26412z4 & (u_kirsch_reg_g2_1_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g2_1_aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g2_1_aq,
	datac => nx26412z6,
	datad => u_kirsch_reg_h3_1_aq,
	combout => nx20430z2);

-- Location: LCCOMB_X23_Y17_N8
ix20430z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20430z1 = (nx26412z2 & ((u_kirsch_reg_d3_1_aq))) # (!nx26412z2 & (nx20430z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => nx20430z2,
	datad => u_kirsch_reg_d3_1_aq,
	combout => nx20430z1);

-- Location: FF_X23_Y17_N9
u_kirsch_reg_i_0_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx20430z1,
	asdata => u_kirsch_reg_a2_1_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_1_aq);

-- Location: LCCOMB_X22_Y16_N18
ix12011z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12011z3 = (nx26412z4 & (u_kirsch_reg_g3_1_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g3_1_aq)) # (!nx26412z6 & ((u_kirsch_reg_a3_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g3_1_aq,
	datac => u_kirsch_reg_a3_1_aq,
	datad => nx26412z6,
	combout => nx12011z3);

-- Location: LCCOMB_X23_Y17_N26
ix12011z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12011z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_1_aq)) # (!nx26412z2 & ((nx12011z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => u_kirsch_reg_e3_1_aq,
	datac => nx12011z3,
	datad => nx25391z3,
	combout => nx12011z2);

-- Location: LCCOMB_X23_Y17_N12
ix12011z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12011z4 = (u_kirsch_reg_row_index_1_aq) # (((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1))) # (!nx25391z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => nx25391z3,
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(1),
	combout => nx12011z4);

-- Location: LCCOMB_X23_Y17_N24
ix12011z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12011z1 = (nx12011z2 & (((nx60067z2 & nx12011z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx12011z2,
	datab => nx25391z3,
	datac => nx60067z2,
	datad => nx12011z4,
	combout => nx12011z1);

-- Location: FF_X23_Y17_N25
u_kirsch_reg_i_1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx12011z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_1_aq);

-- Location: LCCOMB_X24_Y15_N24
ix11014z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11014z3 = (nx26412z4 & (u_kirsch_reg_g3_0_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g3_0_aq)) # (!nx26412z6 & ((u_kirsch_reg_a3_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_g3_0_aq,
	datac => u_kirsch_reg_a3_0_aq,
	datad => nx26412z6,
	combout => nx11014z3);

-- Location: LCCOMB_X24_Y15_N26
ix11014z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11014z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_0_aq)) # (!nx26412z2 & ((nx11014z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_e3_0_aq,
	datab => nx11014z3,
	datac => nx25391z3,
	datad => nx26412z2,
	combout => nx11014z2);

-- Location: LCCOMB_X22_Y14_N2
ix11014z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11014z4 = (u_kirsch_reg_row_index_1_aq) # ((nx41042z3) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => nx41042z3,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(0),
	datad => nx25391z3,
	combout => nx11014z4);

-- Location: LCCOMB_X23_Y16_N24
ix11014z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11014z1 = (nx11014z2 & (((nx61064z2 & nx11014z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11014z2,
	datab => nx25391z3,
	datac => nx61064z2,
	datad => nx11014z4,
	combout => nx11014z1);

-- Location: FF_X23_Y16_N25
u_kirsch_reg_i_1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11014z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_0_aq);

-- Location: LCCOMB_X24_Y12_N0
ix19433z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19433z2 = (nx26412z4 & (((u_kirsch_reg_g2_0_aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_0_aq))) # (!nx26412z6 & (u_kirsch_reg_h3_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z4,
	datab => u_kirsch_reg_h3_0_aq,
	datac => nx26412z6,
	datad => u_kirsch_reg_g2_0_aq,
	combout => nx19433z2);

-- Location: LCCOMB_X20_Y15_N0
ix19433z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19433z1 = (nx26412z2 & (u_kirsch_reg_d3_0_aq)) # (!nx26412z2 & ((nx19433z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => u_kirsch_reg_d3_0_aq,
	datad => nx19433z2,
	combout => nx19433z1);

-- Location: FF_X20_Y15_N1
u_kirsch_reg_i_0_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx19433z1,
	asdata => u_kirsch_reg_a2_0_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_0_aq);

-- Location: LCCOMB_X20_Y16_N14
u_kirsch_r_add0_a_add8_0i1_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(0) = (u_kirsch_reg_i_1_0_aq & (u_kirsch_reg_i_0_0_aq $ (VCC))) # (!u_kirsch_reg_i_1_0_aq & (u_kirsch_reg_i_0_0_aq & VCC))
-- nx14816z1 = CARRY((u_kirsch_reg_i_1_0_aq & u_kirsch_reg_i_0_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_1_0_aq,
	datab => u_kirsch_reg_i_0_0_aq,
	datad => VCC,
	combout => u_kirsch_r_add0_a_0n1s1(0),
	cout => nx14816z1);

-- Location: LCCOMB_X20_Y16_N16
u_kirsch_r_add0_a_add8_0i1_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(1) = (u_kirsch_reg_i_0_1_aq & ((u_kirsch_reg_i_1_1_aq & (nx14816z1 & VCC)) # (!u_kirsch_reg_i_1_1_aq & (!nx14816z1)))) # (!u_kirsch_reg_i_0_1_aq & ((u_kirsch_reg_i_1_1_aq & (!nx14816z1)) # (!u_kirsch_reg_i_1_1_aq & ((nx14816z1) # 
-- (GND)))))
-- nx1515z1 = CARRY((u_kirsch_reg_i_0_1_aq & (!u_kirsch_reg_i_1_1_aq & !nx14816z1)) # (!u_kirsch_reg_i_0_1_aq & ((!nx14816z1) # (!u_kirsch_reg_i_1_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_1_aq,
	datab => u_kirsch_reg_i_1_1_aq,
	datad => VCC,
	cin => nx14816z1,
	combout => u_kirsch_r_add0_a_0n1s1(1),
	cout => nx1515z1);

-- Location: LCCOMB_X20_Y16_N18
u_kirsch_r_add0_a_add8_0i1_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(2) = ((u_kirsch_reg_i_0_2_aq $ (u_kirsch_reg_i_1_2_aq $ (!nx1515z1)))) # (GND)
-- nx29633z1 = CARRY((u_kirsch_reg_i_0_2_aq & ((u_kirsch_reg_i_1_2_aq) # (!nx1515z1))) # (!u_kirsch_reg_i_0_2_aq & (u_kirsch_reg_i_1_2_aq & !nx1515z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_2_aq,
	datab => u_kirsch_reg_i_1_2_aq,
	datad => VCC,
	cin => nx1515z1,
	combout => u_kirsch_r_add0_a_0n1s1(2),
	cout => nx29633z1);

-- Location: LCCOMB_X20_Y16_N20
u_kirsch_r_add0_a_add8_0i1_ix47_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(3) = (u_kirsch_reg_i_0_3_aq & ((u_kirsch_reg_i_1_3_aq & (nx29633z1 & VCC)) # (!u_kirsch_reg_i_1_3_aq & (!nx29633z1)))) # (!u_kirsch_reg_i_0_3_aq & ((u_kirsch_reg_i_1_3_aq & (!nx29633z1)) # (!u_kirsch_reg_i_1_3_aq & ((nx29633z1) # 
-- (GND)))))
-- nx13302z1 = CARRY((u_kirsch_reg_i_0_3_aq & (!u_kirsch_reg_i_1_3_aq & !nx29633z1)) # (!u_kirsch_reg_i_0_3_aq & ((!nx29633z1) # (!u_kirsch_reg_i_1_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_3_aq,
	datab => u_kirsch_reg_i_1_3_aq,
	datad => VCC,
	cin => nx29633z1,
	combout => u_kirsch_r_add0_a_0n1s1(3),
	cout => nx13302z1);

-- Location: LCCOMB_X20_Y16_N22
u_kirsch_r_add0_a_add8_0i1_ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(4) = ((u_kirsch_reg_i_0_4_aq $ (u_kirsch_reg_i_1_4_aq $ (!nx13302z1)))) # (GND)
-- nx21086z1 = CARRY((u_kirsch_reg_i_0_4_aq & ((u_kirsch_reg_i_1_4_aq) # (!nx13302z1))) # (!u_kirsch_reg_i_0_4_aq & (u_kirsch_reg_i_1_4_aq & !nx13302z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_4_aq,
	datab => u_kirsch_reg_i_1_4_aq,
	datad => VCC,
	cin => nx13302z1,
	combout => u_kirsch_r_add0_a_0n1s1(4),
	cout => nx21086z1);

-- Location: FF_X20_Y16_N23
u_kirsch_reg_r_add0_a_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(4),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_4_aq);

-- Location: FF_X20_Y16_N21
u_kirsch_reg_r_add0_a_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(3),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_3_aq);

-- Location: LCCOMB_X23_Y15_N2
ix36643z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(3) = (nx40631z1 & (u_kirsch_reg_i_3_3_aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_i_3_3_aq,
	datac => nx40631z1,
	datad => u_kirsch_reg_i_2_3_aq,
	combout => u_kirsch_r_max0_1n2ss1(3));

-- Location: FF_X23_Y15_N3
u_kirsch_reg_r_max0_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(3),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_3_aq);

-- Location: LCCOMB_X27_Y16_N14
ix35646z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(2) = (nx40631z1 & ((u_kirsch_reg_i_3_2_aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_i_2_2_aq,
	datac => u_kirsch_reg_i_3_2_aq,
	datad => nx40631z1,
	combout => u_kirsch_r_max0_1n2ss1(2));

-- Location: FF_X27_Y16_N15
u_kirsch_reg_r_max0_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(2),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_2_aq);

-- Location: FF_X20_Y16_N19
u_kirsch_reg_r_add0_a_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(2),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_2_aq);

-- Location: FF_X20_Y16_N17
u_kirsch_reg_r_add0_a_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(1),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_1_aq);

-- Location: LCCOMB_X23_Y15_N4
ix34649z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(1) = (nx40631z1 & ((u_kirsch_reg_i_3_1_aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_1_aq,
	datac => nx40631z1,
	datad => u_kirsch_reg_i_3_1_aq,
	combout => u_kirsch_r_max0_1n2ss1(1));

-- Location: FF_X23_Y15_N5
u_kirsch_reg_r_max0_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(1),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_1_aq);

-- Location: LCCOMB_X27_Y16_N24
ix33652z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(0) = (nx40631z1 & ((u_kirsch_reg_i_3_0_aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_0_aq,
	datab => u_kirsch_reg_i_3_0_aq,
	datad => nx40631z1,
	combout => u_kirsch_r_max0_1n2ss1(0));

-- Location: FF_X27_Y16_N25
u_kirsch_reg_r_max0_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(0),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_0_aq);

-- Location: FF_X20_Y16_N15
u_kirsch_reg_r_add0_a_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(0),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_0_aq);

-- Location: LCCOMB_X19_Y19_N0
u_kirsch_r_add1_a_add9_3i1_ix37_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(0) = (u_kirsch_reg_r_max0_0_aq & (u_kirsch_reg_r_add0_a_0_aq $ (VCC))) # (!u_kirsch_reg_r_max0_0_aq & (u_kirsch_reg_r_add0_a_0_aq & VCC))
-- nx53938z1 = CARRY((u_kirsch_reg_r_max0_0_aq & u_kirsch_reg_r_add0_a_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_0_aq,
	datab => u_kirsch_reg_r_add0_a_0_aq,
	datad => VCC,
	combout => u_kirsch_r_add1_a_3n1s1(0),
	cout => nx53938z1);

-- Location: LCCOMB_X19_Y19_N2
u_kirsch_r_add1_a_add9_3i1_ix41_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(1) = (u_kirsch_reg_r_add0_a_1_aq & ((u_kirsch_reg_r_max0_1_aq & (nx53938z1 & VCC)) # (!u_kirsch_reg_r_max0_1_aq & (!nx53938z1)))) # (!u_kirsch_reg_r_add0_a_1_aq & ((u_kirsch_reg_r_max0_1_aq & (!nx53938z1)) # 
-- (!u_kirsch_reg_r_max0_1_aq & ((nx53938z1) # (GND)))))
-- nx42746z1 = CARRY((u_kirsch_reg_r_add0_a_1_aq & (!u_kirsch_reg_r_max0_1_aq & !nx53938z1)) # (!u_kirsch_reg_r_add0_a_1_aq & ((!nx53938z1) # (!u_kirsch_reg_r_max0_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add0_a_1_aq,
	datab => u_kirsch_reg_r_max0_1_aq,
	datad => VCC,
	cin => nx53938z1,
	combout => u_kirsch_r_add1_a_3n1s1(1),
	cout => nx42746z1);

-- Location: LCCOMB_X19_Y19_N4
u_kirsch_r_add1_a_add9_3i1_ix45_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(2) = ((u_kirsch_reg_r_max0_2_aq $ (u_kirsch_reg_r_add0_a_2_aq $ (!nx42746z1)))) # (GND)
-- nx57178z1 = CARRY((u_kirsch_reg_r_max0_2_aq & ((u_kirsch_reg_r_add0_a_2_aq) # (!nx42746z1))) # (!u_kirsch_reg_r_max0_2_aq & (u_kirsch_reg_r_add0_a_2_aq & !nx42746z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_2_aq,
	datab => u_kirsch_reg_r_add0_a_2_aq,
	datad => VCC,
	cin => nx42746z1,
	combout => u_kirsch_r_add1_a_3n1s1(2),
	cout => nx57178z1);

-- Location: LCCOMB_X19_Y19_N6
u_kirsch_r_add1_a_add9_3i1_ix49_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(3) = (u_kirsch_reg_r_add0_a_3_aq & ((u_kirsch_reg_r_max0_3_aq & (nx57178z1 & VCC)) # (!u_kirsch_reg_r_max0_3_aq & (!nx57178z1)))) # (!u_kirsch_reg_r_add0_a_3_aq & ((u_kirsch_reg_r_max0_3_aq & (!nx57178z1)) # 
-- (!u_kirsch_reg_r_max0_3_aq & ((nx57178z1) # (GND)))))
-- nx7973z1 = CARRY((u_kirsch_reg_r_add0_a_3_aq & (!u_kirsch_reg_r_max0_3_aq & !nx57178z1)) # (!u_kirsch_reg_r_add0_a_3_aq & ((!nx57178z1) # (!u_kirsch_reg_r_max0_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add0_a_3_aq,
	datab => u_kirsch_reg_r_max0_3_aq,
	datad => VCC,
	cin => nx57178z1,
	combout => u_kirsch_r_add1_a_3n1s1(3),
	cout => nx7973z1);

-- Location: LCCOMB_X19_Y19_N8
u_kirsch_r_add1_a_add9_3i1_ix53_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(4) = ((u_kirsch_reg_r_max0_4_aq $ (u_kirsch_reg_r_add0_a_4_aq $ (!nx7973z1)))) # (GND)
-- nx23175z1 = CARRY((u_kirsch_reg_r_max0_4_aq & ((u_kirsch_reg_r_add0_a_4_aq) # (!nx7973z1))) # (!u_kirsch_reg_r_max0_4_aq & (u_kirsch_reg_r_add0_a_4_aq & !nx7973z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_4_aq,
	datab => u_kirsch_reg_r_add0_a_4_aq,
	datad => VCC,
	cin => nx7973z1,
	combout => u_kirsch_r_add1_a_3n1s1(4),
	cout => nx23175z1);

-- Location: FF_X19_Y19_N9
u_kirsch_reg_r_add1_a_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(4),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_4_aq);

-- Location: FF_X15_Y19_N27
u_kirsch_reg_r_add1_b_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_4_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_4_aq);

-- Location: LCCOMB_X20_Y18_N22
ix29221z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z3 = (!u_kirsch_reg_stg_counter2_3_aq & (u_kirsch_reg_stg_counter2_1_aq & (!u_kirsch_reg_stg_counter2_2_aq & u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx29221z3);

-- Location: LCCOMB_X19_Y16_N10
ix17993z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17993z4 = ((u_kirsch_reg_row_index_1_aq) # ((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7)))) # (!nx25391z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => u_kirsch_reg_row_index_1_aq,
	datac => nx41042z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(7),
	combout => nx17993z4);

-- Location: LCCOMB_X24_Y14_N14
ix17993z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17993z3 = (nx26412z6 & (((u_kirsch_reg_g3_7_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_7_aq))) # (!nx26412z4 & (u_kirsch_reg_a3_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_a3_7_aq,
	datad => u_kirsch_reg_g3_7_aq,
	combout => nx17993z3);

-- Location: LCCOMB_X24_Y14_N16
ix17993z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17993z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_7_aq))) # (!nx26412z2 & (nx17993z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx17993z3,
	datac => nx26412z2,
	datad => u_kirsch_reg_e3_7_aq,
	combout => nx17993z2);

-- Location: LCCOMB_X19_Y16_N14
ix17993z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17993z1 = (nx17993z2 & (((nx17993z4 & nx63433z2)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17993z4,
	datab => nx25391z3,
	datac => nx17993z2,
	datad => nx63433z2,
	combout => nx17993z1);

-- Location: FF_X19_Y16_N15
u_kirsch_reg_i_1_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17993z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_7_aq);

-- Location: LCCOMB_X19_Y16_N30
ix26412z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z5 = (nx26412z4 & (u_kirsch_reg_f3_7_aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_f3_7_aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_7_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_f3_7_aq,
	datab => nx26412z4,
	datac => u_kirsch_reg_h3_7_aq,
	datad => nx26412z6,
	combout => nx26412z5);

-- Location: LCCOMB_X27_Y16_N22
ix26412z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z1 = (nx26412z2 & ((u_kirsch_reg_d3_7_aq))) # (!nx26412z2 & (nx26412z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z5,
	datab => u_kirsch_reg_d3_7_aq,
	datad => nx26412z2,
	combout => nx26412z1);

-- Location: FF_X27_Y16_N23
u_kirsch_reg_i_0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx26412z1,
	asdata => u_kirsch_reg_b3_7_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_7_aq);

-- Location: LCCOMB_X24_Y14_N18
ix25415z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25415z2 = (nx26412z6 & (((u_kirsch_reg_g2_6_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g2_6_aq))) # (!nx26412z4 & (u_kirsch_reg_h3_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_h3_6_aq,
	datad => u_kirsch_reg_g2_6_aq,
	combout => nx25415z2);

-- Location: LCCOMB_X22_Y14_N16
ix25415z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25415z1 = (nx26412z2 & (u_kirsch_reg_d3_6_aq)) # (!nx26412z2 & ((nx25415z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => u_kirsch_reg_d3_6_aq,
	datad => nx25415z2,
	combout => nx25415z1);

-- Location: FF_X22_Y14_N17
u_kirsch_reg_i_0_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx25415z1,
	asdata => u_kirsch_reg_a2_6_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_6_aq);

-- Location: LCCOMB_X24_Y14_N28
ix16996z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16996z3 = (nx26412z6 & (((u_kirsch_reg_g3_6_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_6_aq))) # (!nx26412z4 & (u_kirsch_reg_a3_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => nx26412z4,
	datac => u_kirsch_reg_a3_6_aq,
	datad => u_kirsch_reg_g3_6_aq,
	combout => nx16996z3);

-- Location: LCCOMB_X22_Y14_N26
ix16996z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16996z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_6_aq)) # (!nx26412z2 & ((nx16996z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z2,
	datab => u_kirsch_reg_e3_6_aq,
	datac => nx25391z3,
	datad => nx16996z3,
	combout => nx16996z2);

-- Location: LCCOMB_X22_Y14_N20
ix16996z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16996z4 = (u_kirsch_reg_row_index_1_aq) # ((nx41042z3) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_row_index_1_aq,
	datab => nx41042z3,
	datac => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(6),
	datad => nx25391z3,
	combout => nx16996z4);

-- Location: LCCOMB_X22_Y14_N8
ix16996z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16996z1 = (nx16996z2 & (((nx55082z2 & nx16996z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx16996z2,
	datac => nx55082z2,
	datad => nx16996z4,
	combout => nx16996z1);

-- Location: FF_X22_Y14_N9
u_kirsch_reg_i_1_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx16996z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_6_aq);

-- Location: LCCOMB_X22_Y18_N20
ix24418z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24418z2 = (nx26412z6 & (((u_kirsch_reg_g2_5_aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g2_5_aq))) # (!nx26412z4 & (u_kirsch_reg_h3_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26412z6,
	datab => u_kirsch_reg_h3_5_aq,
	datac => u_kirsch_reg_g2_5_aq,
	datad => nx26412z4,
	combout => nx24418z2);

-- Location: LCCOMB_X20_Y14_N8
ix24418z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24418z1 = (nx26412z2 & (u_kirsch_reg_d3_5_aq)) # (!nx26412z2 & ((nx24418z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_d3_5_aq,
	datab => nx26412z2,
	datad => nx24418z2,
	combout => nx24418z1);

-- Location: FF_X20_Y14_N9
u_kirsch_reg_i_0_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx24418z1,
	asdata => u_kirsch_reg_a2_5_aq,
	sload => nx25391z3,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_0_5_aq);

-- Location: LCCOMB_X22_Y18_N22
ix15999z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15999z3 = (nx26412z6 & (u_kirsch_reg_g3_5_aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_5_aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_5_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_g3_5_aq,
	datab => nx26412z6,
	datac => u_kirsch_reg_a3_5_aq,
	datad => nx26412z4,
	combout => nx15999z3);

-- Location: LCCOMB_X20_Y14_N2
ix15999z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15999z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_5_aq)) # (!nx26412z2 & ((nx15999z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx26412z2,
	datac => u_kirsch_reg_e3_5_aq,
	datad => nx15999z3,
	combout => nx15999z2);

-- Location: LCCOMB_X20_Y14_N12
ix15999z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15999z4 = (nx41042z3) # ((u_kirsch_reg_row_index_1_aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z3,
	datab => u_kirsch_reg_row_index_1_aq,
	datac => nx25391z3,
	datad => u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a(5),
	combout => nx15999z4);

-- Location: LCCOMB_X20_Y14_N16
ix15999z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15999z1 = (nx15999z2 & (((nx56079z2 & nx15999z4)) # (!nx25391z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25391z3,
	datab => nx15999z2,
	datac => nx56079z2,
	datad => nx15999z4,
	combout => nx15999z1);

-- Location: FF_X20_Y14_N17
u_kirsch_reg_i_1_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15999z1,
	ena => nx26412z7,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_i_1_5_aq);

-- Location: LCCOMB_X20_Y16_N24
u_kirsch_r_add0_a_add8_0i1_ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(5) = (u_kirsch_reg_i_0_5_aq & ((u_kirsch_reg_i_1_5_aq & (nx21086z1 & VCC)) # (!u_kirsch_reg_i_1_5_aq & (!nx21086z1)))) # (!u_kirsch_reg_i_0_5_aq & ((u_kirsch_reg_i_1_5_aq & (!nx21086z1)) # (!u_kirsch_reg_i_1_5_aq & ((nx21086z1) # 
-- (GND)))))
-- nx55474z1 = CARRY((u_kirsch_reg_i_0_5_aq & (!u_kirsch_reg_i_1_5_aq & !nx21086z1)) # (!u_kirsch_reg_i_0_5_aq & ((!nx21086z1) # (!u_kirsch_reg_i_1_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_5_aq,
	datab => u_kirsch_reg_i_1_5_aq,
	datad => VCC,
	cin => nx21086z1,
	combout => u_kirsch_r_add0_a_0n1s1(5),
	cout => nx55474z1);

-- Location: LCCOMB_X20_Y16_N26
u_kirsch_r_add0_a_add8_0i1_ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(6) = ((u_kirsch_reg_i_0_6_aq $ (u_kirsch_reg_i_1_6_aq $ (!nx55474z1)))) # (GND)
-- nx59267z1 = CARRY((u_kirsch_reg_i_0_6_aq & ((u_kirsch_reg_i_1_6_aq) # (!nx55474z1))) # (!u_kirsch_reg_i_0_6_aq & (u_kirsch_reg_i_1_6_aq & !nx55474z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_0_6_aq,
	datab => u_kirsch_reg_i_1_6_aq,
	datad => VCC,
	cin => nx55474z1,
	combout => u_kirsch_r_add0_a_0n1s1(6),
	cout => nx59267z1);

-- Location: LCCOMB_X20_Y16_N28
u_kirsch_r_add0_a_add8_0i1_ix63_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(7) = (u_kirsch_reg_i_1_7_aq & ((u_kirsch_reg_i_0_7_aq & (nx59267z1 & VCC)) # (!u_kirsch_reg_i_0_7_aq & (!nx59267z1)))) # (!u_kirsch_reg_i_1_7_aq & ((u_kirsch_reg_i_0_7_aq & (!nx59267z1)) # (!u_kirsch_reg_i_0_7_aq & ((nx59267z1) # 
-- (GND)))))
-- nx51089z1 = CARRY((u_kirsch_reg_i_1_7_aq & (!u_kirsch_reg_i_0_7_aq & !nx59267z1)) # (!u_kirsch_reg_i_1_7_aq & ((!nx59267z1) # (!u_kirsch_reg_i_0_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_1_7_aq,
	datab => u_kirsch_reg_i_0_7_aq,
	datad => VCC,
	cin => nx59267z1,
	combout => u_kirsch_r_add0_a_0n1s1(7),
	cout => nx51089z1);

-- Location: LCCOMB_X20_Y16_N30
u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add0_a_0n1s1(8) = !nx51089z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx51089z1,
	combout => u_kirsch_r_add0_a_0n1s1(8));

-- Location: FF_X20_Y16_N31
u_kirsch_reg_r_add0_a_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(8),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_8_aq);

-- Location: LCCOMB_X27_Y16_N2
ix40631z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(7) = (nx40631z1 & (u_kirsch_reg_i_3_7_aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_7_aq,
	datab => u_kirsch_reg_i_2_7_aq,
	datad => nx40631z1,
	combout => u_kirsch_r_max0_1n2ss1(7));

-- Location: FF_X27_Y16_N3
u_kirsch_reg_r_max0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(7),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_7_aq);

-- Location: FF_X20_Y16_N29
u_kirsch_reg_r_add0_a_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(7),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_7_aq);

-- Location: LCCOMB_X23_Y15_N6
ix39634z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(6) = (nx40631z1 & (u_kirsch_reg_i_3_6_aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_3_6_aq,
	datac => nx40631z1,
	datad => u_kirsch_reg_i_2_6_aq,
	combout => u_kirsch_r_max0_1n2ss1(6));

-- Location: FF_X23_Y15_N7
u_kirsch_reg_r_max0_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(6),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_6_aq);

-- Location: FF_X20_Y16_N27
u_kirsch_reg_r_add0_a_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(6),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_6_aq);

-- Location: LCCOMB_X27_Y16_N12
ix38637z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max0_1n2ss1(5) = (nx40631z1 & ((u_kirsch_reg_i_3_5_aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_i_2_5_aq,
	datab => u_kirsch_reg_i_3_5_aq,
	datad => nx40631z1,
	combout => u_kirsch_r_max0_1n2ss1(5));

-- Location: FF_X27_Y16_N13
u_kirsch_reg_r_max0_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max0_1n2ss1(5),
	ena => nx40631z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max0_5_aq);

-- Location: FF_X20_Y16_N25
u_kirsch_reg_r_add0_a_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add0_a_0n1s1(5),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_a_5_aq);

-- Location: LCCOMB_X19_Y19_N10
u_kirsch_r_add1_a_add9_3i1_ix57_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(5) = (u_kirsch_reg_r_max0_5_aq & ((u_kirsch_reg_r_add0_a_5_aq & (nx23175z1 & VCC)) # (!u_kirsch_reg_r_add0_a_5_aq & (!nx23175z1)))) # (!u_kirsch_reg_r_max0_5_aq & ((u_kirsch_reg_r_add0_a_5_aq & (!nx23175z1)) # 
-- (!u_kirsch_reg_r_add0_a_5_aq & ((nx23175z1) # (GND)))))
-- nx6844z1 = CARRY((u_kirsch_reg_r_max0_5_aq & (!u_kirsch_reg_r_add0_a_5_aq & !nx23175z1)) # (!u_kirsch_reg_r_max0_5_aq & ((!nx23175z1) # (!u_kirsch_reg_r_add0_a_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_5_aq,
	datab => u_kirsch_reg_r_add0_a_5_aq,
	datad => VCC,
	cin => nx23175z1,
	combout => u_kirsch_r_add1_a_3n1s1(5),
	cout => nx6844z1);

-- Location: LCCOMB_X19_Y19_N12
u_kirsch_r_add1_a_add9_3i1_ix61_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(6) = ((u_kirsch_reg_r_max0_6_aq $ (u_kirsch_reg_r_add0_a_6_aq $ (!nx6844z1)))) # (GND)
-- nx27544z1 = CARRY((u_kirsch_reg_r_max0_6_aq & ((u_kirsch_reg_r_add0_a_6_aq) # (!nx6844z1))) # (!u_kirsch_reg_r_max0_6_aq & (u_kirsch_reg_r_add0_a_6_aq & !nx6844z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_6_aq,
	datab => u_kirsch_reg_r_add0_a_6_aq,
	datad => VCC,
	cin => nx6844z1,
	combout => u_kirsch_r_add1_a_3n1s1(6),
	cout => nx27544z1);

-- Location: LCCOMB_X19_Y19_N14
u_kirsch_r_add1_a_add9_3i1_ix65_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(7) = (u_kirsch_reg_r_max0_7_aq & ((u_kirsch_reg_r_add0_a_7_aq & (nx27544z1 & VCC)) # (!u_kirsch_reg_r_add0_a_7_aq & (!nx27544z1)))) # (!u_kirsch_reg_r_max0_7_aq & ((u_kirsch_reg_r_add0_a_7_aq & (!nx27544z1)) # 
-- (!u_kirsch_reg_r_add0_a_7_aq & ((nx27544z1) # (GND)))))
-- nx3604z1 = CARRY((u_kirsch_reg_r_max0_7_aq & (!u_kirsch_reg_r_add0_a_7_aq & !nx27544z1)) # (!u_kirsch_reg_r_max0_7_aq & ((!nx27544z1) # (!u_kirsch_reg_r_add0_a_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max0_7_aq,
	datab => u_kirsch_reg_r_add0_a_7_aq,
	datad => VCC,
	cin => nx27544z1,
	combout => u_kirsch_r_add1_a_3n1s1(7),
	cout => nx3604z1);

-- Location: LCCOMB_X19_Y19_N16
u_kirsch_r_add1_a_add9_3i1_ix69_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(8) = (u_kirsch_reg_r_add0_a_8_aq & (nx3604z1 $ (GND))) # (!u_kirsch_reg_r_add0_a_8_aq & (!nx3604z1 & VCC))
-- nx24080z1 = CARRY((u_kirsch_reg_r_add0_a_8_aq & !nx3604z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add0_a_8_aq,
	datad => VCC,
	cin => nx3604z1,
	combout => u_kirsch_r_add1_a_3n1s1(8),
	cout => nx24080z1);

-- Location: LCCOMB_X19_Y19_N18
u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add1_a_3n1s1(9) = nx24080z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx24080z1,
	combout => u_kirsch_r_add1_a_3n1s1(9));

-- Location: FF_X19_Y19_N19
u_kirsch_reg_r_add1_a_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(9),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_9_aq);

-- Location: FF_X15_Y19_N19
u_kirsch_reg_r_add1_b_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_9_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_9_aq);

-- Location: FF_X19_Y19_N17
u_kirsch_reg_r_add1_a_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(8),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_8_aq);

-- Location: FF_X15_Y19_N17
u_kirsch_reg_r_add1_b_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_8_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_8_aq);

-- Location: FF_X19_Y19_N15
u_kirsch_reg_r_add1_a_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(7),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_7_aq);

-- Location: FF_X15_Y19_N15
u_kirsch_reg_r_add1_b_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_7_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_7_aq);

-- Location: FF_X19_Y19_N13
u_kirsch_reg_r_add1_a_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(6),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_6_aq);

-- Location: FF_X15_Y19_N25
u_kirsch_reg_r_add1_b_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_6_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_6_aq);

-- Location: FF_X19_Y19_N11
u_kirsch_reg_r_add1_a_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(5),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_5_aq);

-- Location: FF_X15_Y19_N11
u_kirsch_reg_r_add1_b_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_5_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_5_aq);

-- Location: FF_X19_Y19_N7
u_kirsch_reg_r_add1_a_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(3),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_3_aq);

-- Location: FF_X15_Y19_N7
u_kirsch_reg_r_add1_b_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_3_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_3_aq);

-- Location: FF_X19_Y19_N5
u_kirsch_reg_r_add1_a_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(2),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_2_aq);

-- Location: FF_X15_Y19_N31
u_kirsch_reg_r_add1_b_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_2_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_2_aq);

-- Location: FF_X19_Y19_N3
u_kirsch_reg_r_add1_a_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(1),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_1_aq);

-- Location: FF_X15_Y19_N29
u_kirsch_reg_r_add1_b_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add1_a_1_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_1_aq);

-- Location: FF_X19_Y19_N1
u_kirsch_reg_r_add1_a_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add1_a_3n1s1(0),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_a_0_aq);

-- Location: LCCOMB_X15_Y19_N22
u_kirsch_reg_r_add1_b_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_r_add1_b_0_afeeder_combout = u_kirsch_reg_r_add1_a_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_kirsch_reg_r_add1_a_0_aq,
	combout => u_kirsch_reg_r_add1_b_0_afeeder_combout);

-- Location: FF_X15_Y19_N23
u_kirsch_reg_r_add1_b_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_r_add1_b_0_afeeder_combout,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add1_b_0_aq);

-- Location: LCCOMB_X15_Y19_N0
u_kirsch_rtlc5_215_gt_26_ix25_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26840z1 = CARRY((u_kirsch_reg_r_add1_a_0_aq & !u_kirsch_reg_r_add1_b_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_0_aq,
	datab => u_kirsch_reg_r_add1_b_0_aq,
	datad => VCC,
	cout => nx26840z1);

-- Location: LCCOMB_X15_Y19_N2
u_kirsch_rtlc5_215_gt_26_ix27_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54270z1 = CARRY((u_kirsch_reg_r_add1_b_1_aq & ((!nx26840z1) # (!u_kirsch_reg_r_add1_a_1_aq))) # (!u_kirsch_reg_r_add1_b_1_aq & (!u_kirsch_reg_r_add1_a_1_aq & !nx26840z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_1_aq,
	datab => u_kirsch_reg_r_add1_a_1_aq,
	datad => VCC,
	cin => nx26840z1,
	cout => nx54270z1);

-- Location: LCCOMB_X15_Y19_N4
u_kirsch_rtlc5_215_gt_26_ix29_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22365z1 = CARRY((u_kirsch_reg_r_add1_b_2_aq & (u_kirsch_reg_r_add1_a_2_aq & !nx54270z1)) # (!u_kirsch_reg_r_add1_b_2_aq & ((u_kirsch_reg_r_add1_a_2_aq) # (!nx54270z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_2_aq,
	datab => u_kirsch_reg_r_add1_a_2_aq,
	datad => VCC,
	cin => nx54270z1,
	cout => nx22365z1);

-- Location: LCCOMB_X15_Y19_N6
u_kirsch_rtlc5_215_gt_26_ix31_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37939z1 = CARRY((u_kirsch_reg_r_add1_b_3_aq & ((!nx22365z1) # (!u_kirsch_reg_r_add1_a_3_aq))) # (!u_kirsch_reg_r_add1_b_3_aq & (!u_kirsch_reg_r_add1_a_3_aq & !nx22365z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_3_aq,
	datab => u_kirsch_reg_r_add1_a_3_aq,
	datad => VCC,
	cin => nx22365z1,
	cout => nx37939z1);

-- Location: LCCOMB_X15_Y19_N8
u_kirsch_rtlc5_215_gt_26_ix33_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12023z1 = CARRY((u_kirsch_reg_r_add1_b_4_aq & (u_kirsch_reg_r_add1_a_4_aq & !nx37939z1)) # (!u_kirsch_reg_r_add1_b_4_aq & ((u_kirsch_reg_r_add1_a_4_aq) # (!nx37939z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_4_aq,
	datab => u_kirsch_reg_r_add1_a_4_aq,
	datad => VCC,
	cin => nx37939z1,
	cout => nx12023z1);

-- Location: LCCOMB_X15_Y19_N10
u_kirsch_rtlc5_215_gt_26_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61985z1 = CARRY((u_kirsch_reg_r_add1_b_5_aq & ((!nx12023z1) # (!u_kirsch_reg_r_add1_a_5_aq))) # (!u_kirsch_reg_r_add1_b_5_aq & (!u_kirsch_reg_r_add1_a_5_aq & !nx12023z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_5_aq,
	datab => u_kirsch_reg_r_add1_a_5_aq,
	datad => VCC,
	cin => nx12023z1,
	cout => nx61985z1);

-- Location: LCCOMB_X15_Y19_N12
u_kirsch_rtlc5_215_gt_26_ix37_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46411z1 = CARRY((u_kirsch_reg_r_add1_a_6_aq & ((!nx61985z1) # (!u_kirsch_reg_r_add1_b_6_aq))) # (!u_kirsch_reg_r_add1_a_6_aq & (!u_kirsch_reg_r_add1_b_6_aq & !nx61985z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_6_aq,
	datab => u_kirsch_reg_r_add1_b_6_aq,
	datad => VCC,
	cin => nx61985z1,
	cout => nx46411z1);

-- Location: LCCOMB_X15_Y19_N14
u_kirsch_rtlc5_215_gt_26_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12780z1 = CARRY((u_kirsch_reg_r_add1_b_7_aq & ((!nx46411z1) # (!u_kirsch_reg_r_add1_a_7_aq))) # (!u_kirsch_reg_r_add1_b_7_aq & (!u_kirsch_reg_r_add1_a_7_aq & !nx46411z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_7_aq,
	datab => u_kirsch_reg_r_add1_a_7_aq,
	datad => VCC,
	cin => nx46411z1,
	cout => nx12780z1);

-- Location: LCCOMB_X15_Y19_N16
u_kirsch_rtlc5_215_gt_26_ix41_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2794z1 = CARRY((u_kirsch_reg_r_add1_a_8_aq & ((!nx12780z1) # (!u_kirsch_reg_r_add1_b_8_aq))) # (!u_kirsch_reg_r_add1_a_8_aq & (!u_kirsch_reg_r_add1_b_8_aq & !nx12780z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_8_aq,
	datab => u_kirsch_reg_r_add1_b_8_aq,
	datad => VCC,
	cin => nx12780z1,
	cout => nx2794z1);

-- Location: LCCOMB_X15_Y19_N18
u_kirsch_rtlc5_215_gt_26_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6502z1 = CARRY((u_kirsch_reg_r_add1_b_9_aq & ((!nx2794z1) # (!u_kirsch_reg_r_add1_a_9_aq))) # (!u_kirsch_reg_r_add1_b_9_aq & (!u_kirsch_reg_r_add1_a_9_aq & !nx2794z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_9_aq,
	datab => u_kirsch_reg_r_add1_a_9_aq,
	datad => VCC,
	cin => nx2794z1,
	cout => nx6502z1);

-- Location: LCCOMB_X15_Y19_N20
u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z4 = nx6502z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx6502z1,
	combout => nx29221z4);

-- Location: LCCOMB_X16_Y19_N24
ix29221z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z1 = (nx29221z4 & ((nx29221z3) # ((nx29221z2 & nx57197z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29221z2,
	datab => nx57197z2,
	datac => nx29221z3,
	datad => nx29221z4,
	combout => nx29221z1);

-- Location: LCCOMB_X16_Y19_N10
ix29221z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(4) = (nx29221z1 & ((u_kirsch_reg_r_add1_b_4_aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add1_a_4_aq,
	datac => u_kirsch_reg_r_add1_b_4_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(4));

-- Location: LCCOMB_X16_Y19_N16
ix34206z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(9) = (nx29221z1 & ((u_kirsch_reg_r_add1_b_9_aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_9_aq,
	datab => u_kirsch_reg_r_add1_b_9_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(9));

-- Location: FF_X16_Y19_N17
u_kirsch_reg_r_max1_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(9),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_9_aq);

-- Location: LCCOMB_X16_Y19_N26
ix33209z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(8) = (nx29221z1 & (u_kirsch_reg_r_add1_b_8_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_8_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add1_b_8_aq,
	datac => u_kirsch_reg_r_add1_a_8_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(8));

-- Location: FF_X16_Y19_N27
u_kirsch_reg_r_max1_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(8),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_8_aq);

-- Location: LCCOMB_X16_Y19_N12
ix32212z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(7) = (nx29221z1 & (u_kirsch_reg_r_add1_b_7_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_7_aq,
	datac => u_kirsch_reg_r_add1_a_7_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(7));

-- Location: FF_X16_Y19_N13
u_kirsch_reg_r_max1_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(7),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_7_aq);

-- Location: LCCOMB_X16_Y19_N22
ix31215z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(6) = (nx29221z1 & (u_kirsch_reg_r_add1_b_6_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add1_b_6_aq,
	datac => u_kirsch_reg_r_add1_a_6_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(6));

-- Location: FF_X16_Y19_N23
u_kirsch_reg_r_max1_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(6),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_6_aq);

-- Location: LCCOMB_X16_Y19_N8
ix30218z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(5) = (nx29221z1 & (u_kirsch_reg_r_add1_b_5_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_b_5_aq,
	datac => u_kirsch_reg_r_add1_a_5_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(5));

-- Location: FF_X16_Y19_N9
u_kirsch_reg_r_max1_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(5),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_5_aq);

-- Location: LCCOMB_X16_Y19_N0
ix28224z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(3) = (nx29221z1 & ((u_kirsch_reg_r_add1_b_3_aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_3_aq,
	datac => u_kirsch_reg_r_add1_b_3_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(3));

-- Location: FF_X16_Y19_N1
u_kirsch_reg_r_max1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(3),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_3_aq);

-- Location: LCCOMB_X16_Y19_N2
ix27227z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(2) = (nx29221z1 & (u_kirsch_reg_r_add1_b_2_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add1_b_2_aq,
	datac => u_kirsch_reg_r_add1_a_2_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(2));

-- Location: FF_X16_Y19_N3
u_kirsch_reg_r_max1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(2),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_2_aq);

-- Location: LCCOMB_X16_Y19_N20
ix26230z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(1) = (nx29221z1 & (u_kirsch_reg_r_add1_b_1_aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add1_b_1_aq,
	datac => u_kirsch_reg_r_add1_a_1_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(1));

-- Location: FF_X16_Y19_N21
u_kirsch_reg_r_max1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(1),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_1_aq);

-- Location: LCCOMB_X16_Y19_N30
ix25233z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_max1_5n6ss1(0) = (nx29221z1 & ((u_kirsch_reg_r_add1_b_0_aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_0_aq,
	datac => u_kirsch_reg_r_add1_b_0_aq,
	datad => nx29221z1,
	combout => u_kirsch_r_max1_5n6ss1(0));

-- Location: FF_X16_Y19_N31
u_kirsch_reg_r_max1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(0),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_0_aq);

-- Location: LCCOMB_X18_Y19_N0
u_kirsch_rtlc5_205_gt_25_ix25_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28806z1 = CARRY((!u_kirsch_reg_r_max1_0_aq & u_kirsch_reg_r_add1_a_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_0_aq,
	datab => u_kirsch_reg_r_add1_a_0_aq,
	datad => VCC,
	cout => nx28806z1);

-- Location: LCCOMB_X18_Y19_N2
u_kirsch_rtlc5_205_gt_25_ix27_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44380z1 = CARRY((u_kirsch_reg_r_add1_a_1_aq & (u_kirsch_reg_r_max1_1_aq & !nx28806z1)) # (!u_kirsch_reg_r_add1_a_1_aq & ((u_kirsch_reg_r_max1_1_aq) # (!nx28806z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_1_aq,
	datab => u_kirsch_reg_r_max1_1_aq,
	datad => VCC,
	cin => nx28806z1,
	cout => nx44380z1);

-- Location: LCCOMB_X18_Y19_N4
u_kirsch_rtlc5_205_gt_25_ix29_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12475z1 = CARRY((u_kirsch_reg_r_add1_a_2_aq & ((!nx44380z1) # (!u_kirsch_reg_r_max1_2_aq))) # (!u_kirsch_reg_r_add1_a_2_aq & (!u_kirsch_reg_r_max1_2_aq & !nx44380z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_2_aq,
	datab => u_kirsch_reg_r_max1_2_aq,
	datad => VCC,
	cin => nx44380z1,
	cout => nx12475z1);

-- Location: LCCOMB_X18_Y19_N6
u_kirsch_rtlc5_205_gt_25_ix31_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37487z1 = CARRY((u_kirsch_reg_r_add1_a_3_aq & (u_kirsch_reg_r_max1_3_aq & !nx12475z1)) # (!u_kirsch_reg_r_add1_a_3_aq & ((u_kirsch_reg_r_max1_3_aq) # (!nx12475z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add1_a_3_aq,
	datab => u_kirsch_reg_r_max1_3_aq,
	datad => VCC,
	cin => nx12475z1,
	cout => nx37487z1);

-- Location: LCCOMB_X18_Y19_N8
u_kirsch_rtlc5_205_gt_25_ix33_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21913z1 = CARRY((u_kirsch_reg_r_max1_4_aq & (u_kirsch_reg_r_add1_a_4_aq & !nx37487z1)) # (!u_kirsch_reg_r_max1_4_aq & ((u_kirsch_reg_r_add1_a_4_aq) # (!nx37487z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_4_aq,
	datab => u_kirsch_reg_r_add1_a_4_aq,
	datad => VCC,
	cin => nx37487z1,
	cout => nx21913z1);

-- Location: LCCOMB_X18_Y19_N10
u_kirsch_rtlc5_205_gt_25_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6339z1 = CARRY((u_kirsch_reg_r_max1_5_aq & ((!nx21913z1) # (!u_kirsch_reg_r_add1_a_5_aq))) # (!u_kirsch_reg_r_max1_5_aq & (!u_kirsch_reg_r_add1_a_5_aq & !nx21913z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_5_aq,
	datab => u_kirsch_reg_r_add1_a_5_aq,
	datad => VCC,
	cin => nx21913z1,
	cout => nx6339z1);

-- Location: LCCOMB_X18_Y19_N12
u_kirsch_rtlc5_205_gt_25_ix37_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56301z1 = CARRY((u_kirsch_reg_r_max1_6_aq & (u_kirsch_reg_r_add1_a_6_aq & !nx6339z1)) # (!u_kirsch_reg_r_max1_6_aq & ((u_kirsch_reg_r_add1_a_6_aq) # (!nx6339z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_6_aq,
	datab => u_kirsch_reg_r_add1_a_6_aq,
	datad => VCC,
	cin => nx6339z1,
	cout => nx56301z1);

-- Location: LCCOMB_X18_Y19_N14
u_kirsch_rtlc5_205_gt_25_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42866z1 = CARRY((u_kirsch_reg_r_max1_7_aq & ((!nx56301z1) # (!u_kirsch_reg_r_add1_a_7_aq))) # (!u_kirsch_reg_r_max1_7_aq & (!u_kirsch_reg_r_add1_a_7_aq & !nx56301z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_7_aq,
	datab => u_kirsch_reg_r_add1_a_7_aq,
	datad => VCC,
	cin => nx56301z1,
	cout => nx42866z1);

-- Location: LCCOMB_X18_Y19_N16
u_kirsch_rtlc5_205_gt_25_ix41_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58440z1 = CARRY((u_kirsch_reg_r_max1_8_aq & (u_kirsch_reg_r_add1_a_8_aq & !nx42866z1)) # (!u_kirsch_reg_r_max1_8_aq & ((u_kirsch_reg_r_add1_a_8_aq) # (!nx42866z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_8_aq,
	datab => u_kirsch_reg_r_add1_a_8_aq,
	datad => VCC,
	cin => nx42866z1,
	cout => nx58440z1);

-- Location: LCCOMB_X18_Y19_N18
u_kirsch_rtlc5_205_gt_25_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1252z1 = CARRY((u_kirsch_reg_r_max1_9_aq & ((!nx58440z1) # (!u_kirsch_reg_r_add1_a_9_aq))) # (!u_kirsch_reg_r_max1_9_aq & (!u_kirsch_reg_r_add1_a_9_aq & !nx58440z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_9_aq,
	datab => u_kirsch_reg_r_add1_a_9_aq,
	datad => VCC,
	cin => nx58440z1,
	cout => nx1252z1);

-- Location: LCCOMB_X18_Y19_N20
u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z7 = !nx1252z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx1252z1,
	combout => nx29221z7);

-- Location: LCCOMB_X16_Y19_N28
ix29221z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z6 = (!nx29221z3 & (!nx29221z7 & ((!nx57197z2) # (!nx29221z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29221z2,
	datab => nx29221z3,
	datac => nx29221z7,
	datad => nx57197z2,
	combout => nx29221z6);

-- Location: LCCOMB_X16_Y19_N14
ix29221z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29221z5 = (nx29221z8 & !nx29221z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx29221z8,
	datad => nx29221z6,
	combout => nx29221z5);

-- Location: FF_X16_Y19_N11
u_kirsch_reg_r_max1_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_max1_5n6ss1(4),
	ena => nx29221z5,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_max1_4_aq);

-- Location: LCCOMB_X18_Y19_N30
ix60486z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z8 = (u_kirsch_reg_r_max1_4_aq & ((u_kirsch_reg_r_max1_3_aq $ (u_kirsch_reg_r_add1_a_3_aq)) # (!u_kirsch_reg_r_add1_a_4_aq))) # (!u_kirsch_reg_r_max1_4_aq & ((u_kirsch_reg_r_add1_a_4_aq) # (u_kirsch_reg_r_max1_3_aq $ (u_kirsch_reg_r_add1_a_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_4_aq,
	datab => u_kirsch_reg_r_max1_3_aq,
	datac => u_kirsch_reg_r_add1_a_4_aq,
	datad => u_kirsch_reg_r_add1_a_3_aq,
	combout => nx60486z8);

-- Location: LCCOMB_X18_Y19_N28
ix60486z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z11 = (u_kirsch_reg_r_max1_9_aq & ((u_kirsch_reg_r_add1_a_5_aq $ (u_kirsch_reg_r_max1_5_aq)) # (!u_kirsch_reg_r_add1_a_9_aq))) # (!u_kirsch_reg_r_max1_9_aq & ((u_kirsch_reg_r_add1_a_9_aq) # (u_kirsch_reg_r_add1_a_5_aq $ 
-- (u_kirsch_reg_r_max1_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_9_aq,
	datab => u_kirsch_reg_r_add1_a_9_aq,
	datac => u_kirsch_reg_r_add1_a_5_aq,
	datad => u_kirsch_reg_r_max1_5_aq,
	combout => nx60486z11);

-- Location: LCCOMB_X18_Y19_N26
ix60486z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z10 = (u_kirsch_reg_r_max1_7_aq & ((u_kirsch_reg_r_max1_8_aq $ (u_kirsch_reg_r_add1_a_8_aq)) # (!u_kirsch_reg_r_add1_a_7_aq))) # (!u_kirsch_reg_r_max1_7_aq & ((u_kirsch_reg_r_add1_a_7_aq) # (u_kirsch_reg_r_max1_8_aq $ 
-- (u_kirsch_reg_r_add1_a_8_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_7_aq,
	datab => u_kirsch_reg_r_add1_a_7_aq,
	datac => u_kirsch_reg_r_max1_8_aq,
	datad => u_kirsch_reg_r_add1_a_8_aq,
	combout => nx60486z10);

-- Location: LCCOMB_X18_Y19_N24
ix60486z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z9 = (u_kirsch_reg_r_max1_6_aq & ((u_kirsch_reg_r_max1_1_aq $ (u_kirsch_reg_r_add1_a_1_aq)) # (!u_kirsch_reg_r_add1_a_6_aq))) # (!u_kirsch_reg_r_max1_6_aq & ((u_kirsch_reg_r_add1_a_6_aq) # (u_kirsch_reg_r_max1_1_aq $ (u_kirsch_reg_r_add1_a_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_6_aq,
	datab => u_kirsch_reg_r_max1_1_aq,
	datac => u_kirsch_reg_r_add1_a_6_aq,
	datad => u_kirsch_reg_r_add1_a_1_aq,
	combout => nx60486z9);

-- Location: LCCOMB_X18_Y19_N22
ix60486z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z7 = (nx60486z8) # ((nx60486z11) # ((nx60486z10) # (nx60486z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60486z8,
	datab => nx60486z11,
	datac => nx60486z10,
	datad => nx60486z9,
	combout => nx60486z7);

-- Location: LCCOMB_X20_Y18_N28
ix60486z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z6 = (!u_kirsch_reg_stg_counter2_3_aq & (!u_kirsch_reg_stg_counter2_1_aq & (u_kirsch_reg_stg_counter2_2_aq & !u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx60486z6);

-- Location: LCCOMB_X22_Y18_N0
ix12123z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12123z2 = (u_kirsch_reg_stg_counter1_2_aq & !u_kirsch_reg_stg_counter1_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_2_aq,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	combout => nx12123z2);

-- Location: LCCOMB_X15_Y19_N30
ix60486z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z5 = (u_kirsch_reg_r_max1_2_aq & ((u_kirsch_reg_r_max1_0_aq $ (u_kirsch_reg_r_add1_a_0_aq)) # (!u_kirsch_reg_r_add1_a_2_aq))) # (!u_kirsch_reg_r_max1_2_aq & ((u_kirsch_reg_r_add1_a_2_aq) # (u_kirsch_reg_r_max1_0_aq $ (u_kirsch_reg_r_add1_a_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_2_aq,
	datab => u_kirsch_reg_r_max1_0_aq,
	datac => u_kirsch_reg_r_add1_a_2_aq,
	datad => u_kirsch_reg_r_add1_a_0_aq,
	combout => nx60486z5);

-- Location: LCCOMB_X22_Y18_N8
ix60486z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z4 = (nx60486z6) # ((nx60486z5) # ((nx12123z2 & nx26412z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60486z6,
	datab => nx12123z2,
	datac => nx60486z5,
	datad => nx26412z3,
	combout => nx60486z4);

-- Location: LCCOMB_X16_Y19_N18
ix60486z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z3 = (nx29221z1) # ((nx29221z6 & ((nx60486z7) # (nx60486z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60486z7,
	datab => nx29221z1,
	datac => nx60486z4,
	datad => nx29221z6,
	combout => nx60486z3);

-- Location: LCCOMB_X16_Y17_N8
ix58492z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58492z1 = (nx58492z2 & (u_kirsch_reg_dir2_2_aq)) # (!nx58492z2 & ((nx60486z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx58492z2,
	datac => u_kirsch_reg_dir2_2_aq,
	datad => nx60486z3,
	combout => nx58492z1);

-- Location: FF_X16_Y17_N9
u_kirsch_reg_dir2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx58492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_2_aq);

-- Location: LCCOMB_X20_Y18_N10
ix12123z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12123z3 = (!u_kirsch_reg_stg_counter2_3_aq & (u_kirsch_reg_stg_counter2_1_aq & (u_kirsch_reg_stg_counter2_2_aq & !u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_2_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx12123z3);

-- Location: LCCOMB_X22_Y18_N18
ix12123z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12123z1 = (reset_n_ainput_o & ((nx12123z3) # ((nx41042z9 & nx12123z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx12123z3,
	datab => reset_n_ainput_o,
	datac => nx41042z9,
	datad => nx12123z2,
	combout => nx12123z1);

-- Location: FF_X16_Y17_N13
u_kirsch_reg_dir2_final_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_dir2_2_aq,
	sload => VCC,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_final_2_aq);

-- Location: LCCOMB_X22_Y18_N14
ix2094z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2094z2 = (reset_n_ainput_o & ((nx60486z6) # ((nx12123z2 & nx26412z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => nx12123z2,
	datac => nx60486z6,
	datad => nx26412z3,
	combout => nx2094z2);

-- Location: LCCOMB_X22_Y18_N10
ix52067z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52067z3 = (u_kirsch_reg_stg_counter2_3_aq & (((!u_kirsch_reg_stg_counter1_3_aq & !u_kirsch_reg_stg_counter1_2_aq)))) # (!u_kirsch_reg_stg_counter2_3_aq & (((!u_kirsch_reg_stg_counter1_3_aq & !u_kirsch_reg_stg_counter1_2_aq)) # 
-- (!u_kirsch_reg_stg_counter2_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_3_aq,
	datab => u_kirsch_reg_stg_counter2_2_aq,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => u_kirsch_reg_stg_counter1_2_aq,
	combout => nx52067z3);

-- Location: LCCOMB_X19_Y18_N14
ix64316z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64316z1 = (reset_n_ainput_o & (u_kirsch_reg_max0_bit_counter_0_aq $ (nx52067z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datac => u_kirsch_reg_max0_bit_counter_0_aq,
	datad => nx52067z3,
	combout => nx64316z1);

-- Location: FF_X19_Y18_N15
u_kirsch_reg_max0_bit_counter_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64316z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_max0_bit_counter_0_aq);

-- Location: LCCOMB_X19_Y18_N30
ix63319z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63319z1 = (reset_n_ainput_o & (u_kirsch_reg_max0_bit_counter_1_aq $ (((u_kirsch_reg_max0_bit_counter_0_aq & nx52067z3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => u_kirsch_reg_max0_bit_counter_0_aq,
	datac => u_kirsch_reg_max0_bit_counter_1_aq,
	datad => nx52067z3,
	combout => nx63319z1);

-- Location: FF_X19_Y18_N31
u_kirsch_reg_max0_bit_counter_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63319z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_max0_bit_counter_1_aq);

-- Location: LCCOMB_X19_Y18_N0
ix51070z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51070z1 = (u_kirsch_reg_max0_bit_counter_1_aq & (((u_kirsch_reg_dir1_1_aq)))) # (!u_kirsch_reg_max0_bit_counter_1_aq & ((nx63319z1 & ((nx40631z1))) # (!nx63319z1 & (u_kirsch_reg_dir1_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max0_bit_counter_1_aq,
	datab => nx63319z1,
	datac => u_kirsch_reg_dir1_1_aq,
	datad => nx40631z1,
	combout => nx51070z1);

-- Location: FF_X19_Y18_N1
u_kirsch_reg_dir1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51070z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_1_aq);

-- Location: LCCOMB_X16_Y17_N2
ix3091z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3091z1 = (nx2094z2 & ((u_kirsch_reg_dir1_1_aq))) # (!nx2094z2 & (u_kirsch_reg_dir1_final_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx2094z2,
	datac => u_kirsch_reg_dir1_final_1_aq,
	datad => u_kirsch_reg_dir1_1_aq,
	combout => nx3091z1);

-- Location: FF_X16_Y17_N3
u_kirsch_reg_dir1_final_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx3091z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_final_1_aq);

-- Location: LCCOMB_X16_Y17_N24
ix60486z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z2 = (!u_kirsch_reg_max1_bit_counter_0_aq & (!u_kirsch_reg_max1_bit_counter_1_aq & nx29221z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max1_bit_counter_0_aq,
	datab => u_kirsch_reg_max1_bit_counter_1_aq,
	datad => nx29221z8,
	combout => nx60486z2);

-- Location: LCCOMB_X16_Y17_N18
ix60486z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60486z1 = (nx60486z2 & ((nx60486z3))) # (!nx60486z2 & (u_kirsch_reg_dir2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx60486z2,
	datac => u_kirsch_reg_dir2_0_aq,
	datad => nx60486z3,
	combout => nx60486z1);

-- Location: FF_X16_Y17_N19
u_kirsch_reg_dir2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60486z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_0_aq);

-- Location: FF_X16_Y17_N25
u_kirsch_reg_dir2_final_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_dir2_0_aq,
	sload => VCC,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_final_0_aq);

-- Location: LCCOMB_X16_Y17_N16
ix62334z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62334z3 = (u_kirsch_reg_dir1_final_1_aq & !u_kirsch_reg_dir2_final_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_dir1_final_1_aq,
	datac => u_kirsch_reg_dir2_final_0_aq,
	combout => nx62334z3);

-- Location: LCCOMB_X16_Y17_N14
ix59489z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59489z2 = (u_kirsch_reg_max1_bit_counter_0_aq & (!u_kirsch_reg_max1_bit_counter_1_aq & nx29221z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max1_bit_counter_0_aq,
	datab => u_kirsch_reg_max1_bit_counter_1_aq,
	datad => nx29221z8,
	combout => nx59489z2);

-- Location: LCCOMB_X16_Y17_N22
ix59489z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59489z1 = (nx59489z2 & ((nx60486z3))) # (!nx59489z2 & (u_kirsch_reg_dir2_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx59489z2,
	datac => u_kirsch_reg_dir2_1_aq,
	datad => nx60486z3,
	combout => nx59489z1);

-- Location: FF_X16_Y17_N23
u_kirsch_reg_dir2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59489z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_1_aq);

-- Location: FF_X16_Y17_N15
u_kirsch_reg_dir2_final_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_dir2_1_aq,
	sload => VCC,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir2_final_1_aq);

-- Location: LCCOMB_X19_Y18_N10
ix49076z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49076z2 = (u_kirsch_reg_max0_bit_counter_1_aq & (nx52067z3 & (u_kirsch_reg_max0_bit_counter_0_aq & reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max0_bit_counter_1_aq,
	datab => nx52067z3,
	datac => u_kirsch_reg_max0_bit_counter_0_aq,
	datad => reset_n_ainput_o,
	combout => nx49076z2);

-- Location: LCCOMB_X19_Y18_N28
ix49076z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49076z1 = (nx49076z2 & ((nx40631z1))) # (!nx49076z2 & (u_kirsch_reg_dir1_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49076z2,
	datac => u_kirsch_reg_dir1_3_aq,
	datad => nx40631z1,
	combout => nx49076z1);

-- Location: FF_X19_Y18_N29
u_kirsch_reg_dir1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx49076z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_3_aq);

-- Location: LCCOMB_X16_Y17_N28
ix5085z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5085z1 = (nx2094z2 & ((u_kirsch_reg_dir1_3_aq))) # (!nx2094z2 & (u_kirsch_reg_dir1_final_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx2094z2,
	datac => u_kirsch_reg_dir1_final_3_aq,
	datad => u_kirsch_reg_dir1_3_aq,
	combout => nx5085z1);

-- Location: FF_X16_Y17_N29
u_kirsch_reg_dir1_final_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx5085z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_final_3_aq);

-- Location: LCCOMB_X16_Y17_N20
ix62334z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62334z2 = (u_kirsch_reg_dir2_final_2_aq & ((nx62334z3) # ((!u_kirsch_reg_dir2_final_1_aq)))) # (!u_kirsch_reg_dir2_final_2_aq & (((!u_kirsch_reg_dir1_final_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir2_final_2_aq,
	datab => nx62334z3,
	datac => u_kirsch_reg_dir2_final_1_aq,
	datad => u_kirsch_reg_dir1_final_3_aq,
	combout => nx62334z2);

-- Location: LCCOMB_X20_Y20_N18
ix38950z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38950z3 = (!u_kirsch_reg_stg_counter1_1_aq & (!u_kirsch_reg_stg_counter1_3_aq & (u_kirsch_reg_stg_counter1_2_aq & u_kirsch_reg_stg_counter1_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_1_aq,
	datab => u_kirsch_reg_stg_counter1_3_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_0_aq,
	combout => nx38950z3);

-- Location: LCCOMB_X20_Y18_N12
ix38950z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38950z4 = (u_kirsch_reg_stg_counter2_2_aq & (!u_kirsch_reg_stg_counter2_1_aq & (!u_kirsch_reg_stg_counter2_3_aq & u_kirsch_reg_stg_counter2_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter2_2_aq,
	datab => u_kirsch_reg_stg_counter2_1_aq,
	datac => u_kirsch_reg_stg_counter2_3_aq,
	datad => u_kirsch_reg_stg_counter2_0_aq,
	combout => nx38950z4);

-- Location: LCCOMB_X20_Y20_N16
ix38950z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38950z1 = (u_kirsch_reg_stg_counter1_1_aq & (!u_kirsch_reg_stg_counter1_3_aq & (!u_kirsch_reg_stg_counter1_2_aq & !u_kirsch_reg_stg_counter1_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_stg_counter1_1_aq,
	datab => u_kirsch_reg_stg_counter1_3_aq,
	datac => u_kirsch_reg_stg_counter1_2_aq,
	datad => u_kirsch_reg_stg_counter1_0_aq,
	combout => nx38950z1);

-- Location: LCCOMB_X19_Y17_N10
ix11769z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(9) = (!nx41042z10 & (u_kirsch_reg_r_add2_9_aq & !nx38950z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => u_kirsch_reg_r_add2_9_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(9));

-- Location: FF_X19_Y17_N3
u_kirsch_reg_r_add0_b_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_7_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_7_aq);

-- Location: LCCOMB_X19_Y17_N2
ix38950z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(7) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_7_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_7_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_7_aq,
	datab => nx41042z10,
	datac => u_kirsch_reg_r_add0_b_7_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(7));

-- Location: FF_X19_Y17_N13
u_kirsch_reg_r_add0_b_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_6_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_6_aq);

-- Location: LCCOMB_X19_Y17_N12
ix7802z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(6) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_6_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_6_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_6_aq,
	datab => nx41042z10,
	datac => u_kirsch_reg_r_add0_b_6_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(6));

-- Location: FF_X19_Y17_N17
u_kirsch_reg_r_add0_b_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_4_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_4_aq);

-- Location: LCCOMB_X19_Y17_N16
ix58521z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(4) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_4_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_4_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_4_aq,
	datab => nx41042z10,
	datac => u_kirsch_reg_r_add0_b_4_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(4));

-- Location: FF_X20_Y19_N27
u_kirsch_reg_r_add0_b_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_2_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_2_aq);

-- Location: LCCOMB_X20_Y19_N26
ix21832z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(2) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_2_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_2_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => u_kirsch_reg_r_add2_2_aq,
	datac => u_kirsch_reg_r_add0_b_2_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(2));

-- Location: LCCOMB_X20_Y19_N28
ix38950z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38950z2 = (!nx41042z10 & (!nx38950z1 & ((nx38950z3) # (nx38950z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => nx38950z3,
	datac => nx38950z4,
	datad => nx38950z1,
	combout => nx38950z2);

-- Location: FF_X20_Y20_N13
u_kirsch_reg_r_add0_b_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_0_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_0_aq);

-- Location: LCCOMB_X20_Y20_N12
ix46944z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(0) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_0_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_0_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => u_kirsch_reg_r_add2_0_aq,
	datac => u_kirsch_reg_r_add0_b_0_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(0));

-- Location: LCCOMB_X20_Y17_N0
u_kirsch_r_add2_add13_4i1_ix51_fadd_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout = CARRY(u_kirsch_reg_r_add0_a_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add0_a_0_aq,
	datad => VCC,
	cout => u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout);

-- Location: LCCOMB_X20_Y17_N2
u_kirsch_r_add2_add13_4i1_ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(0) = (u_kirsch_r_add2_4n1s1f1(0) & ((nx38950z2) # ((!u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout)))) # (!u_kirsch_r_add2_4n1s1f1(0) & (((!nx38950z2 & u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout)) # (GND)))
-- nx52980z1 = CARRY((nx38950z2) # ((!u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout) # (!u_kirsch_r_add2_4n1s1f1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx38950z2,
	datab => u_kirsch_r_add2_4n1s1f1(0),
	datad => VCC,
	cin => u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout,
	combout => u_kirsch_r_add2_4n1s1(0),
	cout => nx52980z1);

-- Location: FF_X20_Y17_N3
u_kirsch_reg_r_add2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(0),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_0_aq);

-- Location: LCCOMB_X20_Y19_N0
ix52980z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(1) = (nx38950z2 & (u_kirsch_reg_r_add2_0_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_0_aq,
	datac => u_kirsch_reg_r_add0_a_1_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(1));

-- Location: FF_X20_Y19_N31
u_kirsch_reg_r_add0_b_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_1_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_1_aq);

-- Location: LCCOMB_X20_Y19_N30
ix52980z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(1) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_1_aq)))) # (!nx41042z10 & ((nx38950z1 & (u_kirsch_reg_r_add0_b_1_aq)) # (!nx38950z1 & ((u_kirsch_reg_r_add2_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => nx38950z1,
	datac => u_kirsch_reg_r_add0_b_1_aq,
	datad => u_kirsch_reg_r_add2_1_aq,
	combout => u_kirsch_r_add2_4n1s1f1(1));

-- Location: LCCOMB_X20_Y17_N4
u_kirsch_r_add2_add13_4i1_ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(1) = ((u_kirsch_r_add2_4n1s1f2(1) $ (u_kirsch_r_add2_4n1s1f1(1) $ (!nx52980z1)))) # (GND)
-- nx21832z1 = CARRY((u_kirsch_r_add2_4n1s1f2(1) & ((u_kirsch_r_add2_4n1s1f1(1)) # (!nx52980z1))) # (!u_kirsch_r_add2_4n1s1f2(1) & (u_kirsch_r_add2_4n1s1f1(1) & !nx52980z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f2(1),
	datab => u_kirsch_r_add2_4n1s1f1(1),
	datad => VCC,
	cin => nx52980z1,
	combout => u_kirsch_r_add2_4n1s1(1),
	cout => nx21832z1);

-- Location: FF_X20_Y17_N5
u_kirsch_reg_r_add2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(1),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_1_aq);

-- Location: LCCOMB_X20_Y19_N4
ix21832z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(2) = (nx38950z2 & (u_kirsch_reg_r_add2_1_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_1_aq,
	datac => u_kirsch_reg_r_add0_a_2_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(2));

-- Location: LCCOMB_X20_Y17_N6
u_kirsch_r_add2_add13_4i1_ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(2) = (u_kirsch_r_add2_4n1s1f1(2) & ((u_kirsch_r_add2_4n1s1f2(2) & (nx21832z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2(2) & (!nx21832z1)))) # (!u_kirsch_r_add2_4n1s1f1(2) & ((u_kirsch_r_add2_4n1s1f2(2) & (!nx21832z1)) # 
-- (!u_kirsch_r_add2_4n1s1f2(2) & ((nx21832z1) # (GND)))))
-- nx27373z1 = CARRY((u_kirsch_r_add2_4n1s1f1(2) & (!u_kirsch_r_add2_4n1s1f2(2) & !nx21832z1)) # (!u_kirsch_r_add2_4n1s1f1(2) & ((!nx21832z1) # (!u_kirsch_r_add2_4n1s1f2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f1(2),
	datab => u_kirsch_r_add2_4n1s1f2(2),
	datad => VCC,
	cin => nx21832z1,
	combout => u_kirsch_r_add2_4n1s1(2),
	cout => nx27373z1);

-- Location: FF_X20_Y17_N7
u_kirsch_reg_r_add2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(2),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_2_aq);

-- Location: LCCOMB_X20_Y19_N24
ix27373z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(3) = (nx38950z2 & (u_kirsch_reg_r_add2_2_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add2_2_aq,
	datac => u_kirsch_reg_r_add0_a_3_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(3));

-- Location: FF_X20_Y19_N15
u_kirsch_reg_r_add0_b_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_3_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_3_aq);

-- Location: LCCOMB_X20_Y19_N14
ix27373z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(3) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_3_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_3_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => u_kirsch_reg_r_add2_3_aq,
	datac => u_kirsch_reg_r_add0_b_3_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(3));

-- Location: LCCOMB_X20_Y17_N8
u_kirsch_r_add2_add13_4i1_ix63_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(3) = ((u_kirsch_r_add2_4n1s1f2(3) $ (u_kirsch_r_add2_4n1s1f1(3) $ (!nx27373z1)))) # (GND)
-- nx58521z1 = CARRY((u_kirsch_r_add2_4n1s1f2(3) & ((u_kirsch_r_add2_4n1s1f1(3)) # (!nx27373z1))) # (!u_kirsch_r_add2_4n1s1f2(3) & (u_kirsch_r_add2_4n1s1f1(3) & !nx27373z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f2(3),
	datab => u_kirsch_r_add2_4n1s1f1(3),
	datad => VCC,
	cin => nx27373z1,
	combout => u_kirsch_r_add2_4n1s1(3),
	cout => nx58521z1);

-- Location: FF_X20_Y17_N9
u_kirsch_reg_r_add2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(3),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_3_aq);

-- Location: LCCOMB_X20_Y19_N20
ix58521z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(4) = (nx38950z2 & (u_kirsch_reg_r_add2_3_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add2_3_aq,
	datac => u_kirsch_reg_r_add0_a_4_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(4));

-- Location: LCCOMB_X20_Y17_N10
u_kirsch_r_add2_add13_4i1_ix67_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(4) = (u_kirsch_r_add2_4n1s1f1(4) & ((u_kirsch_r_add2_4n1s1f2(4) & (nx58521z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2(4) & (!nx58521z1)))) # (!u_kirsch_r_add2_4n1s1f1(4) & ((u_kirsch_r_add2_4n1s1f2(4) & (!nx58521z1)) # 
-- (!u_kirsch_r_add2_4n1s1f2(4) & ((nx58521z1) # (GND)))))
-- nx23346z1 = CARRY((u_kirsch_r_add2_4n1s1f1(4) & (!u_kirsch_r_add2_4n1s1f2(4) & !nx58521z1)) # (!u_kirsch_r_add2_4n1s1f1(4) & ((!nx58521z1) # (!u_kirsch_r_add2_4n1s1f2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f1(4),
	datab => u_kirsch_r_add2_4n1s1f2(4),
	datad => VCC,
	cin => nx58521z1,
	combout => u_kirsch_r_add2_4n1s1(4),
	cout => nx23346z1);

-- Location: FF_X20_Y17_N11
u_kirsch_reg_r_add2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(4),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_4_aq);

-- Location: LCCOMB_X20_Y19_N18
ix23346z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(5) = (nx38950z2 & ((u_kirsch_reg_r_add2_4_aq))) # (!nx38950z2 & (u_kirsch_reg_r_add0_a_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add0_a_5_aq,
	datac => u_kirsch_reg_r_add2_4_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(5));

-- Location: FF_X19_Y17_N31
u_kirsch_reg_r_add0_b_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_5_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_5_aq);

-- Location: LCCOMB_X19_Y17_N30
ix23346z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(5) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_5_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_5_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => u_kirsch_reg_r_add2_5_aq,
	datac => u_kirsch_reg_r_add0_b_5_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(5));

-- Location: LCCOMB_X20_Y17_N12
u_kirsch_r_add2_add13_4i1_ix71_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(5) = ((u_kirsch_r_add2_4n1s1f2(5) $ (u_kirsch_r_add2_4n1s1f1(5) $ (!nx23346z1)))) # (GND)
-- nx7802z1 = CARRY((u_kirsch_r_add2_4n1s1f2(5) & ((u_kirsch_r_add2_4n1s1f1(5)) # (!nx23346z1))) # (!u_kirsch_r_add2_4n1s1f2(5) & (u_kirsch_r_add2_4n1s1f1(5) & !nx23346z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f2(5),
	datab => u_kirsch_r_add2_4n1s1f1(5),
	datad => VCC,
	cin => nx23346z1,
	combout => u_kirsch_r_add2_4n1s1(5),
	cout => nx7802z1);

-- Location: FF_X20_Y17_N13
u_kirsch_reg_r_add2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(5),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_5_aq);

-- Location: LCCOMB_X20_Y19_N16
ix7802z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(6) = (nx38950z2 & ((u_kirsch_reg_r_add2_5_aq))) # (!nx38950z2 & (u_kirsch_reg_r_add0_a_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add0_a_6_aq,
	datac => u_kirsch_reg_r_add2_5_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(6));

-- Location: LCCOMB_X20_Y17_N14
u_kirsch_r_add2_add13_4i1_ix75_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(6) = (u_kirsch_r_add2_4n1s1f1(6) & ((u_kirsch_r_add2_4n1s1f2(6) & (nx7802z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2(6) & (!nx7802z1)))) # (!u_kirsch_r_add2_4n1s1f1(6) & ((u_kirsch_r_add2_4n1s1f2(6) & (!nx7802z1)) # 
-- (!u_kirsch_r_add2_4n1s1f2(6) & ((nx7802z1) # (GND)))))
-- nx38950z5 = CARRY((u_kirsch_r_add2_4n1s1f1(6) & (!u_kirsch_r_add2_4n1s1f2(6) & !nx7802z1)) # (!u_kirsch_r_add2_4n1s1f1(6) & ((!nx7802z1) # (!u_kirsch_r_add2_4n1s1f2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f1(6),
	datab => u_kirsch_r_add2_4n1s1f2(6),
	datad => VCC,
	cin => nx7802z1,
	combout => u_kirsch_r_add2_4n1s1(6),
	cout => nx38950z5);

-- Location: FF_X20_Y17_N15
u_kirsch_reg_r_add2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(6),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_6_aq);

-- Location: LCCOMB_X20_Y19_N6
ix38950z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(7) = (nx38950z2 & (u_kirsch_reg_r_add2_6_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_6_aq,
	datac => u_kirsch_reg_r_add0_a_7_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(7));

-- Location: LCCOMB_X20_Y17_N16
u_kirsch_r_add2_add13_4i1_ix79_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(7) = ((u_kirsch_r_add2_4n1s1f1(7) $ (u_kirsch_r_add2_4n1s1f2(7) $ (!nx38950z5)))) # (GND)
-- nx42917z1 = CARRY((u_kirsch_r_add2_4n1s1f1(7) & ((u_kirsch_r_add2_4n1s1f2(7)) # (!nx38950z5))) # (!u_kirsch_r_add2_4n1s1f1(7) & (u_kirsch_r_add2_4n1s1f2(7) & !nx38950z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f1(7),
	datab => u_kirsch_r_add2_4n1s1f2(7),
	datad => VCC,
	cin => nx38950z5,
	combout => u_kirsch_r_add2_4n1s1(7),
	cout => nx42917z1);

-- Location: FF_X20_Y17_N17
u_kirsch_reg_r_add2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(7),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_7_aq);

-- Location: LCCOMB_X20_Y19_N10
ix42917z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(8) = (nx38950z2 & (u_kirsch_reg_r_add2_7_aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_8_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add2_7_aq,
	datac => u_kirsch_reg_r_add0_a_8_aq,
	datad => nx38950z2,
	combout => u_kirsch_r_add2_4n1s1f2(8));

-- Location: FF_X19_Y17_N23
u_kirsch_reg_r_add0_b_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_kirsch_reg_r_add0_a_8_aq,
	sload => VCC,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add0_b_8_aq);

-- Location: LCCOMB_X19_Y17_N22
ix42917z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f1(8) = (nx41042z10 & (((u_kirsch_reg_r_add0_b_8_aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_8_aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_8_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_8_aq,
	datab => nx41042z10,
	datac => u_kirsch_reg_r_add0_b_8_aq,
	datad => nx38950z1,
	combout => u_kirsch_r_add2_4n1s1f1(8));

-- Location: LCCOMB_X20_Y17_N18
u_kirsch_r_add2_add13_4i1_ix83_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(8) = (u_kirsch_r_add2_4n1s1f2(8) & ((u_kirsch_r_add2_4n1s1f1(8) & (nx42917z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f1(8) & (!nx42917z1)))) # (!u_kirsch_r_add2_4n1s1f2(8) & ((u_kirsch_r_add2_4n1s1f1(8) & (!nx42917z1)) # 
-- (!u_kirsch_r_add2_4n1s1f1(8) & ((nx42917z1) # (GND)))))
-- nx11769z1 = CARRY((u_kirsch_r_add2_4n1s1f2(8) & (!u_kirsch_r_add2_4n1s1f1(8) & !nx42917z1)) # (!u_kirsch_r_add2_4n1s1f2(8) & ((!nx42917z1) # (!u_kirsch_r_add2_4n1s1f1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f2(8),
	datab => u_kirsch_r_add2_4n1s1f1(8),
	datad => VCC,
	cin => nx42917z1,
	combout => u_kirsch_r_add2_4n1s1(8),
	cout => nx11769z1);

-- Location: FF_X20_Y17_N19
u_kirsch_reg_r_add2_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(8),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_8_aq);

-- Location: LCCOMB_X19_Y17_N4
ix11769z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(9) = (u_kirsch_reg_r_add2_8_aq & (!nx26412z9 & ((nx38950z4) # (nx38950z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_8_aq,
	datab => nx38950z4,
	datac => nx38950z3,
	datad => nx26412z9,
	combout => u_kirsch_r_add2_4n1s1f2(9));

-- Location: LCCOMB_X20_Y17_N20
u_kirsch_r_add2_add13_4i1_ix87_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(9) = ((u_kirsch_r_add2_4n1s1f1(9) $ (u_kirsch_r_add2_4n1s1f2(9) $ (!nx11769z1)))) # (GND)
-- nx37436z1 = CARRY((u_kirsch_r_add2_4n1s1f1(9) & ((u_kirsch_r_add2_4n1s1f2(9)) # (!nx11769z1))) # (!u_kirsch_r_add2_4n1s1f1(9) & (u_kirsch_r_add2_4n1s1f2(9) & !nx11769z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_r_add2_4n1s1f1(9),
	datab => u_kirsch_r_add2_4n1s1f2(9),
	datad => VCC,
	cin => nx11769z1,
	combout => u_kirsch_r_add2_4n1s1(9),
	cout => nx37436z1);

-- Location: FF_X20_Y17_N21
u_kirsch_reg_r_add2_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_add2_4n1s1(9),
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_9_aq);

-- Location: LCCOMB_X19_Y17_N24
ix37436z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(10) = (u_kirsch_reg_r_add2_9_aq & (!nx26412z9 & ((nx38950z3) # (nx38950z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38950z3,
	datab => u_kirsch_reg_r_add2_9_aq,
	datac => nx38950z4,
	datad => nx26412z9,
	combout => u_kirsch_r_add2_4n1s1f2(10));

-- Location: LCCOMB_X20_Y17_N22
u_kirsch_r_add2_add13_4i1_ix91_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(10) = (u_kirsch_reg_r_add2_10_aq & ((u_kirsch_r_add2_4n1s1f2(10) & (nx37436z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2(10) & (!nx37436z1)))) # (!u_kirsch_reg_r_add2_10_aq & ((u_kirsch_r_add2_4n1s1f2(10) & (!nx37436z1)) # 
-- (!u_kirsch_r_add2_4n1s1f2(10) & ((nx37436z1) # (GND)))))
-- nx62488z1 = CARRY((u_kirsch_reg_r_add2_10_aq & (!u_kirsch_r_add2_4n1s1f2(10) & !nx37436z1)) # (!u_kirsch_reg_r_add2_10_aq & ((!nx37436z1) # (!u_kirsch_r_add2_4n1s1f2(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_10_aq,
	datab => u_kirsch_r_add2_4n1s1f2(10),
	datad => VCC,
	cin => nx37436z1,
	combout => u_kirsch_r_add2_4n1s1(10),
	cout => nx62488z1);

-- Location: LCCOMB_X20_Y17_N30
ix57978z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57978z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1(10) & ((!nx41042z9) # (!nx29221z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29221z2,
	datab => nx41042z10,
	datac => u_kirsch_r_add2_4n1s1(10),
	datad => nx41042z9,
	combout => nx57978z1);

-- Location: FF_X20_Y17_N31
u_kirsch_reg_r_add2_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57978z1,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_10_aq);

-- Location: LCCOMB_X19_Y17_N6
ix62488z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(11) = (u_kirsch_reg_r_add2_10_aq & (!nx26412z9 & ((nx38950z3) # (nx38950z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38950z3,
	datab => nx38950z4,
	datac => u_kirsch_reg_r_add2_10_aq,
	datad => nx26412z9,
	combout => u_kirsch_r_add2_4n1s1f2(11));

-- Location: LCCOMB_X20_Y17_N24
u_kirsch_r_add2_add13_4i1_ix95_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(11) = ((u_kirsch_reg_r_add2_11_aq $ (u_kirsch_r_add2_4n1s1f2(11) $ (!nx62488z1)))) # (GND)
-- nx46914z1 = CARRY((u_kirsch_reg_r_add2_11_aq & ((u_kirsch_r_add2_4n1s1f2(11)) # (!nx62488z1))) # (!u_kirsch_reg_r_add2_11_aq & (u_kirsch_r_add2_4n1s1f2(11) & !nx62488z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_11_aq,
	datab => u_kirsch_r_add2_4n1s1f2(11),
	datad => VCC,
	cin => nx62488z1,
	combout => u_kirsch_r_add2_4n1s1(11),
	cout => nx46914z1);

-- Location: LCCOMB_X19_Y17_N8
ix56981z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56981z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1(11) & ((!nx29221z2) # (!nx41042z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41042z10,
	datab => nx41042z9,
	datac => nx29221z2,
	datad => u_kirsch_r_add2_4n1s1(11),
	combout => nx56981z1);

-- Location: FF_X19_Y17_N9
u_kirsch_reg_r_add2_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56981z1,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_11_aq);

-- Location: LCCOMB_X18_Y21_N4
u_kirsch_r_sub0_sub13_6i1_ix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13358z1 = CARRY((!u_kirsch_reg_r_add2_1_aq & !u_kirsch_reg_r_add2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_1_aq,
	datab => u_kirsch_reg_r_add2_0_aq,
	datad => VCC,
	cout => nx13358z1);

-- Location: LCCOMB_X18_Y21_N6
u_kirsch_r_sub0_sub13_6i1_ix24_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36604z1 = CARRY((u_kirsch_reg_r_add2_2_aq) # (!nx13358z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_2_aq,
	datad => VCC,
	cin => nx13358z1,
	cout => nx36604z1);

-- Location: LCCOMB_X18_Y21_N8
u_kirsch_r_sub0_sub13_6i1_ix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21030z1 = CARRY((u_kirsch_reg_r_max1_0_aq & ((!nx36604z1) # (!u_kirsch_reg_r_add2_3_aq))) # (!u_kirsch_reg_r_max1_0_aq & (!u_kirsch_reg_r_add2_3_aq & !nx36604z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_0_aq,
	datab => u_kirsch_reg_r_add2_3_aq,
	datad => VCC,
	cin => nx36604z1,
	cout => nx21030z1);

-- Location: LCCOMB_X18_Y21_N10
u_kirsch_r_sub0_sub13_6i1_ix28_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52935z1 = CARRY((u_kirsch_reg_r_add2_4_aq & ((!nx21030z1) # (!u_kirsch_reg_r_max1_1_aq))) # (!u_kirsch_reg_r_add2_4_aq & (!u_kirsch_reg_r_max1_1_aq & !nx21030z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_4_aq,
	datab => u_kirsch_reg_r_max1_1_aq,
	datad => VCC,
	cin => nx21030z1,
	cout => nx52935z1);

-- Location: LCCOMB_X18_Y21_N12
u_kirsch_r_sub0_sub13_6i1_ix30_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37361z1 = CARRY((u_kirsch_reg_r_max1_2_aq & ((!nx52935z1) # (!u_kirsch_reg_r_add2_5_aq))) # (!u_kirsch_reg_r_max1_2_aq & (!u_kirsch_reg_r_add2_5_aq & !nx52935z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_2_aq,
	datab => u_kirsch_reg_r_add2_5_aq,
	datad => VCC,
	cin => nx52935z1,
	cout => nx37361z1);

-- Location: LCCOMB_X18_Y21_N14
u_kirsch_r_sub0_sub13_6i1_ix32_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59323z1 = CARRY((u_kirsch_reg_r_max1_3_aq & (u_kirsch_reg_r_add2_6_aq & !nx37361z1)) # (!u_kirsch_reg_r_max1_3_aq & ((u_kirsch_reg_r_add2_6_aq) # (!nx37361z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_3_aq,
	datab => u_kirsch_reg_r_add2_6_aq,
	datad => VCC,
	cin => nx37361z1,
	cout => nx59323z1);

-- Location: LCCOMB_X18_Y21_N16
u_kirsch_r_sub0_sub13_6i1_ix36_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_7_a = ((u_kirsch_reg_r_max1_4_aq $ (u_kirsch_reg_r_add2_7_aq $ (nx59323z1)))) # (GND)
-- nx22544z1 = CARRY((u_kirsch_reg_r_max1_4_aq & ((!nx59323z1) # (!u_kirsch_reg_r_add2_7_aq))) # (!u_kirsch_reg_r_max1_4_aq & (!u_kirsch_reg_r_add2_7_aq & !nx59323z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_4_aq,
	datab => u_kirsch_reg_r_add2_7_aq,
	datad => VCC,
	cin => nx59323z1,
	combout => u_kirsch_r_sub0_6n1s1_7_a,
	cout => nx22544z1);

-- Location: LCCOMB_X18_Y21_N18
u_kirsch_r_sub0_sub13_6i1_ix40_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_8_a = (u_kirsch_reg_r_add2_8_aq & ((u_kirsch_reg_r_max1_5_aq & (!nx22544z1)) # (!u_kirsch_reg_r_max1_5_aq & ((nx22544z1) # (GND))))) # (!u_kirsch_reg_r_add2_8_aq & ((u_kirsch_reg_r_max1_5_aq & (nx22544z1 & VCC)) # 
-- (!u_kirsch_reg_r_max1_5_aq & (!nx22544z1))))
-- nx56932z1 = CARRY((u_kirsch_reg_r_add2_8_aq & ((!nx22544z1) # (!u_kirsch_reg_r_max1_5_aq))) # (!u_kirsch_reg_r_add2_8_aq & (!u_kirsch_reg_r_max1_5_aq & !nx22544z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_8_aq,
	datab => u_kirsch_reg_r_max1_5_aq,
	datad => VCC,
	cin => nx22544z1,
	combout => u_kirsch_r_sub0_6n1s1_8_a,
	cout => nx56932z1);

-- Location: LCCOMB_X18_Y21_N20
u_kirsch_r_sub0_sub13_6i1_ix44_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_9_a = ((u_kirsch_reg_r_max1_6_aq $ (u_kirsch_reg_r_add2_9_aq $ (nx56932z1)))) # (GND)
-- nx39752z1 = CARRY((u_kirsch_reg_r_max1_6_aq & ((!nx56932z1) # (!u_kirsch_reg_r_add2_9_aq))) # (!u_kirsch_reg_r_max1_6_aq & (!u_kirsch_reg_r_add2_9_aq & !nx56932z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_6_aq,
	datab => u_kirsch_reg_r_add2_9_aq,
	datad => VCC,
	cin => nx56932z1,
	combout => u_kirsch_r_sub0_6n1s1_9_a,
	cout => nx39752z1);

-- Location: LCCOMB_X18_Y21_N22
u_kirsch_r_sub0_sub13_6i1_ix48_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_10_a = (u_kirsch_reg_r_max1_7_aq & ((u_kirsch_reg_r_add2_10_aq & (!nx39752z1)) # (!u_kirsch_reg_r_add2_10_aq & (nx39752z1 & VCC)))) # (!u_kirsch_reg_r_max1_7_aq & ((u_kirsch_reg_r_add2_10_aq & ((nx39752z1) # (GND))) # 
-- (!u_kirsch_reg_r_add2_10_aq & (!nx39752z1))))
-- nx23421z3 = CARRY((u_kirsch_reg_r_max1_7_aq & (u_kirsch_reg_r_add2_10_aq & !nx39752z1)) # (!u_kirsch_reg_r_max1_7_aq & ((u_kirsch_reg_r_add2_10_aq) # (!nx39752z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_7_aq,
	datab => u_kirsch_reg_r_add2_10_aq,
	datad => VCC,
	cin => nx39752z1,
	combout => u_kirsch_r_sub0_6n1s1_10_a,
	cout => nx23421z3);

-- Location: LCCOMB_X18_Y21_N24
u_kirsch_r_sub0_sub13_6i1_ix52_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_11_a = ((u_kirsch_reg_r_max1_8_aq $ (u_kirsch_reg_r_add2_11_aq $ (nx23421z3)))) # (GND)
-- nx10967z1 = CARRY((u_kirsch_reg_r_max1_8_aq & ((!nx23421z3) # (!u_kirsch_reg_r_add2_11_aq))) # (!u_kirsch_reg_r_max1_8_aq & (!u_kirsch_reg_r_add2_11_aq & !nx23421z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_max1_8_aq,
	datab => u_kirsch_reg_r_add2_11_aq,
	datad => VCC,
	cin => nx23421z3,
	combout => u_kirsch_r_sub0_6n1s1_11_a,
	cout => nx10967z1);

-- Location: LCCOMB_X19_Y17_N20
ix46914z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1f2(12) = (u_kirsch_reg_r_add2_11_aq & (!nx26412z9 & ((nx38950z4) # (nx38950z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_11_aq,
	datab => nx38950z4,
	datac => nx38950z3,
	datad => nx26412z9,
	combout => u_kirsch_r_add2_4n1s1f2(12));

-- Location: LCCOMB_X20_Y17_N26
u_kirsch_r_add2_add13_4i1_ix97_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_add2_4n1s1(12) = u_kirsch_reg_r_add2_12_aq $ (nx46914z1 $ (u_kirsch_r_add2_4n1s1f2(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_add2_12_aq,
	datad => u_kirsch_r_add2_4n1s1f2(12),
	cin => nx46914z1,
	combout => u_kirsch_r_add2_4n1s1(12));

-- Location: LCCOMB_X20_Y17_N28
ix55984z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55984z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1(12) & ((!nx41042z9) # (!nx29221z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29221z2,
	datab => nx41042z10,
	datac => u_kirsch_r_add2_4n1s1(12),
	datad => nx41042z9,
	combout => nx55984z1);

-- Location: FF_X20_Y17_N29
u_kirsch_reg_r_add2_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55984z1,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_add2_12_aq);

-- Location: LCCOMB_X18_Y21_N26
u_kirsch_r_sub0_sub13_6i1_ix56_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_12_a = (u_kirsch_reg_r_add2_12_aq & ((u_kirsch_reg_r_max1_9_aq & (!nx10967z1)) # (!u_kirsch_reg_r_max1_9_aq & ((nx10967z1) # (GND))))) # (!u_kirsch_reg_r_add2_12_aq & ((u_kirsch_reg_r_max1_9_aq & (nx10967z1 & VCC)) # 
-- (!u_kirsch_reg_r_max1_9_aq & (!nx10967z1))))
-- nx21429z1 = CARRY((u_kirsch_reg_r_add2_12_aq & ((!nx10967z1) # (!u_kirsch_reg_r_max1_9_aq))) # (!u_kirsch_reg_r_add2_12_aq & (!u_kirsch_reg_r_max1_9_aq & !nx10967z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_add2_12_aq,
	datab => u_kirsch_reg_r_max1_9_aq,
	datad => VCC,
	cin => nx10967z1,
	combout => u_kirsch_r_sub0_6n1s1_12_a,
	cout => nx21429z1);

-- Location: LCCOMB_X18_Y21_N28
u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_r_sub0_6n1s1_14_a = nx21429z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx21429z1,
	combout => u_kirsch_r_sub0_6n1s1_14_a);

-- Location: FF_X18_Y21_N25
u_kirsch_reg_r_sub0_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_11_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_11_aq);

-- Location: FF_X18_Y21_N27
u_kirsch_reg_r_sub0_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_12_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_12_aq);

-- Location: FF_X18_Y21_N19
u_kirsch_reg_r_sub0_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_8_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_8_aq);

-- Location: FF_X18_Y21_N21
u_kirsch_reg_r_sub0_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_9_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_9_aq);

-- Location: FF_X18_Y21_N23
u_kirsch_reg_r_sub0_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_10_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_10_aq);

-- Location: FF_X18_Y21_N17
u_kirsch_reg_r_sub0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_r_sub0_6n1s1_7_a,
	sclr => u_kirsch_r_sub0_6n1s1_14_a,
	ena => nx12123z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_r_sub0_7_aq);

-- Location: LCCOMB_X18_Y21_N0
ix22605z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z3 = (u_kirsch_reg_r_sub0_9_aq) # ((u_kirsch_reg_r_sub0_10_aq) # ((u_kirsch_reg_r_sub0_8_aq & u_kirsch_reg_r_sub0_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_r_sub0_8_aq,
	datab => u_kirsch_reg_r_sub0_9_aq,
	datac => u_kirsch_reg_r_sub0_10_aq,
	datad => u_kirsch_reg_r_sub0_7_aq,
	combout => nx22605z3);

-- Location: LCCOMB_X18_Y21_N2
ix62334z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62334z1 = (nx62334z2 & ((u_kirsch_reg_r_sub0_11_aq) # ((u_kirsch_reg_r_sub0_12_aq) # (nx22605z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62334z2,
	datab => u_kirsch_reg_r_sub0_11_aq,
	datac => u_kirsch_reg_r_sub0_12_aq,
	datad => nx22605z3,
	combout => nx62334z1);

-- Location: FF_X18_Y21_N3
u_kirsch_reg_intermediate_dir_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62334z1,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_intermediate_dir_0_aq);

-- Location: LCCOMB_X24_Y15_N18
ix59319z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(0) = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_0_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_intermediate_dir_0_aq,
	datad => k_i_pixel(0),
	combout => rb_i_data(0));

-- Location: LCCOMB_X25_Y14_N6
ix684_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_703 = reg_q_0_dup_32_aq $ (VCC)
-- nx4983z1 = CARRY(reg_q_0_dup_32_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_32_aq,
	datad => VCC,
	combout => inc_d_0_dup_703,
	cout => nx4983z1);

-- Location: LCCOMB_X25_Y14_N4
ix23864z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23864z1 = ((pb_a0_a_ainput_o & (u_kirsch_reg_o_valid_aq)) # (!pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq)))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => u_kirsch_reg_o_valid_aq,
	datac => reset_n_ainput_o,
	datad => write_fifo_reg_rd_en_delayed_aq,
	combout => nx23864z1);

-- Location: FF_X25_Y14_N7
reg_q_0_dup_32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_703,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_32_aq);

-- Location: LCCOMB_X25_Y15_N16
ix720_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_739 = reg_q_0_dup_40_aq $ (VCC)
-- nx65210z1 = CARRY(reg_q_0_dup_40_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_40_aq,
	datad => VCC,
	combout => inc_d_0_dup_739,
	cout => nx65210z1);

-- Location: LCCOMB_X25_Y15_N14
ix24859z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24859z1 = ((!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq))) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_wait_for_tx_valid_delayed_aq,
	datab => rb_i_valid,
	datac => reg_rb_rd_en_aq,
	datad => reset_n_ainput_o,
	combout => nx24859z1);

-- Location: FF_X25_Y15_N17
reg_q_0_dup_40 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_739,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_40_aq);

-- Location: LCCOMB_X25_Y15_N0
ix59319z7115 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(0) = (rb_i_valid & (reg_q_0_dup_32_aq)) # (!rb_i_valid & ((reg_q_0_dup_40_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rb_i_valid,
	datac => reg_q_0_dup_32_aq,
	datad => reg_q_0_dup_40_aq,
	combout => read_fifo_pointer(0));

-- Location: LCCOMB_X25_Y14_N8
ix686_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_705 = (reg_q_1_dup_31_aq & (!nx4983z1)) # (!reg_q_1_dup_31_aq & ((nx4983z1) # (GND)))
-- nx10591z1 = CARRY((!nx4983z1) # (!reg_q_1_dup_31_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_31_aq,
	datad => VCC,
	cin => nx4983z1,
	combout => inc_d_1_dup_705,
	cout => nx10591z1);

-- Location: FF_X25_Y14_N9
reg_q_1_dup_31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_705,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_31_aq);

-- Location: LCCOMB_X25_Y15_N18
ix722_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_741 = (reg_q_1_dup_39_aq & (!nx65210z1)) # (!reg_q_1_dup_39_aq & ((nx65210z1) # (GND)))
-- nx49636z1 = CARRY((!nx65210z1) # (!reg_q_1_dup_39_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_39_aq,
	datad => VCC,
	cin => nx65210z1,
	combout => inc_d_1_dup_741,
	cout => nx49636z1);

-- Location: FF_X25_Y15_N19
reg_q_1_dup_39 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_741,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_39_aq);

-- Location: LCCOMB_X25_Y15_N10
ix59319z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(1) = (rb_i_valid & (reg_q_1_dup_31_aq)) # (!rb_i_valid & ((reg_q_1_dup_39_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_31_aq,
	datab => rb_i_valid,
	datad => reg_q_1_dup_39_aq,
	combout => read_fifo_pointer(1));

-- Location: LCCOMB_X25_Y14_N10
ix688_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_707 = (reg_q_2_dup_30_aq & (nx10591z1 $ (GND))) # (!reg_q_2_dup_30_aq & (!nx10591z1 & VCC))
-- nx44222z1 = CARRY((reg_q_2_dup_30_aq & !nx10591z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_30_aq,
	datad => VCC,
	cin => nx10591z1,
	combout => inc_d_2_dup_707,
	cout => nx44222z1);

-- Location: FF_X25_Y14_N11
reg_q_2_dup_30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_707,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_30_aq);

-- Location: LCCOMB_X25_Y15_N20
ix724_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_743 = (reg_q_2_dup_38_aq & (nx49636z1 $ (GND))) # (!reg_q_2_dup_38_aq & (!nx49636z1 & VCC))
-- nx31474z1 = CARRY((reg_q_2_dup_38_aq & !nx49636z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_38_aq,
	datad => VCC,
	cin => nx49636z1,
	combout => inc_d_2_dup_743,
	cout => nx31474z1);

-- Location: FF_X25_Y15_N21
reg_q_2_dup_38 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_743,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_38_aq);

-- Location: LCCOMB_X25_Y14_N26
ix59319z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(2) = (rb_i_valid & (reg_q_2_dup_30_aq)) # (!rb_i_valid & ((reg_q_2_dup_38_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_30_aq,
	datab => rb_i_valid,
	datad => reg_q_2_dup_38_aq,
	combout => read_fifo_pointer(2));

-- Location: LCCOMB_X25_Y14_N12
ix690_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_709 = (reg_q_3_dup_29_aq & (!nx44222z1)) # (!reg_q_3_dup_29_aq & ((nx44222z1) # (GND)))
-- nx59796z1 = CARRY((!nx44222z1) # (!reg_q_3_dup_29_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_29_aq,
	datad => VCC,
	cin => nx44222z1,
	combout => inc_d_3_dup_709,
	cout => nx59796z1);

-- Location: FF_X25_Y14_N13
reg_q_3_dup_29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_709,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_29_aq);

-- Location: LCCOMB_X25_Y15_N22
ix726_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_745 = (reg_q_3_dup_37_aq & (!nx31474z1)) # (!reg_q_3_dup_37_aq & ((nx31474z1) # (GND)))
-- nx47048z1 = CARRY((!nx31474z1) # (!reg_q_3_dup_37_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_37_aq,
	datad => VCC,
	cin => nx31474z1,
	combout => inc_d_3_dup_745,
	cout => nx47048z1);

-- Location: FF_X25_Y15_N23
reg_q_3_dup_37 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_745,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_37_aq);

-- Location: LCCOMB_X25_Y15_N12
ix59319z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(3) = (rb_i_valid & (reg_q_3_dup_29_aq)) # (!rb_i_valid & ((reg_q_3_dup_37_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_29_aq,
	datac => reg_q_3_dup_37_aq,
	datad => rb_i_valid,
	combout => read_fifo_pointer(3));

-- Location: LCCOMB_X25_Y14_N14
ix692_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_711 = (reg_q_4_dup_28_aq & (nx59796z1 $ (GND))) # (!reg_q_4_dup_28_aq & (!nx59796z1 & VCC))
-- nx55702z1 = CARRY((reg_q_4_dup_28_aq & !nx59796z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_28_aq,
	datad => VCC,
	cin => nx59796z1,
	combout => inc_d_4_dup_711,
	cout => nx55702z1);

-- Location: FF_X25_Y14_N15
reg_q_4_dup_28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_711,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_28_aq);

-- Location: LCCOMB_X25_Y15_N24
ix728_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_747 = (reg_q_4_dup_36_aq & (nx47048z1 $ (GND))) # (!reg_q_4_dup_36_aq & (!nx47048z1 & VCC))
-- nx15143z1 = CARRY((reg_q_4_dup_36_aq & !nx47048z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_36_aq,
	datad => VCC,
	cin => nx47048z1,
	combout => inc_d_4_dup_747,
	cout => nx15143z1);

-- Location: FF_X25_Y15_N25
reg_q_4_dup_36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_747,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_36_aq);

-- Location: LCCOMB_X25_Y15_N6
ix59319z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(4) = (rb_i_valid & (reg_q_4_dup_28_aq)) # (!rb_i_valid & ((reg_q_4_dup_36_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rb_i_valid,
	datac => reg_q_4_dup_28_aq,
	datad => reg_q_4_dup_36_aq,
	combout => read_fifo_pointer(4));

-- Location: LCCOMB_X25_Y14_N16
ix694_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_713 = (reg_q_5_dup_27_aq & (!nx55702z1)) # (!reg_q_5_dup_27_aq & ((nx55702z1) # (GND)))
-- nx40128z1 = CARRY((!nx55702z1) # (!reg_q_5_dup_27_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_27_aq,
	datad => VCC,
	cin => nx55702z1,
	combout => inc_d_5_dup_713,
	cout => nx40128z1);

-- Location: FF_X25_Y14_N17
reg_q_5_dup_27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_713,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_27_aq);

-- Location: LCCOMB_X25_Y15_N26
ix730_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_749 = (reg_q_5_dup_35_aq & (!nx15143z1)) # (!reg_q_5_dup_35_aq & ((nx15143z1) # (GND)))
-- nx34819z1 = CARRY((!nx15143z1) # (!reg_q_5_dup_35_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_35_aq,
	datad => VCC,
	cin => nx15143z1,
	combout => inc_d_5_dup_749,
	cout => nx34819z1);

-- Location: FF_X25_Y15_N27
reg_q_5_dup_35 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_749,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_35_aq);

-- Location: LCCOMB_X25_Y15_N8
ix59319z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(5) = (rb_i_valid & (reg_q_5_dup_27_aq)) # (!rb_i_valid & ((reg_q_5_dup_35_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_27_aq,
	datac => reg_q_5_dup_35_aq,
	datad => rb_i_valid,
	combout => read_fifo_pointer(5));

-- Location: LCCOMB_X25_Y14_N18
ix696_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_715 = (reg_q_6_dup_26_aq & (nx40128z1 $ (GND))) # (!reg_q_6_dup_26_aq & (!nx40128z1 & VCC))
-- nx32341z1 = CARRY((reg_q_6_dup_26_aq & !nx40128z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_26_aq,
	datad => VCC,
	cin => nx40128z1,
	combout => inc_d_6_dup_715,
	cout => nx32341z1);

-- Location: FF_X25_Y14_N19
reg_q_6_dup_26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_715,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_26_aq);

-- Location: LCCOMB_X25_Y15_N28
ix732_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_751 = (reg_q_6_dup_34_aq & (nx34819z1 $ (GND))) # (!reg_q_6_dup_34_aq & (!nx34819z1 & VCC))
-- nx27032z1 = CARRY((reg_q_6_dup_34_aq & !nx34819z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_34_aq,
	datad => VCC,
	cin => nx34819z1,
	combout => inc_d_6_dup_751,
	cout => nx27032z1);

-- Location: FF_X25_Y15_N29
reg_q_6_dup_34 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_751,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_34_aq);

-- Location: LCCOMB_X25_Y15_N2
ix59319z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(6) = (rb_i_valid & (reg_q_6_dup_26_aq)) # (!rb_i_valid & ((reg_q_6_dup_34_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rb_i_valid,
	datac => reg_q_6_dup_26_aq,
	datad => reg_q_6_dup_34_aq,
	combout => read_fifo_pointer(6));

-- Location: LCCOMB_X25_Y14_N20
ix697_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_717 = nx32341z1 $ (reg_q_7_dup_25_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_7_dup_25_aq,
	cin => nx32341z1,
	combout => inc_d_7_dup_717);

-- Location: FF_X25_Y14_N21
reg_q_7_dup_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_717,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx23864z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_25_aq);

-- Location: LCCOMB_X25_Y15_N30
ix733_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_753 = reg_q_7_dup_33_aq $ (nx27032z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_33_aq,
	cin => nx27032z1,
	combout => inc_d_7_dup_753);

-- Location: FF_X25_Y15_N31
reg_q_7_dup_33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_753,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => nx24859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_33_aq);

-- Location: LCCOMB_X25_Y15_N4
ix59319z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_pointer(7) = (rb_i_valid & (reg_q_7_dup_25_aq)) # (!rb_i_valid & ((reg_q_7_dup_33_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_25_aq,
	datac => reg_q_7_dup_33_aq,
	datad => rb_i_valid,
	combout => read_fifo_pointer(7));

-- Location: LCCOMB_X18_Y21_N30
ix22605z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z2 = (u_kirsch_reg_r_sub0_11_aq) # ((u_kirsch_reg_r_sub0_12_aq) # (nx22605z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_r_sub0_11_aq,
	datac => u_kirsch_reg_r_sub0_12_aq,
	datad => nx22605z3,
	combout => nx22605z2);

-- Location: LCCOMB_X16_Y18_N20
ix63331z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63331z1 = (u_kirsch_reg_dir2_final_2_aq & (nx22605z2 & ((u_kirsch_reg_dir2_final_0_aq) # (!u_kirsch_reg_dir2_final_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir2_final_2_aq,
	datab => nx22605z2,
	datac => u_kirsch_reg_dir2_final_0_aq,
	datad => u_kirsch_reg_dir2_final_1_aq,
	combout => nx63331z1);

-- Location: FF_X16_Y18_N21
u_kirsch_reg_intermediate_dir_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63331z1,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_intermediate_dir_1_aq);

-- Location: LCCOMB_X25_Y16_N26
ix59319z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(1) = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_1_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_intermediate_dir_1_aq,
	datad => k_i_pixel(1),
	combout => rb_i_data(1));

-- Location: LCCOMB_X19_Y18_N26
ix50073z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50073z2 = (u_kirsch_reg_max0_bit_counter_1_aq & (nx52067z3 & (!u_kirsch_reg_max0_bit_counter_0_aq & reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max0_bit_counter_1_aq,
	datab => nx52067z3,
	datac => u_kirsch_reg_max0_bit_counter_0_aq,
	datad => reset_n_ainput_o,
	combout => nx50073z2);

-- Location: LCCOMB_X19_Y18_N4
ix50073z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50073z1 = (nx50073z2 & ((nx40631z1))) # (!nx50073z2 & (u_kirsch_reg_dir1_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx50073z2,
	datac => u_kirsch_reg_dir1_2_aq,
	datad => nx40631z1,
	combout => nx50073z1);

-- Location: FF_X19_Y18_N5
u_kirsch_reg_dir1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50073z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_2_aq);

-- Location: LCCOMB_X16_Y17_N6
ix4088z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4088z1 = (nx2094z2 & (u_kirsch_reg_dir1_2_aq)) # (!nx2094z2 & ((u_kirsch_reg_dir1_final_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_dir1_2_aq,
	datac => u_kirsch_reg_dir1_final_2_aq,
	datad => nx2094z2,
	combout => nx4088z1);

-- Location: FF_X16_Y17_N7
u_kirsch_reg_dir1_final_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx4088z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_final_2_aq);

-- Location: LCCOMB_X19_Y18_N22
ix52067z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52067z2 = (!u_kirsch_reg_max0_bit_counter_1_aq & (nx52067z3 & (!u_kirsch_reg_max0_bit_counter_0_aq & reset_n_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_max0_bit_counter_1_aq,
	datab => nx52067z3,
	datac => u_kirsch_reg_max0_bit_counter_0_aq,
	datad => reset_n_ainput_o,
	combout => nx52067z2);

-- Location: LCCOMB_X19_Y18_N8
ix52067z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52067z1 = (nx52067z2 & ((nx40631z1))) # (!nx52067z2 & (u_kirsch_reg_dir1_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx52067z2,
	datac => u_kirsch_reg_dir1_0_aq,
	datad => nx40631z1,
	combout => nx52067z1);

-- Location: FF_X19_Y18_N9
u_kirsch_reg_dir1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx52067z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_0_aq);

-- Location: LCCOMB_X16_Y17_N26
ix2094z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2094z1 = (nx2094z2 & (u_kirsch_reg_dir1_0_aq)) # (!nx2094z2 & ((u_kirsch_reg_dir1_final_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir1_0_aq,
	datac => u_kirsch_reg_dir1_final_0_aq,
	datad => nx2094z2,
	combout => nx2094z1);

-- Location: FF_X16_Y17_N27
u_kirsch_reg_dir1_final_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2094z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_dir1_final_0_aq);

-- Location: LCCOMB_X16_Y17_N30
ix64328z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64328z3 = (u_kirsch_reg_dir2_final_0_aq & ((u_kirsch_reg_dir1_final_0_aq))) # (!u_kirsch_reg_dir2_final_0_aq & (u_kirsch_reg_dir1_final_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir2_final_0_aq,
	datab => u_kirsch_reg_dir1_final_1_aq,
	datac => u_kirsch_reg_dir1_final_0_aq,
	combout => nx64328z3);

-- Location: LCCOMB_X16_Y17_N0
ix64328z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64328z2 = (u_kirsch_reg_dir2_final_1_aq & ((nx64328z3))) # (!u_kirsch_reg_dir2_final_1_aq & (u_kirsch_reg_dir1_final_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir1_final_2_aq,
	datac => u_kirsch_reg_dir2_final_1_aq,
	datad => nx64328z3,
	combout => nx64328z2);

-- Location: LCCOMB_X16_Y18_N14
ix64328z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64328z1 = (nx22605z2 & ((u_kirsch_reg_dir2_final_2_aq & ((nx64328z2))) # (!u_kirsch_reg_dir2_final_2_aq & (u_kirsch_reg_dir1_final_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_dir1_final_3_aq,
	datab => nx22605z2,
	datac => nx64328z2,
	datad => u_kirsch_reg_dir2_final_2_aq,
	combout => nx64328z1);

-- Location: FF_X16_Y18_N15
u_kirsch_reg_intermediate_dir_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64328z1,
	ena => nx64328z4,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_intermediate_dir_2_aq);

-- Location: LCCOMB_X24_Y16_N26
ix59319z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(2) = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_2_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_intermediate_dir_2_aq,
	datad => k_i_pixel(2),
	combout => rb_i_data(2));

-- Location: LCCOMB_X20_Y19_N12
ix22605z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22605z1 = (nx22605z2 & ((nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx22605z2,
	datab => nx4094z2,
	datac => nx16758z7,
	datad => u_kirsch_reg_stg_counter1_3_aq,
	combout => nx22605z1);

-- Location: FF_X20_Y19_N13
u_kirsch_reg_o_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx22605z1,
	ena => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_edge_aq);

-- Location: LCCOMB_X24_Y16_N22
ix59319z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(3) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_edge_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_o_edge_aq,
	datad => k_i_pixel(3),
	combout => rb_i_data(3));

-- Location: LCCOMB_X19_Y18_N16
ix37156z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37156z1 = (nx17755z2 & (nx16758z2 & (u_kirsch_reg_stg_counter1_3_aq & nx16758z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17755z2,
	datab => nx16758z2,
	datac => u_kirsch_reg_stg_counter1_3_aq,
	datad => nx16758z7,
	combout => nx37156z1);

-- Location: FF_X19_Y18_N17
u_kirsch_reg_o_mode_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx37156z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_mode_0_aq);

-- Location: LCCOMB_X25_Y14_N24
ix59319z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(4) = (pb_a0_a_ainput_o & (!u_kirsch_reg_o_mode_0_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datab => u_kirsch_reg_o_mode_0_aq,
	datac => k_i_pixel(4),
	combout => rb_i_data(4));

-- Location: LCCOMB_X19_Y18_N2
u_kirsch_reg_o_mode_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_kirsch_reg_o_mode_1_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => u_kirsch_reg_o_mode_1_afeeder_combout);

-- Location: FF_X19_Y18_N3
u_kirsch_reg_o_mode_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_kirsch_reg_o_mode_1_afeeder_combout,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_kirsch_reg_o_mode_1_aq);

-- Location: LCCOMB_X25_Y17_N0
ix59319z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(5) = (pb_a0_a_ainput_o & (u_kirsch_reg_o_mode_1_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datac => u_kirsch_reg_o_mode_1_aq,
	datad => k_i_pixel(5),
	combout => rb_i_data(5));

-- Location: LCCOMB_X19_Y21_N28
ix40325z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40325z1 = (u_uart_reg_RxFSM_5_aq) # ((!u_uart_reg_RxRDYi_aq & u_uart_reg_RxErr_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_RxRDYi_aq,
	datac => u_uart_reg_RxErr_aq,
	datad => u_uart_reg_RxFSM_5_aq,
	combout => nx40325z1);

-- Location: FF_X19_Y21_N29
u_uart_reg_RxErr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx40325z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_RxErr_aq);

-- Location: LCCOMB_X25_Y17_N10
ix59319z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(6) = (pb_a0_a_ainput_o & (u_uart_reg_RxErr_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pb_a0_a_ainput_o,
	datac => u_uart_reg_RxErr_aq,
	datad => k_i_pixel(6),
	combout => rb_i_data(6));

-- Location: LCCOMB_X24_Y16_N4
ix59319z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- rb_i_data(7) = (pb_a0_a_ainput_o & (!reset_n_ainput_o)) # (!pb_a0_a_ainput_o & ((k_i_pixel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => pb_a0_a_ainput_o,
	datad => k_i_pixel(7),
	combout => rb_i_data(7));

-- Location: M9K_X26_Y18_N0
read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:read_fifo_mem_mem|altsyncram:ix64056z29482|altsyncram_r8g2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => rb_i_valid,
	portare => VCC,
	clk0 => clk_ainputclkctrl_outclk,
	portadatain => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X25_Y18_N18
read_fifo_reg_q_saved_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_0_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => read_fifo_reg_q_saved_0_afeeder_combout);

-- Location: FF_X25_Y18_N19
read_fifo_reg_q_saved_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_0_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_0_aq);

-- Location: LCCOMB_X25_Y18_N16
ix18859z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_0_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_rb_rd_en_delayed_aq,
	datab => read_fifo_reg_q_saved_0_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => NOT_rb_o_data_0_a);

-- Location: LCCOMB_X25_Y18_N24
read_fifo_reg_q_saved_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_1_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => read_fifo_reg_q_saved_1_afeeder_combout);

-- Location: FF_X25_Y18_N25
read_fifo_reg_q_saved_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_1_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_1_aq);

-- Location: LCCOMB_X25_Y18_N22
ix19856z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_1_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_rb_rd_en_delayed_aq,
	datab => read_fifo_reg_q_saved_1_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => NOT_rb_o_data_1_a);

-- Location: LCCOMB_X25_Y18_N20
read_fifo_reg_q_saved_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_2_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => read_fifo_reg_q_saved_2_afeeder_combout);

-- Location: FF_X25_Y18_N21
read_fifo_reg_q_saved_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_2_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_2_aq);

-- Location: LCCOMB_X25_Y18_N28
ix20853z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_2_a = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2))) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_rb_rd_en_delayed_aq,
	datab => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(2),
	datad => read_fifo_reg_q_saved_2_aq,
	combout => NOT_rb_o_data_2_a);

-- Location: LCCOMB_X25_Y18_N2
read_fifo_reg_q_saved_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_3_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3),
	combout => read_fifo_reg_q_saved_3_afeeder_combout);

-- Location: FF_X25_Y18_N3
read_fifo_reg_q_saved_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_3_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_3_aq);

-- Location: LCCOMB_X25_Y18_N4
ix21850z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_3_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_rb_rd_en_delayed_aq,
	datab => read_fifo_reg_q_saved_3_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(3),
	combout => NOT_rb_o_data_3_a);

-- Location: LCCOMB_X25_Y18_N6
read_fifo_reg_q_saved_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_4_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => read_fifo_reg_q_saved_4_afeeder_combout);

-- Location: FF_X25_Y18_N7
read_fifo_reg_q_saved_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_4_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_4_aq);

-- Location: LCCOMB_X25_Y18_N8
ix22847z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_4_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_4_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => NOT_rb_o_data_4_a);

-- Location: LCCOMB_X25_Y18_N12
read_fifo_reg_q_saved_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_5_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => read_fifo_reg_q_saved_5_afeeder_combout);

-- Location: FF_X25_Y18_N13
read_fifo_reg_q_saved_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_5_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_5_aq);

-- Location: LCCOMB_X25_Y18_N26
ix23844z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_5_a = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5)))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_fifo_reg_q_saved_5_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datad => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => NOT_rb_o_data_5_a);

-- Location: LCCOMB_X25_Y18_N0
read_fifo_reg_q_saved_6_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_6_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6),
	combout => read_fifo_reg_q_saved_6_afeeder_combout);

-- Location: FF_X25_Y18_N1
read_fifo_reg_q_saved_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_6_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_6_aq);

-- Location: LCCOMB_X25_Y18_N30
ix24841z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_rb_o_data_6_a = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6))) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_rb_rd_en_delayed_aq,
	datab => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(6),
	datad => read_fifo_reg_q_saved_6_aq,
	combout => NOT_rb_o_data_6_a);

-- Location: LCCOMB_X25_Y18_N10
read_fifo_reg_q_saved_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- read_fifo_reg_q_saved_7_afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7),
	combout => read_fifo_reg_q_saved_7_afeeder_combout);

-- Location: FF_X25_Y18_N11
read_fifo_reg_q_saved_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => read_fifo_reg_q_saved_7_afeeder_combout,
	ena => reg_rb_rd_en_delayed_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_fifo_reg_q_saved_7_aq);

-- Location: LCCOMB_X25_Y18_N14
ix25838z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_u_uart_Tx_Reg_14n6ss1_8_a = (!u_uart_reg_TxFSM_1_aq & ((reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7))) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_7_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_1_aq,
	datab => reg_rb_rd_en_delayed_aq,
	datac => read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a(7),
	datad => read_fifo_reg_q_saved_7_aq,
	combout => NOT_u_uart_Tx_Reg_14n6ss1_8_a);

-- Location: LCCOMB_X25_Y21_N14
ix18859z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18859z1 = (!u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq & (u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_1_aq & ((!reg_tx_valid_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TopTx_aq,
	datac => u_uart_reg_TxFSM_1_aq,
	datad => reg_tx_valid_aq,
	combout => nx18859z1);

-- Location: FF_X25_Y18_N15
u_uart_reg_Tx_Reg_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_u_uart_Tx_Reg_14n6ss1_8_a,
	clrn => ALT_INV_reg_uart_reset_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_8_aq);

-- Location: FF_X25_Y18_N31
u_uart_reg_Tx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_6_a,
	asdata => u_uart_reg_Tx_Reg_8_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_7_aq);

-- Location: FF_X25_Y18_N27
u_uart_reg_Tx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_5_a,
	asdata => u_uart_reg_Tx_Reg_7_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_6_aq);

-- Location: FF_X25_Y18_N9
u_uart_reg_Tx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_4_a,
	asdata => u_uart_reg_Tx_Reg_6_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_5_aq);

-- Location: FF_X25_Y18_N5
u_uart_reg_Tx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_3_a,
	asdata => u_uart_reg_Tx_Reg_5_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_4_aq);

-- Location: FF_X25_Y18_N29
u_uart_reg_Tx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_2_a,
	asdata => u_uart_reg_Tx_Reg_4_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_3_aq);

-- Location: FF_X25_Y18_N23
u_uart_reg_Tx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_1_a,
	asdata => u_uart_reg_Tx_Reg_3_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_2_aq);

-- Location: FF_X25_Y18_N17
u_uart_reg_Tx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_rb_o_data_0_a,
	asdata => u_uart_reg_Tx_Reg_2_aq,
	clrn => ALT_INV_reg_uart_reset_aq,
	sload => u_uart_reg_TxFSM_1_aq,
	ena => nx18859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_1_aq);

-- Location: LCCOMB_X25_Y21_N18
ix17862z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_uart_Tx_Reg_14n6ss1_0_a = (u_uart_reg_TxFSM_1_aq & ((!u_uart_reg_Tx_Reg_1_aq))) # (!u_uart_reg_TxFSM_1_aq & (!u_uart_reg_TxFSM_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datac => u_uart_reg_Tx_Reg_1_aq,
	datad => u_uart_reg_TxFSM_1_aq,
	combout => u_uart_Tx_Reg_14n6ss1_0_a);

-- Location: LCCOMB_X25_Y21_N0
ix17862z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17862z2 = (u_uart_reg_TxFSM_0_aq & (((u_uart_reg_TxFSM_1_aq)) # (!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_0_aq & ((u_uart_reg_TxFSM_1_aq & (!u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_1_aq & ((reg_tx_valid_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uart_reg_TxFSM_0_aq,
	datab => u_uart_reg_TopTx_aq,
	datac => u_uart_reg_TxFSM_1_aq,
	datad => reg_tx_valid_aq,
	combout => nx17862z2);

-- Location: LCCOMB_X20_Y21_N24
ix17862z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17862z1 = (nx17862z2 & ((u_uart_reg_Tx_Reg_0_aq))) # (!nx17862z2 & (!u_uart_Tx_Reg_14n6ss1_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_uart_Tx_Reg_14n6ss1_0_a,
	datac => u_uart_reg_Tx_Reg_0_aq,
	datad => nx17862z2,
	combout => nx17862z1);

-- Location: FF_X20_Y21_N25
u_uart_reg_Tx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17862z1,
	clrn => ALT_INV_reg_uart_reset_aq,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_uart_reg_Tx_Reg_0_aq);

-- Location: LCCOMB_X13_Y18_N0
ix3377z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_0_a = (reg_q_10_dup_50_aq & (nx51544z5)) # (!reg_q_10_dup_50_aq & ((nx51544z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z5,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z19,
	combout => u_seg7_u_dual_seg7_muxed_char_0_a);

-- Location: FF_X13_Y18_N1
u_seg7_u_dual_seg7_reg_o_char_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_0_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_0_aq);

-- Location: LCCOMB_X15_Y18_N10
ix5371z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5371z1 = (u_kirsch_reg_o_row_7_aq & (((!u_kirsch_reg_o_row_5_aq & u_kirsch_reg_o_row_4_aq)) # (!u_kirsch_reg_o_row_6_aq))) # (!u_kirsch_reg_o_row_7_aq & ((u_kirsch_reg_o_row_6_aq) # ((u_kirsch_reg_o_row_4_aq) # (!u_kirsch_reg_o_row_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx5371z1);

-- Location: LCCOMB_X15_Y18_N12
ix5371z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_2_a = (reg_q_10_dup_50_aq & (nx5371z1)) # (!reg_q_10_dup_50_aq & ((nx51544z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx5371z1,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z22,
	combout => u_seg7_u_dual_seg7_muxed_char_2_a);

-- Location: FF_X15_Y18_N13
u_seg7_u_dual_seg7_reg_o_char_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_2_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_2_aq);

-- Location: LCCOMB_X15_Y18_N18
ix6368z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_3_a = (reg_q_10_dup_50_aq & ((nx51544z9) # ((nx51544z10)))) # (!reg_q_10_dup_50_aq & (((nx51544z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z9,
	datab => nx51544z10,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z14,
	combout => u_seg7_u_dual_seg7_muxed_char_3_a);

-- Location: FF_X15_Y18_N19
u_seg7_u_dual_seg7_reg_o_char_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_3_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_3_aq);

-- Location: LCCOMB_X15_Y18_N4
ix7365z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7365z1 = (!u_kirsch_reg_o_row_4_aq & ((u_kirsch_reg_o_row_7_aq) # ((u_kirsch_reg_o_row_5_aq) # (!u_kirsch_reg_o_row_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_kirsch_reg_o_row_7_aq,
	datab => u_kirsch_reg_o_row_6_aq,
	datac => u_kirsch_reg_o_row_5_aq,
	datad => u_kirsch_reg_o_row_4_aq,
	combout => nx7365z1);

-- Location: LCCOMB_X15_Y18_N8
ix7365z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_4_a = (reg_q_10_dup_50_aq & ((nx51544z4) # ((nx7365z1)))) # (!reg_q_10_dup_50_aq & (((nx51544z20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z4,
	datab => nx7365z1,
	datac => reg_q_10_dup_50_aq,
	datad => nx51544z20,
	combout => u_seg7_u_dual_seg7_muxed_char_4_a);

-- Location: FF_X15_Y18_N9
u_seg7_u_dual_seg7_reg_o_char_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_4_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_4_aq);

-- Location: LCCOMB_X19_Y18_N12
ix10356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_7_a = (reg_q_10_dup_50_aq & (u_kirsch_reg_o_mode_1_aq)) # (!reg_q_10_dup_50_aq & ((!u_kirsch_reg_o_mode_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_kirsch_reg_o_mode_1_aq,
	datac => reg_q_10_dup_50_aq,
	datad => u_kirsch_reg_o_mode_0_aq,
	combout => u_seg7_u_dual_seg7_muxed_char_7_a);

-- Location: FF_X19_Y18_N13
u_seg7_u_dual_seg7_reg_o_char_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_7_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_7_aq);

-- Location: IOIBUF_X0_Y5_N1
sw_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => sw_a0_a_ainput_o);

-- Location: IOIBUF_X10_Y19_N15
sw_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => sw_a1_a_ainput_o);

-- Location: IOIBUF_X10_Y19_N22
sw_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => sw_a2_a_ainput_o);

-- Location: IOIBUF_X10_Y20_N15
sw_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => sw_a3_a_ainput_o);

-- Location: IOIBUF_X10_Y21_N15
sw_a4_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => sw_a4_a_ainput_o);

-- Location: IOIBUF_X10_Y22_N15
sw_a5_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => sw_a5_a_ainput_o);

-- Location: IOIBUF_X3_Y0_N8
sw_a6_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => sw_a6_a_ainput_o);

-- Location: IOIBUF_X1_Y10_N15
sw_a7_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => sw_a7_a_ainput_o);

-- Location: IOIBUF_X9_Y0_N22
pb_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => pb_a1_a_ainput_o);

-- Location: IOIBUF_X9_Y0_N29
pb_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => pb_a2_a_ainput_o);

-- Location: IOIBUF_X6_Y0_N15
pb_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => pb_a3_a_ainput_o);

-- Location: UNVM_X0_Y11_N40
a_aQUARTUS_CREATED_UNVM_a : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => a_aQUARTUS_CREATED_GND_aI_combout,
	xe_ye => a_aQUARTUS_CREATED_GND_aI_combout,
	se => a_aQUARTUS_CREATED_GND_aI_combout,
	busy => a_aQUARTUS_CREATED_UNVM_a_abusy);

-- Location: ADCBLOCK_X10_Y24_N0
a_aQUARTUS_CREATED_ADC1_a : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => a_aQUARTUS_CREATED_GND_aI_combout,
	usr_pwd => VCC,
	tsen => a_aQUARTUS_CREATED_GND_aI_combout,
	chsel => a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC1_a_aeoc);

ww_uart_tx <= uart_tx_aoutput_o;

ww_seg7_en(0) <= seg7_en_a0_a_aoutput_o;

ww_seg7_en(1) <= seg7_en_a1_a_aoutput_o;

ww_seg7_data(0) <= seg7_data_a0_a_aoutput_o;

ww_seg7_data(1) <= seg7_data_a1_a_aoutput_o;

ww_seg7_data(2) <= seg7_data_a2_a_aoutput_o;

ww_seg7_data(3) <= seg7_data_a3_a_aoutput_o;

ww_seg7_data(4) <= seg7_data_a4_a_aoutput_o;

ww_seg7_data(5) <= seg7_data_a5_a_aoutput_o;

ww_seg7_data(6) <= seg7_data_a6_a_aoutput_o;

ww_seg7_data(7) <= seg7_data_a7_a_aoutput_o;

ww_led(0) <= led_a0_a_aoutput_o;

ww_led(1) <= led_a1_a_aoutput_o;

ww_led(2) <= led_a2_a_aoutput_o;

ww_led(3) <= led_a3_a_aoutput_o;

ww_led(4) <= led_a4_a_aoutput_o;

ww_led(5) <= led_a5_a_aoutput_o;

ww_led(6) <= led_a6_a_aoutput_o;

ww_led(7) <= led_a7_a_aoutput_o;
END structure;


