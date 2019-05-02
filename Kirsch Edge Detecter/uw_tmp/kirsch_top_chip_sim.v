// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

// DATE "07/15/2018 11:18:58"

// 
// Device: Altera 10M08SAE144C8G Package EQFP144
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_top_chip (	reset_n,
	clk,
	uart_rx,
	uart_tx,
	sw,
	pb,
	seg7_en,
	seg7_data,
	led);
input 	reset_n;
input 	clk;
input 	uart_rx;
output 	uart_tx;
input 	[7:0] sw;
input 	[3:0] pb;
output 	[1:0] seg7_en;
output 	[7:0] seg7_data;
output 	[7:0] led;

// Design Ports Information
// uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[1]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
// reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
// pb[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
// uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire sw_a0_a_ainput_o;
wire sw_a1_a_ainput_o;
wire sw_a2_a_ainput_o;
wire sw_a3_a_ainput_o;
wire sw_a4_a_ainput_o;
wire sw_a5_a_ainput_o;
wire sw_a6_a_ainput_o;
wire sw_a7_a_ainput_o;
wire pb_a1_a_ainput_o;
wire pb_a2_a_ainput_o;
wire pb_a3_a_ainput_o;
wire a_aQUARTUS_CREATED_GND_aI_combout;
wire a_aQUARTUS_CREATED_UNVM_a_abusy;
wire a_aQUARTUS_CREATED_ADC1_a_aeoc;
wire seg7_data_a1_a_aoutput_o;
wire seg7_data_a5_a_aoutput_o;
wire seg7_data_a6_a_aoutput_o;
wire led_a0_a_aoutput_o;
wire led_a1_a_aoutput_o;
wire led_a2_a_aoutput_o;
wire led_a3_a_aoutput_o;
wire led_a4_a_aoutput_o;
wire led_a5_a_aoutput_o;
wire led_a6_a_aoutput_o;
wire led_a7_a_aoutput_o;
wire uart_tx_aoutput_o;
wire seg7_en_a0_a_aoutput_o;
wire seg7_en_a1_a_aoutput_o;
wire seg7_data_a0_a_aoutput_o;
wire seg7_data_a2_a_aoutput_o;
wire seg7_data_a3_a_aoutput_o;
wire seg7_data_a4_a_aoutput_o;
wire seg7_data_a7_a_aoutput_o;
wire clk_ainput_o;
wire clk_ainputclkctrl_outclk;
wire inc_d_0__dup_997;
wire nx25391z6;
wire nx3853z1;
wire inc_d_6__dup_1009;
wire reset_n_ainput_o;
wire inc_d_0__dup_1037;
wire nx37417z3;
wire nx37417z2;
wire reg_q_0__dup_24_a_wirecell_combout;
wire nx30620z1;
wire incdec_mux_1_dup_114;
wire reg_q_1__dup_23_aq;
wire nx15046z1;
wire incdec_mux_2_dup_115;
wire reg_q_2__dup_22_aq;
wire nx46951z1;
wire incdec_mux_3_dup_116;
wire reg_q_3__dup_21_aq;
wire nx34159z1;
wire incdec_mux_4_dup_117;
wire reg_q_4__dup_20_aq;
wire nx49733z1;
wire incdec_mux_5_dup_118;
wire reg_q_5__dup_19_aq;
wire nx65307z1;
wire incdec_mux_6_dup_119;
wire reg_q_6__dup_18_aq;
wire nx22869z3;
wire nx22869z2;
wire nx50191z1;
wire incdec_mux_7_dup_120;
wire reg_q_7__dup_17_aq;
wire nx42404z1;
wire incdec_mux_8_dup_121;
wire reg_q_8__dup_16_aq;
wire write_fifo_full;
wire u_uart_reg_RxFSM_1__a0_combout;
wire inc_d_0_;
wire reg_q_0__aq;
wire nx27063z1;
wire inc_d_1_;
wire reg_q_1__aq;
wire nx39256z1;
wire inc_d_2_;
wire reg_q_2__aq;
wire nx57428z1;
wire inc_d_3_;
wire reg_q_3__aq;
wire nx23040z1;
wire inc_d_4_;
wire reg_q_4__aq;
wire nx58827z1;
wire inc_d_5_;
wire reg_q_5__aq;
wire nx37857z1;
wire inc_d_6_;
wire reg_q_6__aq;
wire nx41995z1;
wire inc_d_7_;
wire reg_q_7__aq;
wire nx8364z1;
wire inc_d_8_;
wire reg_q_8__aq;
wire nx9072z1;
wire inc_d_9_;
wire reg_q_9__aq;
wire nx40977z1;
wire inc_d_10_;
wire reg_q_10__aq;
wire nx60415z2;
wire nx60415z5;
wire nx60415z4;
wire nx60415z3;
wire nx60415z1;
wire reg_uart_reset_aq;
wire uart_rx_ainput_o;
wire nx12790z2;
wire u_uart_reg_Rx_r_a0_combout;
wire u_uart_reg_Rx_r_aq;
wire nx12790z1;
wire u_uart_reg_RxFSM_1__aq;
wire nx64683z1;
wire nx64683z3;
wire u_uart_modgen_counter_RxBitCnt_reg_q_0__aq;
wire nx144z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_1__aq;
wire nx1141z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_2__aq;
wire nx2138z2;
wire nx2138z1;
wire u_uart_modgen_counter_RxBitCnt_reg_q_3__aq;
wire nx9799z2;
wire nx10796z1;
wire u_uart_reg_RxFSM_3__aq;
wire nx11793z1;
wire u_uart_reg_RxFSM_2__aq;
wire nx9799z1;
wire u_uart_reg_RxFSM_4__aq;
wire nx8802z1;
wire u_uart_reg_RxFSM_5__aq;
wire nx13787z1;
wire u_uart_reg_RxFSM_0__aq;
wire inc_d_0__dup_862;
wire nx2379z1;
wire reg_q_0__dup_71_aq;
wire nx52912z1;
wire inc_d_1__dup_864;
wire reg_q_1__dup_70_aq;
wire nx2950z1;
wire inc_d_2__dup_866;
wire reg_q_2__dup_69_aq;
wire nx47012z1;
wire inc_d_3__dup_868;
wire reg_q_3__dup_68_aq;
wire nx31438z1;
wire inc_d_4__dup_870;
wire reg_q_4__dup_67_aq;
wire nx63343z1;
wire inc_d_5__dup_872;
wire reg_q_5__dup_66_aq;
wire nx17767z1;
wire inc_d_6__dup_874;
wire reg_q_6__dup_65_aq;
wire nx33341z1;
wire inc_d_7__dup_876;
wire reg_q_7__dup_64_aq;
wire nx48915z1;
wire inc_d_8__dup_878;
wire reg_q_8__dup_63_aq;
wire nx64489z1;
wire inc_d_9__dup_880;
wire reg_q_9__dup_62_aq;
wire nx58796z1;
wire inc_d_10__dup_882;
wire reg_q_10__dup_61_aq;
wire nx59343z6;
wire nx59343z5;
wire u_uart_reg_RxDivisor_4__afeeder_combout;
wire u_uart_reg_RxDivisor_4__aq;
wire nx59343z3;
wire nx59343z4;
wire nx59343z2;
wire nx59343z1;
wire u_uart_reg_TopRx_aq;
wire nx13938z1;
wire u_uart_reg_RxRDYi_afeeder_combout;
wire u_uart_reg_RxRDYi_aq;
wire nx22869z1;
wire reg_q_0__dup_24_aq;
wire nx7605z2;
wire nx7605z1;
wire write_fifo_reg_rd_en_delayed_aq;
wire pb_a0_a_ainput_o;
wire nx37417z1;
wire reg_q_0__dup_98_aq;
wire nx16836z1;
wire inc_d_1__dup_1039;
wire reg_q_1__dup_97_aq;
wire nx64274z1;
wire inc_d_2__dup_1041;
wire reg_q_2__dup_96_aq;
wire nx32369z1;
wire inc_d_3__dup_1043;
wire reg_q_3__dup_95_aq;
wire nx47943z1;
wire inc_d_4__dup_1045;
wire reg_q_4__dup_94_aq;
wire nx2019z1;
wire inc_d_5__dup_1047;
wire reg_q_5__dup_93_aq;
wire nx51981z1;
wire inc_d_6__dup_1049;
wire reg_q_6__dup_92_aq;
wire nx44194z1;
wire inc_d_7__dup_1051;
wire reg_q_7__dup_91_aq;
wire nx25391z2;
wire nx25391z3;
wire nx25391z1;
wire reg_q_6__dup_84_aq;
wire nx11640z1;
wire inc_d_7__dup_1011;
wire reg_q_7__dup_83_aq;
wire nx25391z5;
wire nx25391z4;
wire reg_q_0__dup_90_aq;
wire nx38998z1;
wire inc_d_1__dup_999;
wire reg_q_1__dup_89_aq;
wire nx10964z1;
wire inc_d_2__dup_1001;
wire reg_q_2__dup_88_aq;
wire nx42869z1;
wire inc_d_3__dup_1003;
wire reg_q_3__dup_87_aq;
wire nx27295z1;
wire inc_d_4__dup_1005;
wire reg_q_4__dup_86_aq;
wire nx53815z1;
wire inc_d_5__dup_1007;
wire reg_q_5__dup_85_aq;
wire nx55203z4;
wire nx55203z3;
wire nx16758z5;
wire nx16758z6;
wire nx16758z4;
wire nx55203z2;
wire nx55203z1;
wire u_kirsch_reg_stg_counter1_0__aq;
wire nx58194z1;
wire u_kirsch_reg_stg_counter1_3__aq;
wire nx57197z2;
wire nx57197z1;
wire u_kirsch_reg_stg_counter1_2__aq;
wire nx56200z2;
wire nx56200z1;
wire u_kirsch_reg_stg_counter1_1__aq;
wire nx16758z7;
wire nx16758z3;
wire nx15761z1;
wire u_kirsch_reg_stg_counter2_3__aq;
wire nx17755z2;
wire nx17755z1;
wire u_kirsch_reg_stg_counter2_1__aq;
wire nx18752z2;
wire nx18752z3;
wire nx18752z1;
wire u_kirsch_reg_stg_counter2_0__aq;
wire nx16758z2;
wire nx16758z1;
wire u_kirsch_reg_stg_counter2_2__aq;
wire nx4094z2;
wire nx64328z4;
wire u_kirsch_reg_o_row_5__aq;
wire u_kirsch_reg_o_row_4__aq;
wire u_kirsch_reg_o_row_6__aq;
wire u_kirsch_reg_o_row_7__aq;
wire nx51544z8;
wire inc_d_0__dup_814;
wire u_seg7_u_dual_seg7_reg_prev_reset_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_reset_aq;
wire nx29573z1;
wire reg_q_0__dup_60_aq;
wire nx55390z2;
wire inc_d_1__dup_815;
wire reg_q_1__dup_59_aq;
wire nx60108z2;
wire inc_d_2__dup_816;
wire reg_q_2__dup_58_aq;
wire nx46048z2;
wire inc_d_3__dup_817;
wire reg_q_3__dup_57_aq;
wire nx35062z2;
wire inc_d_4__dup_818;
wire reg_q_4__dup_56_aq;
wire nx50636z2;
wire inc_d_5__dup_819;
wire reg_q_5__dup_55_aq;
wire nx674z2;
wire inc_d_6__dup_820;
wire reg_q_6__dup_54_aq;
wire nx49288z2;
wire inc_d_7__dup_821;
wire reg_q_7__dup_53_aq;
wire nx55707z2;
wire inc_d_8__dup_822;
wire reg_q_8__dup_52_aq;
wire nx44217z2;
wire inc_d_9__dup_823;
wire reg_q_9__dup_51_aq;
wire nx10586z1;
wire inc_d_10__dup_824;
wire reg_q_10__dup_50_aq;
wire u_kirsch_reg_o_row_0__aq;
wire u_kirsch_reg_o_row_3__aq;
wire u_kirsch_reg_o_row_2__aq;
wire u_kirsch_reg_o_row_1__aq;
wire nx51544z19;
wire nx51544z18;
wire nx51544z20;
wire nx51544z17;
wire nx18625z1;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_aq;
wire u_seg7_u_dual_seg7_load_reg;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq;
wire nx51544z7;
wire nx51544z6;
wire nx51544z25;
wire nx51544z24;
wire nx28027z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq;
wire nx51544z23;
wire nx51544z22;
wire nx51544z21;
wire nx51544z16;
wire nx51544z15;
wire nx51544z14;
wire nx51544z13;
wire nx51544z12;
wire nx51544z5;
wire nx51544z4;
wire nx51544z3;
wire nx51544z9;
wire nx51544z10;
wire nx51544z2;
wire nx51544z11;
wire nx51544z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq;
wire inc_d_0__dup_915;
wire reg_q_0__dup_82_aq;
wire nx39407z1;
wire inc_d_1__dup_917;
wire reg_q_1__dup_81_aq;
wire nx10555z1;
wire inc_d_2__dup_919;
wire reg_q_2__dup_80_aq;
wire nx42460z1;
wire inc_d_3__dup_921;
wire reg_q_3__dup_79_aq;
wire nx26886z1;
wire inc_d_4__dup_923;
wire reg_q_4__dup_78_aq;
wire nx11312z1;
wire inc_d_5__dup_925;
wire reg_q_5__dup_77_aq;
wire nx4262z1;
wire inc_d_6__dup_927;
wire reg_q_6__dup_76_aq;
wire nx19836z1;
wire inc_d_7__dup_929;
wire reg_q_7__dup_75_aq;
wire nx31640z1;
wire inc_d_8__dup_931;
wire reg_q_8__dup_74_aq;
wire nx47250z1;
wire inc_d_9__dup_933;
wire reg_q_9__dup_73_aq;
wire nx16066z1;
wire inc_d_10__dup_935;
wire reg_q_10__dup_72_aq;
wire nx57349z3;
wire nx8279z1;
wire inc_d_11_;
wire reg_q_11__aq;
wire nx57349z2;
wire nx57349z6;
wire nx57349z5;
wire nx57349z4;
wire nx57349z1;
wire u_uart_reg_TopTx_aq;
wire nx61431z2;
wire nx59437z1;
wire nx59437z2;
wire u_uart_modgen_counter_TxBitCnt_reg_q_0__aq;
wire nx60434z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_1__aq;
wire nx61431z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_2__aq;
wire nx62428z2;
wire nx62428z1;
wire u_uart_modgen_counter_TxBitCnt_reg_q_3__aq;
wire nx8356z3;
wire nx8356z2;
wire nx8356z1;
wire u_uart_reg_TxFSM_1__aq;
wire nx4094z1;
wire u_kirsch_reg_o_valid_afeeder_combout;
wire u_kirsch_reg_o_valid_aq;
wire rb_i_valid;
wire nx13251z1;
wire u_uart_reg_TxBusy_aq;
wire reg_tx_busy_delayed_afeeder_combout;
wire reg_tx_busy_delayed_aq;
wire reg_q_0__dup_49_a_wirecell_combout;
wire nx9182z1;
wire nx58387z1;
wire incdec_mux_1_dup_114_dup_779;
wire reg_q_1__dup_48_aq;
wire nx24756z1;
wire incdec_mux_2_dup_115_dup_781;
wire reg_q_2__dup_47_aq;
wire nx9182z2;
wire incdec_mux_3_dup_116_dup_783;
wire reg_q_3__dup_46_aq;
wire nx59144z1;
wire incdec_mux_4_dup_117_dup_785;
wire reg_q_4__dup_45_aq;
wire nx21966z1;
wire incdec_mux_5_dup_118_dup_787;
wire reg_q_5__dup_44_aq;
wire nx37540z1;
wire incdec_mux_6_dup_119_dup_789;
wire reg_q_6__dup_43_aq;
wire nx5635z1;
wire incdec_mux_7_dup_120_dup_791;
wire reg_q_7__dup_42_aq;
wire nx52114z1;
wire incdec_mux_8_dup_121_dup_793;
wire reg_q_8__dup_41_aq;
wire nx15004z3;
wire nx15004z2;
wire nx383z2;
wire nx383z1;
wire reg_q_0__dup_49_aq;
wire rb_empty;
wire nx15004z1;
wire reg_rb_rd_en_aq;
wire nx64502z2;
wire nx64502z1;
wire reg_wait_for_tx_valid_aq;
wire reg_wait_for_tx_valid_delayed_aq;
wire rb_rd_en_true;
wire reg_rb_rd_en_delayed_aq;
wire reg_rb_rd_en_delayed_a_wirecell_combout;
wire reg_tx_valid_aq;
wire nx7359z2;
wire nx7359z1;
wire u_uart_reg_TxFSM_0__aq;
wire nx29221z10;
wire nx29221z9;
wire nx29221z8;
wire nx45738z1;
wire u_kirsch_reg_max1_bit_counter_1__aq;
wire nx46735z1;
wire u_kirsch_reg_max1_bit_counter_0__aq;
wire nx58492z2;
wire nx26412z4;
wire u_uart_reg_Rx_Reg_7__a0_combout;
wire nx44871z1;
wire u_uart_reg_Rx_Reg_7__aq;
wire u_uart_reg_Rx_Reg_6__afeeder_combout;
wire u_uart_reg_Rx_Reg_6__aq;
wire u_uart_reg_Rx_Reg_5__aq;
wire u_uart_reg_Rx_Reg_4__afeeder_combout;
wire u_uart_reg_Rx_Reg_4__aq;
wire u_uart_reg_Rx_Reg_3__afeeder_combout;
wire u_uart_reg_Rx_Reg_3__aq;
wire u_uart_reg_Rx_Reg_2__aq;
wire u_uart_reg_Rx_Reg_1__aq;
wire u_uart_reg_Rx_Reg_0__aq;
wire u_uart_reg_Dout_0__afeeder_combout;
wire u_uart_reg_Dout_0__aq;
wire inc_d_0__dup_638;
wire nx58143z1;
wire reg_q_0__dup_15_aq;
wire inc_d_0__dup_602;
wire nx58151z1;
wire reg_q_0__dup_7_aq;
wire nx35880z1;
wire inc_d_1__dup_640;
wire reg_q_1__dup_14_aq;
wire nx38358z1;
wire inc_d_1__dup_604;
wire reg_q_1__dup_6_aq;
wire nx51454z1;
wire inc_d_2__dup_642;
wire reg_q_2__dup_13_aq;
wire nx53932z1;
wire inc_d_2__dup_606;
wire reg_q_2__dup_5_aq;
wire nx1492z1;
wire inc_d_3__dup_644;
wire reg_q_3__dup_12_aq;
wire nx43509z1;
wire inc_d_3__dup_608;
wire reg_q_3__dup_4_aq;
wire nx17066z1;
wire inc_d_4__dup_646;
wire reg_q_4__dup_11_aq;
wire nx27935z1;
wire inc_d_4__dup_610;
wire reg_q_4__dup_3_aq;
wire nx12361z1;
wire inc_d_5__dup_612;
wire reg_q_5__dup_2_aq;
wire nx32896z1;
wire inc_d_5__dup_648;
wire reg_q_5__dup_10_aq;
wire nx64801z1;
wire inc_d_6__dup_650;
wire reg_q_6__dup_9_aq;
wire nx62323z1;
wire inc_d_6__dup_614;
wire reg_q_6__dup_1_aq;
wire nx57014z1;
wire inc_d_7__dup_652;
wire reg_q_7__dup_8_aq;
wire nx11000z1;
wire inc_d_7__dup_616;
wire reg_q_7__dup_0_aq;
wire u_uart_reg_Dout_1__aq;
wire u_uart_reg_Dout_2__aq;
wire u_uart_reg_Dout_3__aq;
wire u_uart_reg_Dout_4__afeeder_combout;
wire u_uart_reg_Dout_4__aq;
wire u_uart_reg_Dout_5__afeeder_combout;
wire u_uart_reg_Dout_5__aq;
wire u_uart_reg_Dout_6__aq;
wire u_uart_reg_Dout_7__afeeder_combout;
wire u_uart_reg_Dout_7__aq;
wire nx53163z4;
wire nx53163z3;
wire u_kirsch_reg_e3_4__aq;
wire write_fifo_reg_q_saved_4__aq;
wire nx41042z6;
wire nx41042z10;
wire nx41042z9;
wire nx41042z8;
wire nx41042z11;
wire nx41042z7;
wire nx41042z5;
wire u_kirsch_reg_g2_4__aq;
wire u_kirsch_reg_g3_4__aq;
wire nx26412z6;
wire nx58953z2;
wire nx63596z4;
wire nx63596z3;
wire nx63596z2;
wire nx62599z1;
wire u_kirsch_reg_row_index_1__aq;
wire nx63596z1;
wire u_kirsch_reg_row_index_0__aq;
wire nx41042z4;
wire write_fifo_reg_q_saved_0__aq;
wire write_fifo_reg_q_saved_1__aq;
wire write_fifo_reg_q_saved_2__aq;
wire write_fifo_reg_q_saved_3__aq;
wire write_fifo_reg_q_saved_5__aq;
wire write_fifo_reg_q_saved_6__aq;
wire write_fifo_reg_q_saved_7__aq;
wire nx4443z1;
wire nx55307z2;
wire nx41042z3;
wire nx55307z1;
wire u_kirsch_reg_c3_4__aq;
wire nx29221z2;
wire nx26412z3;
wire nx26412z2;
wire nx58953z1;
wire nx57076z1;
wire nx57076z2;
wire u_kirsch_reg_a2_4__aq;
wire u_kirsch_reg_a3_4__aq;
wire nx26412z9;
wire nx26412z8;
wire nx26412z7;
wire u_kirsch_reg_i_2_4__aq;
wire u_kirsch_reg_e3_7__aq;
wire u_kirsch_reg_f3_7__aq;
wire nx64381z2;
wire nx53163z2;
wire nx53163z1;
wire u_kirsch_reg_d3_7__aq;
wire nx41042z1;
wire nx41042z2;
wire u_kirsch_reg_h2_7__aq;
wire u_kirsch_reg_h3_7__aq;
wire nx58298z2;
wire nx58298z1;
wire u_kirsch_reg_c3_7__aq;
wire nx63433z2;
wire nx63433z1;
wire u_kirsch_reg_b3_7__aq;
wire nx64381z3;
wire nx64381z4;
wire u_kirsch_d3_9n15ss1_7_;
wire nx64381z1;
wire u_kirsch_reg_i_3_7__aq;
wire u_kirsch_reg_g3_7__aq;
wire nx55962z2;
wire nx55962z1;
wire u_kirsch_reg_a3_7__aq;
wire u_kirsch_reg_i_2_7__aq;
wire nx57301z2;
wire nx57301z1;
wire u_kirsch_reg_c3_6__aq;
wire nx55082z2;
wire nx55082z1;
wire u_kirsch_reg_a2_6__aq;
wire nx52166z2;
wire nx52166z1;
wire u_kirsch_reg_d3_6__aq;
wire nx40045z1;
wire nx40045z2;
wire u_kirsch_reg_h2_6__aq;
wire u_kirsch_reg_h3_6__aq;
wire nx65378z3;
wire nx65378z4;
wire u_kirsch_d3_9n15ss1_6_;
wire u_kirsch_reg_e3_6__aq;
wire u_kirsch_reg_g2_6__aq;
wire nx65378z2;
wire nx65378z1;
wire u_kirsch_reg_i_3_6__aq;
wire u_kirsch_reg_g3_6__aq;
wire nx56959z2;
wire nx56959z1;
wire u_kirsch_reg_a3_6__aq;
wire u_kirsch_reg_i_2_6__aq;
wire u_kirsch_reg_e3_5__afeeder_combout;
wire u_kirsch_reg_e3_5__aq;
wire u_kirsch_reg_g2_5__aq;
wire nx51169z2;
wire nx51169z1;
wire u_kirsch_reg_d3_5__aq;
wire nx39048z1;
wire nx39048z2;
wire u_kirsch_reg_h2_5__aq;
wire u_kirsch_reg_h3_5__aq;
wire nx56304z2;
wire nx56304z1;
wire u_kirsch_reg_c3_5__aq;
wire nx56079z2;
wire nx56079z1;
wire u_kirsch_reg_a2_5__aq;
wire nx839z3;
wire nx839z2;
wire nx839z4;
wire u_kirsch_d3_9n15ss1_5_;
wire nx839z1;
wire u_kirsch_reg_i_3_5__aq;
wire u_kirsch_reg_g3_5__aq;
wire nx57956z2;
wire nx57956z1;
wire u_kirsch_reg_a3_5__aq;
wire u_kirsch_reg_i_2_5__aq;
wire nx50172z2;
wire nx50172z1;
wire u_kirsch_reg_d3_4__aq;
wire nx38051z2;
wire nx38051z1;
wire u_kirsch_reg_h2_4__aq;
wire u_kirsch_reg_h3_4__aq;
wire nx1836z3;
wire nx1836z2;
wire nx1836z4;
wire u_kirsch_d3_9n15ss1_4_;
wire nx1836z1;
wire u_kirsch_reg_i_3_4__aq;
wire u_kirsch_reg_e3_3__aq;
wire u_kirsch_reg_g2_3__aq;
wire u_kirsch_reg_g3_3__aq;
wire nx59950z2;
wire nx54310z2;
wire nx54310z1;
wire u_kirsch_reg_c3_3__aq;
wire nx59950z1;
wire nx58073z1;
wire nx58073z2;
wire u_kirsch_reg_a2_3__aq;
wire u_kirsch_reg_a3_3__aq;
wire u_kirsch_reg_i_2_3__aq;
wire nx49175z2;
wire nx49175z1;
wire u_kirsch_reg_d3_3__aq;
wire nx37054z1;
wire nx37054z2;
wire u_kirsch_reg_h2_3__aq;
wire u_kirsch_reg_h3_3__aq;
wire nx2833z3;
wire nx2833z2;
wire nx2833z4;
wire u_kirsch_d3_9n15ss1_3_;
wire nx2833z1;
wire u_kirsch_reg_i_3_3__aq;
wire u_kirsch_reg_e3_2__aq;
wire u_kirsch_reg_g2_2__aq;
wire nx53313z2;
wire nx53313z1;
wire u_kirsch_reg_c3_2__aq;
wire nx59070z1;
wire nx59070z2;
wire u_kirsch_reg_a2_2__aq;
wire nx36057z2;
wire nx48178z2;
wire nx48178z1;
wire u_kirsch_reg_d3_2__aq;
wire nx36057z1;
wire u_kirsch_reg_h2_2__aq;
wire u_kirsch_reg_h3_2__aq;
wire nx3830z3;
wire nx3830z2;
wire nx3830z4;
wire u_kirsch_d3_9n15ss1_2_;
wire nx3830z1;
wire u_kirsch_reg_i_3_2__aq;
wire u_kirsch_reg_g3_2__afeeder_combout;
wire u_kirsch_reg_g3_2__aq;
wire nx60947z2;
wire nx60947z1;
wire u_kirsch_reg_a3_2__aq;
wire u_kirsch_reg_i_2_2__aq;
wire u_kirsch_reg_e3_1__aq;
wire u_kirsch_reg_g2_1__aq;
wire nx52316z2;
wire nx52316z1;
wire u_kirsch_reg_c3_1__aq;
wire nx60067z2;
wire nx60067z1;
wire u_kirsch_reg_a2_1__aq;
wire nx47181z2;
wire nx47181z1;
wire u_kirsch_reg_d3_1__aq;
wire nx35060z1;
wire nx35060z2;
wire u_kirsch_reg_h2_1__aq;
wire u_kirsch_reg_h3_1__aq;
wire nx4827z3;
wire nx4827z2;
wire nx4827z4;
wire u_kirsch_d3_9n15ss1_1_;
wire nx4827z1;
wire u_kirsch_reg_i_3_1__aq;
wire u_kirsch_reg_g3_1__aq;
wire nx61944z2;
wire nx61944z1;
wire u_kirsch_reg_a3_1__aq;
wire u_kirsch_reg_i_2_1__aq;
wire u_kirsch_reg_e3_0__aq;
wire u_kirsch_reg_g2_0__aq;
wire u_kirsch_reg_g3_0__aq;
wire nx62941z2;
wire nx51319z2;
wire nx51319z1;
wire u_kirsch_reg_c3_0__aq;
wire nx62941z1;
wire nx61064z2;
wire nx61064z1;
wire u_kirsch_reg_a2_0__aq;
wire u_kirsch_reg_a3_0__aq;
wire u_kirsch_reg_i_2_0__aq;
wire nx34063z1;
wire nx46184z2;
wire nx46184z1;
wire u_kirsch_reg_d3_0__aq;
wire nx34063z2;
wire u_kirsch_reg_h2_0__aq;
wire u_kirsch_reg_h3_0__aq;
wire nx5824z3;
wire nx5824z2;
wire nx5824z4;
wire nx5824z1;
wire u_kirsch_reg_i_3_0__aq;
wire nx46608z1;
wire nx34502z1;
wire nx50076z1;
wire nx114z1;
wire nx31791z1;
wire nx16217z1;
wire nx643z1;
wire nx26313z1;
wire nx40631z1;
wire nx40631z2;
wire u_kirsch_reg_r_max0_4__aq;
wire nx23421z2;
wire nx23421z1;
wire u_kirsch_reg_i_0_4__aq;
wire nx15002z3;
wire nx15002z2;
wire nx15002z4;
wire nx15002z1;
wire u_kirsch_reg_i_1_4__aq;
wire nx22424z2;
wire nx22424z1;
wire u_kirsch_reg_i_0_3__aq;
wire nx14005z4;
wire nx14005z3;
wire nx14005z2;
wire nx14005z1;
wire u_kirsch_reg_i_1_3__aq;
wire nx21427z2;
wire nx21427z1;
wire u_kirsch_reg_i_0_2__aq;
wire nx13008z3;
wire nx13008z2;
wire nx13008z4;
wire nx13008z1;
wire u_kirsch_reg_i_1_2__aq;
wire nx20430z2;
wire nx20430z1;
wire u_kirsch_reg_i_0_1__aq;
wire nx12011z3;
wire nx12011z2;
wire nx12011z4;
wire nx12011z1;
wire u_kirsch_reg_i_1_1__aq;
wire nx11014z3;
wire nx11014z2;
wire nx11014z4;
wire nx11014z1;
wire u_kirsch_reg_i_1_0__aq;
wire nx19433z2;
wire nx19433z1;
wire u_kirsch_reg_i_0_0__aq;
wire nx14816z1;
wire nx1515z1;
wire nx29633z1;
wire nx13302z1;
wire u_kirsch_reg_r_add0_a_4__aq;
wire u_kirsch_reg_r_add0_a_3__aq;
wire u_kirsch_reg_r_max0_3__aq;
wire u_kirsch_reg_r_max0_2__aq;
wire u_kirsch_reg_r_add0_a_2__aq;
wire u_kirsch_reg_r_add0_a_1__aq;
wire u_kirsch_reg_r_max0_1__aq;
wire u_kirsch_reg_r_max0_0__aq;
wire u_kirsch_reg_r_add0_a_0__aq;
wire nx53938z1;
wire nx42746z1;
wire nx57178z1;
wire nx7973z1;
wire u_kirsch_reg_r_add1_a_4__aq;
wire u_kirsch_reg_r_add1_b_4__aq;
wire nx29221z3;
wire nx17993z4;
wire nx17993z3;
wire nx17993z2;
wire nx17993z1;
wire u_kirsch_reg_i_1_7__aq;
wire nx26412z5;
wire nx26412z1;
wire u_kirsch_reg_i_0_7__aq;
wire nx25415z2;
wire nx25415z1;
wire u_kirsch_reg_i_0_6__aq;
wire nx16996z3;
wire nx16996z2;
wire nx16996z4;
wire nx16996z1;
wire u_kirsch_reg_i_1_6__aq;
wire nx24418z2;
wire nx24418z1;
wire u_kirsch_reg_i_0_5__aq;
wire nx15999z3;
wire nx15999z2;
wire nx15999z4;
wire nx15999z1;
wire u_kirsch_reg_i_1_5__aq;
wire nx21086z1;
wire nx55474z1;
wire nx59267z1;
wire nx51089z1;
wire u_kirsch_reg_r_add0_a_8__aq;
wire u_kirsch_reg_r_max0_7__aq;
wire u_kirsch_reg_r_add0_a_7__aq;
wire u_kirsch_reg_r_max0_6__aq;
wire u_kirsch_reg_r_add0_a_6__aq;
wire u_kirsch_reg_r_max0_5__aq;
wire u_kirsch_reg_r_add0_a_5__aq;
wire nx23175z1;
wire nx6844z1;
wire nx27544z1;
wire nx3604z1;
wire nx24080z1;
wire u_kirsch_reg_r_add1_a_9__aq;
wire u_kirsch_reg_r_add1_b_9__aq;
wire u_kirsch_reg_r_add1_a_8__aq;
wire u_kirsch_reg_r_add1_b_8__aq;
wire u_kirsch_reg_r_add1_a_7__aq;
wire u_kirsch_reg_r_add1_b_7__aq;
wire u_kirsch_reg_r_add1_a_6__aq;
wire u_kirsch_reg_r_add1_b_6__aq;
wire u_kirsch_reg_r_add1_a_5__aq;
wire u_kirsch_reg_r_add1_b_5__aq;
wire u_kirsch_reg_r_add1_a_3__aq;
wire u_kirsch_reg_r_add1_b_3__aq;
wire u_kirsch_reg_r_add1_a_2__aq;
wire u_kirsch_reg_r_add1_b_2__aq;
wire u_kirsch_reg_r_add1_a_1__aq;
wire u_kirsch_reg_r_add1_b_1__aq;
wire u_kirsch_reg_r_add1_a_0__aq;
wire u_kirsch_reg_r_add1_b_0__afeeder_combout;
wire u_kirsch_reg_r_add1_b_0__aq;
wire nx26840z1;
wire nx54270z1;
wire nx22365z1;
wire nx37939z1;
wire nx12023z1;
wire nx61985z1;
wire nx46411z1;
wire nx12780z1;
wire nx2794z1;
wire nx6502z1;
wire nx29221z4;
wire nx29221z1;
wire u_kirsch_reg_r_max1_9__aq;
wire u_kirsch_reg_r_max1_8__aq;
wire u_kirsch_reg_r_max1_7__aq;
wire u_kirsch_reg_r_max1_6__aq;
wire u_kirsch_reg_r_max1_5__aq;
wire u_kirsch_reg_r_max1_3__aq;
wire u_kirsch_reg_r_max1_2__aq;
wire u_kirsch_reg_r_max1_1__aq;
wire u_kirsch_reg_r_max1_0__aq;
wire nx28806z1;
wire nx44380z1;
wire nx12475z1;
wire nx37487z1;
wire nx21913z1;
wire nx6339z1;
wire nx56301z1;
wire nx42866z1;
wire nx58440z1;
wire nx1252z1;
wire nx29221z7;
wire nx29221z6;
wire nx29221z5;
wire u_kirsch_reg_r_max1_4__aq;
wire nx60486z8;
wire nx60486z11;
wire nx60486z10;
wire nx60486z9;
wire nx60486z7;
wire nx60486z6;
wire nx12123z2;
wire nx60486z5;
wire nx60486z4;
wire nx60486z3;
wire nx58492z1;
wire u_kirsch_reg_dir2_2__aq;
wire nx12123z3;
wire nx12123z1;
wire u_kirsch_reg_dir2_final_2__aq;
wire nx2094z2;
wire nx52067z3;
wire nx64316z1;
wire u_kirsch_reg_max0_bit_counter_0__aq;
wire nx63319z1;
wire u_kirsch_reg_max0_bit_counter_1__aq;
wire nx51070z1;
wire u_kirsch_reg_dir1_1__aq;
wire nx3091z1;
wire u_kirsch_reg_dir1_final_1__aq;
wire nx60486z2;
wire nx60486z1;
wire u_kirsch_reg_dir2_0__aq;
wire u_kirsch_reg_dir2_final_0__aq;
wire nx62334z3;
wire nx59489z2;
wire nx59489z1;
wire u_kirsch_reg_dir2_1__aq;
wire u_kirsch_reg_dir2_final_1__aq;
wire nx49076z2;
wire nx49076z1;
wire u_kirsch_reg_dir1_3__aq;
wire nx5085z1;
wire u_kirsch_reg_dir1_final_3__aq;
wire nx62334z2;
wire nx38950z3;
wire nx38950z4;
wire nx38950z1;
wire u_kirsch_reg_r_add0_b_7__aq;
wire u_kirsch_reg_r_add0_b_6__aq;
wire u_kirsch_reg_r_add0_b_4__aq;
wire u_kirsch_reg_r_add0_b_2__aq;
wire nx38950z2;
wire u_kirsch_reg_r_add0_b_0__aq;
wire u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout;
wire u_kirsch_reg_r_add2_0__aq;
wire u_kirsch_reg_r_add0_b_1__aq;
wire nx52980z1;
wire u_kirsch_reg_r_add2_1__aq;
wire nx21832z1;
wire u_kirsch_reg_r_add2_2__aq;
wire u_kirsch_reg_r_add0_b_3__aq;
wire nx27373z1;
wire u_kirsch_reg_r_add2_3__aq;
wire nx58521z1;
wire u_kirsch_reg_r_add2_4__aq;
wire u_kirsch_reg_r_add0_b_5__aq;
wire nx23346z1;
wire u_kirsch_reg_r_add2_5__aq;
wire nx7802z1;
wire u_kirsch_reg_r_add2_6__aq;
wire nx38950z5;
wire u_kirsch_reg_r_add2_7__aq;
wire u_kirsch_reg_r_add0_b_8__aq;
wire nx42917z1;
wire u_kirsch_reg_r_add2_8__aq;
wire nx11769z1;
wire u_kirsch_reg_r_add2_9__aq;
wire nx37436z1;
wire nx57978z1;
wire u_kirsch_reg_r_add2_10__aq;
wire nx62488z1;
wire nx56981z1;
wire u_kirsch_reg_r_add2_11__aq;
wire nx13358z1;
wire nx36604z1;
wire nx21030z1;
wire nx52935z1;
wire nx37361z1;
wire nx59323z1;
wire nx22544z1;
wire nx56932z1;
wire nx39752z1;
wire nx23421z3;
wire u_kirsch_r_sub0_6n1s1_11_;
wire nx46914z1;
wire nx55984z1;
wire u_kirsch_reg_r_add2_12__aq;
wire nx10967z1;
wire nx21429z1;
wire u_kirsch_r_sub0_6n1s1_14_;
wire u_kirsch_reg_r_sub0_11__aq;
wire u_kirsch_r_sub0_6n1s1_12_;
wire u_kirsch_reg_r_sub0_12__aq;
wire u_kirsch_r_sub0_6n1s1_8_;
wire u_kirsch_reg_r_sub0_8__aq;
wire u_kirsch_r_sub0_6n1s1_9_;
wire u_kirsch_reg_r_sub0_9__aq;
wire u_kirsch_r_sub0_6n1s1_10_;
wire u_kirsch_reg_r_sub0_10__aq;
wire u_kirsch_r_sub0_6n1s1_7_;
wire u_kirsch_reg_r_sub0_7__aq;
wire nx22605z3;
wire nx62334z1;
wire u_kirsch_reg_intermediate_dir_0__aq;
wire inc_d_0__dup_703;
wire nx23864z1;
wire reg_q_0__dup_32_aq;
wire inc_d_0__dup_739;
wire nx24859z1;
wire reg_q_0__dup_40_aq;
wire nx4983z1;
wire inc_d_1__dup_705;
wire reg_q_1__dup_31_aq;
wire nx65210z1;
wire inc_d_1__dup_741;
wire reg_q_1__dup_39_aq;
wire nx10591z1;
wire inc_d_2__dup_707;
wire reg_q_2__dup_30_aq;
wire nx49636z1;
wire inc_d_2__dup_743;
wire reg_q_2__dup_38_aq;
wire nx44222z1;
wire inc_d_3__dup_709;
wire reg_q_3__dup_29_aq;
wire nx31474z1;
wire inc_d_3__dup_745;
wire reg_q_3__dup_37_aq;
wire nx59796z1;
wire inc_d_4__dup_711;
wire reg_q_4__dup_28_aq;
wire nx47048z1;
wire inc_d_4__dup_747;
wire reg_q_4__dup_36_aq;
wire nx55702z1;
wire inc_d_5__dup_713;
wire reg_q_5__dup_27_aq;
wire nx15143z1;
wire inc_d_5__dup_749;
wire reg_q_5__dup_35_aq;
wire nx40128z1;
wire inc_d_6__dup_715;
wire reg_q_6__dup_26_aq;
wire nx34819z1;
wire inc_d_6__dup_751;
wire reg_q_6__dup_34_aq;
wire nx32341z1;
wire inc_d_7__dup_717;
wire reg_q_7__dup_25_aq;
wire nx27032z1;
wire inc_d_7__dup_753;
wire reg_q_7__dup_33_aq;
wire nx22605z2;
wire nx63331z1;
wire u_kirsch_reg_intermediate_dir_1__aq;
wire nx50073z2;
wire nx50073z1;
wire u_kirsch_reg_dir1_2__aq;
wire nx4088z1;
wire u_kirsch_reg_dir1_final_2__aq;
wire nx52067z2;
wire nx52067z1;
wire u_kirsch_reg_dir1_0__aq;
wire nx2094z1;
wire u_kirsch_reg_dir1_final_0__aq;
wire nx64328z3;
wire nx64328z2;
wire nx64328z1;
wire u_kirsch_reg_intermediate_dir_2__aq;
wire nx22605z1;
wire u_kirsch_reg_o_edge_aq;
wire nx37156z1;
wire u_kirsch_reg_o_mode_0__aq;
wire u_kirsch_reg_o_mode_1__afeeder_combout;
wire u_kirsch_reg_o_mode_1__aq;
wire nx40325z1;
wire u_uart_reg_RxErr_aq;
wire read_fifo_reg_q_saved_0__afeeder_combout;
wire read_fifo_reg_q_saved_0__aq;
wire NOT_rb_o_data_0_;
wire read_fifo_reg_q_saved_1__afeeder_combout;
wire read_fifo_reg_q_saved_1__aq;
wire NOT_rb_o_data_1_;
wire read_fifo_reg_q_saved_2__afeeder_combout;
wire read_fifo_reg_q_saved_2__aq;
wire NOT_rb_o_data_2_;
wire read_fifo_reg_q_saved_3__afeeder_combout;
wire read_fifo_reg_q_saved_3__aq;
wire NOT_rb_o_data_3_;
wire read_fifo_reg_q_saved_4__afeeder_combout;
wire read_fifo_reg_q_saved_4__aq;
wire NOT_rb_o_data_4_;
wire read_fifo_reg_q_saved_5__afeeder_combout;
wire read_fifo_reg_q_saved_5__aq;
wire NOT_rb_o_data_5_;
wire read_fifo_reg_q_saved_6__afeeder_combout;
wire read_fifo_reg_q_saved_6__aq;
wire NOT_rb_o_data_6_;
wire read_fifo_reg_q_saved_7__afeeder_combout;
wire read_fifo_reg_q_saved_7__aq;
wire NOT_u_uart_Tx_Reg_14n6ss1_8_;
wire nx18859z1;
wire u_uart_reg_Tx_Reg_8__aq;
wire u_uart_reg_Tx_Reg_7__aq;
wire u_uart_reg_Tx_Reg_6__aq;
wire u_uart_reg_Tx_Reg_5__aq;
wire u_uart_reg_Tx_Reg_4__aq;
wire u_uart_reg_Tx_Reg_3__aq;
wire u_uart_reg_Tx_Reg_2__aq;
wire u_uart_reg_Tx_Reg_1__aq;
wire u_uart_Tx_Reg_14n6ss1_0_;
wire nx17862z2;
wire nx17862z1;
wire u_uart_reg_Tx_Reg_0__aq;
wire u_seg7_u_dual_seg7_muxed_char_0_;
wire u_seg7_u_dual_seg7_reg_o_char_0__aq;
wire nx5371z1;
wire u_seg7_u_dual_seg7_muxed_char_2_;
wire u_seg7_u_dual_seg7_reg_o_char_2__aq;
wire u_seg7_u_dual_seg7_muxed_char_3_;
wire u_seg7_u_dual_seg7_reg_o_char_3__aq;
wire nx7365z1;
wire u_seg7_u_dual_seg7_muxed_char_4_;
wire u_seg7_u_dual_seg7_reg_o_char_4__aq;
wire u_seg7_u_dual_seg7_muxed_char_7_;
wire u_seg7_u_dual_seg7_reg_o_char_7__aq;
wire [7:0] u_kirsch_a2_9n22ss1;
wire [7:0] u_kirsch_f3_9n22ss1;
wire [7:0] u_kirsch_r_max0_1n2ss1;
wire [7:0] u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a;
wire [8:0] u_kirsch_r_add0_a_0n1s1;
wire [9:0] u_kirsch_r_add1_a_3n1s1;
wire [7:0] rb_i_data;
wire [9:0] u_kirsch_r_max1_5n6ss1;
wire [7:0] u_kirsch_h2_9n22ss1;
wire [7:0] u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a;
wire [7:0] write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a;
wire [7:0] k_i_pixel;
wire [7:0] read_fifo_pointer;
wire [7:0] write_fifo_pointer;
wire [9:0] u_kirsch_r_add2_4n1s1f1;
wire [7:0] u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a;
wire [12:1] u_kirsch_r_add2_4n1s1f2;
wire [12:0] u_kirsch_r_add2_4n1s1;

wire [17:0] read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [17:0] u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7] = read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7] = write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7] = u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7] = u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7] = u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// Location: LCCOMB_X11_Y12_N16
fiftyfivenm_lcell_comb a_aQUARTUS_CREATED_GND_aI(
// Equation(s):
// a_aQUARTUS_CREATED_GND_aI_combout = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(a_aQUARTUS_CREATED_GND_aI_combout),
	.cout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_GND_aI.lut_mask = 16'h0000;
defparam a_aQUARTUS_CREATED_GND_aI.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N23
fiftyfivenm_io_obuf seg7_data_a1_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a1_a_aoutput.bus_hold = "false";
defparam seg7_data_a1_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X6_Y10_N30
fiftyfivenm_io_obuf seg7_data_a5_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a5_a_aoutput.bus_hold = "false";
defparam seg7_data_a5_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N16
fiftyfivenm_io_obuf seg7_data_a6_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a6_a_aoutput.bus_hold = "false";
defparam seg7_data_a6_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X0_Y7_N23
fiftyfivenm_io_obuf led_a0_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a0_a_aoutput.bus_hold = "false";
defparam led_a0_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X0_Y6_N16
fiftyfivenm_io_obuf led_a1_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a1_a_aoutput.bus_hold = "false";
defparam led_a1_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y17_N2
fiftyfivenm_io_obuf led_a2_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a2_a_aoutput.bus_hold = "false";
defparam led_a2_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y20_N23
fiftyfivenm_io_obuf led_a3_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a3_a_aoutput.bus_hold = "false";
defparam led_a3_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y21_N23
fiftyfivenm_io_obuf led_a4_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a4_a_aoutput.bus_hold = "false";
defparam led_a4_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X10_Y22_N23
fiftyfivenm_io_obuf led_a5_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a5_a_aoutput.bus_hold = "false";
defparam led_a5_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X3_Y0_N16
fiftyfivenm_io_obuf led_a6_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a6_a_aoutput.bus_hold = "false";
defparam led_a6_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X6_Y0_N23
fiftyfivenm_io_obuf led_a7_a_aoutput(
	.i(vcc),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a7_a_aoutput.bus_hold = "false";
defparam led_a7_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N16
fiftyfivenm_io_obuf uart_tx_aoutput(
	.i(!u_uart_reg_Tx_Reg_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(uart_tx_aoutput_o),
	.obar());
// synopsys translate_off
defparam uart_tx_aoutput.bus_hold = "false";
defparam uart_tx_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N16
fiftyfivenm_io_obuf seg7_en_a0_a_aoutput(
	.i(!reg_q_10__dup_50_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a0_a_aoutput.bus_hold = "false";
defparam seg7_en_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N9
fiftyfivenm_io_obuf seg7_en_a1_a_aoutput(
	.i(reg_q_10__dup_50_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a1_a_aoutput.bus_hold = "false";
defparam seg7_en_a1_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N30
fiftyfivenm_io_obuf seg7_data_a0_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a0_a_aoutput.bus_hold = "false";
defparam seg7_data_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y10_N9
fiftyfivenm_io_obuf seg7_data_a2_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a2_a_aoutput.bus_hold = "false";
defparam seg7_data_a2_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X31_Y22_N23
fiftyfivenm_io_obuf seg7_data_a3_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a3_a_aoutput.bus_hold = "false";
defparam seg7_data_a3_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N23
fiftyfivenm_io_obuf seg7_data_a4_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a4_a_aoutput.bus_hold = "false";
defparam seg7_data_a4_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N2
fiftyfivenm_io_obuf seg7_data_a7_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a7_a_aoutput.bus_hold = "false";
defparam seg7_data_a7_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y6_N22
fiftyfivenm_io_ibuf clk_ainput(
	.i(clk),
	.ibar(gnd),
	.nsleep(vcc),
	.o(clk_ainput_o));
// synopsys translate_off
defparam clk_ainput.bus_hold = "false";
defparam clk_ainput.listen_to_nsleep_signal = "false";
defparam clk_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G4
fiftyfivenm_clkctrl clk_ainputclkctrl(
	.ena(vcc),
	.inclk({vcc,vcc,vcc,clk_ainput_o}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(clk_ainputclkctrl_outclk));
// synopsys translate_off
defparam clk_ainputclkctrl.clock_type = "global clock";
defparam clk_ainputclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N8
fiftyfivenm_lcell_comb ix975_fadd(
// Equation(s):
// inc_d_0__dup_997 = reg_q_0__dup_90_aq $ (VCC)
// nx38998z1 = CARRY(reg_q_0__dup_90_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_90_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_997),
	.cout(nx38998z1));
// synopsys translate_off
defparam ix975_fadd.lut_mask = 16'h33CC;
defparam ix975_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N26
fiftyfivenm_lcell_comb ix25391z7100(
// Equation(s):
// nx25391z6 = (reg_q_2__dup_88_aq & (reg_q_3__dup_87_aq & (reg_q_0__dup_90_aq & reg_q_1__dup_89_aq)))

	.dataa(reg_q_2__dup_88_aq),
	.datab(reg_q_3__dup_87_aq),
	.datac(reg_q_0__dup_90_aq),
	.datad(reg_q_1__dup_89_aq),
	.cin(gnd),
	.combout(nx25391z6),
	.cout());
// synopsys translate_off
defparam ix25391z7100.lut_mask = 16'h8000;
defparam ix25391z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N18
fiftyfivenm_lcell_comb ix985_fadd(
// Equation(s):
// inc_d_5__dup_1007 = (reg_q_5__dup_85_aq & (!nx53815z1)) # (!reg_q_5__dup_85_aq & ((nx53815z1) # (GND)))
// nx3853z1 = CARRY((!nx53815z1) # (!reg_q_5__dup_85_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_85_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx53815z1),
	.combout(inc_d_5__dup_1007),
	.cout(nx3853z1));
// synopsys translate_off
defparam ix985_fadd.lut_mask = 16'h3C3F;
defparam ix985_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N20
fiftyfivenm_lcell_comb ix987_fadd(
// Equation(s):
// inc_d_6__dup_1009 = (reg_q_6__dup_84_aq & (nx3853z1 $ (GND))) # (!reg_q_6__dup_84_aq & (!nx3853z1 & VCC))
// nx11640z1 = CARRY((reg_q_6__dup_84_aq & !nx3853z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_84_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx3853z1),
	.combout(inc_d_6__dup_1009),
	.cout(nx11640z1));
// synopsys translate_off
defparam ix987_fadd.lut_mask = 16'hC30C;
defparam ix987_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: IOIBUF_X0_Y2_N15
fiftyfivenm_io_ibuf reset_n_ainput(
	.i(reset_n),
	.ibar(gnd),
	.nsleep(vcc),
	.o(reset_n_ainput_o));
// synopsys translate_off
defparam reset_n_ainput.bus_hold = "false";
defparam reset_n_ainput.listen_to_nsleep_signal = "false";
defparam reset_n_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N4
fiftyfivenm_lcell_comb ix1015_fadd(
// Equation(s):
// inc_d_0__dup_1037 = reg_q_0__dup_98_aq $ (VCC)
// nx16836z1 = CARRY(reg_q_0__dup_98_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_98_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1037),
	.cout(nx16836z1));
// synopsys translate_off
defparam ix1015_fadd.lut_mask = 16'h33CC;
defparam ix1015_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N2
fiftyfivenm_lcell_comb ix37417z7097(
// Equation(s):
// nx37417z3 = (reg_q_3__dup_95_aq & (reg_q_0__dup_98_aq & (reg_q_2__dup_96_aq & reg_q_1__dup_97_aq)))

	.dataa(reg_q_3__dup_95_aq),
	.datab(reg_q_0__dup_98_aq),
	.datac(reg_q_2__dup_96_aq),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx37417z3),
	.cout());
// synopsys translate_off
defparam ix37417z7097.lut_mask = 16'h8000;
defparam ix37417z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N30
fiftyfivenm_lcell_comb ix37417z7096(
// Equation(s):
// nx37417z2 = ((nx25391z2 & nx37417z3)) # (!reset_n_ainput_o)

	.dataa(gnd),
	.datab(nx25391z2),
	.datac(reset_n_ainput_o),
	.datad(nx37417z3),
	.cin(gnd),
	.combout(nx37417z2),
	.cout());
// synopsys translate_off
defparam ix37417z7096.lut_mask = 16'hCF0F;
defparam ix37417z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N6
fiftyfivenm_lcell_comb reg_q_0__dup_24_a_wirecell(
// Equation(s):
// reg_q_0__dup_24_a_wirecell_combout = !reg_q_0__dup_24_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_0__dup_24_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(reg_q_0__dup_24_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_q_0__dup_24_a_wirecell.lut_mask = 16'h0F0F;
defparam reg_q_0__dup_24_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N8
fiftyfivenm_lcell_comb ix7_fadd(
// Equation(s):
// nx30620z1 = CARRY(reg_q_0__dup_24_aq)

	.dataa(reg_q_0__dup_24_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx30620z1));
// synopsys translate_off
defparam ix7_fadd.lut_mask = 16'h00AA;
defparam ix7_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N10
fiftyfivenm_lcell_comb ix656_fadd(
// Equation(s):
// incdec_mux_1_dup_114 = (reg_q_1__dup_23_aq & ((nx7605z1 & (nx30620z1 & VCC)) # (!nx7605z1 & (!nx30620z1)))) # (!reg_q_1__dup_23_aq & ((nx7605z1 & (!nx30620z1)) # (!nx7605z1 & ((nx30620z1) # (GND)))))
// nx15046z1 = CARRY((reg_q_1__dup_23_aq & (!nx7605z1 & !nx30620z1)) # (!reg_q_1__dup_23_aq & ((!nx30620z1) # (!nx7605z1))))

	.dataa(reg_q_1__dup_23_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx30620z1),
	.combout(incdec_mux_1_dup_114),
	.cout(nx15046z1));
// synopsys translate_off
defparam ix656_fadd.lut_mask = 16'h9617;
defparam ix656_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N11
dffeas reg_q_1__dup_23(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_1_dup_114),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_23_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_23.is_wysiwyg = "true";
defparam reg_q_1__dup_23.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N12
fiftyfivenm_lcell_comb ix658_fadd(
// Equation(s):
// incdec_mux_2_dup_115 = ((reg_q_2__dup_22_aq $ (nx7605z1 $ (!nx15046z1)))) # (GND)
// nx46951z1 = CARRY((reg_q_2__dup_22_aq & ((nx7605z1) # (!nx15046z1))) # (!reg_q_2__dup_22_aq & (nx7605z1 & !nx15046z1)))

	.dataa(reg_q_2__dup_22_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx15046z1),
	.combout(incdec_mux_2_dup_115),
	.cout(nx46951z1));
// synopsys translate_off
defparam ix658_fadd.lut_mask = 16'h698E;
defparam ix658_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N13
dffeas reg_q_2__dup_22(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_2_dup_115),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_22_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_22.is_wysiwyg = "true";
defparam reg_q_2__dup_22.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N14
fiftyfivenm_lcell_comb ix660_fadd(
// Equation(s):
// incdec_mux_3_dup_116 = (reg_q_3__dup_21_aq & ((nx7605z1 & (nx46951z1 & VCC)) # (!nx7605z1 & (!nx46951z1)))) # (!reg_q_3__dup_21_aq & ((nx7605z1 & (!nx46951z1)) # (!nx7605z1 & ((nx46951z1) # (GND)))))
// nx34159z1 = CARRY((reg_q_3__dup_21_aq & (!nx7605z1 & !nx46951z1)) # (!reg_q_3__dup_21_aq & ((!nx46951z1) # (!nx7605z1))))

	.dataa(reg_q_3__dup_21_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46951z1),
	.combout(incdec_mux_3_dup_116),
	.cout(nx34159z1));
// synopsys translate_off
defparam ix660_fadd.lut_mask = 16'h9617;
defparam ix660_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N15
dffeas reg_q_3__dup_21(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_3_dup_116),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_21_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_21.is_wysiwyg = "true";
defparam reg_q_3__dup_21.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N16
fiftyfivenm_lcell_comb ix662_fadd(
// Equation(s):
// incdec_mux_4_dup_117 = ((reg_q_4__dup_20_aq $ (nx7605z1 $ (!nx34159z1)))) # (GND)
// nx49733z1 = CARRY((reg_q_4__dup_20_aq & ((nx7605z1) # (!nx34159z1))) # (!reg_q_4__dup_20_aq & (nx7605z1 & !nx34159z1)))

	.dataa(reg_q_4__dup_20_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx34159z1),
	.combout(incdec_mux_4_dup_117),
	.cout(nx49733z1));
// synopsys translate_off
defparam ix662_fadd.lut_mask = 16'h698E;
defparam ix662_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N17
dffeas reg_q_4__dup_20(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_4_dup_117),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_20_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_20.is_wysiwyg = "true";
defparam reg_q_4__dup_20.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N18
fiftyfivenm_lcell_comb ix664_fadd(
// Equation(s):
// incdec_mux_5_dup_118 = (reg_q_5__dup_19_aq & ((nx7605z1 & (nx49733z1 & VCC)) # (!nx7605z1 & (!nx49733z1)))) # (!reg_q_5__dup_19_aq & ((nx7605z1 & (!nx49733z1)) # (!nx7605z1 & ((nx49733z1) # (GND)))))
// nx65307z1 = CARRY((reg_q_5__dup_19_aq & (!nx7605z1 & !nx49733z1)) # (!reg_q_5__dup_19_aq & ((!nx49733z1) # (!nx7605z1))))

	.dataa(reg_q_5__dup_19_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx49733z1),
	.combout(incdec_mux_5_dup_118),
	.cout(nx65307z1));
// synopsys translate_off
defparam ix664_fadd.lut_mask = 16'h9617;
defparam ix664_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N19
dffeas reg_q_5__dup_19(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_5_dup_118),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_19_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_19.is_wysiwyg = "true";
defparam reg_q_5__dup_19.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N20
fiftyfivenm_lcell_comb ix666_fadd(
// Equation(s):
// incdec_mux_6_dup_119 = ((reg_q_6__dup_18_aq $ (nx7605z1 $ (!nx65307z1)))) # (GND)
// nx50191z1 = CARRY((reg_q_6__dup_18_aq & ((nx7605z1) # (!nx65307z1))) # (!reg_q_6__dup_18_aq & (nx7605z1 & !nx65307z1)))

	.dataa(reg_q_6__dup_18_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx65307z1),
	.combout(incdec_mux_6_dup_119),
	.cout(nx50191z1));
// synopsys translate_off
defparam ix666_fadd.lut_mask = 16'h698E;
defparam ix666_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N21
dffeas reg_q_6__dup_18(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_6_dup_119),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_18_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_18.is_wysiwyg = "true";
defparam reg_q_6__dup_18.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N26
fiftyfivenm_lcell_comb ix22869z7098(
// Equation(s):
// nx22869z3 = (!reg_q_6__dup_18_aq & (!reg_q_5__dup_19_aq & (!reg_q_3__dup_21_aq & !reg_q_4__dup_20_aq)))

	.dataa(reg_q_6__dup_18_aq),
	.datab(reg_q_5__dup_19_aq),
	.datac(reg_q_3__dup_21_aq),
	.datad(reg_q_4__dup_20_aq),
	.cin(gnd),
	.combout(nx22869z3),
	.cout());
// synopsys translate_off
defparam ix22869z7098.lut_mask = 16'h0001;
defparam ix22869z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N4
fiftyfivenm_lcell_comb ix22869z7097(
// Equation(s):
// nx22869z2 = (!reg_q_2__dup_22_aq & (nx22869z3 & !reg_q_1__dup_23_aq))

	.dataa(reg_q_2__dup_22_aq),
	.datab(gnd),
	.datac(nx22869z3),
	.datad(reg_q_1__dup_23_aq),
	.cin(gnd),
	.combout(nx22869z2),
	.cout());
// synopsys translate_off
defparam ix22869z7097.lut_mask = 16'h0050;
defparam ix22869z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N22
fiftyfivenm_lcell_comb ix668_fadd(
// Equation(s):
// incdec_mux_7_dup_120 = (reg_q_7__dup_17_aq & ((nx7605z1 & (nx50191z1 & VCC)) # (!nx7605z1 & (!nx50191z1)))) # (!reg_q_7__dup_17_aq & ((nx7605z1 & (!nx50191z1)) # (!nx7605z1 & ((nx50191z1) # (GND)))))
// nx42404z1 = CARRY((reg_q_7__dup_17_aq & (!nx7605z1 & !nx50191z1)) # (!reg_q_7__dup_17_aq & ((!nx50191z1) # (!nx7605z1))))

	.dataa(reg_q_7__dup_17_aq),
	.datab(nx7605z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50191z1),
	.combout(incdec_mux_7_dup_120),
	.cout(nx42404z1));
// synopsys translate_off
defparam ix668_fadd.lut_mask = 16'h9617;
defparam ix668_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N23
dffeas reg_q_7__dup_17(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_7_dup_120),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_17_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_17.is_wysiwyg = "true";
defparam reg_q_7__dup_17.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N24
fiftyfivenm_lcell_comb ix669_fadd(
// Equation(s):
// incdec_mux_8_dup_121 = reg_q_8__dup_16_aq $ (nx42404z1 $ (!nx7605z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_16_aq),
	.datac(gnd),
	.datad(nx7605z1),
	.cin(nx42404z1),
	.combout(incdec_mux_8_dup_121),
	.cout());
// synopsys translate_off
defparam ix669_fadd.lut_mask = 16'h3CC3;
defparam ix669_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y17_N25
dffeas reg_q_8__dup_16(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_8_dup_121),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_16_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_16.is_wysiwyg = "true";
defparam reg_q_8__dup_16.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N28
fiftyfivenm_lcell_comb ix22869z7096(
// Equation(s):
// write_fifo_full = (!reg_q_0__dup_24_aq & (nx22869z2 & (!reg_q_7__dup_17_aq & reg_q_8__dup_16_aq)))

	.dataa(reg_q_0__dup_24_aq),
	.datab(nx22869z2),
	.datac(reg_q_7__dup_17_aq),
	.datad(reg_q_8__dup_16_aq),
	.cin(gnd),
	.combout(write_fifo_full),
	.cout());
// synopsys translate_off
defparam ix22869z7096.lut_mask = 16'h0400;
defparam ix22869z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N18
fiftyfivenm_lcell_comb u_uart_reg_RxFSM_1__a0(
// Equation(s):
// u_uart_reg_RxFSM_1__a0_combout = !u_uart_reg_RxFSM_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(u_uart_reg_RxFSM_1__a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxFSM_1__a0.lut_mask = 16'h00FF;
defparam u_uart_reg_RxFSM_1__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N0
fiftyfivenm_lcell_comb ix2_fadd(
// Equation(s):
// inc_d_0_ = reg_q_0__aq $ (VCC)
// nx27063z1 = CARRY(reg_q_0__aq)

	.dataa(gnd),
	.datab(reg_q_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0_),
	.cout(nx27063z1));
// synopsys translate_off
defparam ix2_fadd.lut_mask = 16'h33CC;
defparam ix2_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y21_N1
dffeas reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0_.is_wysiwyg = "true";
defparam reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N2
fiftyfivenm_lcell_comb ix6_fadd(
// Equation(s):
// inc_d_1_ = (reg_q_1__aq & (!nx27063z1)) # (!reg_q_1__aq & ((nx27063z1) # (GND)))
// nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1__aq))

	.dataa(gnd),
	.datab(reg_q_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27063z1),
	.combout(inc_d_1_),
	.cout(nx39256z1));
// synopsys translate_off
defparam ix6_fadd.lut_mask = 16'h3C3F;
defparam ix6_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N3
dffeas reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1_.is_wysiwyg = "true";
defparam reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N4
fiftyfivenm_lcell_comb ix10_fadd(
// Equation(s):
// inc_d_2_ = (reg_q_2__aq & (nx39256z1 $ (GND))) # (!reg_q_2__aq & (!nx39256z1 & VCC))
// nx57428z1 = CARRY((reg_q_2__aq & !nx39256z1))

	.dataa(gnd),
	.datab(reg_q_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39256z1),
	.combout(inc_d_2_),
	.cout(nx57428z1));
// synopsys translate_off
defparam ix10_fadd.lut_mask = 16'hC30C;
defparam ix10_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N5
dffeas reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2_.is_wysiwyg = "true";
defparam reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N6
fiftyfivenm_lcell_comb ix14_fadd(
// Equation(s):
// inc_d_3_ = (reg_q_3__aq & (!nx57428z1)) # (!reg_q_3__aq & ((nx57428z1) # (GND)))
// nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3__aq))

	.dataa(reg_q_3__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57428z1),
	.combout(inc_d_3_),
	.cout(nx23040z1));
// synopsys translate_off
defparam ix14_fadd.lut_mask = 16'h5A5F;
defparam ix14_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N7
dffeas reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3_.is_wysiwyg = "true";
defparam reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N8
fiftyfivenm_lcell_comb ix18_fadd(
// Equation(s):
// inc_d_4_ = (reg_q_4__aq & (nx23040z1 $ (GND))) # (!reg_q_4__aq & (!nx23040z1 & VCC))
// nx58827z1 = CARRY((reg_q_4__aq & !nx23040z1))

	.dataa(gnd),
	.datab(reg_q_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23040z1),
	.combout(inc_d_4_),
	.cout(nx58827z1));
// synopsys translate_off
defparam ix18_fadd.lut_mask = 16'hC30C;
defparam ix18_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N9
dffeas reg_q_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4_.is_wysiwyg = "true";
defparam reg_q_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N10
fiftyfivenm_lcell_comb ix22_fadd(
// Equation(s):
// inc_d_5_ = (reg_q_5__aq & (!nx58827z1)) # (!reg_q_5__aq & ((nx58827z1) # (GND)))
// nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5__aq))

	.dataa(reg_q_5__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58827z1),
	.combout(inc_d_5_),
	.cout(nx37857z1));
// synopsys translate_off
defparam ix22_fadd.lut_mask = 16'h5A5F;
defparam ix22_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N11
dffeas reg_q_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5_.is_wysiwyg = "true";
defparam reg_q_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N12
fiftyfivenm_lcell_comb ix26_fadd(
// Equation(s):
// inc_d_6_ = (reg_q_6__aq & (nx37857z1 $ (GND))) # (!reg_q_6__aq & (!nx37857z1 & VCC))
// nx41995z1 = CARRY((reg_q_6__aq & !nx37857z1))

	.dataa(reg_q_6__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37857z1),
	.combout(inc_d_6_),
	.cout(nx41995z1));
// synopsys translate_off
defparam ix26_fadd.lut_mask = 16'hA50A;
defparam ix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N13
dffeas reg_q_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6_.is_wysiwyg = "true";
defparam reg_q_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N14
fiftyfivenm_lcell_comb ix578_fadd(
// Equation(s):
// inc_d_7_ = (reg_q_7__aq & (!nx41995z1)) # (!reg_q_7__aq & ((nx41995z1) # (GND)))
// nx8364z1 = CARRY((!nx41995z1) # (!reg_q_7__aq))

	.dataa(gnd),
	.datab(reg_q_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41995z1),
	.combout(inc_d_7_),
	.cout(nx8364z1));
// synopsys translate_off
defparam ix578_fadd.lut_mask = 16'h3C3F;
defparam ix578_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N15
dffeas reg_q_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7_.is_wysiwyg = "true";
defparam reg_q_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N16
fiftyfivenm_lcell_comb ix580_fadd(
// Equation(s):
// inc_d_8_ = (reg_q_8__aq & (nx8364z1 $ (GND))) # (!reg_q_8__aq & (!nx8364z1 & VCC))
// nx9072z1 = CARRY((reg_q_8__aq & !nx8364z1))

	.dataa(gnd),
	.datab(reg_q_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx8364z1),
	.combout(inc_d_8_),
	.cout(nx9072z1));
// synopsys translate_off
defparam ix580_fadd.lut_mask = 16'hC30C;
defparam ix580_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N17
dffeas reg_q_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8_.is_wysiwyg = "true";
defparam reg_q_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N18
fiftyfivenm_lcell_comb ix49_fadd(
// Equation(s):
// inc_d_9_ = (reg_q_9__aq & (!nx9072z1)) # (!reg_q_9__aq & ((nx9072z1) # (GND)))
// nx40977z1 = CARRY((!nx9072z1) # (!reg_q_9__aq))

	.dataa(gnd),
	.datab(reg_q_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9072z1),
	.combout(inc_d_9_),
	.cout(nx40977z1));
// synopsys translate_off
defparam ix49_fadd.lut_mask = 16'h3C3F;
defparam ix49_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N19
dffeas reg_q_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9_.is_wysiwyg = "true";
defparam reg_q_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N20
fiftyfivenm_lcell_comb ix51_fadd(
// Equation(s):
// inc_d_10_ = nx40977z1 $ (!reg_q_10__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_10__aq),
	.cin(nx40977z1),
	.combout(inc_d_10_),
	.cout());
// synopsys translate_off
defparam ix51_fadd.lut_mask = 16'hF00F;
defparam ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y21_N21
dffeas reg_q_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10_.is_wysiwyg = "true";
defparam reg_q_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N22
fiftyfivenm_lcell_comb ix60415z7096(
// Equation(s):
// nx60415z2 = (reg_q_5__aq & (reg_q_7__aq & reg_q_10__aq))

	.dataa(reg_q_5__aq),
	.datab(gnd),
	.datac(reg_q_7__aq),
	.datad(reg_q_10__aq),
	.cin(gnd),
	.combout(nx60415z2),
	.cout());
// synopsys translate_off
defparam ix60415z7096.lut_mask = 16'hA000;
defparam ix60415z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N26
fiftyfivenm_lcell_comb ix60415z7099(
// Equation(s):
// nx60415z5 = (reg_q_6__aq & (reg_q_1__aq & (reg_q_4__aq & reg_q_2__aq)))

	.dataa(reg_q_6__aq),
	.datab(reg_q_1__aq),
	.datac(reg_q_4__aq),
	.datad(reg_q_2__aq),
	.cin(gnd),
	.combout(nx60415z5),
	.cout());
// synopsys translate_off
defparam ix60415z7099.lut_mask = 16'h8000;
defparam ix60415z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N24
fiftyfivenm_lcell_comb ix60415z7098(
// Equation(s):
// nx60415z4 = (reg_q_3__aq & reg_q_9__aq)

	.dataa(reg_q_3__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_9__aq),
	.cin(gnd),
	.combout(nx60415z4),
	.cout());
// synopsys translate_off
defparam ix60415z7098.lut_mask = 16'hAA00;
defparam ix60415z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y21_N28
fiftyfivenm_lcell_comb ix60415z7097(
// Equation(s):
// nx60415z3 = (reg_q_0__aq & (reg_q_8__aq & (nx60415z5 & nx60415z4)))

	.dataa(reg_q_0__aq),
	.datab(reg_q_8__aq),
	.datac(nx60415z5),
	.datad(nx60415z4),
	.cin(gnd),
	.combout(nx60415z3),
	.cout());
// synopsys translate_off
defparam ix60415z7097.lut_mask = 16'h8000;
defparam ix60415z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N0
fiftyfivenm_lcell_comb ix60415z7095(
// Equation(s):
// nx60415z1 = (!reset_n_ainput_o & ((reg_uart_reset_aq) # ((nx60415z2 & nx60415z3))))

	.dataa(reset_n_ainput_o),
	.datab(nx60415z2),
	.datac(reg_uart_reset_aq),
	.datad(nx60415z3),
	.cin(gnd),
	.combout(nx60415z1),
	.cout());
// synopsys translate_off
defparam ix60415z7095.lut_mask = 16'h5450;
defparam ix60415z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N1
dffeas reg_uart_reset(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60415z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_uart_reset_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_uart_reset.is_wysiwyg = "true";
defparam reg_uart_reset.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X11_Y25_N22
fiftyfivenm_io_ibuf uart_rx_ainput(
	.i(uart_rx),
	.ibar(gnd),
	.nsleep(vcc),
	.o(uart_rx_ainput_o));
// synopsys translate_off
defparam uart_rx_ainput.bus_hold = "false";
defparam uart_rx_ainput.listen_to_nsleep_signal = "false";
defparam uart_rx_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N10
fiftyfivenm_lcell_comb ix12790z7097(
// Equation(s):
// nx12790z2 = (u_uart_reg_RxFSM_5__aq & (!uart_rx_ainput_o)) # (!u_uart_reg_RxFSM_5__aq & (((!u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_0__aq))))

	.dataa(uart_rx_ainput_o),
	.datab(u_uart_reg_RxFSM_5__aq),
	.datac(u_uart_reg_TopRx_aq),
	.datad(u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx12790z2),
	.cout());
// synopsys translate_off
defparam ix12790z7097.lut_mask = 16'h4744;
defparam ix12790z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N8
fiftyfivenm_lcell_comb u_uart_reg_Rx_r_a0(
// Equation(s):
// u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(uart_rx_ainput_o),
	.cin(gnd),
	.combout(u_uart_reg_Rx_r_a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_r_a0.lut_mask = 16'h00FF;
defparam u_uart_reg_Rx_r_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N9
dffeas u_uart_reg_Rx_r(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_r_a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_r_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_r.is_wysiwyg = "true";
defparam u_uart_reg_Rx_r.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N4
fiftyfivenm_lcell_comb ix12790z7096(
// Equation(s):
// nx12790z1 = (!nx12790z2 & ((u_uart_reg_Rx_r_aq) # (u_uart_reg_RxFSM_0__aq)))

	.dataa(nx12790z2),
	.datab(gnd),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx12790z1),
	.cout());
// synopsys translate_off
defparam ix12790z7096.lut_mask = 16'h5550;
defparam ix12790z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N19
dffeas u_uart_reg_RxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxFSM_1__a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_1_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N10
fiftyfivenm_lcell_comb ix64683z7095(
// Equation(s):
// nx64683z1 = (u_uart_reg_RxFSM_0__aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64683z1),
	.cout());
// synopsys translate_off
defparam ix64683z7095.lut_mask = 16'h0A0A;
defparam ix64683z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N26
fiftyfivenm_lcell_comb ix64683z7096(
// Equation(s):
// nx64683z3 = (u_uart_reg_RxFSM_3__aq & ((u_uart_reg_TopRx_aq))) # (!u_uart_reg_RxFSM_3__aq & (!u_uart_reg_RxFSM_0__aq))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_reg_TopRx_aq),
	.datad(u_uart_reg_RxFSM_3__aq),
	.cin(gnd),
	.combout(nx64683z3),
	.cout());
// synopsys translate_off
defparam ix64683z7096.lut_mask = 16'hF055;
defparam ix64683z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y24_N11
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64683z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N12
fiftyfivenm_lcell_comb ix144z7095(
// Equation(s):
// nx144z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_1__aq $ (u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx144z1),
	.cout());
// synopsys translate_off
defparam ix144z7095.lut_mask = 16'h0AA0;
defparam ix144z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y24_N13
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx144z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N6
fiftyfivenm_lcell_comb ix1141z7095(
// Equation(s):
// nx1141z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_2__aq $ (((u_uart_modgen_counter_RxBitCnt_reg_q_1__aq & u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)))))

	.dataa(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datab(u_uart_reg_RxFSM_0__aq),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx1141z1),
	.cout());
// synopsys translate_off
defparam ix1141z7095.lut_mask = 16'h48C0;
defparam ix1141z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y24_N7
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1141z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N24
fiftyfivenm_lcell_comb ix2138z7096(
// Equation(s):
// nx2138z2 = (u_uart_modgen_counter_RxBitCnt_reg_q_1__aq & u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)

	.dataa(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx2138z2),
	.cout());
// synopsys translate_off
defparam ix2138z7096.lut_mask = 16'hAA00;
defparam ix2138z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N26
fiftyfivenm_lcell_comb ix2138z7095(
// Equation(s):
// nx2138z1 = (u_uart_reg_RxFSM_0__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3__aq $ (((nx2138z2 & u_uart_modgen_counter_RxBitCnt_reg_q_2__aq)))))

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(nx2138z2),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.cin(gnd),
	.combout(nx2138z1),
	.cout());
// synopsys translate_off
defparam ix2138z7095.lut_mask = 16'h28A0;
defparam ix2138z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y24_N27
dffeas u_uart_modgen_counter_RxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2138z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64683z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_RxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_RxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y24_N8
fiftyfivenm_lcell_comb ix9799z7096(
// Equation(s):
// nx9799z2 = (!u_uart_modgen_counter_RxBitCnt_reg_q_1__aq & (!u_uart_modgen_counter_RxBitCnt_reg_q_2__aq & (u_uart_modgen_counter_RxBitCnt_reg_q_3__aq & !u_uart_modgen_counter_RxBitCnt_reg_q_0__aq)))

	.dataa(u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datab(u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datac(u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.datad(u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx9799z2),
	.cout());
// synopsys translate_off
defparam ix9799z7096.lut_mask = 16'h0010;
defparam ix9799z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N28
fiftyfivenm_lcell_comb ix10796z7095(
// Equation(s):
// nx10796z1 = (u_uart_reg_RxFSM_2__aq & !nx9799z2)

	.dataa(u_uart_reg_RxFSM_2__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(nx9799z2),
	.cin(gnd),
	.combout(nx10796z1),
	.cout());
// synopsys translate_off
defparam ix10796z7095.lut_mask = 16'h00AA;
defparam ix10796z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N29
dffeas u_uart_reg_RxFSM_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx10796z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_3_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N12
fiftyfivenm_lcell_comb ix11793z7095(
// Equation(s):
// nx11793z1 = (u_uart_reg_RxFSM_3__aq) # ((u_uart_reg_RxFSM_1__aq & u_uart_reg_Rx_r_aq))

	.dataa(gnd),
	.datab(u_uart_reg_RxFSM_1__aq),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_3__aq),
	.cin(gnd),
	.combout(nx11793z1),
	.cout());
// synopsys translate_off
defparam ix11793z7095.lut_mask = 16'hFFC0;
defparam ix11793z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N13
dffeas u_uart_reg_RxFSM_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11793z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_2_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N26
fiftyfivenm_lcell_comb ix9799z7095(
// Equation(s):
// nx9799z1 = (u_uart_reg_RxFSM_2__aq & nx9799z2)

	.dataa(u_uart_reg_RxFSM_2__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(nx9799z2),
	.cin(gnd),
	.combout(nx9799z1),
	.cout());
// synopsys translate_off
defparam ix9799z7095.lut_mask = 16'hAA00;
defparam ix9799z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N27
dffeas u_uart_reg_RxFSM_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx9799z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_4_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N0
fiftyfivenm_lcell_comb ix8802z7095(
// Equation(s):
// nx8802z1 = (u_uart_reg_Rx_r_aq & ((u_uart_reg_RxFSM_4__aq))) # (!u_uart_reg_Rx_r_aq & (u_uart_reg_RxFSM_1__aq))

	.dataa(gnd),
	.datab(u_uart_reg_RxFSM_1__aq),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_4__aq),
	.cin(gnd),
	.combout(nx8802z1),
	.cout());
// synopsys translate_off
defparam ix8802z7095.lut_mask = 16'hFC0C;
defparam ix8802z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N1
dffeas u_uart_reg_RxFSM_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8802z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_5_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N6
fiftyfivenm_lcell_comb ix13787z7095(
// Equation(s):
// nx13787z1 = (!u_uart_reg_RxFSM_5__aq & ((u_uart_reg_Rx_r_aq) # (!u_uart_reg_RxFSM_4__aq)))

	.dataa(gnd),
	.datab(u_uart_reg_RxFSM_5__aq),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_4__aq),
	.cin(gnd),
	.combout(nx13787z1),
	.cout());
// synopsys translate_off
defparam ix13787z7095.lut_mask = 16'h3033;
defparam ix13787z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N7
dffeas u_uart_reg_RxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13787z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx12790z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxFSM_0_.is_wysiwyg = "true";
defparam u_uart_reg_RxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N2
fiftyfivenm_lcell_comb ix830_fadd(
// Equation(s):
// inc_d_0__dup_862 = reg_q_0__dup_71_aq $ (VCC)
// nx52912z1 = CARRY(reg_q_0__dup_71_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_71_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_862),
	.cout(nx52912z1));
// synopsys translate_off
defparam ix830_fadd.lut_mask = 16'h33CC;
defparam ix830_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N2
fiftyfivenm_lcell_comb ix2379z7095(
// Equation(s):
// nx2379z1 = (nx59343z2) # (!u_uart_reg_RxFSM_0__aq)

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(nx59343z2),
	.datad(gnd),
	.cin(gnd),
	.combout(nx2379z1),
	.cout());
// synopsys translate_off
defparam ix2379z7095.lut_mask = 16'hF5F5;
defparam ix2379z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N3
dffeas reg_q_0__dup_71(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_862),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_71_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_71.is_wysiwyg = "true";
defparam reg_q_0__dup_71.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N4
fiftyfivenm_lcell_comb ix832_fadd(
// Equation(s):
// inc_d_1__dup_864 = (reg_q_1__dup_70_aq & (!nx52912z1)) # (!reg_q_1__dup_70_aq & ((nx52912z1) # (GND)))
// nx2950z1 = CARRY((!nx52912z1) # (!reg_q_1__dup_70_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_70_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx52912z1),
	.combout(inc_d_1__dup_864),
	.cout(nx2950z1));
// synopsys translate_off
defparam ix832_fadd.lut_mask = 16'h3C3F;
defparam ix832_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N5
dffeas reg_q_1__dup_70(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_864),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_70_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_70.is_wysiwyg = "true";
defparam reg_q_1__dup_70.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N6
fiftyfivenm_lcell_comb ix834_fadd(
// Equation(s):
// inc_d_2__dup_866 = (reg_q_2__dup_69_aq & (nx2950z1 $ (GND))) # (!reg_q_2__dup_69_aq & (!nx2950z1 & VCC))
// nx47012z1 = CARRY((reg_q_2__dup_69_aq & !nx2950z1))

	.dataa(reg_q_2__dup_69_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2950z1),
	.combout(inc_d_2__dup_866),
	.cout(nx47012z1));
// synopsys translate_off
defparam ix834_fadd.lut_mask = 16'hA50A;
defparam ix834_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N7
dffeas reg_q_2__dup_69(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_866),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_69_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_69.is_wysiwyg = "true";
defparam reg_q_2__dup_69.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N8
fiftyfivenm_lcell_comb ix836_fadd(
// Equation(s):
// inc_d_3__dup_868 = (reg_q_3__dup_68_aq & (!nx47012z1)) # (!reg_q_3__dup_68_aq & ((nx47012z1) # (GND)))
// nx31438z1 = CARRY((!nx47012z1) # (!reg_q_3__dup_68_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_68_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47012z1),
	.combout(inc_d_3__dup_868),
	.cout(nx31438z1));
// synopsys translate_off
defparam ix836_fadd.lut_mask = 16'h3C3F;
defparam ix836_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N9
dffeas reg_q_3__dup_68(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_868),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_68_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_68.is_wysiwyg = "true";
defparam reg_q_3__dup_68.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N10
fiftyfivenm_lcell_comb ix838_fadd(
// Equation(s):
// inc_d_4__dup_870 = (reg_q_4__dup_67_aq & (nx31438z1 $ (GND))) # (!reg_q_4__dup_67_aq & (!nx31438z1 & VCC))
// nx63343z1 = CARRY((reg_q_4__dup_67_aq & !nx31438z1))

	.dataa(reg_q_4__dup_67_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31438z1),
	.combout(inc_d_4__dup_870),
	.cout(nx63343z1));
// synopsys translate_off
defparam ix838_fadd.lut_mask = 16'hA50A;
defparam ix838_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N11
dffeas reg_q_4__dup_67(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_870),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_67_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_67.is_wysiwyg = "true";
defparam reg_q_4__dup_67.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N12
fiftyfivenm_lcell_comb ix840_fadd(
// Equation(s):
// inc_d_5__dup_872 = (reg_q_5__dup_66_aq & (!nx63343z1)) # (!reg_q_5__dup_66_aq & ((nx63343z1) # (GND)))
// nx17767z1 = CARRY((!nx63343z1) # (!reg_q_5__dup_66_aq))

	.dataa(reg_q_5__dup_66_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx63343z1),
	.combout(inc_d_5__dup_872),
	.cout(nx17767z1));
// synopsys translate_off
defparam ix840_fadd.lut_mask = 16'h5A5F;
defparam ix840_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N13
dffeas reg_q_5__dup_66(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_872),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_66_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_66.is_wysiwyg = "true";
defparam reg_q_5__dup_66.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N14
fiftyfivenm_lcell_comb ix842_fadd(
// Equation(s):
// inc_d_6__dup_874 = (reg_q_6__dup_65_aq & (nx17767z1 $ (GND))) # (!reg_q_6__dup_65_aq & (!nx17767z1 & VCC))
// nx33341z1 = CARRY((reg_q_6__dup_65_aq & !nx17767z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_65_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17767z1),
	.combout(inc_d_6__dup_874),
	.cout(nx33341z1));
// synopsys translate_off
defparam ix842_fadd.lut_mask = 16'hC30C;
defparam ix842_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N15
dffeas reg_q_6__dup_65(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_874),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_65_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_65.is_wysiwyg = "true";
defparam reg_q_6__dup_65.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N16
fiftyfivenm_lcell_comb ix844_fadd(
// Equation(s):
// inc_d_7__dup_876 = (reg_q_7__dup_64_aq & (!nx33341z1)) # (!reg_q_7__dup_64_aq & ((nx33341z1) # (GND)))
// nx48915z1 = CARRY((!nx33341z1) # (!reg_q_7__dup_64_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_64_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33341z1),
	.combout(inc_d_7__dup_876),
	.cout(nx48915z1));
// synopsys translate_off
defparam ix844_fadd.lut_mask = 16'h3C3F;
defparam ix844_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N17
dffeas reg_q_7__dup_64(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_876),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_64_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_64.is_wysiwyg = "true";
defparam reg_q_7__dup_64.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N18
fiftyfivenm_lcell_comb ix846_fadd(
// Equation(s):
// inc_d_8__dup_878 = (reg_q_8__dup_63_aq & (nx48915z1 $ (GND))) # (!reg_q_8__dup_63_aq & (!nx48915z1 & VCC))
// nx64489z1 = CARRY((reg_q_8__dup_63_aq & !nx48915z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_63_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx48915z1),
	.combout(inc_d_8__dup_878),
	.cout(nx64489z1));
// synopsys translate_off
defparam ix846_fadd.lut_mask = 16'hC30C;
defparam ix846_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N19
dffeas reg_q_8__dup_63(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_878),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_63_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_63.is_wysiwyg = "true";
defparam reg_q_8__dup_63.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N20
fiftyfivenm_lcell_comb ix848_fadd(
// Equation(s):
// inc_d_9__dup_880 = (reg_q_9__dup_62_aq & (!nx64489z1)) # (!reg_q_9__dup_62_aq & ((nx64489z1) # (GND)))
// nx58796z1 = CARRY((!nx64489z1) # (!reg_q_9__dup_62_aq))

	.dataa(gnd),
	.datab(reg_q_9__dup_62_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64489z1),
	.combout(inc_d_9__dup_880),
	.cout(nx58796z1));
// synopsys translate_off
defparam ix848_fadd.lut_mask = 16'h3C3F;
defparam ix848_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N21
dffeas reg_q_9__dup_62(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_880),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_62_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_62.is_wysiwyg = "true";
defparam reg_q_9__dup_62.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N22
fiftyfivenm_lcell_comb ix849_fadd(
// Equation(s):
// inc_d_10__dup_882 = reg_q_10__dup_61_aq $ (!nx58796z1)

	.dataa(reg_q_10__dup_61_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx58796z1),
	.combout(inc_d_10__dup_882),
	.cout());
// synopsys translate_off
defparam ix849_fadd.lut_mask = 16'hA5A5;
defparam ix849_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y21_N23
dffeas reg_q_10__dup_61(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_882),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx2379z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_61_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_61.is_wysiwyg = "true";
defparam reg_q_10__dup_61.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N24
fiftyfivenm_lcell_comb ix59343z7100(
// Equation(s):
// nx59343z6 = (!reg_q_2__dup_69_aq & (!reg_q_0__dup_71_aq & (!reg_q_10__dup_61_aq & !reg_q_1__dup_70_aq)))

	.dataa(reg_q_2__dup_69_aq),
	.datab(reg_q_0__dup_71_aq),
	.datac(reg_q_10__dup_61_aq),
	.datad(reg_q_1__dup_70_aq),
	.cin(gnd),
	.combout(nx59343z6),
	.cout());
// synopsys translate_off
defparam ix59343z7100.lut_mask = 16'h0001;
defparam ix59343z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N10
fiftyfivenm_lcell_comb ix59343z7099(
// Equation(s):
// nx59343z5 = (!reg_q_9__dup_62_aq & (nx59343z6 & (!reg_q_5__dup_66_aq & !reg_q_8__dup_63_aq)))

	.dataa(reg_q_9__dup_62_aq),
	.datab(nx59343z6),
	.datac(reg_q_5__dup_66_aq),
	.datad(reg_q_8__dup_63_aq),
	.cin(gnd),
	.combout(nx59343z5),
	.cout());
// synopsys translate_off
defparam ix59343z7099.lut_mask = 16'h0004;
defparam ix59343z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N30
fiftyfivenm_lcell_comb u_uart_reg_RxDivisor_4__afeeder(
// Equation(s):
// u_uart_reg_RxDivisor_4__afeeder_combout = VCC

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(u_uart_reg_RxDivisor_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxDivisor_4__afeeder.lut_mask = 16'hFFFF;
defparam u_uart_reg_RxDivisor_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N31
dffeas u_uart_reg_RxDivisor_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxDivisor_4__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxDivisor_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxDivisor_4_.is_wysiwyg = "true";
defparam u_uart_reg_RxDivisor_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N28
fiftyfivenm_lcell_comb ix59343z7097(
// Equation(s):
// nx59343z3 = (reg_q_4__dup_67_aq & (reg_q_3__dup_68_aq & (reg_q_7__dup_64_aq & u_uart_reg_RxDivisor_4__aq)))

	.dataa(reg_q_4__dup_67_aq),
	.datab(reg_q_3__dup_68_aq),
	.datac(reg_q_7__dup_64_aq),
	.datad(u_uart_reg_RxDivisor_4__aq),
	.cin(gnd),
	.combout(nx59343z3),
	.cout());
// synopsys translate_off
defparam ix59343z7097.lut_mask = 16'h8000;
defparam ix59343z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N14
fiftyfivenm_lcell_comb ix59343z7098(
// Equation(s):
// nx59343z4 = (!reg_q_4__dup_67_aq & (!reg_q_3__dup_68_aq & (!reg_q_7__dup_64_aq & !u_uart_reg_RxDivisor_4__aq)))

	.dataa(reg_q_4__dup_67_aq),
	.datab(reg_q_3__dup_68_aq),
	.datac(reg_q_7__dup_64_aq),
	.datad(u_uart_reg_RxDivisor_4__aq),
	.cin(gnd),
	.combout(nx59343z4),
	.cout());
// synopsys translate_off
defparam ix59343z7098.lut_mask = 16'h0001;
defparam ix59343z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N12
fiftyfivenm_lcell_comb ix59343z7096(
// Equation(s):
// nx59343z2 = (nx59343z5 & ((reg_q_6__dup_65_aq & (nx59343z3)) # (!reg_q_6__dup_65_aq & ((nx59343z4)))))

	.dataa(nx59343z5),
	.datab(nx59343z3),
	.datac(nx59343z4),
	.datad(reg_q_6__dup_65_aq),
	.cin(gnd),
	.combout(nx59343z2),
	.cout());
// synopsys translate_off
defparam ix59343z7096.lut_mask = 16'h88A0;
defparam ix59343z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N30
fiftyfivenm_lcell_comb ix59343z7095(
// Equation(s):
// nx59343z1 = (u_uart_reg_RxFSM_0__aq & nx59343z2)

	.dataa(u_uart_reg_RxFSM_0__aq),
	.datab(gnd),
	.datac(nx59343z2),
	.datad(gnd),
	.cin(gnd),
	.combout(nx59343z1),
	.cout());
// synopsys translate_off
defparam ix59343z7095.lut_mask = 16'hA0A0;
defparam ix59343z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N31
dffeas u_uart_reg_TopRx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59343z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TopRx_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TopRx.is_wysiwyg = "true";
defparam u_uart_reg_TopRx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N24
fiftyfivenm_lcell_comb ix13938z7095(
// Equation(s):
// nx13938z1 = (u_uart_reg_TopRx_aq & (!u_uart_reg_Rx_r_aq & u_uart_reg_RxFSM_4__aq))

	.dataa(u_uart_reg_TopRx_aq),
	.datab(gnd),
	.datac(u_uart_reg_Rx_r_aq),
	.datad(u_uart_reg_RxFSM_4__aq),
	.cin(gnd),
	.combout(nx13938z1),
	.cout());
// synopsys translate_off
defparam ix13938z7095.lut_mask = 16'h0A00;
defparam ix13938z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N22
fiftyfivenm_lcell_comb u_uart_reg_RxRDYi_afeeder(
// Equation(s):
// u_uart_reg_RxRDYi_afeeder_combout = nx13938z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx13938z1),
	.cin(gnd),
	.combout(u_uart_reg_RxRDYi_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_RxRDYi_afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_RxRDYi_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N23
dffeas u_uart_reg_RxRDYi(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_RxRDYi_afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxRDYi_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxRDYi.is_wysiwyg = "true";
defparam u_uart_reg_RxRDYi.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N30
fiftyfivenm_lcell_comb ix22869z7095(
// Equation(s):
// nx22869z1 = ((nx7605z1) # ((!write_fifo_full & u_uart_reg_RxRDYi_aq))) # (!reset_n_ainput_o)

	.dataa(write_fifo_full),
	.datab(reset_n_ainput_o),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(nx7605z1),
	.cin(gnd),
	.combout(nx22869z1),
	.cout());
// synopsys translate_off
defparam ix22869z7095.lut_mask = 16'hFF73;
defparam ix22869z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N7
dffeas reg_q_0__dup_24(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_q_0__dup_24_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx22869z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_24_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_24.is_wysiwyg = "true";
defparam reg_q_0__dup_24.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N0
fiftyfivenm_lcell_comb ix7605z7096(
// Equation(s):
// nx7605z2 = (!reg_q_7__dup_17_aq & !reg_q_8__dup_16_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_7__dup_17_aq),
	.datad(reg_q_8__dup_16_aq),
	.cin(gnd),
	.combout(nx7605z2),
	.cout());
// synopsys translate_off
defparam ix7605z7096.lut_mask = 16'h000F;
defparam ix7605z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N2
fiftyfivenm_lcell_comb ix7605z7095(
// Equation(s):
// nx7605z1 = (!u_uart_reg_RxRDYi_aq & ((reg_q_0__dup_24_aq) # ((!nx7605z2) # (!nx22869z2))))

	.dataa(reg_q_0__dup_24_aq),
	.datab(nx22869z2),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(nx7605z2),
	.cin(gnd),
	.combout(nx7605z1),
	.cout());
// synopsys translate_off
defparam ix7605z7095.lut_mask = 16'h0B0F;
defparam ix7605z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y17_N3
dffeas write_fifo_reg_rd_en_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx7605z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_rd_en_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_rd_en_delayed.is_wysiwyg = "true";
defparam write_fifo_reg_rd_en_delayed.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N1
fiftyfivenm_io_ibuf pb_a0_a_ainput(
	.i(pb[0]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a0_a_ainput_o));
// synopsys translate_off
defparam pb_a0_a_ainput.bus_hold = "false";
defparam pb_a0_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a0_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N24
fiftyfivenm_lcell_comb ix37417z7095(
// Equation(s):
// nx37417z1 = ((write_fifo_reg_rd_en_delayed_aq & pb_a0_a_ainput_o)) # (!reset_n_ainput_o)

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx37417z1),
	.cout());
// synopsys translate_off
defparam ix37417z7095.lut_mask = 16'hA0FF;
defparam ix37417z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y16_N5
dffeas reg_q_0__dup_98(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_1037),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_98_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_98.is_wysiwyg = "true";
defparam reg_q_0__dup_98.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N6
fiftyfivenm_lcell_comb ix1017_fadd(
// Equation(s):
// inc_d_1__dup_1039 = (reg_q_1__dup_97_aq & (!nx16836z1)) # (!reg_q_1__dup_97_aq & ((nx16836z1) # (GND)))
// nx64274z1 = CARRY((!nx16836z1) # (!reg_q_1__dup_97_aq))

	.dataa(reg_q_1__dup_97_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16836z1),
	.combout(inc_d_1__dup_1039),
	.cout(nx64274z1));
// synopsys translate_off
defparam ix1017_fadd.lut_mask = 16'h5A5F;
defparam ix1017_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N7
dffeas reg_q_1__dup_97(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_1039),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_97_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_97.is_wysiwyg = "true";
defparam reg_q_1__dup_97.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N8
fiftyfivenm_lcell_comb ix1019_fadd(
// Equation(s):
// inc_d_2__dup_1041 = (reg_q_2__dup_96_aq & (nx64274z1 $ (GND))) # (!reg_q_2__dup_96_aq & (!nx64274z1 & VCC))
// nx32369z1 = CARRY((reg_q_2__dup_96_aq & !nx64274z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_96_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64274z1),
	.combout(inc_d_2__dup_1041),
	.cout(nx32369z1));
// synopsys translate_off
defparam ix1019_fadd.lut_mask = 16'hC30C;
defparam ix1019_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N9
dffeas reg_q_2__dup_96(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1041),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_96_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_96.is_wysiwyg = "true";
defparam reg_q_2__dup_96.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N10
fiftyfivenm_lcell_comb ix1021_fadd(
// Equation(s):
// inc_d_3__dup_1043 = (reg_q_3__dup_95_aq & (!nx32369z1)) # (!reg_q_3__dup_95_aq & ((nx32369z1) # (GND)))
// nx47943z1 = CARRY((!nx32369z1) # (!reg_q_3__dup_95_aq))

	.dataa(reg_q_3__dup_95_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx32369z1),
	.combout(inc_d_3__dup_1043),
	.cout(nx47943z1));
// synopsys translate_off
defparam ix1021_fadd.lut_mask = 16'h5A5F;
defparam ix1021_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N11
dffeas reg_q_3__dup_95(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1043),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_95_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_95.is_wysiwyg = "true";
defparam reg_q_3__dup_95.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N12
fiftyfivenm_lcell_comb ix1023_fadd(
// Equation(s):
// inc_d_4__dup_1045 = (reg_q_4__dup_94_aq & (nx47943z1 $ (GND))) # (!reg_q_4__dup_94_aq & (!nx47943z1 & VCC))
// nx2019z1 = CARRY((reg_q_4__dup_94_aq & !nx47943z1))

	.dataa(reg_q_4__dup_94_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47943z1),
	.combout(inc_d_4__dup_1045),
	.cout(nx2019z1));
// synopsys translate_off
defparam ix1023_fadd.lut_mask = 16'hA50A;
defparam ix1023_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N13
dffeas reg_q_4__dup_94(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1045),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_94_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_94.is_wysiwyg = "true";
defparam reg_q_4__dup_94.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N14
fiftyfivenm_lcell_comb ix1025_fadd(
// Equation(s):
// inc_d_5__dup_1047 = (reg_q_5__dup_93_aq & (!nx2019z1)) # (!reg_q_5__dup_93_aq & ((nx2019z1) # (GND)))
// nx51981z1 = CARRY((!nx2019z1) # (!reg_q_5__dup_93_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_93_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2019z1),
	.combout(inc_d_5__dup_1047),
	.cout(nx51981z1));
// synopsys translate_off
defparam ix1025_fadd.lut_mask = 16'h3C3F;
defparam ix1025_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N15
dffeas reg_q_5__dup_93(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1047),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_93_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_93.is_wysiwyg = "true";
defparam reg_q_5__dup_93.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N16
fiftyfivenm_lcell_comb ix1027_fadd(
// Equation(s):
// inc_d_6__dup_1049 = (reg_q_6__dup_92_aq & (nx51981z1 $ (GND))) # (!reg_q_6__dup_92_aq & (!nx51981z1 & VCC))
// nx44194z1 = CARRY((reg_q_6__dup_92_aq & !nx51981z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_92_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51981z1),
	.combout(inc_d_6__dup_1049),
	.cout(nx44194z1));
// synopsys translate_off
defparam ix1027_fadd.lut_mask = 16'hC30C;
defparam ix1027_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N17
dffeas reg_q_6__dup_92(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1049),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_92_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_92.is_wysiwyg = "true";
defparam reg_q_6__dup_92.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N18
fiftyfivenm_lcell_comb ix1028_fadd(
// Equation(s):
// inc_d_7__dup_1051 = nx44194z1 $ (reg_q_7__dup_91_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_7__dup_91_aq),
	.cin(nx44194z1),
	.combout(inc_d_7__dup_1051),
	.cout());
// synopsys translate_off
defparam ix1028_fadd.lut_mask = 16'h0FF0;
defparam ix1028_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y16_N19
dffeas reg_q_7__dup_91(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1051),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx37417z2),
	.sload(gnd),
	.ena(nx37417z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_91_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_91.is_wysiwyg = "true";
defparam reg_q_7__dup_91.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N0
fiftyfivenm_lcell_comb ix25391z7096(
// Equation(s):
// nx25391z2 = (reg_q_4__dup_94_aq & (reg_q_7__dup_91_aq & (reg_q_5__dup_93_aq & reg_q_6__dup_92_aq)))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx25391z2),
	.cout());
// synopsys translate_off
defparam ix25391z7096.lut_mask = 16'h8000;
defparam ix25391z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N0
fiftyfivenm_lcell_comb ix25391z7097(
// Equation(s):
// nx25391z3 = (pb_a0_a_ainput_o & write_fifo_reg_rd_en_delayed_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx25391z3),
	.cout());
// synopsys translate_off
defparam ix25391z7097.lut_mask = 16'hF000;
defparam ix25391z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N30
fiftyfivenm_lcell_comb ix25391z7095(
// Equation(s):
// nx25391z1 = ((nx25391z2 & (nx25391z3 & nx37417z3))) # (!reset_n_ainput_o)

	.dataa(reset_n_ainput_o),
	.datab(nx25391z2),
	.datac(nx25391z3),
	.datad(nx37417z3),
	.cin(gnd),
	.combout(nx25391z1),
	.cout());
// synopsys translate_off
defparam ix25391z7095.lut_mask = 16'hD555;
defparam ix25391z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N21
dffeas reg_q_6__dup_84(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_1009),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_84_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_84.is_wysiwyg = "true";
defparam reg_q_6__dup_84.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N22
fiftyfivenm_lcell_comb ix988_fadd(
// Equation(s):
// inc_d_7__dup_1011 = reg_q_7__dup_83_aq $ (nx11640z1)

	.dataa(reg_q_7__dup_83_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx11640z1),
	.combout(inc_d_7__dup_1011),
	.cout());
// synopsys translate_off
defparam ix988_fadd.lut_mask = 16'h5A5A;
defparam ix988_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y14_N23
dffeas reg_q_7__dup_83(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_1011),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_83_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_83.is_wysiwyg = "true";
defparam reg_q_7__dup_83.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N24
fiftyfivenm_lcell_comb ix25391z7099(
// Equation(s):
// nx25391z5 = (reg_q_4__dup_86_aq & (reg_q_6__dup_84_aq & (reg_q_7__dup_83_aq & reg_q_5__dup_85_aq)))

	.dataa(reg_q_4__dup_86_aq),
	.datab(reg_q_6__dup_84_aq),
	.datac(reg_q_7__dup_83_aq),
	.datad(reg_q_5__dup_85_aq),
	.cin(gnd),
	.combout(nx25391z5),
	.cout());
// synopsys translate_off
defparam ix25391z7099.lut_mask = 16'h8000;
defparam ix25391z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N28
fiftyfivenm_lcell_comb ix25391z7098(
// Equation(s):
// nx25391z4 = ((nx25391z6 & (nx25391z5 & nx25391z2))) # (!reset_n_ainput_o)

	.dataa(nx25391z6),
	.datab(nx25391z5),
	.datac(reset_n_ainput_o),
	.datad(nx25391z2),
	.cin(gnd),
	.combout(nx25391z4),
	.cout());
// synopsys translate_off
defparam ix25391z7098.lut_mask = 16'h8F0F;
defparam ix25391z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N9
dffeas reg_q_0__dup_90(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_997),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_90_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_90.is_wysiwyg = "true";
defparam reg_q_0__dup_90.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N10
fiftyfivenm_lcell_comb ix977_fadd(
// Equation(s):
// inc_d_1__dup_999 = (reg_q_1__dup_89_aq & (!nx38998z1)) # (!reg_q_1__dup_89_aq & ((nx38998z1) # (GND)))
// nx10964z1 = CARRY((!nx38998z1) # (!reg_q_1__dup_89_aq))

	.dataa(reg_q_1__dup_89_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38998z1),
	.combout(inc_d_1__dup_999),
	.cout(nx10964z1));
// synopsys translate_off
defparam ix977_fadd.lut_mask = 16'h5A5F;
defparam ix977_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y14_N11
dffeas reg_q_1__dup_89(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_999),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_89_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_89.is_wysiwyg = "true";
defparam reg_q_1__dup_89.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N12
fiftyfivenm_lcell_comb ix979_fadd(
// Equation(s):
// inc_d_2__dup_1001 = (reg_q_2__dup_88_aq & (nx10964z1 $ (GND))) # (!reg_q_2__dup_88_aq & (!nx10964z1 & VCC))
// nx42869z1 = CARRY((reg_q_2__dup_88_aq & !nx10964z1))

	.dataa(reg_q_2__dup_88_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10964z1),
	.combout(inc_d_2__dup_1001),
	.cout(nx42869z1));
// synopsys translate_off
defparam ix979_fadd.lut_mask = 16'hA50A;
defparam ix979_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y14_N13
dffeas reg_q_2__dup_88(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_1001),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_88_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_88.is_wysiwyg = "true";
defparam reg_q_2__dup_88.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N14
fiftyfivenm_lcell_comb ix981_fadd(
// Equation(s):
// inc_d_3__dup_1003 = (reg_q_3__dup_87_aq & (!nx42869z1)) # (!reg_q_3__dup_87_aq & ((nx42869z1) # (GND)))
// nx27295z1 = CARRY((!nx42869z1) # (!reg_q_3__dup_87_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_87_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42869z1),
	.combout(inc_d_3__dup_1003),
	.cout(nx27295z1));
// synopsys translate_off
defparam ix981_fadd.lut_mask = 16'h3C3F;
defparam ix981_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y14_N15
dffeas reg_q_3__dup_87(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_1003),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_87_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_87.is_wysiwyg = "true";
defparam reg_q_3__dup_87.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N16
fiftyfivenm_lcell_comb ix983_fadd(
// Equation(s):
// inc_d_4__dup_1005 = (reg_q_4__dup_86_aq & (nx27295z1 $ (GND))) # (!reg_q_4__dup_86_aq & (!nx27295z1 & VCC))
// nx53815z1 = CARRY((reg_q_4__dup_86_aq & !nx27295z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_86_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27295z1),
	.combout(inc_d_4__dup_1005),
	.cout(nx53815z1));
// synopsys translate_off
defparam ix983_fadd.lut_mask = 16'hC30C;
defparam ix983_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y14_N17
dffeas reg_q_4__dup_86(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_1005),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_86_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_86.is_wysiwyg = "true";
defparam reg_q_4__dup_86.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y14_N19
dffeas reg_q_5__dup_85(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_1007),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx25391z4),
	.sload(gnd),
	.ena(nx25391z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_85_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_85.is_wysiwyg = "true";
defparam reg_q_5__dup_85.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N28
fiftyfivenm_lcell_comb ix55203z7098(
// Equation(s):
// nx55203z4 = (reg_q_3__dup_95_aq) # ((reg_q_7__dup_91_aq) # ((reg_q_5__dup_93_aq) # (reg_q_6__dup_92_aq)))

	.dataa(reg_q_3__dup_95_aq),
	.datab(reg_q_7__dup_91_aq),
	.datac(reg_q_5__dup_93_aq),
	.datad(reg_q_6__dup_92_aq),
	.cin(gnd),
	.combout(nx55203z4),
	.cout());
// synopsys translate_off
defparam ix55203z7098.lut_mask = 16'hFFFE;
defparam ix55203z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N0
fiftyfivenm_lcell_comb ix55203z7097(
// Equation(s):
// nx55203z3 = (reg_q_4__dup_94_aq) # ((reg_q_2__dup_96_aq) # ((nx55203z4) # (reg_q_1__dup_97_aq)))

	.dataa(reg_q_4__dup_94_aq),
	.datab(reg_q_2__dup_96_aq),
	.datac(nx55203z4),
	.datad(reg_q_1__dup_97_aq),
	.cin(gnd),
	.combout(nx55203z3),
	.cout());
// synopsys translate_off
defparam ix55203z7097.lut_mask = 16'hFFFE;
defparam ix55203z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N10
fiftyfivenm_lcell_comb ix16758z7099(
// Equation(s):
// nx16758z5 = (reg_q_1__dup_89_aq) # (reg_q_5__dup_85_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_1__dup_89_aq),
	.datad(reg_q_5__dup_85_aq),
	.cin(gnd),
	.combout(nx16758z5),
	.cout());
// synopsys translate_off
defparam ix16758z7099.lut_mask = 16'hFFF0;
defparam ix16758z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N0
fiftyfivenm_lcell_comb ix16758z7100(
// Equation(s):
// nx16758z6 = (reg_q_4__dup_86_aq) # ((reg_q_3__dup_87_aq) # ((reg_q_7__dup_83_aq) # (reg_q_6__dup_84_aq)))

	.dataa(reg_q_4__dup_86_aq),
	.datab(reg_q_3__dup_87_aq),
	.datac(reg_q_7__dup_83_aq),
	.datad(reg_q_6__dup_84_aq),
	.cin(gnd),
	.combout(nx16758z6),
	.cout());
// synopsys translate_off
defparam ix16758z7100.lut_mask = 16'hFFFE;
defparam ix16758z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N28
fiftyfivenm_lcell_comb ix16758z7098(
// Equation(s):
// nx16758z4 = (nx25391z3 & ((reg_q_2__dup_88_aq) # ((nx16758z5) # (nx16758z6))))

	.dataa(reg_q_2__dup_88_aq),
	.datab(nx16758z5),
	.datac(nx25391z3),
	.datad(nx16758z6),
	.cin(gnd),
	.combout(nx16758z4),
	.cout());
// synopsys translate_off
defparam ix16758z7098.lut_mask = 16'hF0E0;
defparam ix16758z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N28
fiftyfivenm_lcell_comb ix55203z7096(
// Equation(s):
// nx55203z2 = (reset_n_ainput_o & (nx16758z7 & (nx55203z3 & nx16758z4)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(nx55203z3),
	.datad(nx16758z4),
	.cin(gnd),
	.combout(nx55203z2),
	.cout());
// synopsys translate_off
defparam ix55203z7096.lut_mask = 16'h8000;
defparam ix55203z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N6
fiftyfivenm_lcell_comb ix55203z7095(
// Equation(s):
// nx55203z1 = (!nx55203z2 & (((nx16758z7) # (!u_kirsch_reg_stg_counter1_0__aq)) # (!reset_n_ainput_o)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(u_kirsch_reg_stg_counter1_0__aq),
	.datad(nx55203z2),
	.cin(gnd),
	.combout(nx55203z1),
	.cout());
// synopsys translate_off
defparam ix55203z7095.lut_mask = 16'h00DF;
defparam ix55203z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y20_N7
dffeas u_kirsch_reg_stg_counter1_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55203z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter1_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter1_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter1_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N0
fiftyfivenm_lcell_comb ix58194z7095(
// Equation(s):
// nx58194z1 = (!nx55203z2 & (((nx16758z7) # (u_kirsch_reg_stg_counter1_3__aq)) # (!reset_n_ainput_o)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(nx55203z2),
	.cin(gnd),
	.combout(nx58194z1),
	.cout());
// synopsys translate_off
defparam ix58194z7095.lut_mask = 16'h00FD;
defparam ix58194z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y20_N1
dffeas u_kirsch_reg_stg_counter1_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx58194z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter1_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter1_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter1_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N4
fiftyfivenm_lcell_comb ix57197z7096(
// Equation(s):
// nx57197z2 = (u_kirsch_reg_stg_counter1_0__aq & ((u_kirsch_reg_stg_counter1_2__aq & ((u_kirsch_reg_stg_counter1_3__aq) # (!u_kirsch_reg_stg_counter1_1__aq))) # (!u_kirsch_reg_stg_counter1_2__aq & ((u_kirsch_reg_stg_counter1_1__aq))))) # 
// (!u_kirsch_reg_stg_counter1_0__aq & (((u_kirsch_reg_stg_counter1_2__aq))))

	.dataa(u_kirsch_reg_stg_counter1_0__aq),
	.datab(u_kirsch_reg_stg_counter1_3__aq),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx57197z2),
	.cout());
// synopsys translate_off
defparam ix57197z7096.lut_mask = 16'hDAF0;
defparam ix57197z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N22
fiftyfivenm_lcell_comb ix57197z7095(
// Equation(s):
// nx57197z1 = (!nx55203z2 & (((nx16758z7) # (nx57197z2)) # (!reset_n_ainput_o)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(nx57197z2),
	.datad(nx55203z2),
	.cin(gnd),
	.combout(nx57197z1),
	.cout());
// synopsys translate_off
defparam ix57197z7095.lut_mask = 16'h00FD;
defparam ix57197z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y20_N23
dffeas u_kirsch_reg_stg_counter1_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57197z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter1_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter1_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter1_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N8
fiftyfivenm_lcell_comb ix56200z7096(
// Equation(s):
// nx56200z2 = (u_kirsch_reg_stg_counter1_0__aq & (((u_kirsch_reg_stg_counter1_3__aq & u_kirsch_reg_stg_counter1_2__aq)) # (!u_kirsch_reg_stg_counter1_1__aq))) # (!u_kirsch_reg_stg_counter1_0__aq & (((u_kirsch_reg_stg_counter1_1__aq))))

	.dataa(u_kirsch_reg_stg_counter1_0__aq),
	.datab(u_kirsch_reg_stg_counter1_3__aq),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx56200z2),
	.cout());
// synopsys translate_off
defparam ix56200z7096.lut_mask = 16'hD5AA;
defparam ix56200z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N10
fiftyfivenm_lcell_comb ix56200z7095(
// Equation(s):
// nx56200z1 = (!nx55203z2 & (((nx16758z7) # (nx56200z2)) # (!reset_n_ainput_o)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(nx56200z2),
	.datad(nx55203z2),
	.cin(gnd),
	.combout(nx56200z1),
	.cout());
// synopsys translate_off
defparam ix56200z7095.lut_mask = 16'h00FD;
defparam ix56200z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y20_N11
dffeas u_kirsch_reg_stg_counter1_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56200z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter1_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter1_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter1_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N24
fiftyfivenm_lcell_comb ix16758z7101(
// Equation(s):
// nx16758z7 = (u_kirsch_reg_stg_counter1_1__aq & (u_kirsch_reg_stg_counter1_2__aq & u_kirsch_reg_stg_counter1_0__aq))

	.dataa(u_kirsch_reg_stg_counter1_1__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_0__aq),
	.cin(gnd),
	.combout(nx16758z7),
	.cout());
// synopsys translate_off
defparam ix16758z7101.lut_mask = 16'hA000;
defparam ix16758z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N2
fiftyfivenm_lcell_comb ix16758z7097(
// Equation(s):
// nx16758z3 = (reset_n_ainput_o & (!nx16758z7 & (nx55203z3 & nx16758z4)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z7),
	.datac(nx55203z3),
	.datad(nx16758z4),
	.cin(gnd),
	.combout(nx16758z3),
	.cout());
// synopsys translate_off
defparam ix16758z7097.lut_mask = 16'h2000;
defparam ix16758z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N8
fiftyfivenm_lcell_comb ix15761z7095(
// Equation(s):
// nx15761z1 = (!nx16758z3 & ((nx4094z2) # ((u_kirsch_reg_stg_counter2_3__aq) # (!reset_n_ainput_o))))

	.dataa(nx4094z2),
	.datab(reset_n_ainput_o),
	.datac(u_kirsch_reg_stg_counter2_3__aq),
	.datad(nx16758z3),
	.cin(gnd),
	.combout(nx15761z1),
	.cout());
// synopsys translate_off
defparam ix15761z7095.lut_mask = 16'h00FB;
defparam ix15761z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y18_N9
dffeas u_kirsch_reg_stg_counter2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15761z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter2_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N4
fiftyfivenm_lcell_comb ix17755z7096(
// Equation(s):
// nx17755z2 = (u_kirsch_reg_stg_counter2_1__aq & (((u_kirsch_reg_stg_counter2_3__aq & u_kirsch_reg_stg_counter2_2__aq)) # (!u_kirsch_reg_stg_counter2_0__aq))) # (!u_kirsch_reg_stg_counter2_1__aq & (((u_kirsch_reg_stg_counter2_0__aq))))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx17755z2),
	.cout());
// synopsys translate_off
defparam ix17755z7096.lut_mask = 16'hB3CC;
defparam ix17755z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N20
fiftyfivenm_lcell_comb ix17755z7095(
// Equation(s):
// nx17755z1 = (!nx16758z3 & ((nx4094z2) # ((nx17755z2) # (!reset_n_ainput_o))))

	.dataa(nx4094z2),
	.datab(reset_n_ainput_o),
	.datac(nx17755z2),
	.datad(nx16758z3),
	.cin(gnd),
	.combout(nx17755z1),
	.cout());
// synopsys translate_off
defparam ix17755z7095.lut_mask = 16'h00FB;
defparam ix17755z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y18_N21
dffeas u_kirsch_reg_stg_counter2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17755z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter2_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N14
fiftyfivenm_lcell_comb ix18752z7096(
// Equation(s):
// nx18752z2 = (u_kirsch_reg_stg_counter2_3__aq & (u_kirsch_reg_stg_counter2_1__aq & (u_kirsch_reg_stg_counter2_2__aq & u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx18752z2),
	.cout());
// synopsys translate_off
defparam ix18752z7096.lut_mask = 16'h8000;
defparam ix18752z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N16
fiftyfivenm_lcell_comb ix18752z7097(
// Equation(s):
// nx18752z3 = ((!u_kirsch_reg_stg_counter2_3__aq & (u_kirsch_reg_stg_counter2_2__aq & nx16758z2))) # (!reset_n_ainput_o)

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(reset_n_ainput_o),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(nx16758z2),
	.cin(gnd),
	.combout(nx18752z3),
	.cout());
// synopsys translate_off
defparam ix18752z7097.lut_mask = 16'h7333;
defparam ix18752z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N2
fiftyfivenm_lcell_comb ix18752z7095(
// Equation(s):
// nx18752z1 = (!nx16758z3 & ((nx18752z3) # (nx18752z2 $ (!u_kirsch_reg_stg_counter2_0__aq))))

	.dataa(nx18752z2),
	.datab(nx18752z3),
	.datac(u_kirsch_reg_stg_counter2_0__aq),
	.datad(nx16758z3),
	.cin(gnd),
	.combout(nx18752z1),
	.cout());
// synopsys translate_off
defparam ix18752z7095.lut_mask = 16'h00ED;
defparam ix18752z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y18_N3
dffeas u_kirsch_reg_stg_counter2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18752z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter2_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N18
fiftyfivenm_lcell_comb ix16758z7096(
// Equation(s):
// nx16758z2 = (u_kirsch_reg_stg_counter2_0__aq & u_kirsch_reg_stg_counter2_1__aq)

	.dataa(gnd),
	.datab(u_kirsch_reg_stg_counter2_0__aq),
	.datac(gnd),
	.datad(u_kirsch_reg_stg_counter2_1__aq),
	.cin(gnd),
	.combout(nx16758z2),
	.cout());
// synopsys translate_off
defparam ix16758z7096.lut_mask = 16'hCC00;
defparam ix16758z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N6
fiftyfivenm_lcell_comb ix16758z7095(
// Equation(s):
// nx16758z1 = (!nx16758z3 & (((nx16758z2) # (u_kirsch_reg_stg_counter2_2__aq)) # (!reset_n_ainput_o)))

	.dataa(reset_n_ainput_o),
	.datab(nx16758z2),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(nx16758z3),
	.cin(gnd),
	.combout(nx16758z1),
	.cout());
// synopsys translate_off
defparam ix16758z7095.lut_mask = 16'h00FD;
defparam ix16758z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y18_N7
dffeas u_kirsch_reg_stg_counter2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx16758z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_stg_counter2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_stg_counter2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_stg_counter2_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N0
fiftyfivenm_lcell_comb ix4094z7096(
// Equation(s):
// nx4094z2 = (u_kirsch_reg_stg_counter2_2__aq & (u_kirsch_reg_stg_counter2_1__aq & (!u_kirsch_reg_stg_counter2_3__aq & u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_2__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_3__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx4094z2),
	.cout());
// synopsys translate_off
defparam ix4094z7096.lut_mask = 16'h0800;
defparam ix4094z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N8
fiftyfivenm_lcell_comb ix64328z7098(
// Equation(s):
// nx64328z4 = (reset_n_ainput_o & ((nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3__aq))))

	.dataa(reset_n_ainput_o),
	.datab(nx4094z2),
	.datac(nx16758z7),
	.datad(u_kirsch_reg_stg_counter1_3__aq),
	.cin(gnd),
	.combout(nx64328z4),
	.cout());
// synopsys translate_off
defparam ix64328z7098.lut_mask = 16'h88A8;
defparam ix64328z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y18_N31
dffeas u_kirsch_reg_o_row_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_5__dup_85_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y18_N17
dffeas u_kirsch_reg_o_row_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_4__dup_86_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y18_N3
dffeas u_kirsch_reg_o_row_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_6__dup_84_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y18_N29
dffeas u_kirsch_reg_o_row_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_7__dup_83_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N2
fiftyfivenm_lcell_comb ix51544z7102(
// Equation(s):
// nx51544z8 = (u_kirsch_reg_o_row_5__aq & ((u_kirsch_reg_o_row_4__aq & ((!u_kirsch_reg_o_row_7__aq))) # (!u_kirsch_reg_o_row_4__aq & (!u_kirsch_reg_o_row_6__aq)))) # (!u_kirsch_reg_o_row_5__aq & ((u_kirsch_reg_o_row_4__aq $ (!u_kirsch_reg_o_row_7__aq)) # 
// (!u_kirsch_reg_o_row_6__aq)))

	.dataa(u_kirsch_reg_o_row_5__aq),
	.datab(u_kirsch_reg_o_row_4__aq),
	.datac(u_kirsch_reg_o_row_6__aq),
	.datad(u_kirsch_reg_o_row_7__aq),
	.cin(gnd),
	.combout(nx51544z8),
	.cout());
// synopsys translate_off
defparam ix51544z7102.lut_mask = 16'h479F;
defparam ix51544z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N6
fiftyfivenm_lcell_comb ix795_fadd(
// Equation(s):
// inc_d_0__dup_814 = reg_q_0__dup_60_aq $ (VCC)
// nx55390z2 = CARRY(reg_q_0__dup_60_aq)

	.dataa(reg_q_0__dup_60_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_814),
	.cout(nx55390z2));
// synopsys translate_off
defparam ix795_fadd.lut_mask = 16'h55AA;
defparam ix795_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N12
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_reset_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(reset_n_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.lut_mask = 16'h0F0F;
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y18_N13
dffeas u_seg7_u_dual_seg7_reg_prev_reset(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_reset.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N0
fiftyfivenm_lcell_comb ix29573z7095(
// Equation(s):
// nx29573z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reset_n_ainput_o),
	.datad(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.cin(gnd),
	.combout(nx29573z1),
	.cout());
// synopsys translate_off
defparam ix29573z7095.lut_mask = 16'h000F;
defparam ix29573z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y18_N7
dffeas reg_q_0__dup_60(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_814),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_60_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_60.is_wysiwyg = "true";
defparam reg_q_0__dup_60.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N8
fiftyfivenm_lcell_comb ix797_fadd(
// Equation(s):
// inc_d_1__dup_815 = (reg_q_1__dup_59_aq & (!nx55390z2)) # (!reg_q_1__dup_59_aq & ((nx55390z2) # (GND)))
// nx60108z2 = CARRY((!nx55390z2) # (!reg_q_1__dup_59_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_59_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55390z2),
	.combout(inc_d_1__dup_815),
	.cout(nx60108z2));
// synopsys translate_off
defparam ix797_fadd.lut_mask = 16'h3C3F;
defparam ix797_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N9
dffeas reg_q_1__dup_59(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_815),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_59_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_59.is_wysiwyg = "true";
defparam reg_q_1__dup_59.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N10
fiftyfivenm_lcell_comb ix799_fadd(
// Equation(s):
// inc_d_2__dup_816 = (reg_q_2__dup_58_aq & (nx60108z2 $ (GND))) # (!reg_q_2__dup_58_aq & (!nx60108z2 & VCC))
// nx46048z2 = CARRY((reg_q_2__dup_58_aq & !nx60108z2))

	.dataa(reg_q_2__dup_58_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx60108z2),
	.combout(inc_d_2__dup_816),
	.cout(nx46048z2));
// synopsys translate_off
defparam ix799_fadd.lut_mask = 16'hA50A;
defparam ix799_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N11
dffeas reg_q_2__dup_58(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_816),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_58_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_58.is_wysiwyg = "true";
defparam reg_q_2__dup_58.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N12
fiftyfivenm_lcell_comb ix801_fadd(
// Equation(s):
// inc_d_3__dup_817 = (reg_q_3__dup_57_aq & (!nx46048z2)) # (!reg_q_3__dup_57_aq & ((nx46048z2) # (GND)))
// nx35062z2 = CARRY((!nx46048z2) # (!reg_q_3__dup_57_aq))

	.dataa(reg_q_3__dup_57_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46048z2),
	.combout(inc_d_3__dup_817),
	.cout(nx35062z2));
// synopsys translate_off
defparam ix801_fadd.lut_mask = 16'h5A5F;
defparam ix801_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N13
dffeas reg_q_3__dup_57(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_817),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_57_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_57.is_wysiwyg = "true";
defparam reg_q_3__dup_57.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N14
fiftyfivenm_lcell_comb ix803_fadd(
// Equation(s):
// inc_d_4__dup_818 = (reg_q_4__dup_56_aq & (nx35062z2 $ (GND))) # (!reg_q_4__dup_56_aq & (!nx35062z2 & VCC))
// nx50636z2 = CARRY((reg_q_4__dup_56_aq & !nx35062z2))

	.dataa(gnd),
	.datab(reg_q_4__dup_56_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35062z2),
	.combout(inc_d_4__dup_818),
	.cout(nx50636z2));
// synopsys translate_off
defparam ix803_fadd.lut_mask = 16'hC30C;
defparam ix803_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N15
dffeas reg_q_4__dup_56(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_818),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_56_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_56.is_wysiwyg = "true";
defparam reg_q_4__dup_56.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N16
fiftyfivenm_lcell_comb ix805_fadd(
// Equation(s):
// inc_d_5__dup_819 = (reg_q_5__dup_55_aq & (!nx50636z2)) # (!reg_q_5__dup_55_aq & ((nx50636z2) # (GND)))
// nx674z2 = CARRY((!nx50636z2) # (!reg_q_5__dup_55_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_55_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50636z2),
	.combout(inc_d_5__dup_819),
	.cout(nx674z2));
// synopsys translate_off
defparam ix805_fadd.lut_mask = 16'h3C3F;
defparam ix805_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N17
dffeas reg_q_5__dup_55(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_819),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_55_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_55.is_wysiwyg = "true";
defparam reg_q_5__dup_55.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N18
fiftyfivenm_lcell_comb ix807_fadd(
// Equation(s):
// inc_d_6__dup_820 = (reg_q_6__dup_54_aq & (nx674z2 $ (GND))) # (!reg_q_6__dup_54_aq & (!nx674z2 & VCC))
// nx49288z2 = CARRY((reg_q_6__dup_54_aq & !nx674z2))

	.dataa(gnd),
	.datab(reg_q_6__dup_54_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx674z2),
	.combout(inc_d_6__dup_820),
	.cout(nx49288z2));
// synopsys translate_off
defparam ix807_fadd.lut_mask = 16'hC30C;
defparam ix807_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N19
dffeas reg_q_6__dup_54(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_820),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_54_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_54.is_wysiwyg = "true";
defparam reg_q_6__dup_54.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N20
fiftyfivenm_lcell_comb ix809_fadd(
// Equation(s):
// inc_d_7__dup_821 = (reg_q_7__dup_53_aq & (!nx49288z2)) # (!reg_q_7__dup_53_aq & ((nx49288z2) # (GND)))
// nx55707z2 = CARRY((!nx49288z2) # (!reg_q_7__dup_53_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_53_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx49288z2),
	.combout(inc_d_7__dup_821),
	.cout(nx55707z2));
// synopsys translate_off
defparam ix809_fadd.lut_mask = 16'h3C3F;
defparam ix809_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N21
dffeas reg_q_7__dup_53(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_821),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_53_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_53.is_wysiwyg = "true";
defparam reg_q_7__dup_53.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N22
fiftyfivenm_lcell_comb ix55_fadd(
// Equation(s):
// inc_d_8__dup_822 = (reg_q_8__dup_52_aq & (nx55707z2 $ (GND))) # (!reg_q_8__dup_52_aq & (!nx55707z2 & VCC))
// nx44217z2 = CARRY((reg_q_8__dup_52_aq & !nx55707z2))

	.dataa(reg_q_8__dup_52_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55707z2),
	.combout(inc_d_8__dup_822),
	.cout(nx44217z2));
// synopsys translate_off
defparam ix55_fadd.lut_mask = 16'hA50A;
defparam ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N23
dffeas reg_q_8__dup_52(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_822),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_52_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_52.is_wysiwyg = "true";
defparam reg_q_8__dup_52.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N24
fiftyfivenm_lcell_comb ix59_fadd(
// Equation(s):
// inc_d_9__dup_823 = (reg_q_9__dup_51_aq & (!nx44217z2)) # (!reg_q_9__dup_51_aq & ((nx44217z2) # (GND)))
// nx10586z1 = CARRY((!nx44217z2) # (!reg_q_9__dup_51_aq))

	.dataa(gnd),
	.datab(reg_q_9__dup_51_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx44217z2),
	.combout(inc_d_9__dup_823),
	.cout(nx10586z1));
// synopsys translate_off
defparam ix59_fadd.lut_mask = 16'h3C3F;
defparam ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N25
dffeas reg_q_9__dup_51(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_823),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_51_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_51.is_wysiwyg = "true";
defparam reg_q_9__dup_51.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N26
fiftyfivenm_lcell_comb ix61_fadd(
// Equation(s):
// inc_d_10__dup_824 = reg_q_10__dup_50_aq $ (!nx10586z1)

	.dataa(reg_q_10__dup_50_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx10586z1),
	.combout(inc_d_10__dup_824),
	.cout());
// synopsys translate_off
defparam ix61_fadd.lut_mask = 16'hA5A5;
defparam ix61_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X13_Y18_N27
dffeas reg_q_10__dup_50(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_824),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx29573z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_50_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_50.is_wysiwyg = "true";
defparam reg_q_10__dup_50.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y18_N23
dffeas u_kirsch_reg_o_row_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_0__dup_90_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y18_N5
dffeas u_kirsch_reg_o_row_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_3__dup_87_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y18_N1
dffeas u_kirsch_reg_o_row_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_2__dup_88_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y18_N7
dffeas u_kirsch_reg_o_row_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_q_1__dup_89_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_row_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_row_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_row_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N0
fiftyfivenm_lcell_comb ix51544z7113(
// Equation(s):
// nx51544z19 = (u_kirsch_reg_o_row_3__aq & ((u_kirsch_reg_o_row_2__aq $ (!u_kirsch_reg_o_row_1__aq)) # (!u_kirsch_reg_o_row_0__aq))) # (!u_kirsch_reg_o_row_3__aq & ((u_kirsch_reg_o_row_1__aq) # (u_kirsch_reg_o_row_0__aq $ (!u_kirsch_reg_o_row_2__aq))))

	.dataa(u_kirsch_reg_o_row_0__aq),
	.datab(u_kirsch_reg_o_row_3__aq),
	.datac(u_kirsch_reg_o_row_2__aq),
	.datad(u_kirsch_reg_o_row_1__aq),
	.cin(gnd),
	.combout(nx51544z19),
	.cout());
// synopsys translate_off
defparam ix51544z7113.lut_mask = 16'hF76D;
defparam ix51544z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N4
fiftyfivenm_lcell_comb ix51544z7112(
// Equation(s):
// nx51544z18 = (u_kirsch_reg_o_row_0__aq & (u_kirsch_reg_o_row_3__aq $ (u_kirsch_reg_o_row_1__aq)))

	.dataa(u_kirsch_reg_o_row_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_o_row_3__aq),
	.datad(u_kirsch_reg_o_row_1__aq),
	.cin(gnd),
	.combout(nx51544z18),
	.cout());
// synopsys translate_off
defparam ix51544z7112.lut_mask = 16'h0AA0;
defparam ix51544z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N22
fiftyfivenm_lcell_comb ix51544z7114(
// Equation(s):
// nx51544z20 = (u_kirsch_reg_o_row_1__aq & (((u_kirsch_reg_o_row_3__aq) # (!u_kirsch_reg_o_row_0__aq)))) # (!u_kirsch_reg_o_row_1__aq & ((u_kirsch_reg_o_row_2__aq & ((u_kirsch_reg_o_row_3__aq))) # (!u_kirsch_reg_o_row_2__aq & (!u_kirsch_reg_o_row_0__aq))))

	.dataa(u_kirsch_reg_o_row_1__aq),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(u_kirsch_reg_o_row_0__aq),
	.datad(u_kirsch_reg_o_row_3__aq),
	.cin(gnd),
	.combout(nx51544z20),
	.cout());
// synopsys translate_off
defparam ix51544z7114.lut_mask = 16'hEF0B;
defparam ix51544z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N24
fiftyfivenm_lcell_comb ix51544z7111(
// Equation(s):
// nx51544z17 = (nx51544z18) # ((nx51544z19 & (!u_kirsch_reg_o_row_2__aq)) # (!nx51544z19 & ((!nx51544z20))))

	.dataa(nx51544z19),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(nx51544z18),
	.datad(nx51544z20),
	.cin(gnd),
	.combout(nx51544z17),
	.cout());
// synopsys translate_off
defparam ix51544z7111.lut_mask = 16'hF2F7;
defparam ix51544z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N28
fiftyfivenm_lcell_comb ix18625z7095(
// Equation(s):
// nx18625z1 = (reg_q_10__dup_50_aq & (nx51544z8)) # (!reg_q_10__dup_50_aq & ((nx51544z17)))

	.dataa(gnd),
	.datab(nx51544z8),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z17),
	.cin(gnd),
	.combout(nx18625z1),
	.cout());
// synopsys translate_off
defparam ix18625z7095.lut_mask = 16'hCFC0;
defparam ix18625z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N30
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_char0_en_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10__dup_50_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_10__dup_50_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.lut_mask = 16'h0F0F;
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y18_N31
dffeas u_seg7_u_dual_seg7_reg_prev_char0_en(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N2
fiftyfivenm_lcell_comb ix10356z7096(
// Equation(s):
// u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10__dup_50_aq)

	.dataa(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.datab(gnd),
	.datac(reg_q_10__dup_50_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_load_reg),
	.cout());
// synopsys translate_off
defparam ix10356z7096.lut_mask = 16'hA5A5;
defparam ix10356z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y18_N29
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18625z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N28
fiftyfivenm_lcell_comb ix51544z7101(
// Equation(s):
// nx51544z7 = (u_kirsch_reg_o_row_5__aq) # ((u_kirsch_reg_o_row_7__aq $ (u_kirsch_reg_o_row_6__aq)) # (!u_kirsch_reg_o_row_4__aq))

	.dataa(u_kirsch_reg_o_row_5__aq),
	.datab(u_kirsch_reg_o_row_4__aq),
	.datac(u_kirsch_reg_o_row_7__aq),
	.datad(u_kirsch_reg_o_row_6__aq),
	.cin(gnd),
	.combout(nx51544z7),
	.cout());
// synopsys translate_off
defparam ix51544z7101.lut_mask = 16'hBFFB;
defparam ix51544z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N30
fiftyfivenm_lcell_comb ix51544z7100(
// Equation(s):
// nx51544z6 = ((nx51544z7 & ((u_kirsch_reg_o_row_7__aq) # (!u_kirsch_reg_o_row_5__aq)))) # (!nx51544z8)

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(nx51544z7),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(nx51544z8),
	.cin(gnd),
	.combout(nx51544z6),
	.cout());
// synopsys translate_off
defparam ix51544z7100.lut_mask = 16'h8CFF;
defparam ix51544z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N10
fiftyfivenm_lcell_comb ix51544z7119(
// Equation(s):
// nx51544z25 = (u_kirsch_reg_o_row_2__aq & (!u_kirsch_reg_o_row_3__aq & ((u_kirsch_reg_o_row_0__aq) # (!u_kirsch_reg_o_row_1__aq))))

	.dataa(u_kirsch_reg_o_row_1__aq),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(u_kirsch_reg_o_row_0__aq),
	.datad(u_kirsch_reg_o_row_3__aq),
	.cin(gnd),
	.combout(nx51544z25),
	.cout());
// synopsys translate_off
defparam ix51544z7119.lut_mask = 16'h00C4;
defparam ix51544z7119.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N12
fiftyfivenm_lcell_comb ix51544z7118(
// Equation(s):
// nx51544z24 = (u_kirsch_reg_o_row_1__aq & (((u_kirsch_reg_o_row_3__aq)))) # (!u_kirsch_reg_o_row_1__aq & ((nx51544z25) # ((nx51544z19))))

	.dataa(nx51544z25),
	.datab(u_kirsch_reg_o_row_3__aq),
	.datac(nx51544z19),
	.datad(u_kirsch_reg_o_row_1__aq),
	.cin(gnd),
	.combout(nx51544z24),
	.cout());
// synopsys translate_off
defparam ix51544z7118.lut_mask = 16'hCCFA;
defparam ix51544z7118.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N4
fiftyfivenm_lcell_comb ix28027z7095(
// Equation(s):
// nx28027z1 = (reg_q_10__dup_50_aq & (nx51544z6)) # (!reg_q_10__dup_50_aq & (((nx51544z24) # (!nx51544z17))))

	.dataa(nx51544z6),
	.datab(nx51544z24),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z17),
	.cin(gnd),
	.combout(nx28027z1),
	.cout());
// synopsys translate_off
defparam ix28027z7095.lut_mask = 16'hACAF;
defparam ix28027z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y18_N5
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx28027z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N26
fiftyfivenm_lcell_comb ix51544z7117(
// Equation(s):
// nx51544z23 = u_kirsch_reg_o_row_2__aq $ (u_kirsch_reg_o_row_3__aq)

	.dataa(gnd),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(gnd),
	.datad(u_kirsch_reg_o_row_3__aq),
	.cin(gnd),
	.combout(nx51544z23),
	.cout());
// synopsys translate_off
defparam ix51544z7117.lut_mask = 16'h33CC;
defparam ix51544z7117.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N18
fiftyfivenm_lcell_comb ix51544z7116(
// Equation(s):
// nx51544z22 = (nx51544z23) # ((nx51544z17 & ((u_kirsch_reg_o_row_0__aq) # (!u_kirsch_reg_o_row_1__aq))))

	.dataa(u_kirsch_reg_o_row_0__aq),
	.datab(nx51544z17),
	.datac(nx51544z23),
	.datad(u_kirsch_reg_o_row_1__aq),
	.cin(gnd),
	.combout(nx51544z22),
	.cout());
// synopsys translate_off
defparam ix51544z7116.lut_mask = 16'hF8FC;
defparam ix51544z7116.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N16
fiftyfivenm_lcell_comb ix51544z7115(
// Equation(s):
// nx51544z21 = (!u_kirsch_reg_o_row_1__aq & (u_kirsch_reg_o_row_2__aq & nx51544z22))

	.dataa(u_kirsch_reg_o_row_1__aq),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(gnd),
	.datad(nx51544z22),
	.cin(gnd),
	.combout(nx51544z21),
	.cout());
// synopsys translate_off
defparam ix51544z7115.lut_mask = 16'h4400;
defparam ix51544z7115.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N6
fiftyfivenm_lcell_comb ix51544z7110(
// Equation(s):
// nx51544z16 = (u_kirsch_reg_o_row_1__aq & (u_kirsch_reg_o_row_0__aq & (!u_kirsch_reg_o_row_2__aq))) # (!u_kirsch_reg_o_row_1__aq & ((u_kirsch_reg_o_row_3__aq) # (u_kirsch_reg_o_row_0__aq $ (!u_kirsch_reg_o_row_2__aq))))

	.dataa(u_kirsch_reg_o_row_0__aq),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(u_kirsch_reg_o_row_1__aq),
	.datad(u_kirsch_reg_o_row_3__aq),
	.cin(gnd),
	.combout(nx51544z16),
	.cout());
// synopsys translate_off
defparam ix51544z7110.lut_mask = 16'h2F29;
defparam ix51544z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N28
fiftyfivenm_lcell_comb ix51544z7109(
// Equation(s):
// nx51544z15 = (!u_kirsch_reg_o_row_0__aq & (!u_kirsch_reg_o_row_3__aq & ((u_kirsch_reg_o_row_1__aq) # (!u_kirsch_reg_o_row_2__aq))))

	.dataa(u_kirsch_reg_o_row_1__aq),
	.datab(u_kirsch_reg_o_row_2__aq),
	.datac(u_kirsch_reg_o_row_0__aq),
	.datad(u_kirsch_reg_o_row_3__aq),
	.cin(gnd),
	.combout(nx51544z15),
	.cout());
// synopsys translate_off
defparam ix51544z7109.lut_mask = 16'h000B;
defparam ix51544z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N8
fiftyfivenm_lcell_comb ix51544z7108(
// Equation(s):
// nx51544z14 = (nx51544z16) # ((nx51544z15) # ((!u_kirsch_reg_o_row_0__aq & !nx51544z17)))

	.dataa(nx51544z16),
	.datab(nx51544z15),
	.datac(u_kirsch_reg_o_row_0__aq),
	.datad(nx51544z17),
	.cin(gnd),
	.combout(nx51544z14),
	.cout());
// synopsys translate_off
defparam ix51544z7108.lut_mask = 16'hEEEF;
defparam ix51544z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N30
fiftyfivenm_lcell_comb ix51544z7107(
// Equation(s):
// nx51544z13 = (u_kirsch_reg_o_row_1__aq & ((nx51544z14) # ((u_kirsch_reg_o_row_3__aq & nx51544z17)))) # (!u_kirsch_reg_o_row_1__aq & (u_kirsch_reg_o_row_3__aq & ((nx51544z17))))

	.dataa(u_kirsch_reg_o_row_1__aq),
	.datab(u_kirsch_reg_o_row_3__aq),
	.datac(nx51544z14),
	.datad(nx51544z17),
	.cin(gnd),
	.combout(nx51544z13),
	.cout());
// synopsys translate_off
defparam ix51544z7107.lut_mask = 16'hECA0;
defparam ix51544z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N2
fiftyfivenm_lcell_comb ix51544z7106(
// Equation(s):
// nx51544z12 = (nx51544z21) # ((nx51544z13) # ((u_kirsch_reg_o_row_0__aq & nx51544z24)))

	.dataa(u_kirsch_reg_o_row_0__aq),
	.datab(nx51544z21),
	.datac(nx51544z13),
	.datad(nx51544z24),
	.cin(gnd),
	.combout(nx51544z12),
	.cout());
// synopsys translate_off
defparam ix51544z7106.lut_mask = 16'hFEFC;
defparam ix51544z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N16
fiftyfivenm_lcell_comb ix51544z7099(
// Equation(s):
// nx51544z5 = (u_kirsch_reg_o_row_7__aq & ((u_kirsch_reg_o_row_5__aq $ (!u_kirsch_reg_o_row_6__aq)) # (!u_kirsch_reg_o_row_4__aq))) # (!u_kirsch_reg_o_row_7__aq & ((u_kirsch_reg_o_row_5__aq) # (u_kirsch_reg_o_row_4__aq $ (!u_kirsch_reg_o_row_6__aq))))

	.dataa(u_kirsch_reg_o_row_5__aq),
	.datab(u_kirsch_reg_o_row_7__aq),
	.datac(u_kirsch_reg_o_row_4__aq),
	.datad(u_kirsch_reg_o_row_6__aq),
	.cin(gnd),
	.combout(nx51544z5),
	.cout());
// synopsys translate_off
defparam ix51544z7099.lut_mask = 16'hBE6F;
defparam ix51544z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N22
fiftyfivenm_lcell_comb ix51544z7098(
// Equation(s):
// nx51544z4 = (u_kirsch_reg_o_row_7__aq & ((u_kirsch_reg_o_row_6__aq) # ((u_kirsch_reg_o_row_5__aq & u_kirsch_reg_o_row_4__aq))))

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx51544z4),
	.cout());
// synopsys translate_off
defparam ix51544z7098.lut_mask = 16'hA888;
defparam ix51544z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N24
fiftyfivenm_lcell_comb ix51544z7097(
// Equation(s):
// nx51544z3 = (nx51544z6 & (!nx51544z4 & ((u_kirsch_reg_o_row_4__aq) # (!nx51544z5))))

	.dataa(nx51544z5),
	.datab(u_kirsch_reg_o_row_4__aq),
	.datac(nx51544z6),
	.datad(nx51544z4),
	.cin(gnd),
	.combout(nx51544z3),
	.cout());
// synopsys translate_off
defparam ix51544z7097.lut_mask = 16'h00D0;
defparam ix51544z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N6
fiftyfivenm_lcell_comb ix51544z7103(
// Equation(s):
// nx51544z9 = (u_kirsch_reg_o_row_5__aq & ((u_kirsch_reg_o_row_6__aq $ (u_kirsch_reg_o_row_4__aq)))) # (!u_kirsch_reg_o_row_5__aq & (u_kirsch_reg_o_row_6__aq & ((u_kirsch_reg_o_row_7__aq) # (u_kirsch_reg_o_row_4__aq))))

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx51544z9),
	.cout());
// synopsys translate_off
defparam ix51544z7103.lut_mask = 16'h3CC8;
defparam ix51544z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N0
fiftyfivenm_lcell_comb ix51544z7104(
// Equation(s):
// nx51544z10 = (u_kirsch_reg_o_row_7__aq & (!u_kirsch_reg_o_row_5__aq & ((!u_kirsch_reg_o_row_4__aq) # (!u_kirsch_reg_o_row_6__aq)))) # (!u_kirsch_reg_o_row_7__aq & (u_kirsch_reg_o_row_6__aq $ (((u_kirsch_reg_o_row_5__aq) # (!u_kirsch_reg_o_row_4__aq)))))

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx51544z10),
	.cout());
// synopsys translate_off
defparam ix51544z7104.lut_mask = 16'h161B;
defparam ix51544z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N26
fiftyfivenm_lcell_comb ix51544z7096(
// Equation(s):
// nx51544z2 = (nx51544z3) # ((u_kirsch_reg_o_row_5__aq & ((nx51544z9) # (nx51544z10))))

	.dataa(u_kirsch_reg_o_row_5__aq),
	.datab(nx51544z3),
	.datac(nx51544z9),
	.datad(nx51544z10),
	.cin(gnd),
	.combout(nx51544z2),
	.cout());
// synopsys translate_off
defparam ix51544z7096.lut_mask = 16'hEEEC;
defparam ix51544z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N20
fiftyfivenm_lcell_comb ix51544z7105(
// Equation(s):
// nx51544z11 = (u_kirsch_reg_o_row_7__aq & ((u_kirsch_reg_o_row_4__aq) # (!u_kirsch_reg_o_row_6__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_7__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx51544z11),
	.cout());
// synopsys translate_off
defparam ix51544z7105.lut_mask = 16'hF030;
defparam ix51544z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N14
fiftyfivenm_lcell_comb ix51544z7095(
// Equation(s):
// nx51544z1 = (reg_q_10__dup_50_aq & (((nx51544z2) # (nx51544z11)))) # (!reg_q_10__dup_50_aq & (nx51544z12))

	.dataa(nx51544z12),
	.datab(nx51544z2),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z11),
	.cin(gnd),
	.combout(nx51544z1),
	.cout());
// synopsys translate_off
defparam ix51544z7095.lut_mask = 16'hFACA;
defparam ix51544z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y18_N15
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51544z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N6
fiftyfivenm_lcell_comb ix884_fadd(
// Equation(s):
// inc_d_0__dup_915 = reg_q_0__dup_82_aq $ (VCC)
// nx39407z1 = CARRY(reg_q_0__dup_82_aq)

	.dataa(reg_q_0__dup_82_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_915),
	.cout(nx39407z1));
// synopsys translate_off
defparam ix884_fadd.lut_mask = 16'h55AA;
defparam ix884_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y21_N7
dffeas reg_q_0__dup_82(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_915),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_82_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_82.is_wysiwyg = "true";
defparam reg_q_0__dup_82.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N8
fiftyfivenm_lcell_comb ix886_fadd(
// Equation(s):
// inc_d_1__dup_917 = (reg_q_1__dup_81_aq & (!nx39407z1)) # (!reg_q_1__dup_81_aq & ((nx39407z1) # (GND)))
// nx10555z1 = CARRY((!nx39407z1) # (!reg_q_1__dup_81_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_81_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39407z1),
	.combout(inc_d_1__dup_917),
	.cout(nx10555z1));
// synopsys translate_off
defparam ix886_fadd.lut_mask = 16'h3C3F;
defparam ix886_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N9
dffeas reg_q_1__dup_81(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_917),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_81_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_81.is_wysiwyg = "true";
defparam reg_q_1__dup_81.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N10
fiftyfivenm_lcell_comb ix888_fadd(
// Equation(s):
// inc_d_2__dup_919 = (reg_q_2__dup_80_aq & (nx10555z1 $ (GND))) # (!reg_q_2__dup_80_aq & (!nx10555z1 & VCC))
// nx42460z1 = CARRY((reg_q_2__dup_80_aq & !nx10555z1))

	.dataa(reg_q_2__dup_80_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10555z1),
	.combout(inc_d_2__dup_919),
	.cout(nx42460z1));
// synopsys translate_off
defparam ix888_fadd.lut_mask = 16'hA50A;
defparam ix888_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N11
dffeas reg_q_2__dup_80(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_919),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_80_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_80.is_wysiwyg = "true";
defparam reg_q_2__dup_80.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N12
fiftyfivenm_lcell_comb ix890_fadd(
// Equation(s):
// inc_d_3__dup_921 = (reg_q_3__dup_79_aq & (!nx42460z1)) # (!reg_q_3__dup_79_aq & ((nx42460z1) # (GND)))
// nx26886z1 = CARRY((!nx42460z1) # (!reg_q_3__dup_79_aq))

	.dataa(reg_q_3__dup_79_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42460z1),
	.combout(inc_d_3__dup_921),
	.cout(nx26886z1));
// synopsys translate_off
defparam ix890_fadd.lut_mask = 16'h5A5F;
defparam ix890_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N13
dffeas reg_q_3__dup_79(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_921),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_79_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_79.is_wysiwyg = "true";
defparam reg_q_3__dup_79.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N14
fiftyfivenm_lcell_comb ix892_fadd(
// Equation(s):
// inc_d_4__dup_923 = (reg_q_4__dup_78_aq & (nx26886z1 $ (GND))) # (!reg_q_4__dup_78_aq & (!nx26886z1 & VCC))
// nx11312z1 = CARRY((reg_q_4__dup_78_aq & !nx26886z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_78_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx26886z1),
	.combout(inc_d_4__dup_923),
	.cout(nx11312z1));
// synopsys translate_off
defparam ix892_fadd.lut_mask = 16'hC30C;
defparam ix892_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N15
dffeas reg_q_4__dup_78(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_923),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_78_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_78.is_wysiwyg = "true";
defparam reg_q_4__dup_78.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N16
fiftyfivenm_lcell_comb ix894_fadd(
// Equation(s):
// inc_d_5__dup_925 = (reg_q_5__dup_77_aq & (!nx11312z1)) # (!reg_q_5__dup_77_aq & ((nx11312z1) # (GND)))
// nx4262z1 = CARRY((!nx11312z1) # (!reg_q_5__dup_77_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_77_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11312z1),
	.combout(inc_d_5__dup_925),
	.cout(nx4262z1));
// synopsys translate_off
defparam ix894_fadd.lut_mask = 16'h3C3F;
defparam ix894_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N17
dffeas reg_q_5__dup_77(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_925),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_77_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_77.is_wysiwyg = "true";
defparam reg_q_5__dup_77.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N18
fiftyfivenm_lcell_comb ix896_fadd(
// Equation(s):
// inc_d_6__dup_927 = (reg_q_6__dup_76_aq & (nx4262z1 $ (GND))) # (!reg_q_6__dup_76_aq & (!nx4262z1 & VCC))
// nx19836z1 = CARRY((reg_q_6__dup_76_aq & !nx4262z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_76_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4262z1),
	.combout(inc_d_6__dup_927),
	.cout(nx19836z1));
// synopsys translate_off
defparam ix896_fadd.lut_mask = 16'hC30C;
defparam ix896_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N19
dffeas reg_q_6__dup_76(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_927),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_76_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_76.is_wysiwyg = "true";
defparam reg_q_6__dup_76.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N20
fiftyfivenm_lcell_comb ix898_fadd(
// Equation(s):
// inc_d_7__dup_929 = (reg_q_7__dup_75_aq & (!nx19836z1)) # (!reg_q_7__dup_75_aq & ((nx19836z1) # (GND)))
// nx31640z1 = CARRY((!nx19836z1) # (!reg_q_7__dup_75_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_75_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx19836z1),
	.combout(inc_d_7__dup_929),
	.cout(nx31640z1));
// synopsys translate_off
defparam ix898_fadd.lut_mask = 16'h3C3F;
defparam ix898_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N21
dffeas reg_q_7__dup_75(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_929),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_75_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_75.is_wysiwyg = "true";
defparam reg_q_7__dup_75.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N22
fiftyfivenm_lcell_comb ix900_fadd(
// Equation(s):
// inc_d_8__dup_931 = (reg_q_8__dup_74_aq & (nx31640z1 $ (GND))) # (!reg_q_8__dup_74_aq & (!nx31640z1 & VCC))
// nx47250z1 = CARRY((reg_q_8__dup_74_aq & !nx31640z1))

	.dataa(reg_q_8__dup_74_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31640z1),
	.combout(inc_d_8__dup_931),
	.cout(nx47250z1));
// synopsys translate_off
defparam ix900_fadd.lut_mask = 16'hA50A;
defparam ix900_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N23
dffeas reg_q_8__dup_74(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_931),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_74_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_74.is_wysiwyg = "true";
defparam reg_q_8__dup_74.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N24
fiftyfivenm_lcell_comb ix38_fadd(
// Equation(s):
// inc_d_9__dup_933 = (reg_q_9__dup_73_aq & (!nx47250z1)) # (!reg_q_9__dup_73_aq & ((nx47250z1) # (GND)))
// nx16066z1 = CARRY((!nx47250z1) # (!reg_q_9__dup_73_aq))

	.dataa(gnd),
	.datab(reg_q_9__dup_73_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47250z1),
	.combout(inc_d_9__dup_933),
	.cout(nx16066z1));
// synopsys translate_off
defparam ix38_fadd.lut_mask = 16'h3C3F;
defparam ix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N25
dffeas reg_q_9__dup_73(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_933),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_73_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_73.is_wysiwyg = "true";
defparam reg_q_9__dup_73.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N26
fiftyfivenm_lcell_comb ix902_fadd(
// Equation(s):
// inc_d_10__dup_935 = (reg_q_10__dup_72_aq & (nx16066z1 $ (GND))) # (!reg_q_10__dup_72_aq & (!nx16066z1 & VCC))
// nx8279z1 = CARRY((reg_q_10__dup_72_aq & !nx16066z1))

	.dataa(reg_q_10__dup_72_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16066z1),
	.combout(inc_d_10__dup_935),
	.cout(nx8279z1));
// synopsys translate_off
defparam ix902_fadd.lut_mask = 16'hA50A;
defparam ix902_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N27
dffeas reg_q_10__dup_72(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_935),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_72_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_72.is_wysiwyg = "true";
defparam reg_q_10__dup_72.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N2
fiftyfivenm_lcell_comb ix57349z7097(
// Equation(s):
// nx57349z3 = (!reg_q_10__dup_72_aq & !reg_q_9__dup_73_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_10__dup_72_aq),
	.datad(reg_q_9__dup_73_aq),
	.cin(gnd),
	.combout(nx57349z3),
	.cout());
// synopsys translate_off
defparam ix57349z7097.lut_mask = 16'h000F;
defparam ix57349z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N28
fiftyfivenm_lcell_comb ix903_fadd(
// Equation(s):
// inc_d_11_ = nx8279z1 $ (reg_q_11__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_11__aq),
	.cin(nx8279z1),
	.combout(inc_d_11_),
	.cout());
// synopsys translate_off
defparam ix903_fadd.lut_mask = 16'h0FF0;
defparam ix903_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X27_Y21_N29
dffeas reg_q_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_11_),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(nx57349z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_11_.is_wysiwyg = "true";
defparam reg_q_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N0
fiftyfivenm_lcell_comb ix57349z7096(
// Equation(s):
// nx57349z2 = (!reg_q_3__dup_79_aq & (!reg_q_11__aq & (!reg_q_1__dup_81_aq & !reg_q_2__dup_80_aq)))

	.dataa(reg_q_3__dup_79_aq),
	.datab(reg_q_11__aq),
	.datac(reg_q_1__dup_81_aq),
	.datad(reg_q_2__dup_80_aq),
	.cin(gnd),
	.combout(nx57349z2),
	.cout());
// synopsys translate_off
defparam ix57349z7096.lut_mask = 16'h0001;
defparam ix57349z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N26
fiftyfivenm_lcell_comb ix57349z7100(
// Equation(s):
// nx57349z6 = (!reg_q_7__dup_75_aq & (!u_uart_reg_RxDivisor_4__aq & (!reg_q_0__dup_82_aq & !reg_q_4__dup_78_aq)))

	.dataa(reg_q_7__dup_75_aq),
	.datab(u_uart_reg_RxDivisor_4__aq),
	.datac(reg_q_0__dup_82_aq),
	.datad(reg_q_4__dup_78_aq),
	.cin(gnd),
	.combout(nx57349z6),
	.cout());
// synopsys translate_off
defparam ix57349z7100.lut_mask = 16'h0001;
defparam ix57349z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y22_N0
fiftyfivenm_lcell_comb ix57349z7099(
// Equation(s):
// nx57349z5 = (reg_q_7__dup_75_aq & (u_uart_reg_RxDivisor_4__aq & (reg_q_0__dup_82_aq & reg_q_4__dup_78_aq)))

	.dataa(reg_q_7__dup_75_aq),
	.datab(u_uart_reg_RxDivisor_4__aq),
	.datac(reg_q_0__dup_82_aq),
	.datad(reg_q_4__dup_78_aq),
	.cin(gnd),
	.combout(nx57349z5),
	.cout());
// synopsys translate_off
defparam ix57349z7099.lut_mask = 16'h8000;
defparam ix57349z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N4
fiftyfivenm_lcell_comb ix57349z7098(
// Equation(s):
// nx57349z4 = (reg_q_8__dup_74_aq & (reg_q_5__dup_77_aq & ((nx57349z5)))) # (!reg_q_8__dup_74_aq & (!reg_q_5__dup_77_aq & (nx57349z6)))

	.dataa(reg_q_8__dup_74_aq),
	.datab(reg_q_5__dup_77_aq),
	.datac(nx57349z6),
	.datad(nx57349z5),
	.cin(gnd),
	.combout(nx57349z4),
	.cout());
// synopsys translate_off
defparam ix57349z7098.lut_mask = 16'h9810;
defparam ix57349z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N30
fiftyfivenm_lcell_comb ix57349z7095(
// Equation(s):
// nx57349z1 = (nx57349z3 & (nx57349z2 & (nx57349z4 & !reg_q_6__dup_76_aq)))

	.dataa(nx57349z3),
	.datab(nx57349z2),
	.datac(nx57349z4),
	.datad(reg_q_6__dup_76_aq),
	.cin(gnd),
	.combout(nx57349z1),
	.cout());
// synopsys translate_off
defparam ix57349z7095.lut_mask = 16'h0080;
defparam ix57349z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y21_N31
dffeas u_uart_reg_TopTx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57349z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TopTx_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TopTx.is_wysiwyg = "true";
defparam u_uart_reg_TopTx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N22
fiftyfivenm_lcell_comb ix61431z7096(
// Equation(s):
// nx61431z2 = (!u_uart_reg_TxFSM_1__aq & u_uart_reg_TopTx_aq)

	.dataa(gnd),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx61431z2),
	.cout());
// synopsys translate_off
defparam ix61431z7096.lut_mask = 16'h3300;
defparam ix61431z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N24
fiftyfivenm_lcell_comb ix59437z7095(
// Equation(s):
// nx59437z1 = ((!u_uart_reg_TxFSM_1__aq & u_uart_reg_TopTx_aq)) # (!u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(gnd),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx59437z1),
	.cout());
// synopsys translate_off
defparam ix59437z7095.lut_mask = 16'h3F0F;
defparam ix59437z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N26
fiftyfivenm_lcell_comb ix59437z7096(
// Equation(s):
// nx59437z2 = (u_uart_reg_TopTx_aq & (u_uart_reg_TxFSM_0__aq $ (u_uart_reg_TxFSM_1__aq)))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx59437z2),
	.cout());
// synopsys translate_off
defparam ix59437z7096.lut_mask = 16'h6600;
defparam ix59437z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N25
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59437z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N28
fiftyfivenm_lcell_comb ix60434z7095(
// Equation(s):
// nx60434z1 = (u_uart_reg_TxFSM_1__aq & (u_uart_modgen_counter_TxBitCnt_reg_q_0__aq $ ((!u_uart_modgen_counter_TxBitCnt_reg_q_1__aq)))) # (!u_uart_reg_TxFSM_1__aq & (!u_uart_reg_TopTx_aq & (u_uart_modgen_counter_TxBitCnt_reg_q_0__aq $ 
// (!u_uart_modgen_counter_TxBitCnt_reg_q_1__aq))))

	.dataa(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx60434z1),
	.cout());
// synopsys translate_off
defparam ix60434z7095.lut_mask = 16'h84A5;
defparam ix60434z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N29
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60434z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N8
fiftyfivenm_lcell_comb ix61431z7095(
// Equation(s):
// nx61431z1 = (!nx61431z2 & (u_uart_modgen_counter_TxBitCnt_reg_q_2__aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_1__aq & !u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)))))

	.dataa(nx61431z2),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx61431z1),
	.cout());
// synopsys translate_off
defparam ix61431z7095.lut_mask = 16'h5041;
defparam ix61431z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N9
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61431z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N2
fiftyfivenm_lcell_comb ix62428z7096(
// Equation(s):
// nx62428z2 = (u_uart_modgen_counter_TxBitCnt_reg_q_1__aq) # (u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(gnd),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datac(gnd),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx62428z2),
	.cout());
// synopsys translate_off
defparam ix62428z7096.lut_mask = 16'hFFCC;
defparam ix62428z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N12
fiftyfivenm_lcell_comb ix62428z7095(
// Equation(s):
// nx62428z1 = (nx61431z2) # (u_uart_modgen_counter_TxBitCnt_reg_q_3__aq $ (((!u_uart_modgen_counter_TxBitCnt_reg_q_2__aq & !nx62428z2))))

	.dataa(nx61431z2),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datad(nx62428z2),
	.cin(gnd),
	.combout(nx62428z1),
	.cout());
// synopsys translate_off
defparam ix62428z7095.lut_mask = 16'hFAEB;
defparam ix62428z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N13
dffeas u_uart_modgen_counter_TxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62428z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59437z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_modgen_counter_TxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam u_uart_modgen_counter_TxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N6
fiftyfivenm_lcell_comb ix8356z7097(
// Equation(s):
// nx8356z3 = (!u_uart_modgen_counter_TxBitCnt_reg_q_3__aq & (!u_uart_modgen_counter_TxBitCnt_reg_q_1__aq & (!u_uart_modgen_counter_TxBitCnt_reg_q_2__aq & u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)))

	.dataa(u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datab(u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datac(u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datad(u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.cin(gnd),
	.combout(nx8356z3),
	.cout());
// synopsys translate_off
defparam ix8356z7097.lut_mask = 16'h0100;
defparam ix8356z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N16
fiftyfivenm_lcell_comb ix8356z7096(
// Equation(s):
// nx8356z2 = (u_uart_reg_TxFSM_1__aq & (((!u_uart_reg_TxFSM_0__aq & !nx8356z3)) # (!u_uart_reg_TopTx_aq)))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(nx8356z3),
	.datad(u_uart_reg_TopTx_aq),
	.cin(gnd),
	.combout(nx8356z2),
	.cout());
// synopsys translate_off
defparam ix8356z7096.lut_mask = 16'h04CC;
defparam ix8356z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N20
fiftyfivenm_lcell_comb ix8356z7095(
// Equation(s):
// nx8356z1 = (nx8356z2) # ((u_uart_reg_TxFSM_0__aq & (nx7359z2 $ (!u_uart_reg_TxFSM_1__aq))) # (!u_uart_reg_TxFSM_0__aq & (!nx7359z2 & u_uart_reg_TxFSM_1__aq)))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(nx7359z2),
	.datac(u_uart_reg_TxFSM_1__aq),
	.datad(nx8356z2),
	.cin(gnd),
	.combout(nx8356z1),
	.cout());
// synopsys translate_off
defparam ix8356z7095.lut_mask = 16'hFF92;
defparam ix8356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N21
dffeas u_uart_reg_TxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8356z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxFSM_1_.is_wysiwyg = "true";
defparam u_uart_reg_TxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N2
fiftyfivenm_lcell_comb ix4094z7095(
// Equation(s):
// nx4094z1 = (nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3__aq))

	.dataa(gnd),
	.datab(nx4094z2),
	.datac(nx16758z7),
	.datad(u_kirsch_reg_stg_counter1_3__aq),
	.cin(gnd),
	.combout(nx4094z1),
	.cout());
// synopsys translate_off
defparam ix4094z7095.lut_mask = 16'hCCFC;
defparam ix4094z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N24
fiftyfivenm_lcell_comb u_kirsch_reg_o_valid_afeeder(
// Equation(s):
// u_kirsch_reg_o_valid_afeeder_combout = nx4094z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx4094z1),
	.cin(gnd),
	.combout(u_kirsch_reg_o_valid_afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_o_valid_afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_o_valid_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y18_N25
dffeas u_kirsch_reg_o_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_o_valid_afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_valid.is_wysiwyg = "true";
defparam u_kirsch_reg_o_valid.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N0
fiftyfivenm_lcell_comb ix11963z7096(
// Equation(s):
// rb_i_valid = (pb_a0_a_ainput_o & ((u_kirsch_reg_o_valid_aq))) # (!pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(gnd),
	.datac(pb_a0_a_ainput_o),
	.datad(u_kirsch_reg_o_valid_aq),
	.cin(gnd),
	.combout(rb_i_valid),
	.cout());
// synopsys translate_off
defparam ix11963z7096.lut_mask = 16'hFA0A;
defparam ix11963z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N30
fiftyfivenm_lcell_comb ix13251z7095(
// Equation(s):
// nx13251z1 = ((u_uart_reg_TxFSM_1__aq) # (u_uart_reg_TxFSM_0__aq)) # (!reg_tx_valid_aq)

	.dataa(reg_tx_valid_aq),
	.datab(u_uart_reg_TxFSM_1__aq),
	.datac(gnd),
	.datad(u_uart_reg_TxFSM_0__aq),
	.cin(gnd),
	.combout(nx13251z1),
	.cout());
// synopsys translate_off
defparam ix13251z7095.lut_mask = 16'hFFDD;
defparam ix13251z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N31
dffeas u_uart_reg_TxBusy(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13251z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxBusy_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxBusy.is_wysiwyg = "true";
defparam u_uart_reg_TxBusy.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N6
fiftyfivenm_lcell_comb reg_tx_busy_delayed_afeeder(
// Equation(s):
// reg_tx_busy_delayed_afeeder_combout = u_uart_reg_TxBusy_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_TxBusy_aq),
	.cin(gnd),
	.combout(reg_tx_busy_delayed_afeeder_combout),
	.cout());
// synopsys translate_off
defparam reg_tx_busy_delayed_afeeder.lut_mask = 16'hFF00;
defparam reg_tx_busy_delayed_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N7
dffeas reg_tx_busy_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_tx_busy_delayed_afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_tx_busy_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_tx_busy_delayed.is_wysiwyg = "true";
defparam reg_tx_busy_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N30
fiftyfivenm_lcell_comb reg_q_0__dup_49_a_wirecell(
// Equation(s):
// reg_q_0__dup_49_a_wirecell_combout = !reg_q_0__dup_49_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_0__dup_49_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(reg_q_0__dup_49_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_q_0__dup_49_a_wirecell.lut_mask = 16'h0F0F;
defparam reg_q_0__dup_49_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N8
fiftyfivenm_lcell_comb ix9182z7095(
// Equation(s):
// nx9182z1 = (!reg_wait_for_tx_valid_delayed_aq & (reg_rb_rd_en_aq & (!rb_empty & !rb_i_valid)))

	.dataa(reg_wait_for_tx_valid_delayed_aq),
	.datab(reg_rb_rd_en_aq),
	.datac(rb_empty),
	.datad(rb_i_valid),
	.cin(gnd),
	.combout(nx9182z1),
	.cout());
// synopsys translate_off
defparam ix9182z7095.lut_mask = 16'h0004;
defparam ix9182z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N0
fiftyfivenm_lcell_comb ix5_fadd(
// Equation(s):
// nx58387z1 = CARRY(reg_q_0__dup_49_aq)

	.dataa(reg_q_0__dup_49_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx58387z1));
// synopsys translate_off
defparam ix5_fadd.lut_mask = 16'h00AA;
defparam ix5_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N2
fiftyfivenm_lcell_comb ix758_fadd(
// Equation(s):
// incdec_mux_1_dup_114_dup_779 = (nx9182z1 & ((reg_q_1__dup_48_aq & (nx58387z1 & VCC)) # (!reg_q_1__dup_48_aq & (!nx58387z1)))) # (!nx9182z1 & ((reg_q_1__dup_48_aq & (!nx58387z1)) # (!reg_q_1__dup_48_aq & ((nx58387z1) # (GND)))))
// nx24756z1 = CARRY((nx9182z1 & (!reg_q_1__dup_48_aq & !nx58387z1)) # (!nx9182z1 & ((!nx58387z1) # (!reg_q_1__dup_48_aq))))

	.dataa(nx9182z1),
	.datab(reg_q_1__dup_48_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58387z1),
	.combout(incdec_mux_1_dup_114_dup_779),
	.cout(nx24756z1));
// synopsys translate_off
defparam ix758_fadd.lut_mask = 16'h9617;
defparam ix758_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N3
dffeas reg_q_1__dup_48(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_1_dup_114_dup_779),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_48_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_48.is_wysiwyg = "true";
defparam reg_q_1__dup_48.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N4
fiftyfivenm_lcell_comb ix760_fadd(
// Equation(s):
// incdec_mux_2_dup_115_dup_781 = ((nx9182z1 $ (reg_q_2__dup_47_aq $ (!nx24756z1)))) # (GND)
// nx9182z2 = CARRY((nx9182z1 & ((reg_q_2__dup_47_aq) # (!nx24756z1))) # (!nx9182z1 & (reg_q_2__dup_47_aq & !nx24756z1)))

	.dataa(nx9182z1),
	.datab(reg_q_2__dup_47_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx24756z1),
	.combout(incdec_mux_2_dup_115_dup_781),
	.cout(nx9182z2));
// synopsys translate_off
defparam ix760_fadd.lut_mask = 16'h698E;
defparam ix760_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N5
dffeas reg_q_2__dup_47(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_2_dup_115_dup_781),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_47_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_47.is_wysiwyg = "true";
defparam reg_q_2__dup_47.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N6
fiftyfivenm_lcell_comb ix762_fadd(
// Equation(s):
// incdec_mux_3_dup_116_dup_783 = (nx9182z1 & ((reg_q_3__dup_46_aq & (nx9182z2 & VCC)) # (!reg_q_3__dup_46_aq & (!nx9182z2)))) # (!nx9182z1 & ((reg_q_3__dup_46_aq & (!nx9182z2)) # (!reg_q_3__dup_46_aq & ((nx9182z2) # (GND)))))
// nx59144z1 = CARRY((nx9182z1 & (!reg_q_3__dup_46_aq & !nx9182z2)) # (!nx9182z1 & ((!nx9182z2) # (!reg_q_3__dup_46_aq))))

	.dataa(nx9182z1),
	.datab(reg_q_3__dup_46_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9182z2),
	.combout(incdec_mux_3_dup_116_dup_783),
	.cout(nx59144z1));
// synopsys translate_off
defparam ix762_fadd.lut_mask = 16'h9617;
defparam ix762_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N7
dffeas reg_q_3__dup_46(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_3_dup_116_dup_783),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_46_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_46.is_wysiwyg = "true";
defparam reg_q_3__dup_46.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N8
fiftyfivenm_lcell_comb ix764_fadd(
// Equation(s):
// incdec_mux_4_dup_117_dup_785 = ((nx9182z1 $ (reg_q_4__dup_45_aq $ (!nx59144z1)))) # (GND)
// nx21966z1 = CARRY((nx9182z1 & ((reg_q_4__dup_45_aq) # (!nx59144z1))) # (!nx9182z1 & (reg_q_4__dup_45_aq & !nx59144z1)))

	.dataa(nx9182z1),
	.datab(reg_q_4__dup_45_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59144z1),
	.combout(incdec_mux_4_dup_117_dup_785),
	.cout(nx21966z1));
// synopsys translate_off
defparam ix764_fadd.lut_mask = 16'h698E;
defparam ix764_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N9
dffeas reg_q_4__dup_45(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_4_dup_117_dup_785),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_45_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_45.is_wysiwyg = "true";
defparam reg_q_4__dup_45.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N10
fiftyfivenm_lcell_comb ix766_fadd(
// Equation(s):
// incdec_mux_5_dup_118_dup_787 = (nx9182z1 & ((reg_q_5__dup_44_aq & (nx21966z1 & VCC)) # (!reg_q_5__dup_44_aq & (!nx21966z1)))) # (!nx9182z1 & ((reg_q_5__dup_44_aq & (!nx21966z1)) # (!reg_q_5__dup_44_aq & ((nx21966z1) # (GND)))))
// nx37540z1 = CARRY((nx9182z1 & (!reg_q_5__dup_44_aq & !nx21966z1)) # (!nx9182z1 & ((!nx21966z1) # (!reg_q_5__dup_44_aq))))

	.dataa(nx9182z1),
	.datab(reg_q_5__dup_44_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21966z1),
	.combout(incdec_mux_5_dup_118_dup_787),
	.cout(nx37540z1));
// synopsys translate_off
defparam ix766_fadd.lut_mask = 16'h9617;
defparam ix766_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N11
dffeas reg_q_5__dup_44(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_5_dup_118_dup_787),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_44_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_44.is_wysiwyg = "true";
defparam reg_q_5__dup_44.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N12
fiftyfivenm_lcell_comb ix768_fadd(
// Equation(s):
// incdec_mux_6_dup_119_dup_789 = ((reg_q_6__dup_43_aq $ (nx9182z1 $ (!nx37540z1)))) # (GND)
// nx5635z1 = CARRY((reg_q_6__dup_43_aq & ((nx9182z1) # (!nx37540z1))) # (!reg_q_6__dup_43_aq & (nx9182z1 & !nx37540z1)))

	.dataa(reg_q_6__dup_43_aq),
	.datab(nx9182z1),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37540z1),
	.combout(incdec_mux_6_dup_119_dup_789),
	.cout(nx5635z1));
// synopsys translate_off
defparam ix768_fadd.lut_mask = 16'h698E;
defparam ix768_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N13
dffeas reg_q_6__dup_43(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_6_dup_119_dup_789),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_43_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_43.is_wysiwyg = "true";
defparam reg_q_6__dup_43.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N14
fiftyfivenm_lcell_comb ix770_fadd(
// Equation(s):
// incdec_mux_7_dup_120_dup_791 = (nx9182z1 & ((reg_q_7__dup_42_aq & (nx5635z1 & VCC)) # (!reg_q_7__dup_42_aq & (!nx5635z1)))) # (!nx9182z1 & ((reg_q_7__dup_42_aq & (!nx5635z1)) # (!reg_q_7__dup_42_aq & ((nx5635z1) # (GND)))))
// nx52114z1 = CARRY((nx9182z1 & (!reg_q_7__dup_42_aq & !nx5635z1)) # (!nx9182z1 & ((!nx5635z1) # (!reg_q_7__dup_42_aq))))

	.dataa(nx9182z1),
	.datab(reg_q_7__dup_42_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx5635z1),
	.combout(incdec_mux_7_dup_120_dup_791),
	.cout(nx52114z1));
// synopsys translate_off
defparam ix770_fadd.lut_mask = 16'h9617;
defparam ix770_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N15
dffeas reg_q_7__dup_42(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_7_dup_120_dup_791),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_42_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_42.is_wysiwyg = "true";
defparam reg_q_7__dup_42.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N16
fiftyfivenm_lcell_comb ix771_fadd(
// Equation(s):
// incdec_mux_8_dup_121_dup_793 = nx9182z1 $ (nx52114z1 $ (!reg_q_8__dup_41_aq))

	.dataa(nx9182z1),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_8__dup_41_aq),
	.cin(nx52114z1),
	.combout(incdec_mux_8_dup_121_dup_793),
	.cout());
// synopsys translate_off
defparam ix771_fadd.lut_mask = 16'h5AA5;
defparam ix771_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y12_N17
dffeas reg_q_8__dup_41(
	.clk(clk_ainputclkctrl_outclk),
	.d(incdec_mux_8_dup_121_dup_793),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_41_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_41.is_wysiwyg = "true";
defparam reg_q_8__dup_41.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N18
fiftyfivenm_lcell_comb ix15004z7098(
// Equation(s):
// nx15004z3 = (!reg_q_6__dup_43_aq & (!reg_q_5__dup_44_aq & (!reg_q_4__dup_45_aq & !reg_q_3__dup_46_aq)))

	.dataa(reg_q_6__dup_43_aq),
	.datab(reg_q_5__dup_44_aq),
	.datac(reg_q_4__dup_45_aq),
	.datad(reg_q_3__dup_46_aq),
	.cin(gnd),
	.combout(nx15004z3),
	.cout());
// synopsys translate_off
defparam ix15004z7098.lut_mask = 16'h0001;
defparam ix15004z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N20
fiftyfivenm_lcell_comb ix15004z7097(
// Equation(s):
// nx15004z2 = (!reg_q_1__dup_48_aq & (!reg_q_2__dup_47_aq & nx15004z3))

	.dataa(gnd),
	.datab(reg_q_1__dup_48_aq),
	.datac(reg_q_2__dup_47_aq),
	.datad(nx15004z3),
	.cin(gnd),
	.combout(nx15004z2),
	.cout());
// synopsys translate_off
defparam ix15004z7097.lut_mask = 16'h0300;
defparam ix15004z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N26
fiftyfivenm_lcell_comb ix383z7096(
// Equation(s):
// nx383z2 = (reg_q_0__dup_49_aq) # (((reg_q_7__dup_42_aq) # (!nx15004z2)) # (!reg_q_8__dup_41_aq))

	.dataa(reg_q_0__dup_49_aq),
	.datab(reg_q_8__dup_41_aq),
	.datac(reg_q_7__dup_42_aq),
	.datad(nx15004z2),
	.cin(gnd),
	.combout(nx383z2),
	.cout());
// synopsys translate_off
defparam ix383z7096.lut_mask = 16'hFBFF;
defparam ix383z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N28
fiftyfivenm_lcell_comb ix383z7095(
// Equation(s):
// nx383z1 = ((nx9182z1) # ((nx383z2 & rb_i_valid))) # (!reset_n_ainput_o)

	.dataa(nx383z2),
	.datab(reset_n_ainput_o),
	.datac(nx9182z1),
	.datad(rb_i_valid),
	.cin(gnd),
	.combout(nx383z1),
	.cout());
// synopsys translate_off
defparam ix383z7095.lut_mask = 16'hFBF3;
defparam ix383z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y12_N31
dffeas reg_q_0__dup_49(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_q_0__dup_49_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx383z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_49_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_49.is_wysiwyg = "true";
defparam reg_q_0__dup_49.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y12_N24
fiftyfivenm_lcell_comb ix15004z7096(
// Equation(s):
// rb_empty = (!reg_q_0__dup_49_aq & (!reg_q_8__dup_41_aq & (!reg_q_7__dup_42_aq & nx15004z2)))

	.dataa(reg_q_0__dup_49_aq),
	.datab(reg_q_8__dup_41_aq),
	.datac(reg_q_7__dup_42_aq),
	.datad(nx15004z2),
	.cin(gnd),
	.combout(rb_empty),
	.cout());
// synopsys translate_off
defparam ix15004z7096.lut_mask = 16'h0100;
defparam ix15004z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N2
fiftyfivenm_lcell_comb ix15004z7095(
// Equation(s):
// nx15004z1 = (!reg_tx_busy_delayed_aq & (!rb_empty & (!reg_rb_rd_en_aq & !u_uart_reg_TxBusy_aq)))

	.dataa(reg_tx_busy_delayed_aq),
	.datab(rb_empty),
	.datac(reg_rb_rd_en_aq),
	.datad(u_uart_reg_TxBusy_aq),
	.cin(gnd),
	.combout(nx15004z1),
	.cout());
// synopsys translate_off
defparam ix15004z7095.lut_mask = 16'h0001;
defparam ix15004z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N3
dffeas reg_rb_rd_en(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15004z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_rb_rd_en_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_rb_rd_en.is_wysiwyg = "true";
defparam reg_rb_rd_en.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N10
fiftyfivenm_lcell_comb ix64502z7096(
// Equation(s):
// nx64502z2 = (reg_tx_valid_aq & reg_wait_for_tx_valid_aq)

	.dataa(gnd),
	.datab(reg_tx_valid_aq),
	.datac(reg_wait_for_tx_valid_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64502z2),
	.cout());
// synopsys translate_off
defparam ix64502z7096.lut_mask = 16'hC0C0;
defparam ix64502z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N30
fiftyfivenm_lcell_comb ix64502z7095(
// Equation(s):
// nx64502z1 = (nx64502z2) # ((!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq)))

	.dataa(reg_wait_for_tx_valid_delayed_aq),
	.datab(rb_i_valid),
	.datac(reg_rb_rd_en_aq),
	.datad(nx64502z2),
	.cin(gnd),
	.combout(nx64502z1),
	.cout());
// synopsys translate_off
defparam ix64502z7095.lut_mask = 16'hFF10;
defparam ix64502z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N31
dffeas reg_wait_for_tx_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64502z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_wait_for_tx_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_wait_for_tx_valid.is_wysiwyg = "true";
defparam reg_wait_for_tx_valid.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y16_N9
dffeas reg_wait_for_tx_valid_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(reg_wait_for_tx_valid_aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_wait_for_tx_valid_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_wait_for_tx_valid_delayed.is_wysiwyg = "true";
defparam reg_wait_for_tx_valid_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N12
fiftyfivenm_lcell_comb ix11963z7095(
// Equation(s):
// rb_rd_en_true = (!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq))

	.dataa(reg_wait_for_tx_valid_delayed_aq),
	.datab(rb_i_valid),
	.datac(reg_rb_rd_en_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(rb_rd_en_true),
	.cout());
// synopsys translate_off
defparam ix11963z7095.lut_mask = 16'h1010;
defparam ix11963z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N13
dffeas reg_rb_rd_en_delayed(
	.clk(clk_ainputclkctrl_outclk),
	.d(rb_rd_en_true),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_rb_rd_en_delayed_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_rb_rd_en_delayed.is_wysiwyg = "true";
defparam reg_rb_rd_en_delayed.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N8
fiftyfivenm_lcell_comb reg_rb_rd_en_delayed_a_wirecell(
// Equation(s):
// reg_rb_rd_en_delayed_a_wirecell_combout = !reg_rb_rd_en_delayed_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_rb_rd_en_delayed_aq),
	.cin(gnd),
	.combout(reg_rb_rd_en_delayed_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam reg_rb_rd_en_delayed_a_wirecell.lut_mask = 16'h00FF;
defparam reg_rb_rd_en_delayed_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N9
dffeas reg_tx_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(reg_rb_rd_en_delayed_a_wirecell_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_tx_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_tx_valid.is_wysiwyg = "true";
defparam reg_tx_valid.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N4
fiftyfivenm_lcell_comb ix7359z7096(
// Equation(s):
// nx7359z2 = (!u_uart_reg_TxFSM_1__aq & ((u_uart_reg_TxFSM_0__aq & (!u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_0__aq & ((reg_tx_valid_aq)))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TopTx_aq),
	.datac(u_uart_reg_TxFSM_1__aq),
	.datad(reg_tx_valid_aq),
	.cin(gnd),
	.combout(nx7359z2),
	.cout());
// synopsys translate_off
defparam ix7359z7096.lut_mask = 16'h0702;
defparam ix7359z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N10
fiftyfivenm_lcell_comb ix7359z7095(
// Equation(s):
// nx7359z1 = u_uart_reg_TxFSM_0__aq $ (((!nx7359z2 & !nx8356z2)))

	.dataa(gnd),
	.datab(nx7359z2),
	.datac(u_uart_reg_TxFSM_0__aq),
	.datad(nx8356z2),
	.cin(gnd),
	.combout(nx7359z1),
	.cout());
// synopsys translate_off
defparam ix7359z7095.lut_mask = 16'hF0C3;
defparam ix7359z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y21_N11
dffeas u_uart_reg_TxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx7359z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_TxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_TxFSM_0_.is_wysiwyg = "true";
defparam u_uart_reg_TxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N24
fiftyfivenm_lcell_comb ix29221z7103(
// Equation(s):
// nx29221z10 = (!u_kirsch_reg_stg_counter2_3__aq & ((u_kirsch_reg_stg_counter2_1__aq & (!u_kirsch_reg_stg_counter2_2__aq & u_kirsch_reg_stg_counter2_0__aq)) # (!u_kirsch_reg_stg_counter2_1__aq & (u_kirsch_reg_stg_counter2_2__aq))))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx29221z10),
	.cout());
// synopsys translate_off
defparam ix29221z7103.lut_mask = 16'h1410;
defparam ix29221z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N20
fiftyfivenm_lcell_comb ix29221z7102(
// Equation(s):
// nx29221z9 = (!u_kirsch_reg_stg_counter1_3__aq & ((u_kirsch_reg_stg_counter1_0__aq) # ((!u_kirsch_reg_stg_counter1_1__aq) # (!u_kirsch_reg_stg_counter1_2__aq))))

	.dataa(u_kirsch_reg_stg_counter1_0__aq),
	.datab(u_kirsch_reg_stg_counter1_3__aq),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx29221z9),
	.cout());
// synopsys translate_off
defparam ix29221z7102.lut_mask = 16'h2333;
defparam ix29221z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N30
fiftyfivenm_lcell_comb ix29221z7101(
// Equation(s):
// nx29221z8 = (reset_n_ainput_o & ((nx29221z10) # ((nx57197z2 & nx29221z9))))

	.dataa(nx29221z10),
	.datab(reset_n_ainput_o),
	.datac(nx57197z2),
	.datad(nx29221z9),
	.cin(gnd),
	.combout(nx29221z8),
	.cout());
// synopsys translate_off
defparam ix29221z7101.lut_mask = 16'hC888;
defparam ix29221z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N4
fiftyfivenm_lcell_comb ix45738z7095(
// Equation(s):
// nx45738z1 = (nx29221z8 & (((!u_kirsch_reg_max1_bit_counter_1__aq & u_kirsch_reg_max1_bit_counter_0__aq)))) # (!nx29221z8 & (reset_n_ainput_o & (u_kirsch_reg_max1_bit_counter_1__aq)))

	.dataa(reset_n_ainput_o),
	.datab(nx29221z8),
	.datac(u_kirsch_reg_max1_bit_counter_1__aq),
	.datad(u_kirsch_reg_max1_bit_counter_0__aq),
	.cin(gnd),
	.combout(nx45738z1),
	.cout());
// synopsys translate_off
defparam ix45738z7095.lut_mask = 16'h2C20;
defparam ix45738z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N5
dffeas u_kirsch_reg_max1_bit_counter_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx45738z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_max1_bit_counter_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_max1_bit_counter_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_max1_bit_counter_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N10
fiftyfivenm_lcell_comb ix46735z7095(
// Equation(s):
// nx46735z1 = (u_kirsch_reg_max1_bit_counter_0__aq & (reset_n_ainput_o & ((!nx29221z8)))) # (!u_kirsch_reg_max1_bit_counter_0__aq & (((!u_kirsch_reg_max1_bit_counter_1__aq & nx29221z8))))

	.dataa(reset_n_ainput_o),
	.datab(u_kirsch_reg_max1_bit_counter_1__aq),
	.datac(u_kirsch_reg_max1_bit_counter_0__aq),
	.datad(nx29221z8),
	.cin(gnd),
	.combout(nx46735z1),
	.cout());
// synopsys translate_off
defparam ix46735z7095.lut_mask = 16'h03A0;
defparam ix46735z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N11
dffeas u_kirsch_reg_max1_bit_counter_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46735z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_max1_bit_counter_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_max1_bit_counter_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_max1_bit_counter_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N12
fiftyfivenm_lcell_comb ix58492z7096(
// Equation(s):
// nx58492z2 = (u_kirsch_reg_max1_bit_counter_0__aq) # ((!nx29221z8) # (!u_kirsch_reg_max1_bit_counter_1__aq))

	.dataa(u_kirsch_reg_max1_bit_counter_0__aq),
	.datab(u_kirsch_reg_max1_bit_counter_1__aq),
	.datac(gnd),
	.datad(nx29221z8),
	.cin(gnd),
	.combout(nx58492z2),
	.cout());
// synopsys translate_off
defparam ix58492z7096.lut_mask = 16'hBBFF;
defparam ix58492z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N30
fiftyfivenm_lcell_comb ix26412z7098(
// Equation(s):
// nx26412z4 = (!u_kirsch_reg_stg_counter2_2__aq & (!u_kirsch_reg_stg_counter2_3__aq & !u_kirsch_reg_stg_counter2_1__aq))

	.dataa(u_kirsch_reg_stg_counter2_2__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter2_3__aq),
	.datad(u_kirsch_reg_stg_counter2_1__aq),
	.cin(gnd),
	.combout(nx26412z4),
	.cout());
// synopsys translate_off
defparam ix26412z7098.lut_mask = 16'h0005;
defparam ix26412z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N12
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_7__a0(
// Equation(s):
// u_uart_reg_Rx_Reg_7__a0_combout = !u_uart_reg_Rx_r_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_r_aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_7__a0_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_7__a0.lut_mask = 16'h00FF;
defparam u_uart_reg_Rx_Reg_7__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N16
fiftyfivenm_lcell_comb ix44871z7096(
// Equation(s):
// nx44871z1 = (u_uart_reg_TopRx_aq & u_uart_reg_RxFSM_3__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_uart_reg_TopRx_aq),
	.datad(u_uart_reg_RxFSM_3__aq),
	.cin(gnd),
	.combout(nx44871z1),
	.cout());
// synopsys translate_off
defparam ix44871z7096.lut_mask = 16'hF000;
defparam ix44871z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N13
dffeas u_uart_reg_Rx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_7__a0_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_7_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N14
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_6__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_6__afeeder_combout = u_uart_reg_Rx_Reg_7__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_7__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_6__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N15
dffeas u_uart_reg_Rx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_6__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_6_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N19
dffeas u_uart_reg_Rx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_6__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_5_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N2
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_4__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_4__afeeder_combout = u_uart_reg_Rx_Reg_5__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_5__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_4__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N3
dffeas u_uart_reg_Rx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_4__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_4_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N30
fiftyfivenm_lcell_comb u_uart_reg_Rx_Reg_3__afeeder(
// Equation(s):
// u_uart_reg_Rx_Reg_3__afeeder_combout = u_uart_reg_Rx_Reg_4__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_4__aq),
	.cin(gnd),
	.combout(u_uart_reg_Rx_Reg_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_3__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Rx_Reg_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N31
dffeas u_uart_reg_Rx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Rx_Reg_3__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_3_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N27
dffeas u_uart_reg_Rx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_2_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N23
dffeas u_uart_reg_Rx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_1_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N11
dffeas u_uart_reg_Rx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_1__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx44871z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Rx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Rx_Reg_0_.is_wysiwyg = "true";
defparam u_uart_reg_Rx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N16
fiftyfivenm_lcell_comb u_uart_reg_Dout_0__afeeder(
// Equation(s):
// u_uart_reg_Dout_0__afeeder_combout = u_uart_reg_Rx_Reg_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_0__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_0__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N17
dffeas u_uart_reg_Dout_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_0__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_0_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N0
fiftyfivenm_lcell_comb ix619_fadd(
// Equation(s):
// inc_d_0__dup_638 = reg_q_0__dup_15_aq $ (VCC)
// nx35880z1 = CARRY(reg_q_0__dup_15_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_15_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_638),
	.cout(nx35880z1));
// synopsys translate_off
defparam ix619_fadd.lut_mask = 16'h33CC;
defparam ix619_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N22
fiftyfivenm_lcell_comb ix58143z7095(
// Equation(s):
// nx58143z1 = (nx7605z1) # (!reset_n_ainput_o)

	.dataa(nx7605z1),
	.datab(gnd),
	.datac(reset_n_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(nx58143z1),
	.cout());
// synopsys translate_off
defparam ix58143z7095.lut_mask = 16'hAFAF;
defparam ix58143z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y19_N1
dffeas reg_q_0__dup_15(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_638),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_15_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_15.is_wysiwyg = "true";
defparam reg_q_0__dup_15.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N14
fiftyfivenm_lcell_comb ix584_fadd(
// Equation(s):
// inc_d_0__dup_602 = reg_q_0__dup_7_aq $ (VCC)
// nx38358z1 = CARRY(reg_q_0__dup_7_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_7_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_602),
	.cout(nx38358z1));
// synopsys translate_off
defparam ix584_fadd.lut_mask = 16'h33CC;
defparam ix584_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N4
fiftyfivenm_lcell_comb ix58151z7095(
// Equation(s):
// nx58151z1 = (u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

	.dataa(reset_n_ainput_o),
	.datab(gnd),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx58151z1),
	.cout());
// synopsys translate_off
defparam ix58151z7095.lut_mask = 16'hF5F5;
defparam ix58151z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y20_N15
dffeas reg_q_0__dup_7(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_602),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_7_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_7.is_wysiwyg = "true";
defparam reg_q_0__dup_7.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N24
fiftyfivenm_lcell_comb ix49438z7102(
// Equation(s):
// write_fifo_pointer[0] = (u_uart_reg_RxRDYi_aq & ((reg_q_0__dup_7_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_0__dup_15_aq))

	.dataa(gnd),
	.datab(reg_q_0__dup_15_aq),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(reg_q_0__dup_7_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[0]),
	.cout());
// synopsys translate_off
defparam ix49438z7102.lut_mask = 16'hFC0C;
defparam ix49438z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N2
fiftyfivenm_lcell_comb ix621_fadd(
// Equation(s):
// inc_d_1__dup_640 = (reg_q_1__dup_14_aq & (!nx35880z1)) # (!reg_q_1__dup_14_aq & ((nx35880z1) # (GND)))
// nx51454z1 = CARRY((!nx35880z1) # (!reg_q_1__dup_14_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_14_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx35880z1),
	.combout(inc_d_1__dup_640),
	.cout(nx51454z1));
// synopsys translate_off
defparam ix621_fadd.lut_mask = 16'h3C3F;
defparam ix621_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N3
dffeas reg_q_1__dup_14(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_640),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_14_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_14.is_wysiwyg = "true";
defparam reg_q_1__dup_14.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N16
fiftyfivenm_lcell_comb ix586_fadd(
// Equation(s):
// inc_d_1__dup_604 = (reg_q_1__dup_6_aq & (!nx38358z1)) # (!reg_q_1__dup_6_aq & ((nx38358z1) # (GND)))
// nx53932z1 = CARRY((!nx38358z1) # (!reg_q_1__dup_6_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_6_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38358z1),
	.combout(inc_d_1__dup_604),
	.cout(nx53932z1));
// synopsys translate_off
defparam ix586_fadd.lut_mask = 16'h3C3F;
defparam ix586_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N17
dffeas reg_q_1__dup_6(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_604),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_6_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_6.is_wysiwyg = "true";
defparam reg_q_1__dup_6.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N18
fiftyfivenm_lcell_comb ix49438z7101(
// Equation(s):
// write_fifo_pointer[1] = (u_uart_reg_RxRDYi_aq & ((reg_q_1__dup_6_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_1__dup_14_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_14_aq),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(reg_q_1__dup_6_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[1]),
	.cout());
// synopsys translate_off
defparam ix49438z7101.lut_mask = 16'hFC0C;
defparam ix49438z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N4
fiftyfivenm_lcell_comb ix623_fadd(
// Equation(s):
// inc_d_2__dup_642 = (reg_q_2__dup_13_aq & (nx51454z1 $ (GND))) # (!reg_q_2__dup_13_aq & (!nx51454z1 & VCC))
// nx1492z1 = CARRY((reg_q_2__dup_13_aq & !nx51454z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_13_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51454z1),
	.combout(inc_d_2__dup_642),
	.cout(nx1492z1));
// synopsys translate_off
defparam ix623_fadd.lut_mask = 16'hC30C;
defparam ix623_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N5
dffeas reg_q_2__dup_13(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_642),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_13_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_13.is_wysiwyg = "true";
defparam reg_q_2__dup_13.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N18
fiftyfivenm_lcell_comb ix588_fadd(
// Equation(s):
// inc_d_2__dup_606 = (reg_q_2__dup_5_aq & (nx53932z1 $ (GND))) # (!reg_q_2__dup_5_aq & (!nx53932z1 & VCC))
// nx43509z1 = CARRY((reg_q_2__dup_5_aq & !nx53932z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_5_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx53932z1),
	.combout(inc_d_2__dup_606),
	.cout(nx43509z1));
// synopsys translate_off
defparam ix588_fadd.lut_mask = 16'hC30C;
defparam ix588_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N19
dffeas reg_q_2__dup_5(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_606),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_5_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_5.is_wysiwyg = "true";
defparam reg_q_2__dup_5.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N20
fiftyfivenm_lcell_comb ix49438z7100(
// Equation(s):
// write_fifo_pointer[2] = (u_uart_reg_RxRDYi_aq & ((reg_q_2__dup_5_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_2__dup_13_aq))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(gnd),
	.datac(reg_q_2__dup_13_aq),
	.datad(reg_q_2__dup_5_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[2]),
	.cout());
// synopsys translate_off
defparam ix49438z7100.lut_mask = 16'hFA50;
defparam ix49438z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N6
fiftyfivenm_lcell_comb ix625_fadd(
// Equation(s):
// inc_d_3__dup_644 = (reg_q_3__dup_12_aq & (!nx1492z1)) # (!reg_q_3__dup_12_aq & ((nx1492z1) # (GND)))
// nx17066z1 = CARRY((!nx1492z1) # (!reg_q_3__dup_12_aq))

	.dataa(reg_q_3__dup_12_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx1492z1),
	.combout(inc_d_3__dup_644),
	.cout(nx17066z1));
// synopsys translate_off
defparam ix625_fadd.lut_mask = 16'h5A5F;
defparam ix625_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N7
dffeas reg_q_3__dup_12(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_644),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_12_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_12.is_wysiwyg = "true";
defparam reg_q_3__dup_12.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N20
fiftyfivenm_lcell_comb ix590_fadd(
// Equation(s):
// inc_d_3__dup_608 = (reg_q_3__dup_4_aq & (!nx43509z1)) # (!reg_q_3__dup_4_aq & ((nx43509z1) # (GND)))
// nx27935z1 = CARRY((!nx43509z1) # (!reg_q_3__dup_4_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_4_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx43509z1),
	.combout(inc_d_3__dup_608),
	.cout(nx27935z1));
// synopsys translate_off
defparam ix590_fadd.lut_mask = 16'h3C3F;
defparam ix590_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N21
dffeas reg_q_3__dup_4(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_608),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_4_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_4.is_wysiwyg = "true";
defparam reg_q_3__dup_4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N0
fiftyfivenm_lcell_comb ix49438z7099(
// Equation(s):
// write_fifo_pointer[3] = (u_uart_reg_RxRDYi_aq & ((reg_q_3__dup_4_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_3__dup_12_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_12_aq),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(reg_q_3__dup_4_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[3]),
	.cout());
// synopsys translate_off
defparam ix49438z7099.lut_mask = 16'hFC0C;
defparam ix49438z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N8
fiftyfivenm_lcell_comb ix627_fadd(
// Equation(s):
// inc_d_4__dup_646 = (reg_q_4__dup_11_aq & (nx17066z1 $ (GND))) # (!reg_q_4__dup_11_aq & (!nx17066z1 & VCC))
// nx32896z1 = CARRY((reg_q_4__dup_11_aq & !nx17066z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_11_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17066z1),
	.combout(inc_d_4__dup_646),
	.cout(nx32896z1));
// synopsys translate_off
defparam ix627_fadd.lut_mask = 16'hC30C;
defparam ix627_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N9
dffeas reg_q_4__dup_11(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_646),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_11_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_11.is_wysiwyg = "true";
defparam reg_q_4__dup_11.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N22
fiftyfivenm_lcell_comb ix592_fadd(
// Equation(s):
// inc_d_4__dup_610 = (reg_q_4__dup_3_aq & (nx27935z1 $ (GND))) # (!reg_q_4__dup_3_aq & (!nx27935z1 & VCC))
// nx12361z1 = CARRY((reg_q_4__dup_3_aq & !nx27935z1))

	.dataa(reg_q_4__dup_3_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27935z1),
	.combout(inc_d_4__dup_610),
	.cout(nx12361z1));
// synopsys translate_off
defparam ix592_fadd.lut_mask = 16'hA50A;
defparam ix592_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N23
dffeas reg_q_4__dup_3(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_610),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_3_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_3.is_wysiwyg = "true";
defparam reg_q_4__dup_3.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N30
fiftyfivenm_lcell_comb ix49438z7098(
// Equation(s):
// write_fifo_pointer[4] = (u_uart_reg_RxRDYi_aq & ((reg_q_4__dup_3_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_4__dup_11_aq))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(gnd),
	.datac(reg_q_4__dup_11_aq),
	.datad(reg_q_4__dup_3_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[4]),
	.cout());
// synopsys translate_off
defparam ix49438z7098.lut_mask = 16'hFA50;
defparam ix49438z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N24
fiftyfivenm_lcell_comb ix594_fadd(
// Equation(s):
// inc_d_5__dup_612 = (reg_q_5__dup_2_aq & (!nx12361z1)) # (!reg_q_5__dup_2_aq & ((nx12361z1) # (GND)))
// nx62323z1 = CARRY((!nx12361z1) # (!reg_q_5__dup_2_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_2_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx12361z1),
	.combout(inc_d_5__dup_612),
	.cout(nx62323z1));
// synopsys translate_off
defparam ix594_fadd.lut_mask = 16'h3C3F;
defparam ix594_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N25
dffeas reg_q_5__dup_2(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_612),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_2_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_2.is_wysiwyg = "true";
defparam reg_q_5__dup_2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N10
fiftyfivenm_lcell_comb ix629_fadd(
// Equation(s):
// inc_d_5__dup_648 = (reg_q_5__dup_10_aq & (!nx32896z1)) # (!reg_q_5__dup_10_aq & ((nx32896z1) # (GND)))
// nx64801z1 = CARRY((!nx32896z1) # (!reg_q_5__dup_10_aq))

	.dataa(reg_q_5__dup_10_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx32896z1),
	.combout(inc_d_5__dup_648),
	.cout(nx64801z1));
// synopsys translate_off
defparam ix629_fadd.lut_mask = 16'h5A5F;
defparam ix629_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N11
dffeas reg_q_5__dup_10(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_648),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_10_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_10.is_wysiwyg = "true";
defparam reg_q_5__dup_10.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N16
fiftyfivenm_lcell_comb ix49438z7097(
// Equation(s):
// write_fifo_pointer[5] = (u_uart_reg_RxRDYi_aq & (reg_q_5__dup_2_aq)) # (!u_uart_reg_RxRDYi_aq & ((reg_q_5__dup_10_aq)))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(gnd),
	.datac(reg_q_5__dup_2_aq),
	.datad(reg_q_5__dup_10_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[5]),
	.cout());
// synopsys translate_off
defparam ix49438z7097.lut_mask = 16'hF5A0;
defparam ix49438z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N12
fiftyfivenm_lcell_comb ix631_fadd(
// Equation(s):
// inc_d_6__dup_650 = (reg_q_6__dup_9_aq & (nx64801z1 $ (GND))) # (!reg_q_6__dup_9_aq & (!nx64801z1 & VCC))
// nx57014z1 = CARRY((reg_q_6__dup_9_aq & !nx64801z1))

	.dataa(reg_q_6__dup_9_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64801z1),
	.combout(inc_d_6__dup_650),
	.cout(nx57014z1));
// synopsys translate_off
defparam ix631_fadd.lut_mask = 16'hA50A;
defparam ix631_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N13
dffeas reg_q_6__dup_9(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_650),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_9_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_9.is_wysiwyg = "true";
defparam reg_q_6__dup_9.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N26
fiftyfivenm_lcell_comb ix596_fadd(
// Equation(s):
// inc_d_6__dup_614 = (reg_q_6__dup_1_aq & (nx62323z1 $ (GND))) # (!reg_q_6__dup_1_aq & (!nx62323z1 & VCC))
// nx11000z1 = CARRY((reg_q_6__dup_1_aq & !nx62323z1))

	.dataa(reg_q_6__dup_1_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx62323z1),
	.combout(inc_d_6__dup_614),
	.cout(nx11000z1));
// synopsys translate_off
defparam ix596_fadd.lut_mask = 16'hA50A;
defparam ix596_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N27
dffeas reg_q_6__dup_1(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_614),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_1_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_1.is_wysiwyg = "true";
defparam reg_q_6__dup_1.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N26
fiftyfivenm_lcell_comb ix49438z7096(
// Equation(s):
// write_fifo_pointer[6] = (u_uart_reg_RxRDYi_aq & ((reg_q_6__dup_1_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_6__dup_9_aq))

	.dataa(reg_q_6__dup_9_aq),
	.datab(gnd),
	.datac(u_uart_reg_RxRDYi_aq),
	.datad(reg_q_6__dup_1_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[6]),
	.cout());
// synopsys translate_off
defparam ix49438z7096.lut_mask = 16'hFA0A;
defparam ix49438z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N14
fiftyfivenm_lcell_comb ix632_fadd(
// Equation(s):
// inc_d_7__dup_652 = reg_q_7__dup_8_aq $ (nx57014z1)

	.dataa(gnd),
	.datab(reg_q_7__dup_8_aq),
	.datac(gnd),
	.datad(gnd),
	.cin(nx57014z1),
	.combout(inc_d_7__dup_652),
	.cout());
// synopsys translate_off
defparam ix632_fadd.lut_mask = 16'h3C3C;
defparam ix632_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y19_N15
dffeas reg_q_7__dup_8(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_652),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58143z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_8_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_8.is_wysiwyg = "true";
defparam reg_q_7__dup_8.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N28
fiftyfivenm_lcell_comb ix597_fadd(
// Equation(s):
// inc_d_7__dup_616 = nx11000z1 $ (reg_q_7__dup_0_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_7__dup_0_aq),
	.cin(nx11000z1),
	.combout(inc_d_7__dup_616),
	.cout());
// synopsys translate_off
defparam ix597_fadd.lut_mask = 16'h0FF0;
defparam ix597_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X24_Y20_N29
dffeas reg_q_7__dup_0(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_616),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx58151z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_0_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_0.is_wysiwyg = "true";
defparam reg_q_7__dup_0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N28
fiftyfivenm_lcell_comb ix49438z7095(
// Equation(s):
// write_fifo_pointer[7] = (u_uart_reg_RxRDYi_aq & ((reg_q_7__dup_0_aq))) # (!u_uart_reg_RxRDYi_aq & (reg_q_7__dup_8_aq))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(gnd),
	.datac(reg_q_7__dup_8_aq),
	.datad(reg_q_7__dup_0_aq),
	.cin(gnd),
	.combout(write_fifo_pointer[7]),
	.cout());
// synopsys translate_off
defparam ix49438z7095.lut_mask = 16'hFA50;
defparam ix49438z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N21
dffeas u_uart_reg_Dout_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_1__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_1_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N1
dffeas u_uart_reg_Dout_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_2_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N5
dffeas u_uart_reg_Dout_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_3_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N8
fiftyfivenm_lcell_comb u_uart_reg_Dout_4__afeeder(
// Equation(s):
// u_uart_reg_Dout_4__afeeder_combout = u_uart_reg_Rx_Reg_4__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_4__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_4__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N9
dffeas u_uart_reg_Dout_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_4__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_4_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N24
fiftyfivenm_lcell_comb u_uart_reg_Dout_5__afeeder(
// Equation(s):
// u_uart_reg_Dout_5__afeeder_combout = u_uart_reg_Rx_Reg_5__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_5__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_5__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N25
dffeas u_uart_reg_Dout_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_5__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_5_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y21_N7
dffeas u_uart_reg_Dout_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_uart_reg_Rx_Reg_6__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_6_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y21_N28
fiftyfivenm_lcell_comb u_uart_reg_Dout_7__afeeder(
// Equation(s):
// u_uart_reg_Dout_7__afeeder_combout = u_uart_reg_Rx_Reg_7__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_uart_reg_Rx_Reg_7__aq),
	.cin(gnd),
	.combout(u_uart_reg_Dout_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_uart_reg_Dout_7__afeeder.lut_mask = 16'hFF00;
defparam u_uart_reg_Dout_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y21_N29
dffeas u_uart_reg_Dout_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_uart_reg_Dout_7__afeeder_combout),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx13938z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Dout_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Dout_7_.is_wysiwyg = "true";
defparam u_uart_reg_Dout_7_.power_up = "low";
// synopsys translate_on

// Location: M9K_X26_Y19_N0
fiftyfivenm_ram_block write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(u_uart_reg_RxRDYi_aq),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,u_uart_reg_Dout_7__aq,u_uart_reg_Dout_6__aq,u_uart_reg_Dout_5__aq,u_uart_reg_Dout_4__aq,u_uart_reg_Dout_3__aq,u_uart_reg_Dout_2__aq,u_uart_reg_Dout_1__aq,u_uart_reg_Dout_0__aq}),
	.portaaddr({write_fifo_pointer[7],write_fifo_pointer[6],write_fifo_pointer[5],write_fifo_pointer[4],write_fifo_pointer[3],write_fifo_pointer[2],write_fifo_pointer[1],write_fifo_pointer[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:write_fifo_mem_mem|altsyncram:ix64056z29481|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam write_fifo_mem_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N24
fiftyfivenm_lcell_comb ix53163z7098(
// Equation(s):
// nx53163z4 = (reg_q_2__dup_88_aq) # ((reg_q_1__dup_89_aq) # (reg_q_5__dup_85_aq))

	.dataa(reg_q_2__dup_88_aq),
	.datab(gnd),
	.datac(reg_q_1__dup_89_aq),
	.datad(reg_q_5__dup_85_aq),
	.cin(gnd),
	.combout(nx53163z4),
	.cout());
// synopsys translate_off
defparam ix53163z7098.lut_mask = 16'hFFFA;
defparam ix53163z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N18
fiftyfivenm_lcell_comb ix53163z7097(
// Equation(s):
// nx53163z3 = (reset_n_ainput_o & (nx25391z3 & ((nx53163z4) # (nx16758z6))))

	.dataa(reset_n_ainput_o),
	.datab(nx53163z4),
	.datac(nx25391z3),
	.datad(nx16758z6),
	.cin(gnd),
	.combout(nx53163z3),
	.cout());
// synopsys translate_off
defparam ix53163z7097.lut_mask = 16'hA080;
defparam ix53163z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N19
dffeas u_kirsch_reg_e3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N27
dffeas write_fifo_reg_q_saved_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_4_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N22
fiftyfivenm_lcell_comb ix59319z7102(
// Equation(s):
// k_i_pixel[4] = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_4__aq))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_4__aq),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(k_i_pixel[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7102.lut_mask = 16'hFA50;
defparam ix59319z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N30
fiftyfivenm_lcell_comb ix43186z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[4] = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel[4]))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_4__aq)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_4__aq))

	.dataa(u_kirsch_reg_e3_4__aq),
	.datab(pb_a0_a_ainput_o),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(k_i_pixel[4]),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[4]),
	.cout());
// synopsys translate_off
defparam ix43186z7095.lut_mask = 16'hEA2A;
defparam ix43186z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y18_N30
fiftyfivenm_lcell_comb ix41042z7101(
// Equation(s):
// nx41042z6 = (reg_q_2__dup_88_aq) # ((reg_q_5__dup_85_aq) # ((reg_q_1__dup_89_aq) # (nx16758z6)))

	.dataa(reg_q_2__dup_88_aq),
	.datab(reg_q_5__dup_85_aq),
	.datac(reg_q_1__dup_89_aq),
	.datad(nx16758z6),
	.cin(gnd),
	.combout(nx41042z6),
	.cout());
// synopsys translate_off
defparam ix41042z7101.lut_mask = 16'hFFFE;
defparam ix41042z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N26
fiftyfivenm_lcell_comb ix41042z7105(
// Equation(s):
// nx41042z10 = (!u_kirsch_reg_stg_counter2_2__aq & (u_kirsch_reg_stg_counter2_1__aq & (!u_kirsch_reg_stg_counter2_3__aq & !u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_2__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_3__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx41042z10),
	.cout());
// synopsys translate_off
defparam ix41042z7105.lut_mask = 16'h0004;
defparam ix41042z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N26
fiftyfivenm_lcell_comb ix41042z7104(
// Equation(s):
// nx41042z9 = (u_kirsch_reg_stg_counter1_1__aq & !u_kirsch_reg_stg_counter1_0__aq)

	.dataa(u_kirsch_reg_stg_counter1_1__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_stg_counter1_0__aq),
	.cin(gnd),
	.combout(nx41042z9),
	.cout());
// synopsys translate_off
defparam ix41042z7104.lut_mask = 16'h00AA;
defparam ix41042z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N8
fiftyfivenm_lcell_comb ix41042z7103(
// Equation(s):
// nx41042z8 = (!nx41042z10 & ((u_kirsch_reg_stg_counter1_2__aq) # ((u_kirsch_reg_stg_counter1_3__aq) # (!nx41042z9))))

	.dataa(u_kirsch_reg_stg_counter1_2__aq),
	.datab(nx41042z10),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(nx41042z9),
	.cin(gnd),
	.combout(nx41042z8),
	.cout());
// synopsys translate_off
defparam ix41042z7103.lut_mask = 16'h3233;
defparam ix41042z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N26
fiftyfivenm_lcell_comb ix41042z7106(
// Equation(s):
// nx41042z11 = (nx26412z4) # ((!u_kirsch_reg_stg_counter1_2__aq & (!u_kirsch_reg_stg_counter1_3__aq & !u_kirsch_reg_stg_counter1_1__aq)))

	.dataa(u_kirsch_reg_stg_counter1_2__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx41042z11),
	.cout());
// synopsys translate_off
defparam ix41042z7106.lut_mask = 16'hCCCD;
defparam ix41042z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N10
fiftyfivenm_lcell_comb ix41042z7102(
// Equation(s):
// nx41042z7 = (nx25391z3 & (((!nx55203z3)))) # (!nx25391z3 & (!nx41042z8 & ((!nx41042z11))))

	.dataa(nx25391z3),
	.datab(nx41042z8),
	.datac(nx55203z3),
	.datad(nx41042z11),
	.cin(gnd),
	.combout(nx41042z7),
	.cout());
// synopsys translate_off
defparam ix41042z7102.lut_mask = 16'h0A1B;
defparam ix41042z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N12
fiftyfivenm_lcell_comb ix41042z7100(
// Equation(s):
// nx41042z5 = (reset_n_ainput_o & (nx41042z6 & nx41042z7))

	.dataa(gnd),
	.datab(reset_n_ainput_o),
	.datac(nx41042z6),
	.datad(nx41042z7),
	.cin(gnd),
	.combout(nx41042z5),
	.cout());
// synopsys translate_off
defparam ix41042z7100.lut_mask = 16'hC000;
defparam ix41042z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y14_N31
dffeas u_kirsch_reg_g2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N25
dffeas u_kirsch_reg_g3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N30
fiftyfivenm_lcell_comb ix26412z7100(
// Equation(s):
// nx26412z6 = (!u_kirsch_reg_stg_counter1_2__aq & (!u_kirsch_reg_stg_counter1_3__aq & !u_kirsch_reg_stg_counter1_1__aq))

	.dataa(u_kirsch_reg_stg_counter1_2__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx26412z6),
	.cout());
// synopsys translate_off
defparam ix26412z7100.lut_mask = 16'h0005;
defparam ix26412z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N18
fiftyfivenm_lcell_comb ix58953z7096(
// Equation(s):
// nx58953z2 = (nx26412z4 & (((u_kirsch_reg_e3_4__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_4__aq))) # (!nx26412z6 & (u_kirsch_reg_g3_4__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g3_4__aq),
	.datac(u_kirsch_reg_e3_4__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx58953z2),
	.cout());
// synopsys translate_off
defparam ix58953z7096.lut_mask = 16'hF0E4;
defparam ix58953z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N26
fiftyfivenm_lcell_comb ix63596z7098(
// Equation(s):
// nx63596z4 = (write_fifo_reg_rd_en_delayed_aq & (nx25391z2 & (pb_a0_a_ainput_o & nx37417z3)))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(nx25391z2),
	.datac(pb_a0_a_ainput_o),
	.datad(nx37417z3),
	.cin(gnd),
	.combout(nx63596z4),
	.cout());
// synopsys translate_off
defparam ix63596z7098.lut_mask = 16'h8000;
defparam ix63596z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N2
fiftyfivenm_lcell_comb ix63596z7097(
// Equation(s):
// nx63596z3 = (reg_q_7__dup_83_aq & reg_q_6__dup_84_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_q_7__dup_83_aq),
	.datad(reg_q_6__dup_84_aq),
	.cin(gnd),
	.combout(nx63596z3),
	.cout());
// synopsys translate_off
defparam ix63596z7097.lut_mask = 16'hF000;
defparam ix63596z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N4
fiftyfivenm_lcell_comb ix63596z7096(
// Equation(s):
// nx63596z2 = (nx63596z3 & (reg_q_4__dup_86_aq & (nx25391z6 & reg_q_5__dup_85_aq)))

	.dataa(nx63596z3),
	.datab(reg_q_4__dup_86_aq),
	.datac(nx25391z6),
	.datad(reg_q_5__dup_85_aq),
	.cin(gnd),
	.combout(nx63596z2),
	.cout());
// synopsys translate_off
defparam ix63596z7096.lut_mask = 16'h8000;
defparam ix63596z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N18
fiftyfivenm_lcell_comb ix62599z7095(
// Equation(s):
// nx62599z1 = (nx63596z4 & (u_kirsch_reg_row_index_0__aq & (!u_kirsch_reg_row_index_1__aq & !nx63596z2))) # (!nx63596z4 & (((u_kirsch_reg_row_index_1__aq))))

	.dataa(nx63596z4),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_reg_row_index_1__aq),
	.datad(nx63596z2),
	.cin(gnd),
	.combout(nx62599z1),
	.cout());
// synopsys translate_off
defparam ix62599z7095.lut_mask = 16'h5058;
defparam ix62599z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N19
dffeas u_kirsch_reg_row_index_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62599z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_row_index_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_row_index_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_row_index_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N24
fiftyfivenm_lcell_comb ix63596z7095(
// Equation(s):
// nx63596z1 = (nx63596z4 & (!u_kirsch_reg_row_index_1__aq & (!u_kirsch_reg_row_index_0__aq & !nx63596z2))) # (!nx63596z4 & (((u_kirsch_reg_row_index_0__aq))))

	.dataa(nx63596z4),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(nx63596z2),
	.cin(gnd),
	.combout(nx63596z1),
	.cout());
// synopsys translate_off
defparam ix63596z7095.lut_mask = 16'h5052;
defparam ix63596z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N25
dffeas u_kirsch_reg_row_index_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63596z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_row_index_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_row_index_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_row_index_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N22
fiftyfivenm_lcell_comb ix41042z7099(
// Equation(s):
// nx41042z4 = (pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq & (!u_kirsch_reg_row_index_0__aq & !u_kirsch_reg_row_index_1__aq)))

	.dataa(pb_a0_a_ainput_o),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx41042z4),
	.cout());
// synopsys translate_off
defparam ix41042z7099.lut_mask = 16'h0008;
defparam ix41042z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N1
dffeas write_fifo_reg_q_saved_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_0_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N0
fiftyfivenm_lcell_comb ix4443z7097(
// Equation(s):
// k_i_pixel[0] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_0__aq)))

	.dataa(gnd),
	.datab(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datac(write_fifo_reg_q_saved_0__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[0]),
	.cout());
// synopsys translate_off
defparam ix4443z7097.lut_mask = 16'hCCF0;
defparam ix4443z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N31
dffeas write_fifo_reg_q_saved_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_1_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N30
fiftyfivenm_lcell_comb ix4443z7096(
// Equation(s):
// k_i_pixel[1] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_1__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_1__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[1]),
	.cout());
// synopsys translate_off
defparam ix4443z7096.lut_mask = 16'hAAF0;
defparam ix4443z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N25
dffeas write_fifo_reg_q_saved_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_2_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N24
fiftyfivenm_lcell_comb ix4443z7095(
// Equation(s):
// k_i_pixel[2] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_2__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_2__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[2]),
	.cout());
// synopsys translate_off
defparam ix4443z7095.lut_mask = 16'hAAF0;
defparam ix4443z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N13
dffeas write_fifo_reg_q_saved_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_3_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N12
fiftyfivenm_lcell_comb ix59319z7104(
// Equation(s):
// k_i_pixel[3] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_3__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_3__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[3]),
	.cout());
// synopsys translate_off
defparam ix59319z7104.lut_mask = 16'hAAF0;
defparam ix59319z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N5
dffeas write_fifo_reg_q_saved_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_5_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N4
fiftyfivenm_lcell_comb ix59319z7100(
// Equation(s):
// k_i_pixel[5] = (write_fifo_reg_rd_en_delayed_aq & ((write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]))) # (!write_fifo_reg_rd_en_delayed_aq & (write_fifo_reg_q_saved_5__aq))

	.dataa(gnd),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(write_fifo_reg_q_saved_5__aq),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(k_i_pixel[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7100.lut_mask = 16'hFC30;
defparam ix59319z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N9
dffeas write_fifo_reg_q_saved_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_6_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N8
fiftyfivenm_lcell_comb ix59319z7098(
// Equation(s):
// k_i_pixel[6] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_6__aq)))

	.dataa(gnd),
	.datab(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datac(write_fifo_reg_q_saved_6__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7098.lut_mask = 16'hCCF0;
defparam ix59319z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N7
dffeas write_fifo_reg_q_saved_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(write_fifo_reg_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(write_fifo_reg_q_saved_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam write_fifo_reg_q_saved_7_.is_wysiwyg = "true";
defparam write_fifo_reg_q_saved_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N6
fiftyfivenm_lcell_comb ix59319z7096(
// Equation(s):
// k_i_pixel[7] = (write_fifo_reg_rd_en_delayed_aq & (write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7])) # (!write_fifo_reg_rd_en_delayed_aq & ((write_fifo_reg_q_saved_7__aq)))

	.dataa(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datab(gnd),
	.datac(write_fifo_reg_q_saved_7__aq),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(k_i_pixel[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7096.lut_mask = 16'hAAF0;
defparam ix59319z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y15_N0
fiftyfivenm_ram_block u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(nx41042z4),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_91_aq,reg_q_6__dup_92_aq,reg_q_5__dup_93_aq,reg_q_4__dup_94_aq,reg_q_3__dup_95_aq,reg_q_2__dup_96_aq,reg_q_1__dup_97_aq,reg_q_0__dup_98_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:u_kirsch_memA_mem|altsyncram:ix64056z29483|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_memA_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N16
fiftyfivenm_lcell_comb ix4443z7098(
// Equation(s):
// nx4443z1 = (pb_a0_a_ainput_o & (!u_kirsch_reg_row_index_0__aq & (write_fifo_reg_rd_en_delayed_aq & u_kirsch_reg_row_index_1__aq)))

	.dataa(pb_a0_a_ainput_o),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx4443z1),
	.cout());
// synopsys translate_off
defparam ix4443z7098.lut_mask = 16'h2000;
defparam ix4443z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y16_N0
fiftyfivenm_ram_block u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0(
	.portawe(nx4443z1),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_91_aq,reg_q_6__dup_92_aq,reg_q_5__dup_93_aq,reg_q_4__dup_94_aq,reg_q_3__dup_95_aq,reg_q_2__dup_96_aq,reg_q_1__dup_97_aq,reg_q_0__dup_98_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_4:u_kirsch_memC_mem|altsyncram:ix64056z29485|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_memC_mem_aix64056z29485_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N28
fiftyfivenm_lcell_comb ix55307z7096(
// Equation(s):
// nx55307z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4])))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx55307z2),
	.cout());
// synopsys translate_off
defparam ix55307z7096.lut_mask = 16'hF5A0;
defparam ix55307z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N12
fiftyfivenm_lcell_comb ix41042z7098(
// Equation(s):
// nx41042z3 = (pb_a0_a_ainput_o & (write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_row_index_0__aq & !u_kirsch_reg_row_index_1__aq)))

	.dataa(pb_a0_a_ainput_o),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx41042z3),
	.cout());
// synopsys translate_off
defparam ix41042z7098.lut_mask = 16'h0080;
defparam ix41042z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y14_N0
fiftyfivenm_ram_block u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0(
	.portawe(nx41042z3),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,k_i_pixel[7],k_i_pixel[6],k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],k_i_pixel[0]}),
	.portaaddr({reg_q_7__dup_91_aq,reg_q_6__dup_92_aq,reg_q_5__dup_93_aq,reg_q_4__dup_94_aq,reg_q_3__dup_95_aq,reg_q_2__dup_96_aq,reg_q_1__dup_97_aq,reg_q_0__dup_98_aq}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_3:u_kirsch_memB_mem|altsyncram:ix64056z29484|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam u_kirsch_memB_mem_aix64056z29484_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N2
fiftyfivenm_lcell_comb ix55307z7095(
// Equation(s):
// nx55307z1 = (nx41042z4 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]))) # (!nx41042z4 & (nx55307z2))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(nx55307z2),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx55307z1),
	.cout());
// synopsys translate_off
defparam ix55307z7095.lut_mask = 16'hFC30;
defparam ix55307z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y14_N3
dffeas u_kirsch_reg_c3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55307z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N0
fiftyfivenm_lcell_comb ix29221z7097(
// Equation(s):
// nx29221z2 = (!u_kirsch_reg_stg_counter1_2__aq & !u_kirsch_reg_stg_counter1_3__aq)

	.dataa(u_kirsch_reg_stg_counter1_2__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx29221z2),
	.cout());
// synopsys translate_off
defparam ix29221z7097.lut_mask = 16'h0505;
defparam ix29221z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N28
fiftyfivenm_lcell_comb ix26412z7097(
// Equation(s):
// nx26412z3 = (!u_kirsch_reg_stg_counter1_0__aq & !u_kirsch_reg_stg_counter1_1__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter1_0__aq),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx26412z3),
	.cout());
// synopsys translate_off
defparam ix26412z7097.lut_mask = 16'h000F;
defparam ix26412z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N12
fiftyfivenm_lcell_comb ix26412z7096(
// Equation(s):
// nx26412z2 = (u_kirsch_reg_stg_counter2_0__aq & (((nx29221z2 & nx26412z3)))) # (!u_kirsch_reg_stg_counter2_0__aq & ((nx26412z4) # ((nx29221z2 & nx26412z3))))

	.dataa(u_kirsch_reg_stg_counter2_0__aq),
	.datab(nx26412z4),
	.datac(nx29221z2),
	.datad(nx26412z3),
	.cin(gnd),
	.combout(nx26412z2),
	.cout());
// synopsys translate_off
defparam ix26412z7096.lut_mask = 16'hF444;
defparam ix26412z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N0
fiftyfivenm_lcell_comb ix58953z7095(
// Equation(s):
// nx58953z1 = (nx26412z2 & ((u_kirsch_reg_c3_4__aq))) # (!nx26412z2 & (nx58953z2))

	.dataa(nx58953z2),
	.datab(u_kirsch_reg_c3_4__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx58953z1),
	.cout());
// synopsys translate_off
defparam ix58953z7095.lut_mask = 16'hCCAA;
defparam ix58953z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N8
fiftyfivenm_lcell_comb ix57076z7096(
// Equation(s):
// nx57076z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx57076z1),
	.cout());
// synopsys translate_off
defparam ix57076z7096.lut_mask = 16'hFFFA;
defparam ix57076z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N20
fiftyfivenm_lcell_comb ix57076z7097(
// Equation(s):
// nx57076z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4])))

	.dataa(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datab(nx41042z4),
	.datac(nx41042z3),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx57076z2),
	.cout());
// synopsys translate_off
defparam ix57076z7097.lut_mask = 16'hFECE;
defparam ix57076z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N14
fiftyfivenm_lcell_comb ix57076z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[4] = (nx25391z3 & (((nx57076z1 & nx57076z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_4__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_c3_4__aq),
	.datac(nx57076z1),
	.datad(nx57076z2),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[4]),
	.cout());
// synopsys translate_off
defparam ix57076z7095.lut_mask = 16'hE444;
defparam ix57076z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N15
dffeas u_kirsch_reg_a2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N9
dffeas u_kirsch_reg_a3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N18
fiftyfivenm_lcell_comb ix26412z7103(
// Equation(s):
// nx26412z9 = (nx41042z10) # ((!u_kirsch_reg_stg_counter1_0__aq & (nx29221z2 & u_kirsch_reg_stg_counter1_1__aq)))

	.dataa(u_kirsch_reg_stg_counter1_0__aq),
	.datab(nx41042z10),
	.datac(nx29221z2),
	.datad(u_kirsch_reg_stg_counter1_1__aq),
	.cin(gnd),
	.combout(nx26412z9),
	.cout());
// synopsys translate_off
defparam ix26412z7103.lut_mask = 16'hDCCC;
defparam ix26412z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N28
fiftyfivenm_lcell_comb ix26412z7102(
// Equation(s):
// nx26412z8 = (nx25391z3 & (((nx55203z3)))) # (!nx25391z3 & ((nx41042z11) # ((nx26412z9))))

	.dataa(nx41042z11),
	.datab(nx25391z3),
	.datac(nx55203z3),
	.datad(nx26412z9),
	.cin(gnd),
	.combout(nx26412z8),
	.cout());
// synopsys translate_off
defparam ix26412z7102.lut_mask = 16'hF3E2;
defparam ix26412z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N14
fiftyfivenm_lcell_comb ix26412z7101(
// Equation(s):
// nx26412z7 = (reset_n_ainput_o & (nx41042z6 & nx26412z8))

	.dataa(reset_n_ainput_o),
	.datab(gnd),
	.datac(nx41042z6),
	.datad(nx26412z8),
	.cin(gnd),
	.combout(nx26412z7),
	.cout());
// synopsys translate_off
defparam ix26412z7101.lut_mask = 16'hA000;
defparam ix26412z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N1
dffeas u_kirsch_reg_i_2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx58953z1),
	.asdata(u_kirsch_reg_a3_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y16_N15
dffeas u_kirsch_reg_e3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N10
fiftyfivenm_lcell_comb ix42893z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[7] = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel[7]))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_7__aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_7__aq))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(u_kirsch_reg_e3_7__aq),
	.datac(k_i_pixel[7]),
	.datad(pb_a0_a_ainput_o),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[7]),
	.cout());
// synopsys translate_off
defparam ix42893z7095.lut_mask = 16'hE4CC;
defparam ix42893z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y14_N11
dffeas u_kirsch_reg_f3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_f3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_f3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_f3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N26
fiftyfivenm_lcell_comb ix64381z7096(
// Equation(s):
// nx64381z2 = (u_kirsch_reg_f3_7__aq) # (!nx26412z2)

	.dataa(u_kirsch_reg_f3_7__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx64381z2),
	.cout());
// synopsys translate_off
defparam ix64381z7096.lut_mask = 16'hAAFF;
defparam ix64381z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N6
fiftyfivenm_lcell_comb ix53163z7096(
// Equation(s):
// nx53163z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7])))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx53163z2),
	.cout());
// synopsys translate_off
defparam ix53163z7096.lut_mask = 16'hF3C0;
defparam ix53163z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N16
fiftyfivenm_lcell_comb ix53163z7095(
// Equation(s):
// nx53163z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7])) # (!nx41042z4 & ((nx53163z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datad(nx53163z2),
	.cin(gnd),
	.combout(nx53163z1),
	.cout());
// synopsys translate_off
defparam ix53163z7095.lut_mask = 16'hF5A0;
defparam ix53163z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N17
dffeas u_kirsch_reg_d3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx53163z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N24
fiftyfivenm_lcell_comb ix41042z7096(
// Equation(s):
// nx41042z1 = (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]) # ((u_kirsch_reg_row_index_1__aq) # (u_kirsch_reg_row_index_0__aq))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx41042z1),
	.cout());
// synopsys translate_off
defparam ix41042z7096.lut_mask = 16'hFEFE;
defparam ix41042z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N6
fiftyfivenm_lcell_comb ix41042z7097(
// Equation(s):
// nx41042z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]))))

	.dataa(nx41042z3),
	.datab(nx41042z4),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx41042z2),
	.cout());
// synopsys translate_off
defparam ix41042z7097.lut_mask = 16'hFDEC;
defparam ix41042z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N4
fiftyfivenm_lcell_comb ix41042z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[7] = (nx25391z3 & (((nx41042z1 & nx41042z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_7__aq))

	.dataa(u_kirsch_reg_d3_7__aq),
	.datab(nx41042z1),
	.datac(nx25391z3),
	.datad(nx41042z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[7]),
	.cout());
// synopsys translate_off
defparam ix41042z7095.lut_mask = 16'hCA0A;
defparam ix41042z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N5
dffeas u_kirsch_reg_h2_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y16_N31
dffeas u_kirsch_reg_h3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N12
fiftyfivenm_lcell_comb ix58298z7096(
// Equation(s):
// nx58298z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datad(gnd),
	.cin(gnd),
	.combout(nx58298z2),
	.cout());
// synopsys translate_off
defparam ix58298z7096.lut_mask = 16'hE2E2;
defparam ix58298z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N6
fiftyfivenm_lcell_comb ix58298z7095(
// Equation(s):
// nx58298z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7])) # (!nx41042z4 & ((nx58298z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.datad(nx58298z2),
	.cin(gnd),
	.combout(nx58298z1),
	.cout());
// synopsys translate_off
defparam ix58298z7095.lut_mask = 16'hF5A0;
defparam ix58298z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N7
dffeas u_kirsch_reg_c3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx58298z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N16
fiftyfivenm_lcell_comb ix63433z7097(
// Equation(s):
// nx63433z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7])))

	.dataa(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datad(nx41042z3),
	.cin(gnd),
	.combout(nx63433z2),
	.cout());
// synopsys translate_off
defparam ix63433z7097.lut_mask = 16'hFCEE;
defparam ix63433z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N18
fiftyfivenm_lcell_comb ix63433z7096(
// Equation(s):
// nx63433z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx63433z1),
	.cout());
// synopsys translate_off
defparam ix63433z7096.lut_mask = 16'hFFFC;
defparam ix63433z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N8
fiftyfivenm_lcell_comb ix63433z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[7] = (nx25391z3 & (((nx63433z2 & nx63433z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_7__aq))

	.dataa(u_kirsch_reg_c3_7__aq),
	.datab(nx63433z2),
	.datac(nx25391z3),
	.datad(nx63433z1),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[7]),
	.cout());
// synopsys translate_off
defparam ix63433z7095.lut_mask = 16'hCA0A;
defparam ix63433z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N9
dffeas u_kirsch_reg_b3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_b3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_b3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_b3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N22
fiftyfivenm_lcell_comb ix64381z7097(
// Equation(s):
// nx64381z3 = (nx26412z2) # ((nx41042z11 & (u_kirsch_reg_h3_7__aq)) # (!nx41042z11 & ((u_kirsch_reg_b3_7__aq))))

	.dataa(u_kirsch_reg_h3_7__aq),
	.datab(nx41042z11),
	.datac(u_kirsch_reg_b3_7__aq),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx64381z3),
	.cout());
// synopsys translate_off
defparam ix64381z7097.lut_mask = 16'hFFB8;
defparam ix64381z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N20
fiftyfivenm_lcell_comb ix64381z7099(
// Equation(s):
// nx64381z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7])))

	.dataa(nx41042z3),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx64381z4),
	.cout());
// synopsys translate_off
defparam ix64381z7099.lut_mask = 16'hF5A0;
defparam ix64381z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N2
fiftyfivenm_lcell_comb ix64381z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_7_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7])) # (!nx41042z4 & ((nx64381z4)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[7]),
	.datad(nx64381z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_7_),
	.cout());
// synopsys translate_off
defparam ix64381z7098.lut_mask = 16'hF3C0;
defparam ix64381z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N28
fiftyfivenm_lcell_comb ix64381z7095(
// Equation(s):
// nx64381z1 = (nx25391z3 & (((u_kirsch_d3_9n15ss1_7_)))) # (!nx25391z3 & (nx64381z2 & (nx64381z3)))

	.dataa(nx64381z2),
	.datab(nx25391z3),
	.datac(nx64381z3),
	.datad(u_kirsch_d3_9n15ss1_7_),
	.cin(gnd),
	.combout(nx64381z1),
	.cout());
// synopsys translate_off
defparam ix64381z7095.lut_mask = 16'hEC20;
defparam ix64381z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N29
dffeas u_kirsch_reg_i_3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64381z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N21
dffeas u_kirsch_reg_g3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_f3_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N16
fiftyfivenm_lcell_comb ix55962z7096(
// Equation(s):
// nx55962z2 = (nx26412z4 & (((u_kirsch_reg_e3_7__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_7__aq))) # (!nx26412z6 & (u_kirsch_reg_g3_7__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g3_7__aq),
	.datac(u_kirsch_reg_e3_7__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx55962z2),
	.cout());
// synopsys translate_off
defparam ix55962z7096.lut_mask = 16'hF0E4;
defparam ix55962z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N16
fiftyfivenm_lcell_comb ix55962z7095(
// Equation(s):
// nx55962z1 = (nx26412z2 & ((u_kirsch_reg_c3_7__aq))) # (!nx26412z2 & (nx55962z2))

	.dataa(nx55962z2),
	.datab(u_kirsch_reg_c3_7__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx55962z1),
	.cout());
// synopsys translate_off
defparam ix55962z7095.lut_mask = 16'hCCAA;
defparam ix55962z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y14_N15
dffeas u_kirsch_reg_a3_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_b3_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X27_Y16_N17
dffeas u_kirsch_reg_i_2_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55962z1),
	.asdata(u_kirsch_reg_a3_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N10
fiftyfivenm_lcell_comb ix57301z7096(
// Equation(s):
// nx57301z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6])))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx57301z2),
	.cout());
// synopsys translate_off
defparam ix57301z7096.lut_mask = 16'hF5A0;
defparam ix57301z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N28
fiftyfivenm_lcell_comb ix57301z7095(
// Equation(s):
// nx57301z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6])) # (!nx41042z4 & ((nx57301z2)))

	.dataa(nx41042z4),
	.datab(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datac(gnd),
	.datad(nx57301z2),
	.cin(gnd),
	.combout(nx57301z1),
	.cout());
// synopsys translate_off
defparam ix57301z7095.lut_mask = 16'hDD88;
defparam ix57301z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N29
dffeas u_kirsch_reg_c3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57301z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N14
fiftyfivenm_lcell_comb ix55082z7097(
// Equation(s):
// nx55082z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6])))

	.dataa(nx41042z4),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datac(nx41042z3),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx55082z2),
	.cout());
// synopsys translate_off
defparam ix55082z7097.lut_mask = 16'hFEAE;
defparam ix55082z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N12
fiftyfivenm_lcell_comb ix55082z7096(
// Equation(s):
// nx55082z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datad(gnd),
	.cin(gnd),
	.combout(nx55082z1),
	.cout());
// synopsys translate_off
defparam ix55082z7096.lut_mask = 16'hFEFE;
defparam ix55082z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N30
fiftyfivenm_lcell_comb ix55082z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[6] = (nx25391z3 & (((nx55082z2 & nx55082z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_6__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_c3_6__aq),
	.datac(nx55082z2),
	.datad(nx55082z1),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[6]),
	.cout());
// synopsys translate_off
defparam ix55082z7095.lut_mask = 16'hE444;
defparam ix55082z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N31
dffeas u_kirsch_reg_a2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N14
fiftyfivenm_lcell_comb ix52166z7096(
// Equation(s):
// nx52166z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx52166z2),
	.cout());
// synopsys translate_off
defparam ix52166z7096.lut_mask = 16'hFA50;
defparam ix52166z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N24
fiftyfivenm_lcell_comb ix52166z7095(
// Equation(s):
// nx52166z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]))) # (!nx41042z4 & (nx52166z2))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(nx52166z2),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx52166z1),
	.cout());
// synopsys translate_off
defparam ix52166z7095.lut_mask = 16'hFA50;
defparam ix52166z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N25
dffeas u_kirsch_reg_d3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx52166z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N0
fiftyfivenm_lcell_comb ix40045z7096(
// Equation(s):
// nx40045z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx40045z1),
	.cout());
// synopsys translate_off
defparam ix40045z7096.lut_mask = 16'hFFFA;
defparam ix40045z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N18
fiftyfivenm_lcell_comb ix40045z7097(
// Equation(s):
// nx40045z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6])))

	.dataa(nx41042z4),
	.datab(nx41042z3),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx40045z2),
	.cout());
// synopsys translate_off
defparam ix40045z7097.lut_mask = 16'hFEBA;
defparam ix40045z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N4
fiftyfivenm_lcell_comb ix40045z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[6] = (nx25391z3 & (((nx40045z1 & nx40045z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_6__aq))

	.dataa(u_kirsch_reg_d3_6__aq),
	.datab(nx40045z1),
	.datac(nx25391z3),
	.datad(nx40045z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[6]),
	.cout());
// synopsys translate_off
defparam ix40045z7095.lut_mask = 16'hCA0A;
defparam ix40045z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N5
dffeas u_kirsch_reg_h2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N19
dffeas u_kirsch_reg_h3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N10
fiftyfivenm_lcell_comb ix65378z7097(
// Equation(s):
// nx65378z3 = (nx26412z2) # ((nx41042z11 & ((u_kirsch_reg_h3_6__aq))) # (!nx41042z11 & (u_kirsch_reg_a2_6__aq)))

	.dataa(u_kirsch_reg_a2_6__aq),
	.datab(u_kirsch_reg_h3_6__aq),
	.datac(nx41042z11),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx65378z3),
	.cout());
// synopsys translate_off
defparam ix65378z7097.lut_mask = 16'hFFCA;
defparam ix65378z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N28
fiftyfivenm_lcell_comb ix65378z7099(
// Equation(s):
// nx65378z4 = (nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]))

	.dataa(gnd),
	.datab(nx41042z3),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx65378z4),
	.cout());
// synopsys translate_off
defparam ix65378z7099.lut_mask = 16'hFC30;
defparam ix65378z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N22
fiftyfivenm_lcell_comb ix65378z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_6_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6])) # (!nx41042z4 & ((nx65378z4)))

	.dataa(gnd),
	.datab(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[6]),
	.datac(nx41042z4),
	.datad(nx65378z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_6_),
	.cout());
// synopsys translate_off
defparam ix65378z7098.lut_mask = 16'hCFC0;
defparam ix65378z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N1
dffeas u_kirsch_reg_e3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N12
fiftyfivenm_lcell_comb ix45180z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[6] = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel[6]))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_6__aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_6__aq))

	.dataa(u_kirsch_reg_e3_6__aq),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(k_i_pixel[6]),
	.datad(pb_a0_a_ainput_o),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[6]),
	.cout());
// synopsys translate_off
defparam ix45180z7095.lut_mask = 16'hE2AA;
defparam ix45180z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y14_N13
dffeas u_kirsch_reg_g2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N6
fiftyfivenm_lcell_comb ix65378z7096(
// Equation(s):
// nx65378z2 = (u_kirsch_reg_g2_6__aq) # (!nx26412z2)

	.dataa(gnd),
	.datab(u_kirsch_reg_g2_6__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx65378z2),
	.cout());
// synopsys translate_off
defparam ix65378z7096.lut_mask = 16'hCCFF;
defparam ix65378z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N24
fiftyfivenm_lcell_comb ix65378z7095(
// Equation(s):
// nx65378z1 = (nx25391z3 & (((u_kirsch_d3_9n15ss1_6_)))) # (!nx25391z3 & (nx65378z3 & ((nx65378z2))))

	.dataa(nx65378z3),
	.datab(nx25391z3),
	.datac(u_kirsch_d3_9n15ss1_6_),
	.datad(nx65378z2),
	.cin(gnd),
	.combout(nx65378z1),
	.cout());
// synopsys translate_off
defparam ix65378z7095.lut_mask = 16'hE2C0;
defparam ix65378z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N25
dffeas u_kirsch_reg_i_3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx65378z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N1
dffeas u_kirsch_reg_g3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N0
fiftyfivenm_lcell_comb ix56959z7096(
// Equation(s):
// nx56959z2 = (nx26412z4 & (u_kirsch_reg_e3_6__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_e3_6__aq)) # (!nx26412z6 & ((u_kirsch_reg_g3_6__aq)))))

	.dataa(u_kirsch_reg_e3_6__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_g3_6__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx56959z2),
	.cout());
// synopsys translate_off
defparam ix56959z7096.lut_mask = 16'hAAB8;
defparam ix56959z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N0
fiftyfivenm_lcell_comb ix56959z7095(
// Equation(s):
// nx56959z1 = (nx26412z2 & (u_kirsch_reg_c3_6__aq)) # (!nx26412z2 & ((nx56959z2)))

	.dataa(u_kirsch_reg_c3_6__aq),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(nx56959z2),
	.cin(gnd),
	.combout(nx56959z1),
	.cout());
// synopsys translate_off
defparam ix56959z7095.lut_mask = 16'hBB88;
defparam ix56959z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y14_N29
dffeas u_kirsch_reg_a3_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N1
dffeas u_kirsch_reg_i_2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56959z1),
	.asdata(u_kirsch_reg_a3_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N16
fiftyfivenm_lcell_comb u_kirsch_reg_e3_5__afeeder(
// Equation(s):
// u_kirsch_reg_e3_5__afeeder_combout = write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(u_kirsch_reg_e3_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_e3_5__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_e3_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N17
dffeas u_kirsch_reg_e3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_e3_5__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N6
fiftyfivenm_lcell_comb ix44183z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[5] = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel[5]))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_5__aq)))) # (!pb_a0_a_ainput_o & (((u_kirsch_reg_e3_5__aq))))

	.dataa(pb_a0_a_ainput_o),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(u_kirsch_reg_e3_5__aq),
	.datad(k_i_pixel[5]),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[5]),
	.cout());
// synopsys translate_off
defparam ix44183z7095.lut_mask = 16'hF870;
defparam ix44183z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N7
dffeas u_kirsch_reg_g2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N18
fiftyfivenm_lcell_comb ix51169z7096(
// Equation(s):
// nx51169z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5])))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx51169z2),
	.cout());
// synopsys translate_off
defparam ix51169z7096.lut_mask = 16'hF5A0;
defparam ix51169z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N4
fiftyfivenm_lcell_comb ix51169z7095(
// Equation(s):
// nx51169z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5])) # (!nx41042z4 & ((nx51169z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.datad(nx51169z2),
	.cin(gnd),
	.combout(nx51169z1),
	.cout());
// synopsys translate_off
defparam ix51169z7095.lut_mask = 16'hF5A0;
defparam ix51169z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N5
dffeas u_kirsch_reg_d3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51169z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N30
fiftyfivenm_lcell_comb ix39048z7096(
// Equation(s):
// nx39048z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(gnd),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx39048z1),
	.cout());
// synopsys translate_off
defparam ix39048z7096.lut_mask = 16'hFFEE;
defparam ix39048z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N0
fiftyfivenm_lcell_comb ix39048z7097(
// Equation(s):
// nx39048z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5])))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.datab(nx41042z4),
	.datac(nx41042z3),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx39048z2),
	.cout());
// synopsys translate_off
defparam ix39048z7097.lut_mask = 16'hFECE;
defparam ix39048z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N26
fiftyfivenm_lcell_comb ix39048z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[5] = (nx25391z3 & (((nx39048z1 & nx39048z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_5__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_d3_5__aq),
	.datac(nx39048z1),
	.datad(nx39048z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[5]),
	.cout());
// synopsys translate_off
defparam ix39048z7095.lut_mask = 16'hE444;
defparam ix39048z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N27
dffeas u_kirsch_reg_h2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N25
dffeas u_kirsch_reg_h3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N30
fiftyfivenm_lcell_comb ix56304z7096(
// Equation(s):
// nx56304z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx56304z2),
	.cout());
// synopsys translate_off
defparam ix56304z7096.lut_mask = 16'hFA50;
defparam ix56304z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N8
fiftyfivenm_lcell_comb ix56304z7095(
// Equation(s):
// nx56304z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5])) # (!nx41042z4 & ((nx56304z2)))

	.dataa(gnd),
	.datab(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.datac(nx56304z2),
	.datad(nx41042z4),
	.cin(gnd),
	.combout(nx56304z1),
	.cout());
// synopsys translate_off
defparam ix56304z7095.lut_mask = 16'hCCF0;
defparam ix56304z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N9
dffeas u_kirsch_reg_c3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56304z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N22
fiftyfivenm_lcell_comb ix56079z7097(
// Equation(s):
// nx56079z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5])) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]))))

	.dataa(nx41042z3),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx56079z2),
	.cout());
// synopsys translate_off
defparam ix56079z7097.lut_mask = 16'hFDEC;
defparam ix56079z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N10
fiftyfivenm_lcell_comb ix56079z7096(
// Equation(s):
// nx56079z1 = (u_kirsch_reg_row_index_0__aq) # ((u_kirsch_reg_row_index_1__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_reg_row_index_1__aq),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx56079z1),
	.cout());
// synopsys translate_off
defparam ix56079z7096.lut_mask = 16'hFFFC;
defparam ix56079z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N20
fiftyfivenm_lcell_comb ix56079z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[5] = (nx25391z3 & (((nx56079z2 & nx56079z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_5__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_c3_5__aq),
	.datac(nx56079z2),
	.datad(nx56079z1),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[5]),
	.cout());
// synopsys translate_off
defparam ix56079z7095.lut_mask = 16'hE444;
defparam ix56079z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N21
dffeas u_kirsch_reg_a2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N24
fiftyfivenm_lcell_comb ix839z7097(
// Equation(s):
// nx839z3 = (nx41042z11 & (u_kirsch_reg_h3_5__aq)) # (!nx41042z11 & ((u_kirsch_reg_a2_5__aq)))

	.dataa(nx41042z11),
	.datab(gnd),
	.datac(u_kirsch_reg_h3_5__aq),
	.datad(u_kirsch_reg_a2_5__aq),
	.cin(gnd),
	.combout(nx839z3),
	.cout());
// synopsys translate_off
defparam ix839z7097.lut_mask = 16'hF5A0;
defparam ix839z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N18
fiftyfivenm_lcell_comb ix839z7096(
// Equation(s):
// nx839z2 = (nx26412z2 & (u_kirsch_reg_g2_5__aq)) # (!nx26412z2 & ((nx839z3)))

	.dataa(u_kirsch_reg_g2_5__aq),
	.datab(gnd),
	.datac(nx26412z2),
	.datad(nx839z3),
	.cin(gnd),
	.combout(nx839z2),
	.cout());
// synopsys translate_off
defparam ix839z7096.lut_mask = 16'hAFA0;
defparam ix839z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N28
fiftyfivenm_lcell_comb ix839z7099(
// Equation(s):
// nx839z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5])))

	.dataa(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.datab(gnd),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx839z4),
	.cout());
// synopsys translate_off
defparam ix839z7099.lut_mask = 16'hAFA0;
defparam ix839z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N6
fiftyfivenm_lcell_comb ix839z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_5_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5])) # (!nx41042z4 & ((nx839z4)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[5]),
	.datad(nx839z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_5_),
	.cout());
// synopsys translate_off
defparam ix839z7098.lut_mask = 16'hF3C0;
defparam ix839z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N24
fiftyfivenm_lcell_comb ix839z7095(
// Equation(s):
// nx839z1 = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((u_kirsch_d3_9n15ss1_5_))) # (!pb_a0_a_ainput_o & (nx839z2)))) # (!write_fifo_reg_rd_en_delayed_aq & (nx839z2))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(nx839z2),
	.datac(pb_a0_a_ainput_o),
	.datad(u_kirsch_d3_9n15ss1_5_),
	.cin(gnd),
	.combout(nx839z1),
	.cout());
// synopsys translate_off
defparam ix839z7095.lut_mask = 16'hEC4C;
defparam ix839z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N25
dffeas u_kirsch_reg_i_3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx839z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y18_N27
dffeas u_kirsch_reg_g3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N26
fiftyfivenm_lcell_comb ix57956z7096(
// Equation(s):
// nx57956z2 = (nx26412z6 & (((u_kirsch_reg_e3_5__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_e3_5__aq))) # (!nx26412z4 & (u_kirsch_reg_g3_5__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_g3_5__aq),
	.datad(u_kirsch_reg_e3_5__aq),
	.cin(gnd),
	.combout(nx57956z2),
	.cout());
// synopsys translate_off
defparam ix57956z7096.lut_mask = 16'hFE10;
defparam ix57956z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N16
fiftyfivenm_lcell_comb ix57956z7095(
// Equation(s):
// nx57956z1 = (nx26412z2 & ((u_kirsch_reg_c3_5__aq))) # (!nx26412z2 & (nx57956z2))

	.dataa(nx57956z2),
	.datab(u_kirsch_reg_c3_5__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx57956z1),
	.cout());
// synopsys translate_off
defparam ix57956z7095.lut_mask = 16'hCCAA;
defparam ix57956z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N23
dffeas u_kirsch_reg_a3_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y16_N17
dffeas u_kirsch_reg_i_2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57956z1),
	.asdata(u_kirsch_reg_a3_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N30
fiftyfivenm_lcell_comb ix50172z7096(
// Equation(s):
// nx50172z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx50172z2),
	.cout());
// synopsys translate_off
defparam ix50172z7096.lut_mask = 16'hFA50;
defparam ix50172z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N0
fiftyfivenm_lcell_comb ix50172z7095(
// Equation(s):
// nx50172z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]))) # (!nx41042z4 & (nx50172z2))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(nx50172z2),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx50172z1),
	.cout());
// synopsys translate_off
defparam ix50172z7095.lut_mask = 16'hFA50;
defparam ix50172z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y13_N1
dffeas u_kirsch_reg_d3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50172z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N4
fiftyfivenm_lcell_comb ix38051z7097(
// Equation(s):
// nx38051z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]))))

	.dataa(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datab(nx41042z4),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx38051z2),
	.cout());
// synopsys translate_off
defparam ix38051z7097.lut_mask = 16'hEFEC;
defparam ix38051z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N10
fiftyfivenm_lcell_comb ix38051z7096(
// Equation(s):
// nx38051z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.datad(gnd),
	.cin(gnd),
	.combout(nx38051z1),
	.cout());
// synopsys translate_off
defparam ix38051z7096.lut_mask = 16'hFEFE;
defparam ix38051z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N16
fiftyfivenm_lcell_comb ix38051z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[4] = (nx25391z3 & (((nx38051z2 & nx38051z1)))) # (!nx25391z3 & (u_kirsch_reg_d3_4__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_d3_4__aq),
	.datac(nx38051z2),
	.datad(nx38051z1),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[4]),
	.cout());
// synopsys translate_off
defparam ix38051z7095.lut_mask = 16'hE444;
defparam ix38051z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N17
dffeas u_kirsch_reg_h2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y14_N3
dffeas u_kirsch_reg_h3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N2
fiftyfivenm_lcell_comb ix1836z7097(
// Equation(s):
// nx1836z3 = (nx41042z11 & ((u_kirsch_reg_h3_4__aq))) # (!nx41042z11 & (u_kirsch_reg_a2_4__aq))

	.dataa(u_kirsch_reg_a2_4__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_h3_4__aq),
	.datad(nx41042z11),
	.cin(gnd),
	.combout(nx1836z3),
	.cout());
// synopsys translate_off
defparam ix1836z7097.lut_mask = 16'hF0AA;
defparam ix1836z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N20
fiftyfivenm_lcell_comb ix1836z7096(
// Equation(s):
// nx1836z2 = (nx26412z2 & (u_kirsch_reg_g2_4__aq)) # (!nx26412z2 & ((nx1836z3)))

	.dataa(u_kirsch_reg_g2_4__aq),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(nx1836z3),
	.cin(gnd),
	.combout(nx1836z2),
	.cout());
// synopsys translate_off
defparam ix1836z7096.lut_mask = 16'hBB88;
defparam ix1836z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N12
fiftyfivenm_lcell_comb ix1836z7099(
// Equation(s):
// nx1836z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4])))

	.dataa(nx41042z3),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx1836z4),
	.cout());
// synopsys translate_off
defparam ix1836z7099.lut_mask = 16'hF5A0;
defparam ix1836z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N2
fiftyfivenm_lcell_comb ix1836z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_4_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4])) # (!nx41042z4 & ((nx1836z4)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[4]),
	.datad(nx1836z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_4_),
	.cout());
// synopsys translate_off
defparam ix1836z7098.lut_mask = 16'hF3C0;
defparam ix1836z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N0
fiftyfivenm_lcell_comb ix1836z7095(
// Equation(s):
// nx1836z1 = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((u_kirsch_d3_9n15ss1_4_))) # (!pb_a0_a_ainput_o & (nx1836z2)))) # (!write_fifo_reg_rd_en_delayed_aq & (((nx1836z2))))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(pb_a0_a_ainput_o),
	.datac(nx1836z2),
	.datad(u_kirsch_d3_9n15ss1_4_),
	.cin(gnd),
	.combout(nx1836z1),
	.cout());
// synopsys translate_off
defparam ix1836z7095.lut_mask = 16'hF870;
defparam ix1836z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N1
dffeas u_kirsch_reg_i_3_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1836z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y16_N11
dffeas u_kirsch_reg_e3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N8
fiftyfivenm_lcell_comb ix42189z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[3] = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel[3]))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_3__aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_3__aq))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(u_kirsch_reg_e3_3__aq),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[3]),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[3]),
	.cout());
// synopsys translate_off
defparam ix42189z7095.lut_mask = 16'hEC4C;
defparam ix42189z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N9
dffeas u_kirsch_reg_g2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N21
dffeas u_kirsch_reg_g3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N20
fiftyfivenm_lcell_comb ix59950z7096(
// Equation(s):
// nx59950z2 = (nx26412z6 & (u_kirsch_reg_e3_3__aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_e3_3__aq)) # (!nx26412z4 & ((u_kirsch_reg_g3_3__aq)))))

	.dataa(nx26412z6),
	.datab(u_kirsch_reg_e3_3__aq),
	.datac(u_kirsch_reg_g3_3__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx59950z2),
	.cout());
// synopsys translate_off
defparam ix59950z7096.lut_mask = 16'hCCD8;
defparam ix59950z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N28
fiftyfivenm_lcell_comb ix54310z7096(
// Equation(s):
// nx54310z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx54310z2),
	.cout());
// synopsys translate_off
defparam ix54310z7096.lut_mask = 16'hFC30;
defparam ix54310z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N24
fiftyfivenm_lcell_comb ix54310z7095(
// Equation(s):
// nx54310z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3])) # (!nx41042z4 & ((nx54310z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datad(nx54310z2),
	.cin(gnd),
	.combout(nx54310z1),
	.cout());
// synopsys translate_off
defparam ix54310z7095.lut_mask = 16'hF5A0;
defparam ix54310z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N25
dffeas u_kirsch_reg_c3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx54310z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N10
fiftyfivenm_lcell_comb ix59950z7095(
// Equation(s):
// nx59950z1 = (nx26412z2 & ((u_kirsch_reg_c3_3__aq))) # (!nx26412z2 & (nx59950z2))

	.dataa(nx59950z2),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(u_kirsch_reg_c3_3__aq),
	.cin(gnd),
	.combout(nx59950z1),
	.cout());
// synopsys translate_off
defparam ix59950z7095.lut_mask = 16'hEE22;
defparam ix59950z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N14
fiftyfivenm_lcell_comb ix58073z7096(
// Equation(s):
// nx58073z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]) # (u_kirsch_reg_row_index_0__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datad(u_kirsch_reg_row_index_0__aq),
	.cin(gnd),
	.combout(nx58073z1),
	.cout());
// synopsys translate_off
defparam ix58073z7096.lut_mask = 16'hFFFC;
defparam ix58073z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N2
fiftyfivenm_lcell_comb ix58073z7097(
// Equation(s):
// nx58073z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3])) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]))))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datab(nx41042z3),
	.datac(nx41042z4),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx58073z2),
	.cout());
// synopsys translate_off
defparam ix58073z7097.lut_mask = 16'hFBF8;
defparam ix58073z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N22
fiftyfivenm_lcell_comb ix58073z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[3] = (nx25391z3 & (((nx58073z1 & nx58073z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_3__aq))

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_c3_3__aq),
	.datac(nx58073z1),
	.datad(nx58073z2),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[3]),
	.cout());
// synopsys translate_off
defparam ix58073z7095.lut_mask = 16'hE444;
defparam ix58073z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N23
dffeas u_kirsch_reg_a2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N23
dffeas u_kirsch_reg_a3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N11
dffeas u_kirsch_reg_i_2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59950z1),
	.asdata(u_kirsch_reg_a3_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N8
fiftyfivenm_lcell_comb ix49175z7096(
// Equation(s):
// nx49175z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3])))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx49175z2),
	.cout());
// synopsys translate_off
defparam ix49175z7096.lut_mask = 16'hF3C0;
defparam ix49175z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y12_N2
fiftyfivenm_lcell_comb ix49175z7095(
// Equation(s):
// nx49175z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3])) # (!nx41042z4 & ((nx49175z2)))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datab(gnd),
	.datac(nx41042z4),
	.datad(nx49175z2),
	.cin(gnd),
	.combout(nx49175z1),
	.cout());
// synopsys translate_off
defparam ix49175z7095.lut_mask = 16'hAFA0;
defparam ix49175z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N3
dffeas u_kirsch_reg_d3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx49175z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N4
fiftyfivenm_lcell_comb ix37054z7096(
// Equation(s):
// nx37054z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]) # (u_kirsch_reg_row_index_0__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datad(u_kirsch_reg_row_index_0__aq),
	.cin(gnd),
	.combout(nx37054z1),
	.cout());
// synopsys translate_off
defparam ix37054z7096.lut_mask = 16'hFFFC;
defparam ix37054z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N20
fiftyfivenm_lcell_comb ix37054z7097(
// Equation(s):
// nx37054z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3])))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datab(nx41042z3),
	.datac(nx41042z4),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx37054z2),
	.cout());
// synopsys translate_off
defparam ix37054z7097.lut_mask = 16'hFEF2;
defparam ix37054z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N0
fiftyfivenm_lcell_comb ix37054z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[3] = (nx25391z3 & (((nx37054z1 & nx37054z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_3__aq))

	.dataa(u_kirsch_reg_d3_3__aq),
	.datab(nx25391z3),
	.datac(nx37054z1),
	.datad(nx37054z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[3]),
	.cout());
// synopsys translate_off
defparam ix37054z7095.lut_mask = 16'hE222;
defparam ix37054z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N1
dffeas u_kirsch_reg_h2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N15
dffeas u_kirsch_reg_h3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N14
fiftyfivenm_lcell_comb ix2833z7097(
// Equation(s):
// nx2833z3 = (nx26412z4 & (((u_kirsch_reg_h3_3__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_3__aq))) # (!nx26412z6 & (u_kirsch_reg_a2_3__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_a2_3__aq),
	.datac(u_kirsch_reg_h3_3__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx2833z3),
	.cout());
// synopsys translate_off
defparam ix2833z7097.lut_mask = 16'hF0E4;
defparam ix2833z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N18
fiftyfivenm_lcell_comb ix2833z7096(
// Equation(s):
// nx2833z2 = (nx26412z2 & (u_kirsch_reg_g2_3__aq)) # (!nx26412z2 & ((nx2833z3)))

	.dataa(gnd),
	.datab(u_kirsch_reg_g2_3__aq),
	.datac(nx2833z3),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx2833z2),
	.cout());
// synopsys translate_off
defparam ix2833z7096.lut_mask = 16'hCCF0;
defparam ix2833z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N10
fiftyfivenm_lcell_comb ix2833z7099(
// Equation(s):
// nx2833z4 = (nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]))) # (!nx41042z3 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]))

	.dataa(gnd),
	.datab(nx41042z3),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx2833z4),
	.cout());
// synopsys translate_off
defparam ix2833z7099.lut_mask = 16'hFC30;
defparam ix2833z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N16
fiftyfivenm_lcell_comb ix2833z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_3_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3])) # (!nx41042z4 & ((nx2833z4)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[3]),
	.datad(nx2833z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_3_),
	.cout());
// synopsys translate_off
defparam ix2833z7098.lut_mask = 16'hF3C0;
defparam ix2833z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N6
fiftyfivenm_lcell_comb ix2833z7095(
// Equation(s):
// nx2833z1 = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((u_kirsch_d3_9n15ss1_3_))) # (!write_fifo_reg_rd_en_delayed_aq & (nx2833z2)))) # (!pb_a0_a_ainput_o & (nx2833z2))

	.dataa(pb_a0_a_ainput_o),
	.datab(nx2833z2),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(u_kirsch_d3_9n15ss1_3_),
	.cin(gnd),
	.combout(nx2833z1),
	.cout());
// synopsys translate_off
defparam ix2833z7095.lut_mask = 16'hEC4C;
defparam ix2833z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N7
dffeas u_kirsch_reg_i_3_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2833z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y16_N29
dffeas u_kirsch_reg_e3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N10
fiftyfivenm_lcell_comb ix41192z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[2] = (write_fifo_reg_rd_en_delayed_aq & ((pb_a0_a_ainput_o & ((k_i_pixel[2]))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_2__aq)))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_2__aq))

	.dataa(write_fifo_reg_rd_en_delayed_aq),
	.datab(u_kirsch_reg_e3_2__aq),
	.datac(pb_a0_a_ainput_o),
	.datad(k_i_pixel[2]),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[2]),
	.cout());
// synopsys translate_off
defparam ix41192z7095.lut_mask = 16'hEC4C;
defparam ix41192z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N11
dffeas u_kirsch_reg_g2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N28
fiftyfivenm_lcell_comb ix53313z7096(
// Equation(s):
// nx53313z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx53313z2),
	.cout());
// synopsys translate_off
defparam ix53313z7096.lut_mask = 16'hFA50;
defparam ix53313z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N30
fiftyfivenm_lcell_comb ix53313z7095(
// Equation(s):
// nx53313z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2])) # (!nx41042z4 & ((nx53313z2)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datad(nx53313z2),
	.cin(gnd),
	.combout(nx53313z1),
	.cout());
// synopsys translate_off
defparam ix53313z7095.lut_mask = 16'hF3C0;
defparam ix53313z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y14_N31
dffeas u_kirsch_reg_c3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx53313z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N26
fiftyfivenm_lcell_comb ix59070z7096(
// Equation(s):
// nx59070z1 = (u_kirsch_reg_row_index_0__aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]) # (u_kirsch_reg_row_index_1__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx59070z1),
	.cout());
// synopsys translate_off
defparam ix59070z7096.lut_mask = 16'hFFFC;
defparam ix59070z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N12
fiftyfivenm_lcell_comb ix59070z7097(
// Equation(s):
// nx59070z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2])) # (!nx41042z3 & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]))))

	.dataa(nx41042z3),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx59070z2),
	.cout());
// synopsys translate_off
defparam ix59070z7097.lut_mask = 16'hFDEC;
defparam ix59070z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N4
fiftyfivenm_lcell_comb ix59070z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[2] = (nx25391z3 & (((nx59070z1 & nx59070z2)))) # (!nx25391z3 & (u_kirsch_reg_c3_2__aq))

	.dataa(u_kirsch_reg_c3_2__aq),
	.datab(nx25391z3),
	.datac(nx59070z1),
	.datad(nx59070z2),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[2]),
	.cout());
// synopsys translate_off
defparam ix59070z7095.lut_mask = 16'hE222;
defparam ix59070z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N5
dffeas u_kirsch_reg_a2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N10
fiftyfivenm_lcell_comb ix36057z7097(
// Equation(s):
// nx36057z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]))))

	.dataa(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datab(nx41042z4),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx36057z2),
	.cout());
// synopsys translate_off
defparam ix36057z7097.lut_mask = 16'hEFEC;
defparam ix36057z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N6
fiftyfivenm_lcell_comb ix48178z7096(
// Equation(s):
// nx48178z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2])))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx48178z2),
	.cout());
// synopsys translate_off
defparam ix48178z7096.lut_mask = 16'hF3C0;
defparam ix48178z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N0
fiftyfivenm_lcell_comb ix48178z7095(
// Equation(s):
// nx48178z1 = (nx41042z4 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]))) # (!nx41042z4 & (nx48178z2))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(nx48178z2),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx48178z1),
	.cout());
// synopsys translate_off
defparam ix48178z7095.lut_mask = 16'hFA50;
defparam ix48178z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y12_N1
dffeas u_kirsch_reg_d3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx48178z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N24
fiftyfivenm_lcell_comb ix36057z7096(
// Equation(s):
// nx36057z1 = (u_kirsch_reg_row_index_0__aq) # ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]) # (u_kirsch_reg_row_index_1__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_0__aq),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx36057z1),
	.cout());
// synopsys translate_off
defparam ix36057z7096.lut_mask = 16'hFFFC;
defparam ix36057z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N28
fiftyfivenm_lcell_comb ix36057z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[2] = (nx25391z3 & (nx36057z2 & ((nx36057z1)))) # (!nx25391z3 & (((u_kirsch_reg_d3_2__aq))))

	.dataa(nx36057z2),
	.datab(u_kirsch_reg_d3_2__aq),
	.datac(nx25391z3),
	.datad(nx36057z1),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[2]),
	.cout());
// synopsys translate_off
defparam ix36057z7095.lut_mask = 16'hAC0C;
defparam ix36057z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N29
dffeas u_kirsch_reg_h2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N17
dffeas u_kirsch_reg_h3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N16
fiftyfivenm_lcell_comb ix3830z7097(
// Equation(s):
// nx3830z3 = (nx26412z6 & (((u_kirsch_reg_h3_2__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_h3_2__aq))) # (!nx26412z4 & (u_kirsch_reg_a2_2__aq))))

	.dataa(u_kirsch_reg_a2_2__aq),
	.datab(nx26412z6),
	.datac(u_kirsch_reg_h3_2__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx3830z3),
	.cout());
// synopsys translate_off
defparam ix3830z7097.lut_mask = 16'hF0E2;
defparam ix3830z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N26
fiftyfivenm_lcell_comb ix3830z7096(
// Equation(s):
// nx3830z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_g2_2__aq)) # (!nx26412z2 & ((nx3830z3))))

	.dataa(u_kirsch_reg_g2_2__aq),
	.datab(nx25391z3),
	.datac(nx3830z3),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx3830z2),
	.cout());
// synopsys translate_off
defparam ix3830z7096.lut_mask = 16'hEEFC;
defparam ix3830z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N18
fiftyfivenm_lcell_comb ix3830z7099(
// Equation(s):
// nx3830z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2])))

	.dataa(gnd),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx3830z4),
	.cout());
// synopsys translate_off
defparam ix3830z7099.lut_mask = 16'hCFC0;
defparam ix3830z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N20
fiftyfivenm_lcell_comb ix3830z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_2_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2])) # (!nx41042z4 & ((nx3830z4)))

	.dataa(gnd),
	.datab(nx41042z4),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[2]),
	.datad(nx3830z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_2_),
	.cout());
// synopsys translate_off
defparam ix3830z7098.lut_mask = 16'hF3C0;
defparam ix3830z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N14
fiftyfivenm_lcell_comb ix3830z7095(
// Equation(s):
// nx3830z1 = (nx3830z2 & (((u_kirsch_d3_9n15ss1_2_) # (!write_fifo_reg_rd_en_delayed_aq)) # (!pb_a0_a_ainput_o)))

	.dataa(pb_a0_a_ainput_o),
	.datab(nx3830z2),
	.datac(write_fifo_reg_rd_en_delayed_aq),
	.datad(u_kirsch_d3_9n15ss1_2_),
	.cin(gnd),
	.combout(nx3830z1),
	.cout());
// synopsys translate_off
defparam ix3830z7095.lut_mask = 16'hCC4C;
defparam ix3830z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N15
dffeas u_kirsch_reg_i_3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx3830z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N26
fiftyfivenm_lcell_comb u_kirsch_reg_g3_2__afeeder(
// Equation(s):
// u_kirsch_reg_g3_2__afeeder_combout = u_kirsch_reg_g2_2__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_g2_2__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_g3_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_g3_2__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_g3_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N27
dffeas u_kirsch_reg_g3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_g3_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N28
fiftyfivenm_lcell_comb ix60947z7096(
// Equation(s):
// nx60947z2 = (nx26412z4 & (((u_kirsch_reg_e3_2__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_2__aq))) # (!nx26412z6 & (u_kirsch_reg_g3_2__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g3_2__aq),
	.datac(u_kirsch_reg_e3_2__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx60947z2),
	.cout());
// synopsys translate_off
defparam ix60947z7096.lut_mask = 16'hF0E4;
defparam ix60947z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N18
fiftyfivenm_lcell_comb ix60947z7095(
// Equation(s):
// nx60947z1 = (nx26412z2 & ((u_kirsch_reg_c3_2__aq))) # (!nx26412z2 & (nx60947z2))

	.dataa(nx60947z2),
	.datab(u_kirsch_reg_c3_2__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx60947z1),
	.cout());
// synopsys translate_off
defparam ix60947z7095.lut_mask = 16'hCCAA;
defparam ix60947z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N5
dffeas u_kirsch_reg_a3_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X27_Y16_N19
dffeas u_kirsch_reg_i_2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60947z1),
	.asdata(u_kirsch_reg_a3_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y16_N21
dffeas u_kirsch_reg_e3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N6
fiftyfivenm_lcell_comb ix40195z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[1] = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel[1]))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_1__aq)))) # (!pb_a0_a_ainput_o & (u_kirsch_reg_e3_1__aq))

	.dataa(u_kirsch_reg_e3_1__aq),
	.datab(pb_a0_a_ainput_o),
	.datac(k_i_pixel[1]),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[1]),
	.cout());
// synopsys translate_off
defparam ix40195z7095.lut_mask = 16'hE2AA;
defparam ix40195z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N7
dffeas u_kirsch_reg_g2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N2
fiftyfivenm_lcell_comb ix52316z7096(
// Equation(s):
// nx52316z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1])))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx52316z2),
	.cout());
// synopsys translate_off
defparam ix52316z7096.lut_mask = 16'hF5A0;
defparam ix52316z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N20
fiftyfivenm_lcell_comb ix52316z7095(
// Equation(s):
// nx52316z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1])) # (!nx41042z4 & ((nx52316z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.datad(nx52316z2),
	.cin(gnd),
	.combout(nx52316z1),
	.cout());
// synopsys translate_off
defparam ix52316z7095.lut_mask = 16'hF5A0;
defparam ix52316z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N21
dffeas u_kirsch_reg_c3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx52316z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N30
fiftyfivenm_lcell_comb ix60067z7097(
// Equation(s):
// nx60067z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1])))

	.dataa(nx41042z4),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datac(nx41042z3),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx60067z2),
	.cout());
// synopsys translate_off
defparam ix60067z7097.lut_mask = 16'hFEAE;
defparam ix60067z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N2
fiftyfivenm_lcell_comb ix60067z7096(
// Equation(s):
// nx60067z1 = (u_kirsch_reg_row_index_0__aq) # ((u_kirsch_reg_row_index_1__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]))

	.dataa(u_kirsch_reg_row_index_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_row_index_1__aq),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx60067z1),
	.cout());
// synopsys translate_off
defparam ix60067z7096.lut_mask = 16'hFFFA;
defparam ix60067z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N20
fiftyfivenm_lcell_comb ix60067z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[1] = (nx25391z3 & (((nx60067z2 & nx60067z1)))) # (!nx25391z3 & (u_kirsch_reg_c3_1__aq))

	.dataa(u_kirsch_reg_c3_1__aq),
	.datab(nx25391z3),
	.datac(nx60067z2),
	.datad(nx60067z1),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[1]),
	.cout());
// synopsys translate_off
defparam ix60067z7095.lut_mask = 16'hE222;
defparam ix60067z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N21
dffeas u_kirsch_reg_a2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N10
fiftyfivenm_lcell_comb ix47181z7096(
// Equation(s):
// nx47181z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx47181z2),
	.cout());
// synopsys translate_off
defparam ix47181z7096.lut_mask = 16'hFC30;
defparam ix47181z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N4
fiftyfivenm_lcell_comb ix47181z7095(
// Equation(s):
// nx47181z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1])) # (!nx41042z4 & ((nx47181z2)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.datad(nx47181z2),
	.cin(gnd),
	.combout(nx47181z1),
	.cout());
// synopsys translate_off
defparam ix47181z7095.lut_mask = 16'hF5A0;
defparam ix47181z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y13_N5
dffeas u_kirsch_reg_d3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx47181z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N14
fiftyfivenm_lcell_comb ix35060z7096(
// Equation(s):
// nx35060z1 = (u_kirsch_reg_row_index_0__aq) # ((u_kirsch_reg_row_index_1__aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]))

	.dataa(u_kirsch_reg_row_index_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_row_index_1__aq),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx35060z1),
	.cout());
// synopsys translate_off
defparam ix35060z7096.lut_mask = 16'hFFFA;
defparam ix35060z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N0
fiftyfivenm_lcell_comb ix35060z7097(
// Equation(s):
// nx35060z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]))))

	.dataa(nx41042z4),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx35060z2),
	.cout());
// synopsys translate_off
defparam ix35060z7097.lut_mask = 16'hEFEA;
defparam ix35060z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N18
fiftyfivenm_lcell_comb ix35060z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[1] = (nx25391z3 & (((nx35060z1 & nx35060z2)))) # (!nx25391z3 & (u_kirsch_reg_d3_1__aq))

	.dataa(u_kirsch_reg_d3_1__aq),
	.datab(nx25391z3),
	.datac(nx35060z1),
	.datad(nx35060z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[1]),
	.cout());
// synopsys translate_off
defparam ix35060z7095.lut_mask = 16'hE222;
defparam ix35060z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N19
dffeas u_kirsch_reg_h2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N25
dffeas u_kirsch_reg_h3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N24
fiftyfivenm_lcell_comb ix4827z7097(
// Equation(s):
// nx4827z3 = (nx26412z4 & (((u_kirsch_reg_h3_1__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_1__aq))) # (!nx26412z6 & (u_kirsch_reg_a2_1__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_a2_1__aq),
	.datac(u_kirsch_reg_h3_1__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx4827z3),
	.cout());
// synopsys translate_off
defparam ix4827z7097.lut_mask = 16'hF0E4;
defparam ix4827z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N10
fiftyfivenm_lcell_comb ix4827z7096(
// Equation(s):
// nx4827z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_g2_1__aq)) # (!nx26412z2 & ((nx4827z3))))

	.dataa(nx26412z2),
	.datab(nx25391z3),
	.datac(u_kirsch_reg_g2_1__aq),
	.datad(nx4827z3),
	.cin(gnd),
	.combout(nx4827z2),
	.cout());
// synopsys translate_off
defparam ix4827z7096.lut_mask = 16'hFDEC;
defparam ix4827z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N28
fiftyfivenm_lcell_comb ix4827z7099(
// Equation(s):
// nx4827z4 = (nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1])))

	.dataa(nx41042z3),
	.datab(gnd),
	.datac(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx4827z4),
	.cout());
// synopsys translate_off
defparam ix4827z7099.lut_mask = 16'hF5A0;
defparam ix4827z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N6
fiftyfivenm_lcell_comb ix4827z7098(
// Equation(s):
// u_kirsch_d3_9n15ss1_1_ = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1])) # (!nx41042z4 & ((nx4827z4)))

	.dataa(nx41042z4),
	.datab(gnd),
	.datac(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[1]),
	.datad(nx4827z4),
	.cin(gnd),
	.combout(u_kirsch_d3_9n15ss1_1_),
	.cout());
// synopsys translate_off
defparam ix4827z7098.lut_mask = 16'hF5A0;
defparam ix4827z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N16
fiftyfivenm_lcell_comb ix4827z7095(
// Equation(s):
// nx4827z1 = (nx4827z2 & (((u_kirsch_d3_9n15ss1_1_) # (!pb_a0_a_ainput_o)) # (!write_fifo_reg_rd_en_delayed_aq)))

	.dataa(nx4827z2),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(pb_a0_a_ainput_o),
	.datad(u_kirsch_d3_9n15ss1_1_),
	.cin(gnd),
	.combout(nx4827z1),
	.cout());
// synopsys translate_off
defparam ix4827z7095.lut_mask = 16'hAA2A;
defparam ix4827z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N17
dffeas u_kirsch_reg_i_3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx4827z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y16_N13
dffeas u_kirsch_reg_g3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N28
fiftyfivenm_lcell_comb ix61944z7096(
// Equation(s):
// nx61944z2 = (nx26412z4 & (((u_kirsch_reg_e3_1__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_e3_1__aq))) # (!nx26412z6 & (u_kirsch_reg_g3_1__aq))))

	.dataa(u_kirsch_reg_g3_1__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_e3_1__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx61944z2),
	.cout());
// synopsys translate_off
defparam ix61944z7096.lut_mask = 16'hF0E2;
defparam ix61944z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N12
fiftyfivenm_lcell_comb ix61944z7095(
// Equation(s):
// nx61944z1 = (nx26412z2 & (u_kirsch_reg_c3_1__aq)) # (!nx26412z2 & ((nx61944z2)))

	.dataa(u_kirsch_reg_c3_1__aq),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(nx61944z2),
	.cin(gnd),
	.combout(nx61944z1),
	.cout());
// synopsys translate_off
defparam ix61944z7095.lut_mask = 16'hBB88;
defparam ix61944z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N19
dffeas u_kirsch_reg_a3_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y15_N13
dffeas u_kirsch_reg_i_2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61944z1),
	.asdata(u_kirsch_reg_a3_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N17
dffeas u_kirsch_reg_e3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(write_fifo_mem_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_e3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_e3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_e3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N8
fiftyfivenm_lcell_comb ix39198z7095(
// Equation(s):
// u_kirsch_f3_9n22ss1[0] = (pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq & ((k_i_pixel[0]))) # (!write_fifo_reg_rd_en_delayed_aq & (u_kirsch_reg_e3_0__aq)))) # (!pb_a0_a_ainput_o & (((u_kirsch_reg_e3_0__aq))))

	.dataa(pb_a0_a_ainput_o),
	.datab(write_fifo_reg_rd_en_delayed_aq),
	.datac(u_kirsch_reg_e3_0__aq),
	.datad(k_i_pixel[0]),
	.cin(gnd),
	.combout(u_kirsch_f3_9n22ss1[0]),
	.cout());
// synopsys translate_off
defparam ix39198z7095.lut_mask = 16'hF870;
defparam ix39198z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N9
dffeas u_kirsch_reg_g2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_f3_9n22ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_g2_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N11
dffeas u_kirsch_reg_g3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_g2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_g3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_g3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_g3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N6
fiftyfivenm_lcell_comb ix62941z7096(
// Equation(s):
// nx62941z2 = (nx26412z6 & (((u_kirsch_reg_e3_0__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_e3_0__aq))) # (!nx26412z4 & (u_kirsch_reg_g3_0__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_g3_0__aq),
	.datad(u_kirsch_reg_e3_0__aq),
	.cin(gnd),
	.combout(nx62941z2),
	.cout());
// synopsys translate_off
defparam ix62941z7096.lut_mask = 16'hFE10;
defparam ix62941z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N10
fiftyfivenm_lcell_comb ix51319z7096(
// Equation(s):
// nx51319z2 = (u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0]))) # (!u_kirsch_reg_row_index_1__aq & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(gnd),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx51319z2),
	.cout());
// synopsys translate_off
defparam ix51319z7096.lut_mask = 16'hEE22;
defparam ix51319z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N20
fiftyfivenm_lcell_comb ix51319z7095(
// Equation(s):
// nx51319z1 = (nx41042z4 & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0])) # (!nx41042z4 & ((nx51319z2)))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.datab(gnd),
	.datac(nx41042z4),
	.datad(nx51319z2),
	.cin(gnd),
	.combout(nx51319z1),
	.cout());
// synopsys translate_off
defparam ix51319z7095.lut_mask = 16'hAFA0;
defparam ix51319z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N21
dffeas u_kirsch_reg_c3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51319z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_c3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_c3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_c3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N20
fiftyfivenm_lcell_comb ix62941z7095(
// Equation(s):
// nx62941z1 = (nx26412z2 & ((u_kirsch_reg_c3_0__aq))) # (!nx26412z2 & (nx62941z2))

	.dataa(nx62941z2),
	.datab(u_kirsch_reg_c3_0__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx62941z1),
	.cout());
// synopsys translate_off
defparam ix62941z7095.lut_mask = 16'hCCAA;
defparam ix62941z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N4
fiftyfivenm_lcell_comb ix61064z7097(
// Equation(s):
// nx61064z2 = (nx41042z4) # ((nx41042z3 & ((u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]))) # (!nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0])))

	.dataa(nx41042z4),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datac(nx41042z3),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx61064z2),
	.cout());
// synopsys translate_off
defparam ix61064z7097.lut_mask = 16'hFEAE;
defparam ix61064z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N14
fiftyfivenm_lcell_comb ix61064z7096(
// Equation(s):
// nx61064z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx61064z1),
	.cout());
// synopsys translate_off
defparam ix61064z7096.lut_mask = 16'hFFFC;
defparam ix61064z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N24
fiftyfivenm_lcell_comb ix61064z7095(
// Equation(s):
// u_kirsch_a2_9n22ss1[0] = (nx25391z3 & (nx61064z2 & (nx61064z1))) # (!nx25391z3 & (((u_kirsch_reg_c3_0__aq))))

	.dataa(nx25391z3),
	.datab(nx61064z2),
	.datac(nx61064z1),
	.datad(u_kirsch_reg_c3_0__aq),
	.cin(gnd),
	.combout(u_kirsch_a2_9n22ss1[0]),
	.cout());
// synopsys translate_off
defparam ix61064z7095.lut_mask = 16'hD580;
defparam ix61064z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N25
dffeas u_kirsch_reg_a2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_a2_9n22ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_a2_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N25
dffeas u_kirsch_reg_a3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_a2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_a3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_a3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_a3_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X27_Y16_N21
dffeas u_kirsch_reg_i_2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62941z1),
	.asdata(u_kirsch_reg_a3_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_2_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N2
fiftyfivenm_lcell_comb ix34063z7096(
// Equation(s):
// nx34063z1 = (u_kirsch_reg_row_index_1__aq) # ((u_kirsch_reg_row_index_0__aq) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]))

	.dataa(gnd),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(u_kirsch_reg_row_index_0__aq),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx34063z1),
	.cout());
// synopsys translate_off
defparam ix34063z7096.lut_mask = 16'hFFFC;
defparam ix34063z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N2
fiftyfivenm_lcell_comb ix46184z7096(
// Equation(s):
// nx46184z2 = (u_kirsch_reg_row_index_1__aq & (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0])) # (!u_kirsch_reg_row_index_1__aq & ((u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0])))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(gnd),
	.datad(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx46184z2),
	.cout());
// synopsys translate_off
defparam ix46184z7096.lut_mask = 16'hBB88;
defparam ix46184z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N28
fiftyfivenm_lcell_comb ix46184z7095(
// Equation(s):
// nx46184z1 = (nx41042z4 & (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0])) # (!nx41042z4 & ((nx46184z2)))

	.dataa(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.datab(gnd),
	.datac(nx41042z4),
	.datad(nx46184z2),
	.cin(gnd),
	.combout(nx46184z1),
	.cout());
// synopsys translate_off
defparam ix46184z7095.lut_mask = 16'hAFA0;
defparam ix46184z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N29
dffeas u_kirsch_reg_d3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46184z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53163z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_d3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_d3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_d3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N18
fiftyfivenm_lcell_comb ix34063z7097(
// Equation(s):
// nx34063z2 = (nx41042z4) # ((nx41042z3 & (u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0])) # (!nx41042z3 & ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]))))

	.dataa(nx41042z4),
	.datab(u_kirsch_memA_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx34063z2),
	.cout());
// synopsys translate_off
defparam ix34063z7097.lut_mask = 16'hEFEA;
defparam ix34063z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N30
fiftyfivenm_lcell_comb ix34063z7095(
// Equation(s):
// u_kirsch_h2_9n22ss1[0] = (nx25391z3 & (nx34063z1 & ((nx34063z2)))) # (!nx25391z3 & (((u_kirsch_reg_d3_0__aq))))

	.dataa(nx34063z1),
	.datab(nx25391z3),
	.datac(u_kirsch_reg_d3_0__aq),
	.datad(nx34063z2),
	.cin(gnd),
	.combout(u_kirsch_h2_9n22ss1[0]),
	.cout());
// synopsys translate_off
defparam ix34063z7095.lut_mask = 16'hB830;
defparam ix34063z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N31
dffeas u_kirsch_reg_h2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_h2_9n22ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_h2_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N13
dffeas u_kirsch_reg_h3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_h2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41042z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_h3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_h3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_h3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N12
fiftyfivenm_lcell_comb ix5824z7097(
// Equation(s):
// nx5824z3 = (nx26412z4 & (((u_kirsch_reg_h3_0__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_h3_0__aq))) # (!nx26412z6 & (u_kirsch_reg_a2_0__aq))))

	.dataa(u_kirsch_reg_a2_0__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_h3_0__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx5824z3),
	.cout());
// synopsys translate_off
defparam ix5824z7097.lut_mask = 16'hF0E2;
defparam ix5824z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N30
fiftyfivenm_lcell_comb ix5824z7096(
// Equation(s):
// nx5824z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_g2_0__aq))) # (!nx26412z2 & (nx5824z3)))

	.dataa(nx5824z3),
	.datab(u_kirsch_reg_g2_0__aq),
	.datac(nx25391z3),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx5824z2),
	.cout());
// synopsys translate_off
defparam ix5824z7096.lut_mask = 16'hFCFA;
defparam ix5824z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N8
fiftyfivenm_lcell_comb ix5824z7098(
// Equation(s):
// nx5824z4 = ((u_kirsch_reg_row_index_1__aq) # ((nx41042z3) # (u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]))) # (!nx25391z3)

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(nx41042z3),
	.datad(u_kirsch_memC_mem_aix64056z29485_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx5824z4),
	.cout());
// synopsys translate_off
defparam ix5824z7098.lut_mask = 16'hFFFD;
defparam ix5824z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N0
fiftyfivenm_lcell_comb ix5824z7095(
// Equation(s):
// nx5824z1 = (nx5824z2 & (((nx34063z2 & nx5824z4)) # (!nx25391z3)))

	.dataa(nx25391z3),
	.datab(nx5824z2),
	.datac(nx34063z2),
	.datad(nx5824z4),
	.cin(gnd),
	.combout(nx5824z1),
	.cout());
// synopsys translate_off
defparam ix5824z7095.lut_mask = 16'hC444;
defparam ix5824z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N1
dffeas u_kirsch_reg_i_3_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx5824z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_3_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_3_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_3_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N14
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix21_fadd(
// Equation(s):
// nx46608z1 = CARRY((!u_kirsch_reg_i_2_0__aq & u_kirsch_reg_i_3_0__aq))

	.dataa(u_kirsch_reg_i_2_0__aq),
	.datab(u_kirsch_reg_i_3_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx46608z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix21_fadd.lut_mask = 16'h0044;
defparam u_kirsch_rtlc1_110_gt_19_ix21_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N16
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix23_fadd(
// Equation(s):
// nx34502z1 = CARRY((u_kirsch_reg_i_3_1__aq & (u_kirsch_reg_i_2_1__aq & !nx46608z1)) # (!u_kirsch_reg_i_3_1__aq & ((u_kirsch_reg_i_2_1__aq) # (!nx46608z1))))

	.dataa(u_kirsch_reg_i_3_1__aq),
	.datab(u_kirsch_reg_i_2_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46608z1),
	.combout(),
	.cout(nx34502z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix23_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc1_110_gt_19_ix23_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N18
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix25_fadd(
// Equation(s):
// nx50076z1 = CARRY((u_kirsch_reg_i_3_2__aq & ((!nx34502z1) # (!u_kirsch_reg_i_2_2__aq))) # (!u_kirsch_reg_i_3_2__aq & (!u_kirsch_reg_i_2_2__aq & !nx34502z1)))

	.dataa(u_kirsch_reg_i_3_2__aq),
	.datab(u_kirsch_reg_i_2_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx34502z1),
	.combout(),
	.cout(nx50076z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix25_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc1_110_gt_19_ix25_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N20
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix27_fadd(
// Equation(s):
// nx114z1 = CARRY((u_kirsch_reg_i_2_3__aq & ((!nx50076z1) # (!u_kirsch_reg_i_3_3__aq))) # (!u_kirsch_reg_i_2_3__aq & (!u_kirsch_reg_i_3_3__aq & !nx50076z1)))

	.dataa(u_kirsch_reg_i_2_3__aq),
	.datab(u_kirsch_reg_i_3_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50076z1),
	.combout(),
	.cout(nx114z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix27_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc1_110_gt_19_ix27_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N22
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix29_fadd(
// Equation(s):
// nx31791z1 = CARRY((u_kirsch_reg_i_2_4__aq & (u_kirsch_reg_i_3_4__aq & !nx114z1)) # (!u_kirsch_reg_i_2_4__aq & ((u_kirsch_reg_i_3_4__aq) # (!nx114z1))))

	.dataa(u_kirsch_reg_i_2_4__aq),
	.datab(u_kirsch_reg_i_3_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx114z1),
	.combout(),
	.cout(nx31791z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix29_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc1_110_gt_19_ix29_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N24
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix31_fadd(
// Equation(s):
// nx16217z1 = CARRY((u_kirsch_reg_i_3_5__aq & (u_kirsch_reg_i_2_5__aq & !nx31791z1)) # (!u_kirsch_reg_i_3_5__aq & ((u_kirsch_reg_i_2_5__aq) # (!nx31791z1))))

	.dataa(u_kirsch_reg_i_3_5__aq),
	.datab(u_kirsch_reg_i_2_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31791z1),
	.combout(),
	.cout(nx16217z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix31_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc1_110_gt_19_ix31_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N26
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix33_fadd(
// Equation(s):
// nx643z1 = CARRY((u_kirsch_reg_i_3_6__aq & ((!nx16217z1) # (!u_kirsch_reg_i_2_6__aq))) # (!u_kirsch_reg_i_3_6__aq & (!u_kirsch_reg_i_2_6__aq & !nx16217z1)))

	.dataa(u_kirsch_reg_i_3_6__aq),
	.datab(u_kirsch_reg_i_2_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16217z1),
	.combout(),
	.cout(nx643z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix33_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc1_110_gt_19_ix33_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N28
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix35_fadd(
// Equation(s):
// nx26313z1 = CARRY((u_kirsch_reg_i_3_7__aq & (u_kirsch_reg_i_2_7__aq & !nx643z1)) # (!u_kirsch_reg_i_3_7__aq & ((u_kirsch_reg_i_2_7__aq) # (!nx643z1))))

	.dataa(u_kirsch_reg_i_3_7__aq),
	.datab(u_kirsch_reg_i_2_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx643z1),
	.combout(),
	.cout(nx26313z1));
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N30
fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf(
// Equation(s):
// nx40631z1 = !nx26313z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx26313z1),
	.combout(nx40631z1),
	.cout());
// synopsys translate_off
defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf.lut_mask = 16'h0F0F;
defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N8
fiftyfivenm_lcell_comb ix37640z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[4] = (nx40631z1 & ((u_kirsch_reg_i_3_4__aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_4__aq))

	.dataa(u_kirsch_reg_i_2_4__aq),
	.datab(gnd),
	.datac(nx40631z1),
	.datad(u_kirsch_reg_i_3_4__aq),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[4]),
	.cout());
// synopsys translate_off
defparam ix37640z7095.lut_mask = 16'hFA0A;
defparam ix37640z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N20
fiftyfivenm_lcell_comb ix40631z7096(
// Equation(s):
// nx40631z2 = (reset_n_ainput_o & ((nx29221z2) # ((!u_kirsch_reg_stg_counter2_3__aq & !u_kirsch_reg_stg_counter2_2__aq))))

	.dataa(reset_n_ainput_o),
	.datab(u_kirsch_reg_stg_counter2_3__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(nx29221z2),
	.cin(gnd),
	.combout(nx40631z2),
	.cout());
// synopsys translate_off
defparam ix40631z7096.lut_mask = 16'hAA02;
defparam ix40631z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N9
dffeas u_kirsch_reg_r_max0_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N22
fiftyfivenm_lcell_comb ix23421z7096(
// Equation(s):
// nx23421z2 = (nx26412z4 & (u_kirsch_reg_g2_4__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g2_4__aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_4__aq)))))

	.dataa(u_kirsch_reg_g2_4__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_h3_4__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx23421z2),
	.cout());
// synopsys translate_off
defparam ix23421z7096.lut_mask = 16'hAAB8;
defparam ix23421z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N24
fiftyfivenm_lcell_comb ix23421z7095(
// Equation(s):
// nx23421z1 = (nx26412z2 & (u_kirsch_reg_d3_4__aq)) # (!nx26412z2 & ((nx23421z2)))

	.dataa(nx26412z2),
	.datab(u_kirsch_reg_d3_4__aq),
	.datac(gnd),
	.datad(nx23421z2),
	.cin(gnd),
	.combout(nx23421z1),
	.cout());
// synopsys translate_off
defparam ix23421z7095.lut_mask = 16'hDD88;
defparam ix23421z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N25
dffeas u_kirsch_reg_i_0_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx23421z1),
	.asdata(u_kirsch_reg_a2_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N8
fiftyfivenm_lcell_comb ix15002z7097(
// Equation(s):
// nx15002z3 = (nx26412z6 & (((u_kirsch_reg_g3_4__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_4__aq))) # (!nx26412z4 & (u_kirsch_reg_a3_4__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_a3_4__aq),
	.datad(u_kirsch_reg_g3_4__aq),
	.cin(gnd),
	.combout(nx15002z3),
	.cout());
// synopsys translate_off
defparam ix15002z7097.lut_mask = 16'hFE10;
defparam ix15002z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N18
fiftyfivenm_lcell_comb ix15002z7096(
// Equation(s):
// nx15002z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_4__aq))) # (!nx26412z2 & (nx15002z3)))

	.dataa(nx26412z2),
	.datab(nx25391z3),
	.datac(nx15002z3),
	.datad(u_kirsch_reg_e3_4__aq),
	.cin(gnd),
	.combout(nx15002z2),
	.cout());
// synopsys translate_off
defparam ix15002z7096.lut_mask = 16'hFEDC;
defparam ix15002z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N26
fiftyfivenm_lcell_comb ix15002z7098(
// Equation(s):
// nx15002z4 = ((u_kirsch_reg_row_index_1__aq) # ((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]))) # (!nx25391z3)

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx15002z4),
	.cout());
// synopsys translate_off
defparam ix15002z7098.lut_mask = 16'hFFFD;
defparam ix15002z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N22
fiftyfivenm_lcell_comb ix15002z7095(
// Equation(s):
// nx15002z1 = (nx15002z2 & (((nx15002z4 & nx57076z2)) # (!nx25391z3)))

	.dataa(nx25391z3),
	.datab(nx15002z2),
	.datac(nx15002z4),
	.datad(nx57076z2),
	.cin(gnd),
	.combout(nx15002z1),
	.cout());
// synopsys translate_off
defparam ix15002z7095.lut_mask = 16'hC444;
defparam ix15002z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y14_N23
dffeas u_kirsch_reg_i_1_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15002z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N28
fiftyfivenm_lcell_comb ix22424z7096(
// Equation(s):
// nx22424z2 = (nx26412z4 & (((u_kirsch_reg_g2_3__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_3__aq))) # (!nx26412z6 & (u_kirsch_reg_h3_3__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_h3_3__aq),
	.datac(nx26412z6),
	.datad(u_kirsch_reg_g2_3__aq),
	.cin(gnd),
	.combout(nx22424z2),
	.cout());
// synopsys translate_off
defparam ix22424z7096.lut_mask = 16'hFE04;
defparam ix22424z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N30
fiftyfivenm_lcell_comb ix22424z7095(
// Equation(s):
// nx22424z1 = (nx26412z2 & (u_kirsch_reg_d3_3__aq)) # (!nx26412z2 & ((nx22424z2)))

	.dataa(u_kirsch_reg_d3_3__aq),
	.datab(nx22424z2),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx22424z1),
	.cout());
// synopsys translate_off
defparam ix22424z7095.lut_mask = 16'hAACC;
defparam ix22424z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N31
dffeas u_kirsch_reg_i_0_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx22424z1),
	.asdata(u_kirsch_reg_a2_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N12
fiftyfivenm_lcell_comb ix14005z7098(
// Equation(s):
// nx14005z4 = (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]) # (((u_kirsch_reg_row_index_1__aq) # (nx41042z3)) # (!nx25391z3))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[3]),
	.datab(nx25391z3),
	.datac(u_kirsch_reg_row_index_1__aq),
	.datad(nx41042z3),
	.cin(gnd),
	.combout(nx14005z4),
	.cout());
// synopsys translate_off
defparam ix14005z7098.lut_mask = 16'hFFFB;
defparam ix14005z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N22
fiftyfivenm_lcell_comb ix14005z7097(
// Equation(s):
// nx14005z3 = (nx26412z6 & (u_kirsch_reg_g3_3__aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_3__aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_3__aq)))))

	.dataa(nx26412z6),
	.datab(u_kirsch_reg_g3_3__aq),
	.datac(u_kirsch_reg_a3_3__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx14005z3),
	.cout());
// synopsys translate_off
defparam ix14005z7097.lut_mask = 16'hCCD8;
defparam ix14005z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N26
fiftyfivenm_lcell_comb ix14005z7096(
// Equation(s):
// nx14005z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_3__aq))) # (!nx26412z2 & (nx14005z3)))

	.dataa(nx25391z3),
	.datab(nx26412z2),
	.datac(nx14005z3),
	.datad(u_kirsch_reg_e3_3__aq),
	.cin(gnd),
	.combout(nx14005z2),
	.cout());
// synopsys translate_off
defparam ix14005z7096.lut_mask = 16'hFEBA;
defparam ix14005z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N24
fiftyfivenm_lcell_comb ix14005z7095(
// Equation(s):
// nx14005z1 = (nx14005z2 & (((nx14005z4 & nx58073z2)) # (!nx25391z3)))

	.dataa(nx14005z4),
	.datab(nx25391z3),
	.datac(nx14005z2),
	.datad(nx58073z2),
	.cin(gnd),
	.combout(nx14005z1),
	.cout());
// synopsys translate_off
defparam ix14005z7095.lut_mask = 16'hB030;
defparam ix14005z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N25
dffeas u_kirsch_reg_i_1_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx14005z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N2
fiftyfivenm_lcell_comb ix21427z7096(
// Equation(s):
// nx21427z2 = (nx26412z4 & (((u_kirsch_reg_g2_2__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_2__aq))) # (!nx26412z6 & (u_kirsch_reg_h3_2__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_h3_2__aq),
	.datac(nx26412z6),
	.datad(u_kirsch_reg_g2_2__aq),
	.cin(gnd),
	.combout(nx21427z2),
	.cout());
// synopsys translate_off
defparam ix21427z7096.lut_mask = 16'hFE04;
defparam ix21427z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N0
fiftyfivenm_lcell_comb ix21427z7095(
// Equation(s):
// nx21427z1 = (nx26412z2 & (u_kirsch_reg_d3_2__aq)) # (!nx26412z2 & ((nx21427z2)))

	.dataa(u_kirsch_reg_d3_2__aq),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(nx21427z2),
	.cin(gnd),
	.combout(nx21427z1),
	.cout());
// synopsys translate_off
defparam ix21427z7095.lut_mask = 16'hBB88;
defparam ix21427z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N1
dffeas u_kirsch_reg_i_0_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx21427z1),
	.asdata(u_kirsch_reg_a2_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N4
fiftyfivenm_lcell_comb ix13008z7097(
// Equation(s):
// nx13008z3 = (nx26412z6 & (u_kirsch_reg_g3_2__aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_2__aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_2__aq)))))

	.dataa(u_kirsch_reg_g3_2__aq),
	.datab(nx26412z6),
	.datac(u_kirsch_reg_a3_2__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx13008z3),
	.cout());
// synopsys translate_off
defparam ix13008z7097.lut_mask = 16'hAAB8;
defparam ix13008z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N8
fiftyfivenm_lcell_comb ix13008z7096(
// Equation(s):
// nx13008z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_2__aq))) # (!nx26412z2 & (nx13008z3)))

	.dataa(nx13008z3),
	.datab(nx25391z3),
	.datac(nx26412z2),
	.datad(u_kirsch_reg_e3_2__aq),
	.cin(gnd),
	.combout(nx13008z2),
	.cout());
// synopsys translate_off
defparam ix13008z7096.lut_mask = 16'hFECE;
defparam ix13008z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N2
fiftyfivenm_lcell_comb ix13008z7098(
// Equation(s):
// nx13008z4 = (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]) # (((nx41042z3) # (u_kirsch_reg_row_index_1__aq)) # (!nx25391z3))

	.dataa(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[2]),
	.datab(nx25391z3),
	.datac(nx41042z3),
	.datad(u_kirsch_reg_row_index_1__aq),
	.cin(gnd),
	.combout(nx13008z4),
	.cout());
// synopsys translate_off
defparam ix13008z7098.lut_mask = 16'hFFFB;
defparam ix13008z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y14_N30
fiftyfivenm_lcell_comb ix13008z7095(
// Equation(s):
// nx13008z1 = (nx13008z2 & (((nx59070z2 & nx13008z4)) # (!nx25391z3)))

	.dataa(nx59070z2),
	.datab(nx25391z3),
	.datac(nx13008z2),
	.datad(nx13008z4),
	.cin(gnd),
	.combout(nx13008z1),
	.cout());
// synopsys translate_off
defparam ix13008z7095.lut_mask = 16'hB030;
defparam ix13008z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N31
dffeas u_kirsch_reg_i_1_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13008z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N0
fiftyfivenm_lcell_comb ix20430z7096(
// Equation(s):
// nx20430z2 = (nx26412z4 & (u_kirsch_reg_g2_1__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g2_1__aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_1__aq)))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g2_1__aq),
	.datac(nx26412z6),
	.datad(u_kirsch_reg_h3_1__aq),
	.cin(gnd),
	.combout(nx20430z2),
	.cout());
// synopsys translate_off
defparam ix20430z7096.lut_mask = 16'hCDC8;
defparam ix20430z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N8
fiftyfivenm_lcell_comb ix20430z7095(
// Equation(s):
// nx20430z1 = (nx26412z2 & ((u_kirsch_reg_d3_1__aq))) # (!nx26412z2 & (nx20430z2))

	.dataa(nx26412z2),
	.datab(nx20430z2),
	.datac(gnd),
	.datad(u_kirsch_reg_d3_1__aq),
	.cin(gnd),
	.combout(nx20430z1),
	.cout());
// synopsys translate_off
defparam ix20430z7095.lut_mask = 16'hEE44;
defparam ix20430z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N9
dffeas u_kirsch_reg_i_0_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx20430z1),
	.asdata(u_kirsch_reg_a2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N18
fiftyfivenm_lcell_comb ix12011z7097(
// Equation(s):
// nx12011z3 = (nx26412z4 & (u_kirsch_reg_g3_1__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g3_1__aq)) # (!nx26412z6 & ((u_kirsch_reg_a3_1__aq)))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g3_1__aq),
	.datac(u_kirsch_reg_a3_1__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx12011z3),
	.cout());
// synopsys translate_off
defparam ix12011z7097.lut_mask = 16'hCCD8;
defparam ix12011z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N26
fiftyfivenm_lcell_comb ix12011z7096(
// Equation(s):
// nx12011z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_1__aq)) # (!nx26412z2 & ((nx12011z3))))

	.dataa(nx26412z2),
	.datab(u_kirsch_reg_e3_1__aq),
	.datac(nx12011z3),
	.datad(nx25391z3),
	.cin(gnd),
	.combout(nx12011z2),
	.cout());
// synopsys translate_off
defparam ix12011z7096.lut_mask = 16'hFFD8;
defparam ix12011z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N12
fiftyfivenm_lcell_comb ix12011z7098(
// Equation(s):
// nx12011z4 = (u_kirsch_reg_row_index_1__aq) # (((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1])) # (!nx25391z3))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(nx25391z3),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx12011z4),
	.cout());
// synopsys translate_off
defparam ix12011z7098.lut_mask = 16'hFFFB;
defparam ix12011z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N24
fiftyfivenm_lcell_comb ix12011z7095(
// Equation(s):
// nx12011z1 = (nx12011z2 & (((nx60067z2 & nx12011z4)) # (!nx25391z3)))

	.dataa(nx12011z2),
	.datab(nx25391z3),
	.datac(nx60067z2),
	.datad(nx12011z4),
	.cin(gnd),
	.combout(nx12011z1),
	.cout());
// synopsys translate_off
defparam ix12011z7095.lut_mask = 16'hA222;
defparam ix12011z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y17_N25
dffeas u_kirsch_reg_i_1_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx12011z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N24
fiftyfivenm_lcell_comb ix11014z7097(
// Equation(s):
// nx11014z3 = (nx26412z4 & (u_kirsch_reg_g3_0__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_g3_0__aq)) # (!nx26412z6 & ((u_kirsch_reg_a3_0__aq)))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_g3_0__aq),
	.datac(u_kirsch_reg_a3_0__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx11014z3),
	.cout());
// synopsys translate_off
defparam ix11014z7097.lut_mask = 16'hCCD8;
defparam ix11014z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N26
fiftyfivenm_lcell_comb ix11014z7096(
// Equation(s):
// nx11014z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_0__aq)) # (!nx26412z2 & ((nx11014z3))))

	.dataa(u_kirsch_reg_e3_0__aq),
	.datab(nx11014z3),
	.datac(nx25391z3),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx11014z2),
	.cout());
// synopsys translate_off
defparam ix11014z7096.lut_mask = 16'hFAFC;
defparam ix11014z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N2
fiftyfivenm_lcell_comb ix11014z7098(
// Equation(s):
// nx11014z4 = (u_kirsch_reg_row_index_1__aq) # ((nx41042z3) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]) # (!nx25391z3)))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(nx41042z3),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[0]),
	.datad(nx25391z3),
	.cin(gnd),
	.combout(nx11014z4),
	.cout());
// synopsys translate_off
defparam ix11014z7098.lut_mask = 16'hFEFF;
defparam ix11014z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N24
fiftyfivenm_lcell_comb ix11014z7095(
// Equation(s):
// nx11014z1 = (nx11014z2 & (((nx61064z2 & nx11014z4)) # (!nx25391z3)))

	.dataa(nx11014z2),
	.datab(nx25391z3),
	.datac(nx61064z2),
	.datad(nx11014z4),
	.cin(gnd),
	.combout(nx11014z1),
	.cout());
// synopsys translate_off
defparam ix11014z7095.lut_mask = 16'hA222;
defparam ix11014z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N25
dffeas u_kirsch_reg_i_1_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11014z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N0
fiftyfivenm_lcell_comb ix19433z7096(
// Equation(s):
// nx19433z2 = (nx26412z4 & (((u_kirsch_reg_g2_0__aq)))) # (!nx26412z4 & ((nx26412z6 & ((u_kirsch_reg_g2_0__aq))) # (!nx26412z6 & (u_kirsch_reg_h3_0__aq))))

	.dataa(nx26412z4),
	.datab(u_kirsch_reg_h3_0__aq),
	.datac(nx26412z6),
	.datad(u_kirsch_reg_g2_0__aq),
	.cin(gnd),
	.combout(nx19433z2),
	.cout());
// synopsys translate_off
defparam ix19433z7096.lut_mask = 16'hFE04;
defparam ix19433z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N0
fiftyfivenm_lcell_comb ix19433z7095(
// Equation(s):
// nx19433z1 = (nx26412z2 & (u_kirsch_reg_d3_0__aq)) # (!nx26412z2 & ((nx19433z2)))

	.dataa(nx26412z2),
	.datab(u_kirsch_reg_d3_0__aq),
	.datac(gnd),
	.datad(nx19433z2),
	.cin(gnd),
	.combout(nx19433z1),
	.cout());
// synopsys translate_off
defparam ix19433z7095.lut_mask = 16'hDD88;
defparam ix19433z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N1
dffeas u_kirsch_reg_i_0_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx19433z1),
	.asdata(u_kirsch_reg_a2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N14
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix35_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[0] = (u_kirsch_reg_i_1_0__aq & (u_kirsch_reg_i_0_0__aq $ (VCC))) # (!u_kirsch_reg_i_1_0__aq & (u_kirsch_reg_i_0_0__aq & VCC))
// nx14816z1 = CARRY((u_kirsch_reg_i_1_0__aq & u_kirsch_reg_i_0_0__aq))

	.dataa(u_kirsch_reg_i_1_0__aq),
	.datab(u_kirsch_reg_i_0_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r_add0_a_0n1s1[0]),
	.cout(nx14816z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix35_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r_add0_a_add8_0i1_ix35_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N16
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix39_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[1] = (u_kirsch_reg_i_0_1__aq & ((u_kirsch_reg_i_1_1__aq & (nx14816z1 & VCC)) # (!u_kirsch_reg_i_1_1__aq & (!nx14816z1)))) # (!u_kirsch_reg_i_0_1__aq & ((u_kirsch_reg_i_1_1__aq & (!nx14816z1)) # (!u_kirsch_reg_i_1_1__aq & 
// ((nx14816z1) # (GND)))))
// nx1515z1 = CARRY((u_kirsch_reg_i_0_1__aq & (!u_kirsch_reg_i_1_1__aq & !nx14816z1)) # (!u_kirsch_reg_i_0_1__aq & ((!nx14816z1) # (!u_kirsch_reg_i_1_1__aq))))

	.dataa(u_kirsch_reg_i_0_1__aq),
	.datab(u_kirsch_reg_i_1_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx14816z1),
	.combout(u_kirsch_r_add0_a_0n1s1[1]),
	.cout(nx1515z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix39_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add0_a_add8_0i1_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N18
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix43_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[2] = ((u_kirsch_reg_i_0_2__aq $ (u_kirsch_reg_i_1_2__aq $ (!nx1515z1)))) # (GND)
// nx29633z1 = CARRY((u_kirsch_reg_i_0_2__aq & ((u_kirsch_reg_i_1_2__aq) # (!nx1515z1))) # (!u_kirsch_reg_i_0_2__aq & (u_kirsch_reg_i_1_2__aq & !nx1515z1)))

	.dataa(u_kirsch_reg_i_0_2__aq),
	.datab(u_kirsch_reg_i_1_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx1515z1),
	.combout(u_kirsch_r_add0_a_0n1s1[2]),
	.cout(nx29633z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix43_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add0_a_add8_0i1_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N20
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix47_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[3] = (u_kirsch_reg_i_0_3__aq & ((u_kirsch_reg_i_1_3__aq & (nx29633z1 & VCC)) # (!u_kirsch_reg_i_1_3__aq & (!nx29633z1)))) # (!u_kirsch_reg_i_0_3__aq & ((u_kirsch_reg_i_1_3__aq & (!nx29633z1)) # (!u_kirsch_reg_i_1_3__aq & 
// ((nx29633z1) # (GND)))))
// nx13302z1 = CARRY((u_kirsch_reg_i_0_3__aq & (!u_kirsch_reg_i_1_3__aq & !nx29633z1)) # (!u_kirsch_reg_i_0_3__aq & ((!nx29633z1) # (!u_kirsch_reg_i_1_3__aq))))

	.dataa(u_kirsch_reg_i_0_3__aq),
	.datab(u_kirsch_reg_i_1_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx29633z1),
	.combout(u_kirsch_r_add0_a_0n1s1[3]),
	.cout(nx13302z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix47_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add0_a_add8_0i1_ix47_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N22
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix51_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[4] = ((u_kirsch_reg_i_0_4__aq $ (u_kirsch_reg_i_1_4__aq $ (!nx13302z1)))) # (GND)
// nx21086z1 = CARRY((u_kirsch_reg_i_0_4__aq & ((u_kirsch_reg_i_1_4__aq) # (!nx13302z1))) # (!u_kirsch_reg_i_0_4__aq & (u_kirsch_reg_i_1_4__aq & !nx13302z1)))

	.dataa(u_kirsch_reg_i_0_4__aq),
	.datab(u_kirsch_reg_i_1_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx13302z1),
	.combout(u_kirsch_r_add0_a_0n1s1[4]),
	.cout(nx21086z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix51_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add0_a_add8_0i1_ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y16_N23
dffeas u_kirsch_reg_r_add0_a_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N21
dffeas u_kirsch_reg_r_add0_a_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N2
fiftyfivenm_lcell_comb ix36643z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[3] = (nx40631z1 & (u_kirsch_reg_i_3_3__aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_3__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_i_3_3__aq),
	.datac(nx40631z1),
	.datad(u_kirsch_reg_i_2_3__aq),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[3]),
	.cout());
// synopsys translate_off
defparam ix36643z7095.lut_mask = 16'hCFC0;
defparam ix36643z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N3
dffeas u_kirsch_reg_r_max0_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N14
fiftyfivenm_lcell_comb ix35646z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[2] = (nx40631z1 & ((u_kirsch_reg_i_3_2__aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_2__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_i_2_2__aq),
	.datac(u_kirsch_reg_i_3_2__aq),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[2]),
	.cout());
// synopsys translate_off
defparam ix35646z7095.lut_mask = 16'hF0CC;
defparam ix35646z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N15
dffeas u_kirsch_reg_r_max0_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N19
dffeas u_kirsch_reg_r_add0_a_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N17
dffeas u_kirsch_reg_r_add0_a_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N4
fiftyfivenm_lcell_comb ix34649z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[1] = (nx40631z1 & ((u_kirsch_reg_i_3_1__aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_1__aq))

	.dataa(u_kirsch_reg_i_2_1__aq),
	.datab(gnd),
	.datac(nx40631z1),
	.datad(u_kirsch_reg_i_3_1__aq),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[1]),
	.cout());
// synopsys translate_off
defparam ix34649z7095.lut_mask = 16'hFA0A;
defparam ix34649z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N5
dffeas u_kirsch_reg_r_max0_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N24
fiftyfivenm_lcell_comb ix33652z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[0] = (nx40631z1 & ((u_kirsch_reg_i_3_0__aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_0__aq))

	.dataa(u_kirsch_reg_i_2_0__aq),
	.datab(u_kirsch_reg_i_3_0__aq),
	.datac(gnd),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[0]),
	.cout());
// synopsys translate_off
defparam ix33652z7095.lut_mask = 16'hCCAA;
defparam ix33652z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N25
dffeas u_kirsch_reg_r_max0_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N15
dffeas u_kirsch_reg_r_add0_a_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N0
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix37_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[0] = (u_kirsch_reg_r_max0_0__aq & (u_kirsch_reg_r_add0_a_0__aq $ (VCC))) # (!u_kirsch_reg_r_max0_0__aq & (u_kirsch_reg_r_add0_a_0__aq & VCC))
// nx53938z1 = CARRY((u_kirsch_reg_r_max0_0__aq & u_kirsch_reg_r_add0_a_0__aq))

	.dataa(u_kirsch_reg_r_max0_0__aq),
	.datab(u_kirsch_reg_r_add0_a_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_kirsch_r_add1_a_3n1s1[0]),
	.cout(nx53938z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix37_fadd.lut_mask = 16'h6688;
defparam u_kirsch_r_add1_a_add9_3i1_ix37_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N2
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix41_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[1] = (u_kirsch_reg_r_add0_a_1__aq & ((u_kirsch_reg_r_max0_1__aq & (nx53938z1 & VCC)) # (!u_kirsch_reg_r_max0_1__aq & (!nx53938z1)))) # (!u_kirsch_reg_r_add0_a_1__aq & ((u_kirsch_reg_r_max0_1__aq & (!nx53938z1)) # 
// (!u_kirsch_reg_r_max0_1__aq & ((nx53938z1) # (GND)))))
// nx42746z1 = CARRY((u_kirsch_reg_r_add0_a_1__aq & (!u_kirsch_reg_r_max0_1__aq & !nx53938z1)) # (!u_kirsch_reg_r_add0_a_1__aq & ((!nx53938z1) # (!u_kirsch_reg_r_max0_1__aq))))

	.dataa(u_kirsch_reg_r_add0_a_1__aq),
	.datab(u_kirsch_reg_r_max0_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx53938z1),
	.combout(u_kirsch_r_add1_a_3n1s1[1]),
	.cout(nx42746z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix41_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add1_a_add9_3i1_ix41_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N4
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix45_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[2] = ((u_kirsch_reg_r_max0_2__aq $ (u_kirsch_reg_r_add0_a_2__aq $ (!nx42746z1)))) # (GND)
// nx57178z1 = CARRY((u_kirsch_reg_r_max0_2__aq & ((u_kirsch_reg_r_add0_a_2__aq) # (!nx42746z1))) # (!u_kirsch_reg_r_max0_2__aq & (u_kirsch_reg_r_add0_a_2__aq & !nx42746z1)))

	.dataa(u_kirsch_reg_r_max0_2__aq),
	.datab(u_kirsch_reg_r_add0_a_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42746z1),
	.combout(u_kirsch_r_add1_a_3n1s1[2]),
	.cout(nx57178z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix45_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add1_a_add9_3i1_ix45_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N6
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix49_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[3] = (u_kirsch_reg_r_add0_a_3__aq & ((u_kirsch_reg_r_max0_3__aq & (nx57178z1 & VCC)) # (!u_kirsch_reg_r_max0_3__aq & (!nx57178z1)))) # (!u_kirsch_reg_r_add0_a_3__aq & ((u_kirsch_reg_r_max0_3__aq & (!nx57178z1)) # 
// (!u_kirsch_reg_r_max0_3__aq & ((nx57178z1) # (GND)))))
// nx7973z1 = CARRY((u_kirsch_reg_r_add0_a_3__aq & (!u_kirsch_reg_r_max0_3__aq & !nx57178z1)) # (!u_kirsch_reg_r_add0_a_3__aq & ((!nx57178z1) # (!u_kirsch_reg_r_max0_3__aq))))

	.dataa(u_kirsch_reg_r_add0_a_3__aq),
	.datab(u_kirsch_reg_r_max0_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57178z1),
	.combout(u_kirsch_r_add1_a_3n1s1[3]),
	.cout(nx7973z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix49_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add1_a_add9_3i1_ix49_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N8
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix53_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[4] = ((u_kirsch_reg_r_max0_4__aq $ (u_kirsch_reg_r_add0_a_4__aq $ (!nx7973z1)))) # (GND)
// nx23175z1 = CARRY((u_kirsch_reg_r_max0_4__aq & ((u_kirsch_reg_r_add0_a_4__aq) # (!nx7973z1))) # (!u_kirsch_reg_r_max0_4__aq & (u_kirsch_reg_r_add0_a_4__aq & !nx7973z1)))

	.dataa(u_kirsch_reg_r_max0_4__aq),
	.datab(u_kirsch_reg_r_add0_a_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx7973z1),
	.combout(u_kirsch_r_add1_a_3n1s1[4]),
	.cout(nx23175z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix53_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add1_a_add9_3i1_ix53_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y19_N9
dffeas u_kirsch_reg_r_add1_a_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N27
dffeas u_kirsch_reg_r_add1_b_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N22
fiftyfivenm_lcell_comb ix29221z7098(
// Equation(s):
// nx29221z3 = (!u_kirsch_reg_stg_counter2_3__aq & (u_kirsch_reg_stg_counter2_1__aq & (!u_kirsch_reg_stg_counter2_2__aq & u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx29221z3),
	.cout());
// synopsys translate_off
defparam ix29221z7098.lut_mask = 16'h0400;
defparam ix29221z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N10
fiftyfivenm_lcell_comb ix17993z7098(
// Equation(s):
// nx17993z4 = ((u_kirsch_reg_row_index_1__aq) # ((nx41042z3) # (u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]))) # (!nx25391z3)

	.dataa(nx25391z3),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(nx41042z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx17993z4),
	.cout());
// synopsys translate_off
defparam ix17993z7098.lut_mask = 16'hFFFD;
defparam ix17993z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N14
fiftyfivenm_lcell_comb ix17993z7097(
// Equation(s):
// nx17993z3 = (nx26412z6 & (((u_kirsch_reg_g3_7__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_7__aq))) # (!nx26412z4 & (u_kirsch_reg_a3_7__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_a3_7__aq),
	.datad(u_kirsch_reg_g3_7__aq),
	.cin(gnd),
	.combout(nx17993z3),
	.cout());
// synopsys translate_off
defparam ix17993z7097.lut_mask = 16'hFE10;
defparam ix17993z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N16
fiftyfivenm_lcell_comb ix17993z7096(
// Equation(s):
// nx17993z2 = (nx25391z3) # ((nx26412z2 & ((u_kirsch_reg_e3_7__aq))) # (!nx26412z2 & (nx17993z3)))

	.dataa(nx25391z3),
	.datab(nx17993z3),
	.datac(nx26412z2),
	.datad(u_kirsch_reg_e3_7__aq),
	.cin(gnd),
	.combout(nx17993z2),
	.cout());
// synopsys translate_off
defparam ix17993z7096.lut_mask = 16'hFEAE;
defparam ix17993z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N14
fiftyfivenm_lcell_comb ix17993z7095(
// Equation(s):
// nx17993z1 = (nx17993z2 & (((nx17993z4 & nx63433z2)) # (!nx25391z3)))

	.dataa(nx17993z4),
	.datab(nx25391z3),
	.datac(nx17993z2),
	.datad(nx63433z2),
	.cin(gnd),
	.combout(nx17993z1),
	.cout());
// synopsys translate_off
defparam ix17993z7095.lut_mask = 16'hB030;
defparam ix17993z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N15
dffeas u_kirsch_reg_i_1_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17993z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N30
fiftyfivenm_lcell_comb ix26412z7099(
// Equation(s):
// nx26412z5 = (nx26412z4 & (u_kirsch_reg_f3_7__aq)) # (!nx26412z4 & ((nx26412z6 & (u_kirsch_reg_f3_7__aq)) # (!nx26412z6 & ((u_kirsch_reg_h3_7__aq)))))

	.dataa(u_kirsch_reg_f3_7__aq),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_h3_7__aq),
	.datad(nx26412z6),
	.cin(gnd),
	.combout(nx26412z5),
	.cout());
// synopsys translate_off
defparam ix26412z7099.lut_mask = 16'hAAB8;
defparam ix26412z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N22
fiftyfivenm_lcell_comb ix26412z7095(
// Equation(s):
// nx26412z1 = (nx26412z2 & ((u_kirsch_reg_d3_7__aq))) # (!nx26412z2 & (nx26412z5))

	.dataa(nx26412z5),
	.datab(u_kirsch_reg_d3_7__aq),
	.datac(gnd),
	.datad(nx26412z2),
	.cin(gnd),
	.combout(nx26412z1),
	.cout());
// synopsys translate_off
defparam ix26412z7095.lut_mask = 16'hCCAA;
defparam ix26412z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N23
dffeas u_kirsch_reg_i_0_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx26412z1),
	.asdata(u_kirsch_reg_b3_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N18
fiftyfivenm_lcell_comb ix25415z7096(
// Equation(s):
// nx25415z2 = (nx26412z6 & (((u_kirsch_reg_g2_6__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g2_6__aq))) # (!nx26412z4 & (u_kirsch_reg_h3_6__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_h3_6__aq),
	.datad(u_kirsch_reg_g2_6__aq),
	.cin(gnd),
	.combout(nx25415z2),
	.cout());
// synopsys translate_off
defparam ix25415z7096.lut_mask = 16'hFE10;
defparam ix25415z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N16
fiftyfivenm_lcell_comb ix25415z7095(
// Equation(s):
// nx25415z1 = (nx26412z2 & (u_kirsch_reg_d3_6__aq)) # (!nx26412z2 & ((nx25415z2)))

	.dataa(nx26412z2),
	.datab(u_kirsch_reg_d3_6__aq),
	.datac(gnd),
	.datad(nx25415z2),
	.cin(gnd),
	.combout(nx25415z1),
	.cout());
// synopsys translate_off
defparam ix25415z7095.lut_mask = 16'hDD88;
defparam ix25415z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N17
dffeas u_kirsch_reg_i_0_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx25415z1),
	.asdata(u_kirsch_reg_a2_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N28
fiftyfivenm_lcell_comb ix16996z7097(
// Equation(s):
// nx16996z3 = (nx26412z6 & (((u_kirsch_reg_g3_6__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g3_6__aq))) # (!nx26412z4 & (u_kirsch_reg_a3_6__aq))))

	.dataa(nx26412z6),
	.datab(nx26412z4),
	.datac(u_kirsch_reg_a3_6__aq),
	.datad(u_kirsch_reg_g3_6__aq),
	.cin(gnd),
	.combout(nx16996z3),
	.cout());
// synopsys translate_off
defparam ix16996z7097.lut_mask = 16'hFE10;
defparam ix16996z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N26
fiftyfivenm_lcell_comb ix16996z7096(
// Equation(s):
// nx16996z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_6__aq)) # (!nx26412z2 & ((nx16996z3))))

	.dataa(nx26412z2),
	.datab(u_kirsch_reg_e3_6__aq),
	.datac(nx25391z3),
	.datad(nx16996z3),
	.cin(gnd),
	.combout(nx16996z2),
	.cout());
// synopsys translate_off
defparam ix16996z7096.lut_mask = 16'hFDF8;
defparam ix16996z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N20
fiftyfivenm_lcell_comb ix16996z7098(
// Equation(s):
// nx16996z4 = (u_kirsch_reg_row_index_1__aq) # ((nx41042z3) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]) # (!nx25391z3)))

	.dataa(u_kirsch_reg_row_index_1__aq),
	.datab(nx41042z3),
	.datac(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[6]),
	.datad(nx25391z3),
	.cin(gnd),
	.combout(nx16996z4),
	.cout());
// synopsys translate_off
defparam ix16996z7098.lut_mask = 16'hFEFF;
defparam ix16996z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N8
fiftyfivenm_lcell_comb ix16996z7095(
// Equation(s):
// nx16996z1 = (nx16996z2 & (((nx55082z2 & nx16996z4)) # (!nx25391z3)))

	.dataa(nx25391z3),
	.datab(nx16996z2),
	.datac(nx55082z2),
	.datad(nx16996z4),
	.cin(gnd),
	.combout(nx16996z1),
	.cout());
// synopsys translate_off
defparam ix16996z7095.lut_mask = 16'hC444;
defparam ix16996z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N9
dffeas u_kirsch_reg_i_1_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx16996z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N20
fiftyfivenm_lcell_comb ix24418z7096(
// Equation(s):
// nx24418z2 = (nx26412z6 & (((u_kirsch_reg_g2_5__aq)))) # (!nx26412z6 & ((nx26412z4 & ((u_kirsch_reg_g2_5__aq))) # (!nx26412z4 & (u_kirsch_reg_h3_5__aq))))

	.dataa(nx26412z6),
	.datab(u_kirsch_reg_h3_5__aq),
	.datac(u_kirsch_reg_g2_5__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx24418z2),
	.cout());
// synopsys translate_off
defparam ix24418z7096.lut_mask = 16'hF0E4;
defparam ix24418z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N8
fiftyfivenm_lcell_comb ix24418z7095(
// Equation(s):
// nx24418z1 = (nx26412z2 & (u_kirsch_reg_d3_5__aq)) # (!nx26412z2 & ((nx24418z2)))

	.dataa(u_kirsch_reg_d3_5__aq),
	.datab(nx26412z2),
	.datac(gnd),
	.datad(nx24418z2),
	.cin(gnd),
	.combout(nx24418z1),
	.cout());
// synopsys translate_off
defparam ix24418z7095.lut_mask = 16'hBB88;
defparam ix24418z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N9
dffeas u_kirsch_reg_i_0_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx24418z1),
	.asdata(u_kirsch_reg_a2_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(nx25391z3),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_0_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_0_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_0_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N22
fiftyfivenm_lcell_comb ix15999z7097(
// Equation(s):
// nx15999z3 = (nx26412z6 & (u_kirsch_reg_g3_5__aq)) # (!nx26412z6 & ((nx26412z4 & (u_kirsch_reg_g3_5__aq)) # (!nx26412z4 & ((u_kirsch_reg_a3_5__aq)))))

	.dataa(u_kirsch_reg_g3_5__aq),
	.datab(nx26412z6),
	.datac(u_kirsch_reg_a3_5__aq),
	.datad(nx26412z4),
	.cin(gnd),
	.combout(nx15999z3),
	.cout());
// synopsys translate_off
defparam ix15999z7097.lut_mask = 16'hAAB8;
defparam ix15999z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N2
fiftyfivenm_lcell_comb ix15999z7096(
// Equation(s):
// nx15999z2 = (nx25391z3) # ((nx26412z2 & (u_kirsch_reg_e3_5__aq)) # (!nx26412z2 & ((nx15999z3))))

	.dataa(nx25391z3),
	.datab(nx26412z2),
	.datac(u_kirsch_reg_e3_5__aq),
	.datad(nx15999z3),
	.cin(gnd),
	.combout(nx15999z2),
	.cout());
// synopsys translate_off
defparam ix15999z7096.lut_mask = 16'hFBEA;
defparam ix15999z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N12
fiftyfivenm_lcell_comb ix15999z7098(
// Equation(s):
// nx15999z4 = (nx41042z3) # ((u_kirsch_reg_row_index_1__aq) # ((u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]) # (!nx25391z3)))

	.dataa(nx41042z3),
	.datab(u_kirsch_reg_row_index_1__aq),
	.datac(nx25391z3),
	.datad(u_kirsch_memB_mem_aix64056z29484_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx15999z4),
	.cout());
// synopsys translate_off
defparam ix15999z7098.lut_mask = 16'hFFEF;
defparam ix15999z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N16
fiftyfivenm_lcell_comb ix15999z7095(
// Equation(s):
// nx15999z1 = (nx15999z2 & (((nx56079z2 & nx15999z4)) # (!nx25391z3)))

	.dataa(nx25391z3),
	.datab(nx15999z2),
	.datac(nx56079z2),
	.datad(nx15999z4),
	.cin(gnd),
	.combout(nx15999z1),
	.cout());
// synopsys translate_off
defparam ix15999z7095.lut_mask = 16'hC444;
defparam ix15999z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N17
dffeas u_kirsch_reg_i_1_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15999z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26412z7),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_i_1_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_i_1_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_i_1_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N24
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix55_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[5] = (u_kirsch_reg_i_0_5__aq & ((u_kirsch_reg_i_1_5__aq & (nx21086z1 & VCC)) # (!u_kirsch_reg_i_1_5__aq & (!nx21086z1)))) # (!u_kirsch_reg_i_0_5__aq & ((u_kirsch_reg_i_1_5__aq & (!nx21086z1)) # (!u_kirsch_reg_i_1_5__aq & 
// ((nx21086z1) # (GND)))))
// nx55474z1 = CARRY((u_kirsch_reg_i_0_5__aq & (!u_kirsch_reg_i_1_5__aq & !nx21086z1)) # (!u_kirsch_reg_i_0_5__aq & ((!nx21086z1) # (!u_kirsch_reg_i_1_5__aq))))

	.dataa(u_kirsch_reg_i_0_5__aq),
	.datab(u_kirsch_reg_i_1_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21086z1),
	.combout(u_kirsch_r_add0_a_0n1s1[5]),
	.cout(nx55474z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix55_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add0_a_add8_0i1_ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N26
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix59_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[6] = ((u_kirsch_reg_i_0_6__aq $ (u_kirsch_reg_i_1_6__aq $ (!nx55474z1)))) # (GND)
// nx59267z1 = CARRY((u_kirsch_reg_i_0_6__aq & ((u_kirsch_reg_i_1_6__aq) # (!nx55474z1))) # (!u_kirsch_reg_i_0_6__aq & (u_kirsch_reg_i_1_6__aq & !nx55474z1)))

	.dataa(u_kirsch_reg_i_0_6__aq),
	.datab(u_kirsch_reg_i_1_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55474z1),
	.combout(u_kirsch_r_add0_a_0n1s1[6]),
	.cout(nx59267z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix59_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add0_a_add8_0i1_ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N28
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix63_fadd(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[7] = (u_kirsch_reg_i_1_7__aq & ((u_kirsch_reg_i_0_7__aq & (nx59267z1 & VCC)) # (!u_kirsch_reg_i_0_7__aq & (!nx59267z1)))) # (!u_kirsch_reg_i_1_7__aq & ((u_kirsch_reg_i_0_7__aq & (!nx59267z1)) # (!u_kirsch_reg_i_0_7__aq & 
// ((nx59267z1) # (GND)))))
// nx51089z1 = CARRY((u_kirsch_reg_i_1_7__aq & (!u_kirsch_reg_i_0_7__aq & !nx59267z1)) # (!u_kirsch_reg_i_1_7__aq & ((!nx59267z1) # (!u_kirsch_reg_i_0_7__aq))))

	.dataa(u_kirsch_reg_i_1_7__aq),
	.datab(u_kirsch_reg_i_0_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59267z1),
	.combout(u_kirsch_r_add0_a_0n1s1[7]),
	.cout(nx51089z1));
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N30
fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf(
// Equation(s):
// u_kirsch_r_add0_a_0n1s1[8] = !nx51089z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx51089z1),
	.combout(u_kirsch_r_add0_a_0n1s1[8]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf.lut_mask = 16'h0F0F;
defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y16_N31
dffeas u_kirsch_reg_r_add0_a_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N2
fiftyfivenm_lcell_comb ix40631z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[7] = (nx40631z1 & (u_kirsch_reg_i_3_7__aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_7__aq)))

	.dataa(u_kirsch_reg_i_3_7__aq),
	.datab(u_kirsch_reg_i_2_7__aq),
	.datac(gnd),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[7]),
	.cout());
// synopsys translate_off
defparam ix40631z7095.lut_mask = 16'hAACC;
defparam ix40631z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N3
dffeas u_kirsch_reg_r_max0_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N29
dffeas u_kirsch_reg_r_add0_a_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N6
fiftyfivenm_lcell_comb ix39634z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[6] = (nx40631z1 & (u_kirsch_reg_i_3_6__aq)) # (!nx40631z1 & ((u_kirsch_reg_i_2_6__aq)))

	.dataa(u_kirsch_reg_i_3_6__aq),
	.datab(gnd),
	.datac(nx40631z1),
	.datad(u_kirsch_reg_i_2_6__aq),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[6]),
	.cout());
// synopsys translate_off
defparam ix39634z7095.lut_mask = 16'hAFA0;
defparam ix39634z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N7
dffeas u_kirsch_reg_r_max0_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N27
dffeas u_kirsch_reg_r_add0_a_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y16_N12
fiftyfivenm_lcell_comb ix38637z7095(
// Equation(s):
// u_kirsch_r_max0_1n2ss1[5] = (nx40631z1 & ((u_kirsch_reg_i_3_5__aq))) # (!nx40631z1 & (u_kirsch_reg_i_2_5__aq))

	.dataa(u_kirsch_reg_i_2_5__aq),
	.datab(u_kirsch_reg_i_3_5__aq),
	.datac(gnd),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(u_kirsch_r_max0_1n2ss1[5]),
	.cout());
// synopsys translate_off
defparam ix38637z7095.lut_mask = 16'hCCAA;
defparam ix38637z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y16_N13
dffeas u_kirsch_reg_r_max0_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max0_1n2ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx40631z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max0_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max0_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max0_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X20_Y16_N25
dffeas u_kirsch_reg_r_add0_a_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add0_a_0n1s1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_a_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_a_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_a_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N10
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix57_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[5] = (u_kirsch_reg_r_max0_5__aq & ((u_kirsch_reg_r_add0_a_5__aq & (nx23175z1 & VCC)) # (!u_kirsch_reg_r_add0_a_5__aq & (!nx23175z1)))) # (!u_kirsch_reg_r_max0_5__aq & ((u_kirsch_reg_r_add0_a_5__aq & (!nx23175z1)) # 
// (!u_kirsch_reg_r_add0_a_5__aq & ((nx23175z1) # (GND)))))
// nx6844z1 = CARRY((u_kirsch_reg_r_max0_5__aq & (!u_kirsch_reg_r_add0_a_5__aq & !nx23175z1)) # (!u_kirsch_reg_r_max0_5__aq & ((!nx23175z1) # (!u_kirsch_reg_r_add0_a_5__aq))))

	.dataa(u_kirsch_reg_r_max0_5__aq),
	.datab(u_kirsch_reg_r_add0_a_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23175z1),
	.combout(u_kirsch_r_add1_a_3n1s1[5]),
	.cout(nx6844z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix57_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add1_a_add9_3i1_ix57_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N12
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix61_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[6] = ((u_kirsch_reg_r_max0_6__aq $ (u_kirsch_reg_r_add0_a_6__aq $ (!nx6844z1)))) # (GND)
// nx27544z1 = CARRY((u_kirsch_reg_r_max0_6__aq & ((u_kirsch_reg_r_add0_a_6__aq) # (!nx6844z1))) # (!u_kirsch_reg_r_max0_6__aq & (u_kirsch_reg_r_add0_a_6__aq & !nx6844z1)))

	.dataa(u_kirsch_reg_r_max0_6__aq),
	.datab(u_kirsch_reg_r_add0_a_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx6844z1),
	.combout(u_kirsch_r_add1_a_3n1s1[6]),
	.cout(nx27544z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix61_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add1_a_add9_3i1_ix61_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N14
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix65_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[7] = (u_kirsch_reg_r_max0_7__aq & ((u_kirsch_reg_r_add0_a_7__aq & (nx27544z1 & VCC)) # (!u_kirsch_reg_r_add0_a_7__aq & (!nx27544z1)))) # (!u_kirsch_reg_r_max0_7__aq & ((u_kirsch_reg_r_add0_a_7__aq & (!nx27544z1)) # 
// (!u_kirsch_reg_r_add0_a_7__aq & ((nx27544z1) # (GND)))))
// nx3604z1 = CARRY((u_kirsch_reg_r_max0_7__aq & (!u_kirsch_reg_r_add0_a_7__aq & !nx27544z1)) # (!u_kirsch_reg_r_max0_7__aq & ((!nx27544z1) # (!u_kirsch_reg_r_add0_a_7__aq))))

	.dataa(u_kirsch_reg_r_max0_7__aq),
	.datab(u_kirsch_reg_r_add0_a_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27544z1),
	.combout(u_kirsch_r_add1_a_3n1s1[7]),
	.cout(nx3604z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix65_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add1_a_add9_3i1_ix65_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N16
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix69_fadd(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[8] = (u_kirsch_reg_r_add0_a_8__aq & (nx3604z1 $ (GND))) # (!u_kirsch_reg_r_add0_a_8__aq & (!nx3604z1 & VCC))
// nx24080z1 = CARRY((u_kirsch_reg_r_add0_a_8__aq & !nx3604z1))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add0_a_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx3604z1),
	.combout(u_kirsch_r_add1_a_3n1s1[8]),
	.cout(nx24080z1));
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd.lut_mask = 16'hC30C;
defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N18
fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf(
// Equation(s):
// u_kirsch_r_add1_a_3n1s1[9] = nx24080z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx24080z1),
	.combout(u_kirsch_r_add1_a_3n1s1[9]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X19_Y19_N19
dffeas u_kirsch_reg_r_add1_a_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N19
dffeas u_kirsch_reg_r_add1_b_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_9__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N17
dffeas u_kirsch_reg_r_add1_a_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N17
dffeas u_kirsch_reg_r_add1_b_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_8__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N15
dffeas u_kirsch_reg_r_add1_a_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N15
dffeas u_kirsch_reg_r_add1_b_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N13
dffeas u_kirsch_reg_r_add1_a_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N25
dffeas u_kirsch_reg_r_add1_b_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N11
dffeas u_kirsch_reg_r_add1_a_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N11
dffeas u_kirsch_reg_r_add1_b_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N7
dffeas u_kirsch_reg_r_add1_a_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N7
dffeas u_kirsch_reg_r_add1_b_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N5
dffeas u_kirsch_reg_r_add1_a_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N31
dffeas u_kirsch_reg_r_add1_b_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N3
dffeas u_kirsch_reg_r_add1_a_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y19_N29
dffeas u_kirsch_reg_r_add1_b_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add1_a_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y19_N1
dffeas u_kirsch_reg_r_add1_a_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add1_a_3n1s1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_a_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_a_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_a_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N22
fiftyfivenm_lcell_comb u_kirsch_reg_r_add1_b_0__afeeder(
// Equation(s):
// u_kirsch_reg_r_add1_b_0__afeeder_combout = u_kirsch_reg_r_add1_a_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_kirsch_reg_r_add1_a_0__aq),
	.cin(gnd),
	.combout(u_kirsch_reg_r_add1_b_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_0__afeeder.lut_mask = 16'hFF00;
defparam u_kirsch_reg_r_add1_b_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y19_N23
dffeas u_kirsch_reg_r_add1_b_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_r_add1_b_0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add1_b_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add1_b_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add1_b_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N0
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix25_fadd(
// Equation(s):
// nx26840z1 = CARRY((u_kirsch_reg_r_add1_a_0__aq & !u_kirsch_reg_r_add1_b_0__aq))

	.dataa(u_kirsch_reg_r_add1_a_0__aq),
	.datab(u_kirsch_reg_r_add1_b_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx26840z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix25_fadd.lut_mask = 16'h0022;
defparam u_kirsch_rtlc5_215_gt_26_ix25_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N2
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix27_fadd(
// Equation(s):
// nx54270z1 = CARRY((u_kirsch_reg_r_add1_b_1__aq & ((!nx26840z1) # (!u_kirsch_reg_r_add1_a_1__aq))) # (!u_kirsch_reg_r_add1_b_1__aq & (!u_kirsch_reg_r_add1_a_1__aq & !nx26840z1)))

	.dataa(u_kirsch_reg_r_add1_b_1__aq),
	.datab(u_kirsch_reg_r_add1_a_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx26840z1),
	.combout(),
	.cout(nx54270z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix27_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix27_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N4
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix29_fadd(
// Equation(s):
// nx22365z1 = CARRY((u_kirsch_reg_r_add1_b_2__aq & (u_kirsch_reg_r_add1_a_2__aq & !nx54270z1)) # (!u_kirsch_reg_r_add1_b_2__aq & ((u_kirsch_reg_r_add1_a_2__aq) # (!nx54270z1))))

	.dataa(u_kirsch_reg_r_add1_b_2__aq),
	.datab(u_kirsch_reg_r_add1_a_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx54270z1),
	.combout(),
	.cout(nx22365z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix29_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_215_gt_26_ix29_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N6
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix31_fadd(
// Equation(s):
// nx37939z1 = CARRY((u_kirsch_reg_r_add1_b_3__aq & ((!nx22365z1) # (!u_kirsch_reg_r_add1_a_3__aq))) # (!u_kirsch_reg_r_add1_b_3__aq & (!u_kirsch_reg_r_add1_a_3__aq & !nx22365z1)))

	.dataa(u_kirsch_reg_r_add1_b_3__aq),
	.datab(u_kirsch_reg_r_add1_a_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx22365z1),
	.combout(),
	.cout(nx37939z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix31_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix31_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N8
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix33_fadd(
// Equation(s):
// nx12023z1 = CARRY((u_kirsch_reg_r_add1_b_4__aq & (u_kirsch_reg_r_add1_a_4__aq & !nx37939z1)) # (!u_kirsch_reg_r_add1_b_4__aq & ((u_kirsch_reg_r_add1_a_4__aq) # (!nx37939z1))))

	.dataa(u_kirsch_reg_r_add1_b_4__aq),
	.datab(u_kirsch_reg_r_add1_a_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37939z1),
	.combout(),
	.cout(nx12023z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix33_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_215_gt_26_ix33_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N10
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix35_fadd(
// Equation(s):
// nx61985z1 = CARRY((u_kirsch_reg_r_add1_b_5__aq & ((!nx12023z1) # (!u_kirsch_reg_r_add1_a_5__aq))) # (!u_kirsch_reg_r_add1_b_5__aq & (!u_kirsch_reg_r_add1_a_5__aq & !nx12023z1)))

	.dataa(u_kirsch_reg_r_add1_b_5__aq),
	.datab(u_kirsch_reg_r_add1_a_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx12023z1),
	.combout(),
	.cout(nx61985z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix35_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix35_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N12
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix37_fadd(
// Equation(s):
// nx46411z1 = CARRY((u_kirsch_reg_r_add1_a_6__aq & ((!nx61985z1) # (!u_kirsch_reg_r_add1_b_6__aq))) # (!u_kirsch_reg_r_add1_a_6__aq & (!u_kirsch_reg_r_add1_b_6__aq & !nx61985z1)))

	.dataa(u_kirsch_reg_r_add1_a_6__aq),
	.datab(u_kirsch_reg_r_add1_b_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx61985z1),
	.combout(),
	.cout(nx46411z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix37_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix37_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N14
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix39_fadd(
// Equation(s):
// nx12780z1 = CARRY((u_kirsch_reg_r_add1_b_7__aq & ((!nx46411z1) # (!u_kirsch_reg_r_add1_a_7__aq))) # (!u_kirsch_reg_r_add1_b_7__aq & (!u_kirsch_reg_r_add1_a_7__aq & !nx46411z1)))

	.dataa(u_kirsch_reg_r_add1_b_7__aq),
	.datab(u_kirsch_reg_r_add1_a_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46411z1),
	.combout(),
	.cout(nx12780z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix39_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N16
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix41_fadd(
// Equation(s):
// nx2794z1 = CARRY((u_kirsch_reg_r_add1_a_8__aq & ((!nx12780z1) # (!u_kirsch_reg_r_add1_b_8__aq))) # (!u_kirsch_reg_r_add1_a_8__aq & (!u_kirsch_reg_r_add1_b_8__aq & !nx12780z1)))

	.dataa(u_kirsch_reg_r_add1_a_8__aq),
	.datab(u_kirsch_reg_r_add1_b_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx12780z1),
	.combout(),
	.cout(nx2794z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix41_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix41_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N18
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix43_fadd(
// Equation(s):
// nx6502z1 = CARRY((u_kirsch_reg_r_add1_b_9__aq & ((!nx2794z1) # (!u_kirsch_reg_r_add1_a_9__aq))) # (!u_kirsch_reg_r_add1_b_9__aq & (!u_kirsch_reg_r_add1_a_9__aq & !nx2794z1)))

	.dataa(u_kirsch_reg_r_add1_b_9__aq),
	.datab(u_kirsch_reg_r_add1_a_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2794z1),
	.combout(),
	.cout(nx6502z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N20
fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf(
// Equation(s):
// nx29221z4 = nx6502z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx6502z1),
	.combout(nx29221z4),
	.cout());
// synopsys translate_off
defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N24
fiftyfivenm_lcell_comb ix29221z7096(
// Equation(s):
// nx29221z1 = (nx29221z4 & ((nx29221z3) # ((nx29221z2 & nx57197z2))))

	.dataa(nx29221z2),
	.datab(nx57197z2),
	.datac(nx29221z3),
	.datad(nx29221z4),
	.cin(gnd),
	.combout(nx29221z1),
	.cout());
// synopsys translate_off
defparam ix29221z7096.lut_mask = 16'hF800;
defparam ix29221z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N10
fiftyfivenm_lcell_comb ix29221z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[4] = (nx29221z1 & ((u_kirsch_reg_r_add1_b_4__aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_4__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add1_a_4__aq),
	.datac(u_kirsch_reg_r_add1_b_4__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[4]),
	.cout());
// synopsys translate_off
defparam ix29221z7095.lut_mask = 16'hF0CC;
defparam ix29221z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N16
fiftyfivenm_lcell_comb ix34206z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[9] = (nx29221z1 & ((u_kirsch_reg_r_add1_b_9__aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_9__aq))

	.dataa(u_kirsch_reg_r_add1_a_9__aq),
	.datab(u_kirsch_reg_r_add1_b_9__aq),
	.datac(gnd),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[9]),
	.cout());
// synopsys translate_off
defparam ix34206z7095.lut_mask = 16'hCCAA;
defparam ix34206z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N17
dffeas u_kirsch_reg_r_max1_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N26
fiftyfivenm_lcell_comb ix33209z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[8] = (nx29221z1 & (u_kirsch_reg_r_add1_b_8__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_8__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add1_b_8__aq),
	.datac(u_kirsch_reg_r_add1_a_8__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[8]),
	.cout());
// synopsys translate_off
defparam ix33209z7095.lut_mask = 16'hCCF0;
defparam ix33209z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N27
dffeas u_kirsch_reg_r_max1_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N12
fiftyfivenm_lcell_comb ix32212z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[7] = (nx29221z1 & (u_kirsch_reg_r_add1_b_7__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_7__aq)))

	.dataa(u_kirsch_reg_r_add1_b_7__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add1_a_7__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[7]),
	.cout());
// synopsys translate_off
defparam ix32212z7095.lut_mask = 16'hAAF0;
defparam ix32212z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N13
dffeas u_kirsch_reg_r_max1_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N22
fiftyfivenm_lcell_comb ix31215z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[6] = (nx29221z1 & (u_kirsch_reg_r_add1_b_6__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_6__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add1_b_6__aq),
	.datac(u_kirsch_reg_r_add1_a_6__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[6]),
	.cout());
// synopsys translate_off
defparam ix31215z7095.lut_mask = 16'hCCF0;
defparam ix31215z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N23
dffeas u_kirsch_reg_r_max1_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N8
fiftyfivenm_lcell_comb ix30218z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[5] = (nx29221z1 & (u_kirsch_reg_r_add1_b_5__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_5__aq)))

	.dataa(u_kirsch_reg_r_add1_b_5__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add1_a_5__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[5]),
	.cout());
// synopsys translate_off
defparam ix30218z7095.lut_mask = 16'hAAF0;
defparam ix30218z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N9
dffeas u_kirsch_reg_r_max1_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N0
fiftyfivenm_lcell_comb ix28224z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[3] = (nx29221z1 & ((u_kirsch_reg_r_add1_b_3__aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_3__aq))

	.dataa(u_kirsch_reg_r_add1_a_3__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add1_b_3__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[3]),
	.cout());
// synopsys translate_off
defparam ix28224z7095.lut_mask = 16'hF0AA;
defparam ix28224z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N1
dffeas u_kirsch_reg_r_max1_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N2
fiftyfivenm_lcell_comb ix27227z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[2] = (nx29221z1 & (u_kirsch_reg_r_add1_b_2__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_2__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add1_b_2__aq),
	.datac(u_kirsch_reg_r_add1_a_2__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[2]),
	.cout());
// synopsys translate_off
defparam ix27227z7095.lut_mask = 16'hCCF0;
defparam ix27227z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N3
dffeas u_kirsch_reg_r_max1_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N20
fiftyfivenm_lcell_comb ix26230z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[1] = (nx29221z1 & (u_kirsch_reg_r_add1_b_1__aq)) # (!nx29221z1 & ((u_kirsch_reg_r_add1_a_1__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add1_b_1__aq),
	.datac(u_kirsch_reg_r_add1_a_1__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[1]),
	.cout());
// synopsys translate_off
defparam ix26230z7095.lut_mask = 16'hCCF0;
defparam ix26230z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N21
dffeas u_kirsch_reg_r_max1_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N30
fiftyfivenm_lcell_comb ix25233z7095(
// Equation(s):
// u_kirsch_r_max1_5n6ss1[0] = (nx29221z1 & ((u_kirsch_reg_r_add1_b_0__aq))) # (!nx29221z1 & (u_kirsch_reg_r_add1_a_0__aq))

	.dataa(u_kirsch_reg_r_add1_a_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add1_b_0__aq),
	.datad(nx29221z1),
	.cin(gnd),
	.combout(u_kirsch_r_max1_5n6ss1[0]),
	.cout());
// synopsys translate_off
defparam ix25233z7095.lut_mask = 16'hF0AA;
defparam ix25233z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N31
dffeas u_kirsch_reg_r_max1_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N0
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix25_fadd(
// Equation(s):
// nx28806z1 = CARRY((!u_kirsch_reg_r_max1_0__aq & u_kirsch_reg_r_add1_a_0__aq))

	.dataa(u_kirsch_reg_r_max1_0__aq),
	.datab(u_kirsch_reg_r_add1_a_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx28806z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix25_fadd.lut_mask = 16'h0044;
defparam u_kirsch_rtlc5_205_gt_25_ix25_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N2
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix27_fadd(
// Equation(s):
// nx44380z1 = CARRY((u_kirsch_reg_r_add1_a_1__aq & (u_kirsch_reg_r_max1_1__aq & !nx28806z1)) # (!u_kirsch_reg_r_add1_a_1__aq & ((u_kirsch_reg_r_max1_1__aq) # (!nx28806z1))))

	.dataa(u_kirsch_reg_r_add1_a_1__aq),
	.datab(u_kirsch_reg_r_max1_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx28806z1),
	.combout(),
	.cout(nx44380z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix27_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_205_gt_25_ix27_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N4
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix29_fadd(
// Equation(s):
// nx12475z1 = CARRY((u_kirsch_reg_r_add1_a_2__aq & ((!nx44380z1) # (!u_kirsch_reg_r_max1_2__aq))) # (!u_kirsch_reg_r_add1_a_2__aq & (!u_kirsch_reg_r_max1_2__aq & !nx44380z1)))

	.dataa(u_kirsch_reg_r_add1_a_2__aq),
	.datab(u_kirsch_reg_r_max1_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx44380z1),
	.combout(),
	.cout(nx12475z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix29_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_205_gt_25_ix29_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N6
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix31_fadd(
// Equation(s):
// nx37487z1 = CARRY((u_kirsch_reg_r_add1_a_3__aq & (u_kirsch_reg_r_max1_3__aq & !nx12475z1)) # (!u_kirsch_reg_r_add1_a_3__aq & ((u_kirsch_reg_r_max1_3__aq) # (!nx12475z1))))

	.dataa(u_kirsch_reg_r_add1_a_3__aq),
	.datab(u_kirsch_reg_r_max1_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx12475z1),
	.combout(),
	.cout(nx37487z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix31_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_205_gt_25_ix31_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N8
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix33_fadd(
// Equation(s):
// nx21913z1 = CARRY((u_kirsch_reg_r_max1_4__aq & (u_kirsch_reg_r_add1_a_4__aq & !nx37487z1)) # (!u_kirsch_reg_r_max1_4__aq & ((u_kirsch_reg_r_add1_a_4__aq) # (!nx37487z1))))

	.dataa(u_kirsch_reg_r_max1_4__aq),
	.datab(u_kirsch_reg_r_add1_a_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37487z1),
	.combout(),
	.cout(nx21913z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix33_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_205_gt_25_ix33_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N10
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix35_fadd(
// Equation(s):
// nx6339z1 = CARRY((u_kirsch_reg_r_max1_5__aq & ((!nx21913z1) # (!u_kirsch_reg_r_add1_a_5__aq))) # (!u_kirsch_reg_r_max1_5__aq & (!u_kirsch_reg_r_add1_a_5__aq & !nx21913z1)))

	.dataa(u_kirsch_reg_r_max1_5__aq),
	.datab(u_kirsch_reg_r_add1_a_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21913z1),
	.combout(),
	.cout(nx6339z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix35_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_205_gt_25_ix35_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N12
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix37_fadd(
// Equation(s):
// nx56301z1 = CARRY((u_kirsch_reg_r_max1_6__aq & (u_kirsch_reg_r_add1_a_6__aq & !nx6339z1)) # (!u_kirsch_reg_r_max1_6__aq & ((u_kirsch_reg_r_add1_a_6__aq) # (!nx6339z1))))

	.dataa(u_kirsch_reg_r_max1_6__aq),
	.datab(u_kirsch_reg_r_add1_a_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx6339z1),
	.combout(),
	.cout(nx56301z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix37_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_205_gt_25_ix37_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N14
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix39_fadd(
// Equation(s):
// nx42866z1 = CARRY((u_kirsch_reg_r_max1_7__aq & ((!nx56301z1) # (!u_kirsch_reg_r_add1_a_7__aq))) # (!u_kirsch_reg_r_max1_7__aq & (!u_kirsch_reg_r_add1_a_7__aq & !nx56301z1)))

	.dataa(u_kirsch_reg_r_max1_7__aq),
	.datab(u_kirsch_reg_r_add1_a_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56301z1),
	.combout(),
	.cout(nx42866z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix39_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_205_gt_25_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N16
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix41_fadd(
// Equation(s):
// nx58440z1 = CARRY((u_kirsch_reg_r_max1_8__aq & (u_kirsch_reg_r_add1_a_8__aq & !nx42866z1)) # (!u_kirsch_reg_r_max1_8__aq & ((u_kirsch_reg_r_add1_a_8__aq) # (!nx42866z1))))

	.dataa(u_kirsch_reg_r_max1_8__aq),
	.datab(u_kirsch_reg_r_add1_a_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42866z1),
	.combout(),
	.cout(nx58440z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix41_fadd.lut_mask = 16'h004D;
defparam u_kirsch_rtlc5_205_gt_25_ix41_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N18
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix43_fadd(
// Equation(s):
// nx1252z1 = CARRY((u_kirsch_reg_r_max1_9__aq & ((!nx58440z1) # (!u_kirsch_reg_r_add1_a_9__aq))) # (!u_kirsch_reg_r_max1_9__aq & (!u_kirsch_reg_r_add1_a_9__aq & !nx58440z1)))

	.dataa(u_kirsch_reg_r_max1_9__aq),
	.datab(u_kirsch_reg_r_add1_a_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58440z1),
	.combout(),
	.cout(nx1252z1));
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd.lut_mask = 16'h002B;
defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N20
fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf(
// Equation(s):
// nx29221z7 = !nx1252z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx1252z1),
	.combout(nx29221z7),
	.cout());
// synopsys translate_off
defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf.lut_mask = 16'h0F0F;
defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N28
fiftyfivenm_lcell_comb ix29221z7100(
// Equation(s):
// nx29221z6 = (!nx29221z3 & (!nx29221z7 & ((!nx57197z2) # (!nx29221z2))))

	.dataa(nx29221z2),
	.datab(nx29221z3),
	.datac(nx29221z7),
	.datad(nx57197z2),
	.cin(gnd),
	.combout(nx29221z6),
	.cout());
// synopsys translate_off
defparam ix29221z7100.lut_mask = 16'h0103;
defparam ix29221z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N14
fiftyfivenm_lcell_comb ix29221z7099(
// Equation(s):
// nx29221z5 = (nx29221z8 & !nx29221z6)

	.dataa(gnd),
	.datab(gnd),
	.datac(nx29221z8),
	.datad(nx29221z6),
	.cin(gnd),
	.combout(nx29221z5),
	.cout());
// synopsys translate_off
defparam ix29221z7099.lut_mask = 16'h00F0;
defparam ix29221z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y19_N11
dffeas u_kirsch_reg_r_max1_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_max1_5n6ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx29221z5),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_max1_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_max1_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_max1_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N30
fiftyfivenm_lcell_comb ix60486z7102(
// Equation(s):
// nx60486z8 = (u_kirsch_reg_r_max1_4__aq & ((u_kirsch_reg_r_max1_3__aq $ (u_kirsch_reg_r_add1_a_3__aq)) # (!u_kirsch_reg_r_add1_a_4__aq))) # (!u_kirsch_reg_r_max1_4__aq & ((u_kirsch_reg_r_add1_a_4__aq) # (u_kirsch_reg_r_max1_3__aq $ 
// (u_kirsch_reg_r_add1_a_3__aq))))

	.dataa(u_kirsch_reg_r_max1_4__aq),
	.datab(u_kirsch_reg_r_max1_3__aq),
	.datac(u_kirsch_reg_r_add1_a_4__aq),
	.datad(u_kirsch_reg_r_add1_a_3__aq),
	.cin(gnd),
	.combout(nx60486z8),
	.cout());
// synopsys translate_off
defparam ix60486z7102.lut_mask = 16'h7BDE;
defparam ix60486z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N28
fiftyfivenm_lcell_comb ix60486z7105(
// Equation(s):
// nx60486z11 = (u_kirsch_reg_r_max1_9__aq & ((u_kirsch_reg_r_add1_a_5__aq $ (u_kirsch_reg_r_max1_5__aq)) # (!u_kirsch_reg_r_add1_a_9__aq))) # (!u_kirsch_reg_r_max1_9__aq & ((u_kirsch_reg_r_add1_a_9__aq) # (u_kirsch_reg_r_add1_a_5__aq $ 
// (u_kirsch_reg_r_max1_5__aq))))

	.dataa(u_kirsch_reg_r_max1_9__aq),
	.datab(u_kirsch_reg_r_add1_a_9__aq),
	.datac(u_kirsch_reg_r_add1_a_5__aq),
	.datad(u_kirsch_reg_r_max1_5__aq),
	.cin(gnd),
	.combout(nx60486z11),
	.cout());
// synopsys translate_off
defparam ix60486z7105.lut_mask = 16'h6FF6;
defparam ix60486z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N26
fiftyfivenm_lcell_comb ix60486z7104(
// Equation(s):
// nx60486z10 = (u_kirsch_reg_r_max1_7__aq & ((u_kirsch_reg_r_max1_8__aq $ (u_kirsch_reg_r_add1_a_8__aq)) # (!u_kirsch_reg_r_add1_a_7__aq))) # (!u_kirsch_reg_r_max1_7__aq & ((u_kirsch_reg_r_add1_a_7__aq) # (u_kirsch_reg_r_max1_8__aq $ 
// (u_kirsch_reg_r_add1_a_8__aq))))

	.dataa(u_kirsch_reg_r_max1_7__aq),
	.datab(u_kirsch_reg_r_add1_a_7__aq),
	.datac(u_kirsch_reg_r_max1_8__aq),
	.datad(u_kirsch_reg_r_add1_a_8__aq),
	.cin(gnd),
	.combout(nx60486z10),
	.cout());
// synopsys translate_off
defparam ix60486z7104.lut_mask = 16'h6FF6;
defparam ix60486z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N24
fiftyfivenm_lcell_comb ix60486z7103(
// Equation(s):
// nx60486z9 = (u_kirsch_reg_r_max1_6__aq & ((u_kirsch_reg_r_max1_1__aq $ (u_kirsch_reg_r_add1_a_1__aq)) # (!u_kirsch_reg_r_add1_a_6__aq))) # (!u_kirsch_reg_r_max1_6__aq & ((u_kirsch_reg_r_add1_a_6__aq) # (u_kirsch_reg_r_max1_1__aq $ 
// (u_kirsch_reg_r_add1_a_1__aq))))

	.dataa(u_kirsch_reg_r_max1_6__aq),
	.datab(u_kirsch_reg_r_max1_1__aq),
	.datac(u_kirsch_reg_r_add1_a_6__aq),
	.datad(u_kirsch_reg_r_add1_a_1__aq),
	.cin(gnd),
	.combout(nx60486z9),
	.cout());
// synopsys translate_off
defparam ix60486z7103.lut_mask = 16'h7BDE;
defparam ix60486z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N22
fiftyfivenm_lcell_comb ix60486z7101(
// Equation(s):
// nx60486z7 = (nx60486z8) # ((nx60486z11) # ((nx60486z10) # (nx60486z9)))

	.dataa(nx60486z8),
	.datab(nx60486z11),
	.datac(nx60486z10),
	.datad(nx60486z9),
	.cin(gnd),
	.combout(nx60486z7),
	.cout());
// synopsys translate_off
defparam ix60486z7101.lut_mask = 16'hFFFE;
defparam ix60486z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N28
fiftyfivenm_lcell_comb ix60486z7100(
// Equation(s):
// nx60486z6 = (!u_kirsch_reg_stg_counter2_3__aq & (!u_kirsch_reg_stg_counter2_1__aq & (u_kirsch_reg_stg_counter2_2__aq & !u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx60486z6),
	.cout());
// synopsys translate_off
defparam ix60486z7100.lut_mask = 16'h0010;
defparam ix60486z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N0
fiftyfivenm_lcell_comb ix12123z7096(
// Equation(s):
// nx12123z2 = (u_kirsch_reg_stg_counter1_2__aq & !u_kirsch_reg_stg_counter1_3__aq)

	.dataa(u_kirsch_reg_stg_counter1_2__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx12123z2),
	.cout());
// synopsys translate_off
defparam ix12123z7096.lut_mask = 16'h0A0A;
defparam ix12123z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y19_N30
fiftyfivenm_lcell_comb ix60486z7099(
// Equation(s):
// nx60486z5 = (u_kirsch_reg_r_max1_2__aq & ((u_kirsch_reg_r_max1_0__aq $ (u_kirsch_reg_r_add1_a_0__aq)) # (!u_kirsch_reg_r_add1_a_2__aq))) # (!u_kirsch_reg_r_max1_2__aq & ((u_kirsch_reg_r_add1_a_2__aq) # (u_kirsch_reg_r_max1_0__aq $ 
// (u_kirsch_reg_r_add1_a_0__aq))))

	.dataa(u_kirsch_reg_r_max1_2__aq),
	.datab(u_kirsch_reg_r_max1_0__aq),
	.datac(u_kirsch_reg_r_add1_a_2__aq),
	.datad(u_kirsch_reg_r_add1_a_0__aq),
	.cin(gnd),
	.combout(nx60486z5),
	.cout());
// synopsys translate_off
defparam ix60486z7099.lut_mask = 16'h7BDE;
defparam ix60486z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N8
fiftyfivenm_lcell_comb ix60486z7098(
// Equation(s):
// nx60486z4 = (nx60486z6) # ((nx60486z5) # ((nx12123z2 & nx26412z3)))

	.dataa(nx60486z6),
	.datab(nx12123z2),
	.datac(nx60486z5),
	.datad(nx26412z3),
	.cin(gnd),
	.combout(nx60486z4),
	.cout());
// synopsys translate_off
defparam ix60486z7098.lut_mask = 16'hFEFA;
defparam ix60486z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y19_N18
fiftyfivenm_lcell_comb ix60486z7097(
// Equation(s):
// nx60486z3 = (nx29221z1) # ((nx29221z6 & ((nx60486z7) # (nx60486z4))))

	.dataa(nx60486z7),
	.datab(nx29221z1),
	.datac(nx60486z4),
	.datad(nx29221z6),
	.cin(gnd),
	.combout(nx60486z3),
	.cout());
// synopsys translate_off
defparam ix60486z7097.lut_mask = 16'hFECC;
defparam ix60486z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N8
fiftyfivenm_lcell_comb ix58492z7095(
// Equation(s):
// nx58492z1 = (nx58492z2 & (u_kirsch_reg_dir2_2__aq)) # (!nx58492z2 & ((nx60486z3)))

	.dataa(gnd),
	.datab(nx58492z2),
	.datac(u_kirsch_reg_dir2_2__aq),
	.datad(nx60486z3),
	.cin(gnd),
	.combout(nx58492z1),
	.cout());
// synopsys translate_off
defparam ix58492z7095.lut_mask = 16'hF3C0;
defparam ix58492z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N9
dffeas u_kirsch_reg_dir2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx58492z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N10
fiftyfivenm_lcell_comb ix12123z7097(
// Equation(s):
// nx12123z3 = (!u_kirsch_reg_stg_counter2_3__aq & (u_kirsch_reg_stg_counter2_1__aq & (u_kirsch_reg_stg_counter2_2__aq & !u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_2__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx12123z3),
	.cout());
// synopsys translate_off
defparam ix12123z7097.lut_mask = 16'h0040;
defparam ix12123z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N18
fiftyfivenm_lcell_comb ix12123z7095(
// Equation(s):
// nx12123z1 = (reset_n_ainput_o & ((nx12123z3) # ((nx41042z9 & nx12123z2))))

	.dataa(nx12123z3),
	.datab(reset_n_ainput_o),
	.datac(nx41042z9),
	.datad(nx12123z2),
	.cin(gnd),
	.combout(nx12123z1),
	.cout());
// synopsys translate_off
defparam ix12123z7095.lut_mask = 16'hC888;
defparam ix12123z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N13
dffeas u_kirsch_reg_dir2_final_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_dir2_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_final_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_final_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_final_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N14
fiftyfivenm_lcell_comb ix2094z7096(
// Equation(s):
// nx2094z2 = (reset_n_ainput_o & ((nx60486z6) # ((nx12123z2 & nx26412z3))))

	.dataa(reset_n_ainput_o),
	.datab(nx12123z2),
	.datac(nx60486z6),
	.datad(nx26412z3),
	.cin(gnd),
	.combout(nx2094z2),
	.cout());
// synopsys translate_off
defparam ix2094z7096.lut_mask = 16'hA8A0;
defparam ix2094z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N10
fiftyfivenm_lcell_comb ix52067z7097(
// Equation(s):
// nx52067z3 = (u_kirsch_reg_stg_counter2_3__aq & (((!u_kirsch_reg_stg_counter1_3__aq & !u_kirsch_reg_stg_counter1_2__aq)))) # (!u_kirsch_reg_stg_counter2_3__aq & (((!u_kirsch_reg_stg_counter1_3__aq & !u_kirsch_reg_stg_counter1_2__aq)) # 
// (!u_kirsch_reg_stg_counter2_2__aq)))

	.dataa(u_kirsch_reg_stg_counter2_3__aq),
	.datab(u_kirsch_reg_stg_counter2_2__aq),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(u_kirsch_reg_stg_counter1_2__aq),
	.cin(gnd),
	.combout(nx52067z3),
	.cout());
// synopsys translate_off
defparam ix52067z7097.lut_mask = 16'h111F;
defparam ix52067z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N14
fiftyfivenm_lcell_comb ix64316z7095(
// Equation(s):
// nx64316z1 = (reset_n_ainput_o & (u_kirsch_reg_max0_bit_counter_0__aq $ (nx52067z3)))

	.dataa(reset_n_ainput_o),
	.datab(gnd),
	.datac(u_kirsch_reg_max0_bit_counter_0__aq),
	.datad(nx52067z3),
	.cin(gnd),
	.combout(nx64316z1),
	.cout());
// synopsys translate_off
defparam ix64316z7095.lut_mask = 16'h0AA0;
defparam ix64316z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N15
dffeas u_kirsch_reg_max0_bit_counter_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64316z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_max0_bit_counter_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_max0_bit_counter_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_max0_bit_counter_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N30
fiftyfivenm_lcell_comb ix63319z7095(
// Equation(s):
// nx63319z1 = (reset_n_ainput_o & (u_kirsch_reg_max0_bit_counter_1__aq $ (((u_kirsch_reg_max0_bit_counter_0__aq & nx52067z3)))))

	.dataa(reset_n_ainput_o),
	.datab(u_kirsch_reg_max0_bit_counter_0__aq),
	.datac(u_kirsch_reg_max0_bit_counter_1__aq),
	.datad(nx52067z3),
	.cin(gnd),
	.combout(nx63319z1),
	.cout());
// synopsys translate_off
defparam ix63319z7095.lut_mask = 16'h28A0;
defparam ix63319z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N31
dffeas u_kirsch_reg_max0_bit_counter_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63319z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_max0_bit_counter_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_max0_bit_counter_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_max0_bit_counter_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N0
fiftyfivenm_lcell_comb ix51070z7095(
// Equation(s):
// nx51070z1 = (u_kirsch_reg_max0_bit_counter_1__aq & (((u_kirsch_reg_dir1_1__aq)))) # (!u_kirsch_reg_max0_bit_counter_1__aq & ((nx63319z1 & ((nx40631z1))) # (!nx63319z1 & (u_kirsch_reg_dir1_1__aq))))

	.dataa(u_kirsch_reg_max0_bit_counter_1__aq),
	.datab(nx63319z1),
	.datac(u_kirsch_reg_dir1_1__aq),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(nx51070z1),
	.cout());
// synopsys translate_off
defparam ix51070z7095.lut_mask = 16'hF4B0;
defparam ix51070z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N1
dffeas u_kirsch_reg_dir1_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51070z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N2
fiftyfivenm_lcell_comb ix3091z7095(
// Equation(s):
// nx3091z1 = (nx2094z2 & ((u_kirsch_reg_dir1_1__aq))) # (!nx2094z2 & (u_kirsch_reg_dir1_final_1__aq))

	.dataa(gnd),
	.datab(nx2094z2),
	.datac(u_kirsch_reg_dir1_final_1__aq),
	.datad(u_kirsch_reg_dir1_1__aq),
	.cin(gnd),
	.combout(nx3091z1),
	.cout());
// synopsys translate_off
defparam ix3091z7095.lut_mask = 16'hFC30;
defparam ix3091z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N3
dffeas u_kirsch_reg_dir1_final_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx3091z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_final_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_final_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_final_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N24
fiftyfivenm_lcell_comb ix60486z7096(
// Equation(s):
// nx60486z2 = (!u_kirsch_reg_max1_bit_counter_0__aq & (!u_kirsch_reg_max1_bit_counter_1__aq & nx29221z8))

	.dataa(u_kirsch_reg_max1_bit_counter_0__aq),
	.datab(u_kirsch_reg_max1_bit_counter_1__aq),
	.datac(gnd),
	.datad(nx29221z8),
	.cin(gnd),
	.combout(nx60486z2),
	.cout());
// synopsys translate_off
defparam ix60486z7096.lut_mask = 16'h1100;
defparam ix60486z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N18
fiftyfivenm_lcell_comb ix60486z7095(
// Equation(s):
// nx60486z1 = (nx60486z2 & ((nx60486z3))) # (!nx60486z2 & (u_kirsch_reg_dir2_0__aq))

	.dataa(gnd),
	.datab(nx60486z2),
	.datac(u_kirsch_reg_dir2_0__aq),
	.datad(nx60486z3),
	.cin(gnd),
	.combout(nx60486z1),
	.cout());
// synopsys translate_off
defparam ix60486z7095.lut_mask = 16'hFC30;
defparam ix60486z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N19
dffeas u_kirsch_reg_dir2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60486z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y17_N25
dffeas u_kirsch_reg_dir2_final_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_dir2_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_final_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_final_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_final_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N16
fiftyfivenm_lcell_comb ix62334z7097(
// Equation(s):
// nx62334z3 = (u_kirsch_reg_dir1_final_1__aq & !u_kirsch_reg_dir2_final_0__aq)

	.dataa(gnd),
	.datab(u_kirsch_reg_dir1_final_1__aq),
	.datac(u_kirsch_reg_dir2_final_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx62334z3),
	.cout());
// synopsys translate_off
defparam ix62334z7097.lut_mask = 16'h0C0C;
defparam ix62334z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N14
fiftyfivenm_lcell_comb ix59489z7096(
// Equation(s):
// nx59489z2 = (u_kirsch_reg_max1_bit_counter_0__aq & (!u_kirsch_reg_max1_bit_counter_1__aq & nx29221z8))

	.dataa(u_kirsch_reg_max1_bit_counter_0__aq),
	.datab(u_kirsch_reg_max1_bit_counter_1__aq),
	.datac(gnd),
	.datad(nx29221z8),
	.cin(gnd),
	.combout(nx59489z2),
	.cout());
// synopsys translate_off
defparam ix59489z7096.lut_mask = 16'h2200;
defparam ix59489z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N22
fiftyfivenm_lcell_comb ix59489z7095(
// Equation(s):
// nx59489z1 = (nx59489z2 & ((nx60486z3))) # (!nx59489z2 & (u_kirsch_reg_dir2_1__aq))

	.dataa(nx59489z2),
	.datab(gnd),
	.datac(u_kirsch_reg_dir2_1__aq),
	.datad(nx60486z3),
	.cin(gnd),
	.combout(nx59489z1),
	.cout());
// synopsys translate_off
defparam ix59489z7095.lut_mask = 16'hFA50;
defparam ix59489z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N23
dffeas u_kirsch_reg_dir2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59489z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y17_N15
dffeas u_kirsch_reg_dir2_final_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_dir2_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir2_final_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir2_final_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir2_final_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N10
fiftyfivenm_lcell_comb ix49076z7096(
// Equation(s):
// nx49076z2 = (u_kirsch_reg_max0_bit_counter_1__aq & (nx52067z3 & (u_kirsch_reg_max0_bit_counter_0__aq & reset_n_ainput_o)))

	.dataa(u_kirsch_reg_max0_bit_counter_1__aq),
	.datab(nx52067z3),
	.datac(u_kirsch_reg_max0_bit_counter_0__aq),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx49076z2),
	.cout());
// synopsys translate_off
defparam ix49076z7096.lut_mask = 16'h8000;
defparam ix49076z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N28
fiftyfivenm_lcell_comb ix49076z7095(
// Equation(s):
// nx49076z1 = (nx49076z2 & ((nx40631z1))) # (!nx49076z2 & (u_kirsch_reg_dir1_3__aq))

	.dataa(nx49076z2),
	.datab(gnd),
	.datac(u_kirsch_reg_dir1_3__aq),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(nx49076z1),
	.cout());
// synopsys translate_off
defparam ix49076z7095.lut_mask = 16'hFA50;
defparam ix49076z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N29
dffeas u_kirsch_reg_dir1_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx49076z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N28
fiftyfivenm_lcell_comb ix5085z7095(
// Equation(s):
// nx5085z1 = (nx2094z2 & ((u_kirsch_reg_dir1_3__aq))) # (!nx2094z2 & (u_kirsch_reg_dir1_final_3__aq))

	.dataa(gnd),
	.datab(nx2094z2),
	.datac(u_kirsch_reg_dir1_final_3__aq),
	.datad(u_kirsch_reg_dir1_3__aq),
	.cin(gnd),
	.combout(nx5085z1),
	.cout());
// synopsys translate_off
defparam ix5085z7095.lut_mask = 16'hFC30;
defparam ix5085z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N29
dffeas u_kirsch_reg_dir1_final_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx5085z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_final_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_final_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_final_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N20
fiftyfivenm_lcell_comb ix62334z7096(
// Equation(s):
// nx62334z2 = (u_kirsch_reg_dir2_final_2__aq & ((nx62334z3) # ((!u_kirsch_reg_dir2_final_1__aq)))) # (!u_kirsch_reg_dir2_final_2__aq & (((!u_kirsch_reg_dir1_final_3__aq))))

	.dataa(u_kirsch_reg_dir2_final_2__aq),
	.datab(nx62334z3),
	.datac(u_kirsch_reg_dir2_final_1__aq),
	.datad(u_kirsch_reg_dir1_final_3__aq),
	.cin(gnd),
	.combout(nx62334z2),
	.cout());
// synopsys translate_off
defparam ix62334z7096.lut_mask = 16'h8ADF;
defparam ix62334z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N18
fiftyfivenm_lcell_comb ix38950z7099(
// Equation(s):
// nx38950z3 = (!u_kirsch_reg_stg_counter1_1__aq & (!u_kirsch_reg_stg_counter1_3__aq & (u_kirsch_reg_stg_counter1_2__aq & u_kirsch_reg_stg_counter1_0__aq)))

	.dataa(u_kirsch_reg_stg_counter1_1__aq),
	.datab(u_kirsch_reg_stg_counter1_3__aq),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_0__aq),
	.cin(gnd),
	.combout(nx38950z3),
	.cout());
// synopsys translate_off
defparam ix38950z7099.lut_mask = 16'h1000;
defparam ix38950z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y18_N12
fiftyfivenm_lcell_comb ix38950z7100(
// Equation(s):
// nx38950z4 = (u_kirsch_reg_stg_counter2_2__aq & (!u_kirsch_reg_stg_counter2_1__aq & (!u_kirsch_reg_stg_counter2_3__aq & u_kirsch_reg_stg_counter2_0__aq)))

	.dataa(u_kirsch_reg_stg_counter2_2__aq),
	.datab(u_kirsch_reg_stg_counter2_1__aq),
	.datac(u_kirsch_reg_stg_counter2_3__aq),
	.datad(u_kirsch_reg_stg_counter2_0__aq),
	.cin(gnd),
	.combout(nx38950z4),
	.cout());
// synopsys translate_off
defparam ix38950z7100.lut_mask = 16'h0200;
defparam ix38950z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N16
fiftyfivenm_lcell_comb ix38950z7096(
// Equation(s):
// nx38950z1 = (u_kirsch_reg_stg_counter1_1__aq & (!u_kirsch_reg_stg_counter1_3__aq & (!u_kirsch_reg_stg_counter1_2__aq & !u_kirsch_reg_stg_counter1_0__aq)))

	.dataa(u_kirsch_reg_stg_counter1_1__aq),
	.datab(u_kirsch_reg_stg_counter1_3__aq),
	.datac(u_kirsch_reg_stg_counter1_2__aq),
	.datad(u_kirsch_reg_stg_counter1_0__aq),
	.cin(gnd),
	.combout(nx38950z1),
	.cout());
// synopsys translate_off
defparam ix38950z7096.lut_mask = 16'h0002;
defparam ix38950z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N10
fiftyfivenm_lcell_comb ix11769z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[9] = (!nx41042z10 & (u_kirsch_reg_r_add2_9__aq & !nx38950z1))

	.dataa(nx41042z10),
	.datab(u_kirsch_reg_r_add2_9__aq),
	.datac(gnd),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[9]),
	.cout());
// synopsys translate_off
defparam ix11769z7095.lut_mask = 16'h0044;
defparam ix11769z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N3
dffeas u_kirsch_reg_r_add0_b_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N2
fiftyfivenm_lcell_comb ix38950z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[7] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_7__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_7__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_7__aq))))

	.dataa(u_kirsch_reg_r_add2_7__aq),
	.datab(nx41042z10),
	.datac(u_kirsch_reg_r_add0_b_7__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[7]),
	.cout());
// synopsys translate_off
defparam ix38950z7095.lut_mask = 16'hF0E2;
defparam ix38950z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N13
dffeas u_kirsch_reg_r_add0_b_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N12
fiftyfivenm_lcell_comb ix7802z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[6] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_6__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_6__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_6__aq))))

	.dataa(u_kirsch_reg_r_add2_6__aq),
	.datab(nx41042z10),
	.datac(u_kirsch_reg_r_add0_b_6__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[6]),
	.cout());
// synopsys translate_off
defparam ix7802z7095.lut_mask = 16'hF0E2;
defparam ix7802z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N17
dffeas u_kirsch_reg_r_add0_b_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N16
fiftyfivenm_lcell_comb ix58521z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[4] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_4__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_4__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_4__aq))))

	.dataa(u_kirsch_reg_r_add2_4__aq),
	.datab(nx41042z10),
	.datac(u_kirsch_reg_r_add0_b_4__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[4]),
	.cout());
// synopsys translate_off
defparam ix58521z7095.lut_mask = 16'hF0E2;
defparam ix58521z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y19_N27
dffeas u_kirsch_reg_r_add0_b_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N26
fiftyfivenm_lcell_comb ix21832z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[2] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_2__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_2__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_2__aq))))

	.dataa(nx41042z10),
	.datab(u_kirsch_reg_r_add2_2__aq),
	.datac(u_kirsch_reg_r_add0_b_2__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[2]),
	.cout());
// synopsys translate_off
defparam ix21832z7095.lut_mask = 16'hF0E4;
defparam ix21832z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N28
fiftyfivenm_lcell_comb ix38950z7098(
// Equation(s):
// nx38950z2 = (!nx41042z10 & (!nx38950z1 & ((nx38950z3) # (nx38950z4))))

	.dataa(nx41042z10),
	.datab(nx38950z3),
	.datac(nx38950z4),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(nx38950z2),
	.cout());
// synopsys translate_off
defparam ix38950z7098.lut_mask = 16'h0054;
defparam ix38950z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y20_N13
dffeas u_kirsch_reg_r_add0_b_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y20_N12
fiftyfivenm_lcell_comb ix46944z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[0] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_0__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_0__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_0__aq))))

	.dataa(nx41042z10),
	.datab(u_kirsch_reg_r_add2_0__aq),
	.datac(u_kirsch_reg_r_add0_b_0__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[0]),
	.cout());
// synopsys translate_off
defparam ix46944z7095.lut_mask = 16'hF0E4;
defparam ix46944z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N0
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix51_fadd_a1(
// Equation(s):
// u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout = CARRY(u_kirsch_reg_r_add0_a_0__aq)

	.dataa(u_kirsch_reg_r_add0_a_0__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix51_fadd_a1.lut_mask = 16'h00AA;
defparam u_kirsch_r_add2_add13_4i1_ix51_fadd_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N2
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix51_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[0] = (u_kirsch_r_add2_4n1s1f1[0] & ((nx38950z2) # ((!u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout)))) # (!u_kirsch_r_add2_4n1s1f1[0] & (((!nx38950z2 & u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout)) # (GND)))
// nx52980z1 = CARRY((nx38950z2) # ((!u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout) # (!u_kirsch_r_add2_4n1s1f1[0])))

	.dataa(nx38950z2),
	.datab(u_kirsch_r_add2_4n1s1f1[0]),
	.datac(gnd),
	.datad(vcc),
	.cin(u_kirsch_r_add2_add13_4i1_ix51_fadd_a1_cout),
	.combout(u_kirsch_r_add2_4n1s1[0]),
	.cout(nx52980z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix51_fadd.lut_mask = 16'h9CBF;
defparam u_kirsch_r_add2_add13_4i1_ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N3
dffeas u_kirsch_reg_r_add2_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N0
fiftyfivenm_lcell_comb ix52980z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[1] = (nx38950z2 & (u_kirsch_reg_r_add2_0__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_1__aq)))

	.dataa(u_kirsch_reg_r_add2_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add0_a_1__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[1]),
	.cout());
// synopsys translate_off
defparam ix52980z7096.lut_mask = 16'hAAF0;
defparam ix52980z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y19_N31
dffeas u_kirsch_reg_r_add0_b_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N30
fiftyfivenm_lcell_comb ix52980z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[1] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_1__aq)))) # (!nx41042z10 & ((nx38950z1 & (u_kirsch_reg_r_add0_b_1__aq)) # (!nx38950z1 & ((u_kirsch_reg_r_add2_1__aq)))))

	.dataa(nx41042z10),
	.datab(nx38950z1),
	.datac(u_kirsch_reg_r_add0_b_1__aq),
	.datad(u_kirsch_reg_r_add2_1__aq),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[1]),
	.cout());
// synopsys translate_off
defparam ix52980z7095.lut_mask = 16'hF1E0;
defparam ix52980z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N4
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix55_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[1] = ((u_kirsch_r_add2_4n1s1f2[1] $ (u_kirsch_r_add2_4n1s1f1[1] $ (!nx52980z1)))) # (GND)
// nx21832z1 = CARRY((u_kirsch_r_add2_4n1s1f2[1] & ((u_kirsch_r_add2_4n1s1f1[1]) # (!nx52980z1))) # (!u_kirsch_r_add2_4n1s1f2[1] & (u_kirsch_r_add2_4n1s1f1[1] & !nx52980z1)))

	.dataa(u_kirsch_r_add2_4n1s1f2[1]),
	.datab(u_kirsch_r_add2_4n1s1f1[1]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx52980z1),
	.combout(u_kirsch_r_add2_4n1s1[1]),
	.cout(nx21832z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix55_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N5
dffeas u_kirsch_reg_r_add2_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N4
fiftyfivenm_lcell_comb ix21832z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[2] = (nx38950z2 & (u_kirsch_reg_r_add2_1__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_2__aq)))

	.dataa(u_kirsch_reg_r_add2_1__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add0_a_2__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[2]),
	.cout());
// synopsys translate_off
defparam ix21832z7096.lut_mask = 16'hAAF0;
defparam ix21832z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N6
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix59_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[2] = (u_kirsch_r_add2_4n1s1f1[2] & ((u_kirsch_r_add2_4n1s1f2[2] & (nx21832z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2[2] & (!nx21832z1)))) # (!u_kirsch_r_add2_4n1s1f1[2] & ((u_kirsch_r_add2_4n1s1f2[2] & (!nx21832z1)) # 
// (!u_kirsch_r_add2_4n1s1f2[2] & ((nx21832z1) # (GND)))))
// nx27373z1 = CARRY((u_kirsch_r_add2_4n1s1f1[2] & (!u_kirsch_r_add2_4n1s1f2[2] & !nx21832z1)) # (!u_kirsch_r_add2_4n1s1f1[2] & ((!nx21832z1) # (!u_kirsch_r_add2_4n1s1f2[2]))))

	.dataa(u_kirsch_r_add2_4n1s1f1[2]),
	.datab(u_kirsch_r_add2_4n1s1f2[2]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21832z1),
	.combout(u_kirsch_r_add2_4n1s1[2]),
	.cout(nx27373z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix59_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add2_add13_4i1_ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N7
dffeas u_kirsch_reg_r_add2_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N24
fiftyfivenm_lcell_comb ix27373z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[3] = (nx38950z2 & (u_kirsch_reg_r_add2_2__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_3__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add2_2__aq),
	.datac(u_kirsch_reg_r_add0_a_3__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[3]),
	.cout());
// synopsys translate_off
defparam ix27373z7096.lut_mask = 16'hCCF0;
defparam ix27373z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y19_N15
dffeas u_kirsch_reg_r_add0_b_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N14
fiftyfivenm_lcell_comb ix27373z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[3] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_3__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_3__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_3__aq))))

	.dataa(nx41042z10),
	.datab(u_kirsch_reg_r_add2_3__aq),
	.datac(u_kirsch_reg_r_add0_b_3__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[3]),
	.cout());
// synopsys translate_off
defparam ix27373z7095.lut_mask = 16'hF0E4;
defparam ix27373z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N8
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix63_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[3] = ((u_kirsch_r_add2_4n1s1f2[3] $ (u_kirsch_r_add2_4n1s1f1[3] $ (!nx27373z1)))) # (GND)
// nx58521z1 = CARRY((u_kirsch_r_add2_4n1s1f2[3] & ((u_kirsch_r_add2_4n1s1f1[3]) # (!nx27373z1))) # (!u_kirsch_r_add2_4n1s1f2[3] & (u_kirsch_r_add2_4n1s1f1[3] & !nx27373z1)))

	.dataa(u_kirsch_r_add2_4n1s1f2[3]),
	.datab(u_kirsch_r_add2_4n1s1f1[3]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27373z1),
	.combout(u_kirsch_r_add2_4n1s1[3]),
	.cout(nx58521z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix63_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix63_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N9
dffeas u_kirsch_reg_r_add2_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_3_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N20
fiftyfivenm_lcell_comb ix58521z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[4] = (nx38950z2 & (u_kirsch_reg_r_add2_3__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_4__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add2_3__aq),
	.datac(u_kirsch_reg_r_add0_a_4__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[4]),
	.cout());
// synopsys translate_off
defparam ix58521z7096.lut_mask = 16'hCCF0;
defparam ix58521z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N10
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix67_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[4] = (u_kirsch_r_add2_4n1s1f1[4] & ((u_kirsch_r_add2_4n1s1f2[4] & (nx58521z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2[4] & (!nx58521z1)))) # (!u_kirsch_r_add2_4n1s1f1[4] & ((u_kirsch_r_add2_4n1s1f2[4] & (!nx58521z1)) # 
// (!u_kirsch_r_add2_4n1s1f2[4] & ((nx58521z1) # (GND)))))
// nx23346z1 = CARRY((u_kirsch_r_add2_4n1s1f1[4] & (!u_kirsch_r_add2_4n1s1f2[4] & !nx58521z1)) # (!u_kirsch_r_add2_4n1s1f1[4] & ((!nx58521z1) # (!u_kirsch_r_add2_4n1s1f2[4]))))

	.dataa(u_kirsch_r_add2_4n1s1f1[4]),
	.datab(u_kirsch_r_add2_4n1s1f2[4]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58521z1),
	.combout(u_kirsch_r_add2_4n1s1[4]),
	.cout(nx23346z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix67_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add2_add13_4i1_ix67_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N11
dffeas u_kirsch_reg_r_add2_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_4_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N18
fiftyfivenm_lcell_comb ix23346z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[5] = (nx38950z2 & ((u_kirsch_reg_r_add2_4__aq))) # (!nx38950z2 & (u_kirsch_reg_r_add0_a_5__aq))

	.dataa(u_kirsch_reg_r_add0_a_5__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add2_4__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[5]),
	.cout());
// synopsys translate_off
defparam ix23346z7096.lut_mask = 16'hF0AA;
defparam ix23346z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N31
dffeas u_kirsch_reg_r_add0_b_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N30
fiftyfivenm_lcell_comb ix23346z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[5] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_5__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_5__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_5__aq))))

	.dataa(nx41042z10),
	.datab(u_kirsch_reg_r_add2_5__aq),
	.datac(u_kirsch_reg_r_add0_b_5__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[5]),
	.cout());
// synopsys translate_off
defparam ix23346z7095.lut_mask = 16'hF0E4;
defparam ix23346z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N12
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix71_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[5] = ((u_kirsch_r_add2_4n1s1f2[5] $ (u_kirsch_r_add2_4n1s1f1[5] $ (!nx23346z1)))) # (GND)
// nx7802z1 = CARRY((u_kirsch_r_add2_4n1s1f2[5] & ((u_kirsch_r_add2_4n1s1f1[5]) # (!nx23346z1))) # (!u_kirsch_r_add2_4n1s1f2[5] & (u_kirsch_r_add2_4n1s1f1[5] & !nx23346z1)))

	.dataa(u_kirsch_r_add2_4n1s1f2[5]),
	.datab(u_kirsch_r_add2_4n1s1f1[5]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23346z1),
	.combout(u_kirsch_r_add2_4n1s1[5]),
	.cout(nx7802z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix71_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix71_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N13
dffeas u_kirsch_reg_r_add2_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_5_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N16
fiftyfivenm_lcell_comb ix7802z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[6] = (nx38950z2 & ((u_kirsch_reg_r_add2_5__aq))) # (!nx38950z2 & (u_kirsch_reg_r_add0_a_6__aq))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add0_a_6__aq),
	.datac(u_kirsch_reg_r_add2_5__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[6]),
	.cout());
// synopsys translate_off
defparam ix7802z7096.lut_mask = 16'hF0CC;
defparam ix7802z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N14
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix75_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[6] = (u_kirsch_r_add2_4n1s1f1[6] & ((u_kirsch_r_add2_4n1s1f2[6] & (nx7802z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2[6] & (!nx7802z1)))) # (!u_kirsch_r_add2_4n1s1f1[6] & ((u_kirsch_r_add2_4n1s1f2[6] & (!nx7802z1)) # 
// (!u_kirsch_r_add2_4n1s1f2[6] & ((nx7802z1) # (GND)))))
// nx38950z5 = CARRY((u_kirsch_r_add2_4n1s1f1[6] & (!u_kirsch_r_add2_4n1s1f2[6] & !nx7802z1)) # (!u_kirsch_r_add2_4n1s1f1[6] & ((!nx7802z1) # (!u_kirsch_r_add2_4n1s1f2[6]))))

	.dataa(u_kirsch_r_add2_4n1s1f1[6]),
	.datab(u_kirsch_r_add2_4n1s1f2[6]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx7802z1),
	.combout(u_kirsch_r_add2_4n1s1[6]),
	.cout(nx38950z5));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix75_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add2_add13_4i1_ix75_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N15
dffeas u_kirsch_reg_r_add2_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_6_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N6
fiftyfivenm_lcell_comb ix38950z7097(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[7] = (nx38950z2 & (u_kirsch_reg_r_add2_6__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_7__aq)))

	.dataa(u_kirsch_reg_r_add2_6__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_r_add0_a_7__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[7]),
	.cout());
// synopsys translate_off
defparam ix38950z7097.lut_mask = 16'hAAF0;
defparam ix38950z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N16
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix79_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[7] = ((u_kirsch_r_add2_4n1s1f1[7] $ (u_kirsch_r_add2_4n1s1f2[7] $ (!nx38950z5)))) # (GND)
// nx42917z1 = CARRY((u_kirsch_r_add2_4n1s1f1[7] & ((u_kirsch_r_add2_4n1s1f2[7]) # (!nx38950z5))) # (!u_kirsch_r_add2_4n1s1f1[7] & (u_kirsch_r_add2_4n1s1f2[7] & !nx38950z5)))

	.dataa(u_kirsch_r_add2_4n1s1f1[7]),
	.datab(u_kirsch_r_add2_4n1s1f2[7]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx38950z5),
	.combout(u_kirsch_r_add2_4n1s1[7]),
	.cout(nx42917z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix79_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix79_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N17
dffeas u_kirsch_reg_r_add2_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N10
fiftyfivenm_lcell_comb ix42917z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[8] = (nx38950z2 & (u_kirsch_reg_r_add2_7__aq)) # (!nx38950z2 & ((u_kirsch_reg_r_add0_a_8__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add2_7__aq),
	.datac(u_kirsch_reg_r_add0_a_8__aq),
	.datad(nx38950z2),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[8]),
	.cout());
// synopsys translate_off
defparam ix42917z7096.lut_mask = 16'hCCF0;
defparam ix42917z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N23
dffeas u_kirsch_reg_r_add0_b_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_kirsch_reg_r_add0_a_8__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add0_b_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add0_b_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add0_b_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N22
fiftyfivenm_lcell_comb ix42917z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f1[8] = (nx41042z10 & (((u_kirsch_reg_r_add0_b_8__aq)))) # (!nx41042z10 & ((nx38950z1 & ((u_kirsch_reg_r_add0_b_8__aq))) # (!nx38950z1 & (u_kirsch_reg_r_add2_8__aq))))

	.dataa(u_kirsch_reg_r_add2_8__aq),
	.datab(nx41042z10),
	.datac(u_kirsch_reg_r_add0_b_8__aq),
	.datad(nx38950z1),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f1[8]),
	.cout());
// synopsys translate_off
defparam ix42917z7095.lut_mask = 16'hF0E2;
defparam ix42917z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N18
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix83_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[8] = (u_kirsch_r_add2_4n1s1f2[8] & ((u_kirsch_r_add2_4n1s1f1[8] & (nx42917z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f1[8] & (!nx42917z1)))) # (!u_kirsch_r_add2_4n1s1f2[8] & ((u_kirsch_r_add2_4n1s1f1[8] & (!nx42917z1)) # 
// (!u_kirsch_r_add2_4n1s1f1[8] & ((nx42917z1) # (GND)))))
// nx11769z1 = CARRY((u_kirsch_r_add2_4n1s1f2[8] & (!u_kirsch_r_add2_4n1s1f1[8] & !nx42917z1)) # (!u_kirsch_r_add2_4n1s1f2[8] & ((!nx42917z1) # (!u_kirsch_r_add2_4n1s1f1[8]))))

	.dataa(u_kirsch_r_add2_4n1s1f2[8]),
	.datab(u_kirsch_r_add2_4n1s1f1[8]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx42917z1),
	.combout(u_kirsch_r_add2_4n1s1[8]),
	.cout(nx11769z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix83_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add2_add13_4i1_ix83_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N19
dffeas u_kirsch_reg_r_add2_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N4
fiftyfivenm_lcell_comb ix11769z7096(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[9] = (u_kirsch_reg_r_add2_8__aq & (!nx26412z9 & ((nx38950z4) # (nx38950z3))))

	.dataa(u_kirsch_reg_r_add2_8__aq),
	.datab(nx38950z4),
	.datac(nx38950z3),
	.datad(nx26412z9),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[9]),
	.cout());
// synopsys translate_off
defparam ix11769z7096.lut_mask = 16'h00A8;
defparam ix11769z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N20
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix87_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[9] = ((u_kirsch_r_add2_4n1s1f1[9] $ (u_kirsch_r_add2_4n1s1f2[9] $ (!nx11769z1)))) # (GND)
// nx37436z1 = CARRY((u_kirsch_r_add2_4n1s1f1[9] & ((u_kirsch_r_add2_4n1s1f2[9]) # (!nx11769z1))) # (!u_kirsch_r_add2_4n1s1f1[9] & (u_kirsch_r_add2_4n1s1f2[9] & !nx11769z1)))

	.dataa(u_kirsch_r_add2_4n1s1f1[9]),
	.datab(u_kirsch_r_add2_4n1s1f2[9]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx11769z1),
	.combout(u_kirsch_r_add2_4n1s1[9]),
	.cout(nx37436z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix87_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix87_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X20_Y17_N21
dffeas u_kirsch_reg_r_add2_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_add2_4n1s1[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N24
fiftyfivenm_lcell_comb ix37436z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[10] = (u_kirsch_reg_r_add2_9__aq & (!nx26412z9 & ((nx38950z3) # (nx38950z4))))

	.dataa(nx38950z3),
	.datab(u_kirsch_reg_r_add2_9__aq),
	.datac(nx38950z4),
	.datad(nx26412z9),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[10]),
	.cout());
// synopsys translate_off
defparam ix37436z7095.lut_mask = 16'h00C8;
defparam ix37436z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N22
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix91_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[10] = (u_kirsch_reg_r_add2_10__aq & ((u_kirsch_r_add2_4n1s1f2[10] & (nx37436z1 & VCC)) # (!u_kirsch_r_add2_4n1s1f2[10] & (!nx37436z1)))) # (!u_kirsch_reg_r_add2_10__aq & ((u_kirsch_r_add2_4n1s1f2[10] & (!nx37436z1)) # 
// (!u_kirsch_r_add2_4n1s1f2[10] & ((nx37436z1) # (GND)))))
// nx62488z1 = CARRY((u_kirsch_reg_r_add2_10__aq & (!u_kirsch_r_add2_4n1s1f2[10] & !nx37436z1)) # (!u_kirsch_reg_r_add2_10__aq & ((!nx37436z1) # (!u_kirsch_r_add2_4n1s1f2[10]))))

	.dataa(u_kirsch_reg_r_add2_10__aq),
	.datab(u_kirsch_r_add2_4n1s1f2[10]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37436z1),
	.combout(u_kirsch_r_add2_4n1s1[10]),
	.cout(nx62488z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix91_fadd.lut_mask = 16'h9617;
defparam u_kirsch_r_add2_add13_4i1_ix91_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N30
fiftyfivenm_lcell_comb ix57978z7095(
// Equation(s):
// nx57978z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1[10] & ((!nx41042z9) # (!nx29221z2))))

	.dataa(nx29221z2),
	.datab(nx41042z10),
	.datac(u_kirsch_r_add2_4n1s1[10]),
	.datad(nx41042z9),
	.cin(gnd),
	.combout(nx57978z1),
	.cout());
// synopsys translate_off
defparam ix57978z7095.lut_mask = 16'h1030;
defparam ix57978z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N31
dffeas u_kirsch_reg_r_add2_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57978z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_10_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N6
fiftyfivenm_lcell_comb ix62488z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[11] = (u_kirsch_reg_r_add2_10__aq & (!nx26412z9 & ((nx38950z3) # (nx38950z4))))

	.dataa(nx38950z3),
	.datab(nx38950z4),
	.datac(u_kirsch_reg_r_add2_10__aq),
	.datad(nx26412z9),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[11]),
	.cout());
// synopsys translate_off
defparam ix62488z7095.lut_mask = 16'h00E0;
defparam ix62488z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N24
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix95_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[11] = ((u_kirsch_reg_r_add2_11__aq $ (u_kirsch_r_add2_4n1s1f2[11] $ (!nx62488z1)))) # (GND)
// nx46914z1 = CARRY((u_kirsch_reg_r_add2_11__aq & ((u_kirsch_r_add2_4n1s1f2[11]) # (!nx62488z1))) # (!u_kirsch_reg_r_add2_11__aq & (u_kirsch_r_add2_4n1s1f2[11] & !nx62488z1)))

	.dataa(u_kirsch_reg_r_add2_11__aq),
	.datab(u_kirsch_r_add2_4n1s1f2[11]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx62488z1),
	.combout(u_kirsch_r_add2_4n1s1[11]),
	.cout(nx46914z1));
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix95_fadd.lut_mask = 16'h698E;
defparam u_kirsch_r_add2_add13_4i1_ix95_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N8
fiftyfivenm_lcell_comb ix56981z7095(
// Equation(s):
// nx56981z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1[11] & ((!nx29221z2) # (!nx41042z9))))

	.dataa(nx41042z10),
	.datab(nx41042z9),
	.datac(nx29221z2),
	.datad(u_kirsch_r_add2_4n1s1[11]),
	.cin(gnd),
	.combout(nx56981z1),
	.cout());
// synopsys translate_off
defparam ix56981z7095.lut_mask = 16'h1500;
defparam ix56981z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N9
dffeas u_kirsch_reg_r_add2_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56981z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_11_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N4
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix22_fadd(
// Equation(s):
// nx13358z1 = CARRY((!u_kirsch_reg_r_add2_1__aq & !u_kirsch_reg_r_add2_0__aq))

	.dataa(u_kirsch_reg_r_add2_1__aq),
	.datab(u_kirsch_reg_r_add2_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx13358z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix22_fadd.lut_mask = 16'h0011;
defparam u_kirsch_r_sub0_sub13_6i1_ix22_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N6
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix24_fadd(
// Equation(s):
// nx36604z1 = CARRY((u_kirsch_reg_r_add2_2__aq) # (!nx13358z1))

	.dataa(u_kirsch_reg_r_add2_2__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx13358z1),
	.combout(),
	.cout(nx36604z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix24_fadd.lut_mask = 16'h00AF;
defparam u_kirsch_r_sub0_sub13_6i1_ix24_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N8
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix26_fadd(
// Equation(s):
// nx21030z1 = CARRY((u_kirsch_reg_r_max1_0__aq & ((!nx36604z1) # (!u_kirsch_reg_r_add2_3__aq))) # (!u_kirsch_reg_r_max1_0__aq & (!u_kirsch_reg_r_add2_3__aq & !nx36604z1)))

	.dataa(u_kirsch_reg_r_max1_0__aq),
	.datab(u_kirsch_reg_r_add2_3__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx36604z1),
	.combout(),
	.cout(nx21030z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix26_fadd.lut_mask = 16'h002B;
defparam u_kirsch_r_sub0_sub13_6i1_ix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N10
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix28_fadd(
// Equation(s):
// nx52935z1 = CARRY((u_kirsch_reg_r_add2_4__aq & ((!nx21030z1) # (!u_kirsch_reg_r_max1_1__aq))) # (!u_kirsch_reg_r_add2_4__aq & (!u_kirsch_reg_r_max1_1__aq & !nx21030z1)))

	.dataa(u_kirsch_reg_r_add2_4__aq),
	.datab(u_kirsch_reg_r_max1_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx21030z1),
	.combout(),
	.cout(nx52935z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix28_fadd.lut_mask = 16'h002B;
defparam u_kirsch_r_sub0_sub13_6i1_ix28_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N12
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix30_fadd(
// Equation(s):
// nx37361z1 = CARRY((u_kirsch_reg_r_max1_2__aq & ((!nx52935z1) # (!u_kirsch_reg_r_add2_5__aq))) # (!u_kirsch_reg_r_max1_2__aq & (!u_kirsch_reg_r_add2_5__aq & !nx52935z1)))

	.dataa(u_kirsch_reg_r_max1_2__aq),
	.datab(u_kirsch_reg_r_add2_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx52935z1),
	.combout(),
	.cout(nx37361z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix30_fadd.lut_mask = 16'h002B;
defparam u_kirsch_r_sub0_sub13_6i1_ix30_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N14
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix32_fadd(
// Equation(s):
// nx59323z1 = CARRY((u_kirsch_reg_r_max1_3__aq & (u_kirsch_reg_r_add2_6__aq & !nx37361z1)) # (!u_kirsch_reg_r_max1_3__aq & ((u_kirsch_reg_r_add2_6__aq) # (!nx37361z1))))

	.dataa(u_kirsch_reg_r_max1_3__aq),
	.datab(u_kirsch_reg_r_add2_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37361z1),
	.combout(),
	.cout(nx59323z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix32_fadd.lut_mask = 16'h004D;
defparam u_kirsch_r_sub0_sub13_6i1_ix32_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N16
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix36_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_7_ = ((u_kirsch_reg_r_max1_4__aq $ (u_kirsch_reg_r_add2_7__aq $ (nx59323z1)))) # (GND)
// nx22544z1 = CARRY((u_kirsch_reg_r_max1_4__aq & ((!nx59323z1) # (!u_kirsch_reg_r_add2_7__aq))) # (!u_kirsch_reg_r_max1_4__aq & (!u_kirsch_reg_r_add2_7__aq & !nx59323z1)))

	.dataa(u_kirsch_reg_r_max1_4__aq),
	.datab(u_kirsch_reg_r_add2_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59323z1),
	.combout(u_kirsch_r_sub0_6n1s1_7_),
	.cout(nx22544z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix36_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r_sub0_sub13_6i1_ix36_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N18
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix40_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_8_ = (u_kirsch_reg_r_add2_8__aq & ((u_kirsch_reg_r_max1_5__aq & (!nx22544z1)) # (!u_kirsch_reg_r_max1_5__aq & ((nx22544z1) # (GND))))) # (!u_kirsch_reg_r_add2_8__aq & ((u_kirsch_reg_r_max1_5__aq & (nx22544z1 & VCC)) # 
// (!u_kirsch_reg_r_max1_5__aq & (!nx22544z1))))
// nx56932z1 = CARRY((u_kirsch_reg_r_add2_8__aq & ((!nx22544z1) # (!u_kirsch_reg_r_max1_5__aq))) # (!u_kirsch_reg_r_add2_8__aq & (!u_kirsch_reg_r_max1_5__aq & !nx22544z1)))

	.dataa(u_kirsch_reg_r_add2_8__aq),
	.datab(u_kirsch_reg_r_max1_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx22544z1),
	.combout(u_kirsch_r_sub0_6n1s1_8_),
	.cout(nx56932z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix40_fadd.lut_mask = 16'h692B;
defparam u_kirsch_r_sub0_sub13_6i1_ix40_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N20
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix44_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_9_ = ((u_kirsch_reg_r_max1_6__aq $ (u_kirsch_reg_r_add2_9__aq $ (nx56932z1)))) # (GND)
// nx39752z1 = CARRY((u_kirsch_reg_r_max1_6__aq & ((!nx56932z1) # (!u_kirsch_reg_r_add2_9__aq))) # (!u_kirsch_reg_r_max1_6__aq & (!u_kirsch_reg_r_add2_9__aq & !nx56932z1)))

	.dataa(u_kirsch_reg_r_max1_6__aq),
	.datab(u_kirsch_reg_r_add2_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56932z1),
	.combout(u_kirsch_r_sub0_6n1s1_9_),
	.cout(nx39752z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix44_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r_sub0_sub13_6i1_ix44_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N22
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix48_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_10_ = (u_kirsch_reg_r_max1_7__aq & ((u_kirsch_reg_r_add2_10__aq & (!nx39752z1)) # (!u_kirsch_reg_r_add2_10__aq & (nx39752z1 & VCC)))) # (!u_kirsch_reg_r_max1_7__aq & ((u_kirsch_reg_r_add2_10__aq & ((nx39752z1) # (GND))) # 
// (!u_kirsch_reg_r_add2_10__aq & (!nx39752z1))))
// nx23421z3 = CARRY((u_kirsch_reg_r_max1_7__aq & (u_kirsch_reg_r_add2_10__aq & !nx39752z1)) # (!u_kirsch_reg_r_max1_7__aq & ((u_kirsch_reg_r_add2_10__aq) # (!nx39752z1))))

	.dataa(u_kirsch_reg_r_max1_7__aq),
	.datab(u_kirsch_reg_r_add2_10__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39752z1),
	.combout(u_kirsch_r_sub0_6n1s1_10_),
	.cout(nx23421z3));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix48_fadd.lut_mask = 16'h694D;
defparam u_kirsch_r_sub0_sub13_6i1_ix48_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N24
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix52_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_11_ = ((u_kirsch_reg_r_max1_8__aq $ (u_kirsch_reg_r_add2_11__aq $ (nx23421z3)))) # (GND)
// nx10967z1 = CARRY((u_kirsch_reg_r_max1_8__aq & ((!nx23421z3) # (!u_kirsch_reg_r_add2_11__aq))) # (!u_kirsch_reg_r_max1_8__aq & (!u_kirsch_reg_r_add2_11__aq & !nx23421z3)))

	.dataa(u_kirsch_reg_r_max1_8__aq),
	.datab(u_kirsch_reg_r_add2_11__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23421z3),
	.combout(u_kirsch_r_sub0_6n1s1_11_),
	.cout(nx10967z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix52_fadd.lut_mask = 16'h962B;
defparam u_kirsch_r_sub0_sub13_6i1_ix52_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N20
fiftyfivenm_lcell_comb ix46914z7095(
// Equation(s):
// u_kirsch_r_add2_4n1s1f2[12] = (u_kirsch_reg_r_add2_11__aq & (!nx26412z9 & ((nx38950z4) # (nx38950z3))))

	.dataa(u_kirsch_reg_r_add2_11__aq),
	.datab(nx38950z4),
	.datac(nx38950z3),
	.datad(nx26412z9),
	.cin(gnd),
	.combout(u_kirsch_r_add2_4n1s1f2[12]),
	.cout());
// synopsys translate_off
defparam ix46914z7095.lut_mask = 16'h00A8;
defparam ix46914z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N26
fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix97_fadd(
// Equation(s):
// u_kirsch_r_add2_4n1s1[12] = u_kirsch_reg_r_add2_12__aq $ (nx46914z1 $ (u_kirsch_r_add2_4n1s1f2[12]))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_add2_12__aq),
	.datac(gnd),
	.datad(u_kirsch_r_add2_4n1s1f2[12]),
	.cin(nx46914z1),
	.combout(u_kirsch_r_add2_4n1s1[12]),
	.cout());
// synopsys translate_off
defparam u_kirsch_r_add2_add13_4i1_ix97_fadd.lut_mask = 16'hC33C;
defparam u_kirsch_r_add2_add13_4i1_ix97_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N28
fiftyfivenm_lcell_comb ix55984z7095(
// Equation(s):
// nx55984z1 = (!nx41042z10 & (u_kirsch_r_add2_4n1s1[12] & ((!nx41042z9) # (!nx29221z2))))

	.dataa(nx29221z2),
	.datab(nx41042z10),
	.datac(u_kirsch_r_add2_4n1s1[12]),
	.datad(nx41042z9),
	.cin(gnd),
	.combout(nx55984z1),
	.cout());
// synopsys translate_off
defparam ix55984z7095.lut_mask = 16'h1030;
defparam ix55984z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N29
dffeas u_kirsch_reg_r_add2_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55984z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_add2_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_add2_12_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_add2_12_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N26
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix56_fadd(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_12_ = (u_kirsch_reg_r_add2_12__aq & ((u_kirsch_reg_r_max1_9__aq & (!nx10967z1)) # (!u_kirsch_reg_r_max1_9__aq & ((nx10967z1) # (GND))))) # (!u_kirsch_reg_r_add2_12__aq & ((u_kirsch_reg_r_max1_9__aq & (nx10967z1 & VCC)) # 
// (!u_kirsch_reg_r_max1_9__aq & (!nx10967z1))))
// nx21429z1 = CARRY((u_kirsch_reg_r_add2_12__aq & ((!nx10967z1) # (!u_kirsch_reg_r_max1_9__aq))) # (!u_kirsch_reg_r_add2_12__aq & (!u_kirsch_reg_r_max1_9__aq & !nx10967z1)))

	.dataa(u_kirsch_reg_r_add2_12__aq),
	.datab(u_kirsch_reg_r_max1_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10967z1),
	.combout(u_kirsch_r_sub0_6n1s1_12_),
	.cout(nx21429z1));
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd.lut_mask = 16'h692B;
defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N28
fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf(
// Equation(s):
// u_kirsch_r_sub0_6n1s1_14_ = nx21429z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx21429z1),
	.combout(u_kirsch_r_sub0_6n1s1_14_),
	.cout());
// synopsys translate_off
defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf.lut_mask = 16'hF0F0;
defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X18_Y21_N25
dffeas u_kirsch_reg_r_sub0_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_11_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_11_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_11_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y21_N27
dffeas u_kirsch_reg_r_sub0_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_12_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_12_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_12_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y21_N19
dffeas u_kirsch_reg_r_sub0_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_8_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y21_N21
dffeas u_kirsch_reg_r_sub0_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_9_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_9_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y21_N23
dffeas u_kirsch_reg_r_sub0_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_10_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_10_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y21_N17
dffeas u_kirsch_reg_r_sub0_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_r_sub0_6n1s1_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(u_kirsch_r_sub0_6n1s1_14_),
	.sload(gnd),
	.ena(nx12123z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_r_sub0_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_r_sub0_7_.is_wysiwyg = "true";
defparam u_kirsch_reg_r_sub0_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N0
fiftyfivenm_lcell_comb ix22605z7097(
// Equation(s):
// nx22605z3 = (u_kirsch_reg_r_sub0_9__aq) # ((u_kirsch_reg_r_sub0_10__aq) # ((u_kirsch_reg_r_sub0_8__aq & u_kirsch_reg_r_sub0_7__aq)))

	.dataa(u_kirsch_reg_r_sub0_8__aq),
	.datab(u_kirsch_reg_r_sub0_9__aq),
	.datac(u_kirsch_reg_r_sub0_10__aq),
	.datad(u_kirsch_reg_r_sub0_7__aq),
	.cin(gnd),
	.combout(nx22605z3),
	.cout());
// synopsys translate_off
defparam ix22605z7097.lut_mask = 16'hFEFC;
defparam ix22605z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N2
fiftyfivenm_lcell_comb ix62334z7095(
// Equation(s):
// nx62334z1 = (nx62334z2 & ((u_kirsch_reg_r_sub0_11__aq) # ((u_kirsch_reg_r_sub0_12__aq) # (nx22605z3))))

	.dataa(nx62334z2),
	.datab(u_kirsch_reg_r_sub0_11__aq),
	.datac(u_kirsch_reg_r_sub0_12__aq),
	.datad(nx22605z3),
	.cin(gnd),
	.combout(nx62334z1),
	.cout());
// synopsys translate_off
defparam ix62334z7095.lut_mask = 16'hAAA8;
defparam ix62334z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y21_N3
dffeas u_kirsch_reg_intermediate_dir_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62334z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_intermediate_dir_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_intermediate_dir_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_intermediate_dir_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y15_N18
fiftyfivenm_lcell_comb ix59319z7107(
// Equation(s):
// rb_i_data[0] = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_0__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[0])))

	.dataa(pb_a0_a_ainput_o),
	.datab(gnd),
	.datac(u_kirsch_reg_intermediate_dir_0__aq),
	.datad(k_i_pixel[0]),
	.cin(gnd),
	.combout(rb_i_data[0]),
	.cout());
// synopsys translate_off
defparam ix59319z7107.lut_mask = 16'hF5A0;
defparam ix59319z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N6
fiftyfivenm_lcell_comb ix684_fadd(
// Equation(s):
// inc_d_0__dup_703 = reg_q_0__dup_32_aq $ (VCC)
// nx4983z1 = CARRY(reg_q_0__dup_32_aq)

	.dataa(reg_q_0__dup_32_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_703),
	.cout(nx4983z1));
// synopsys translate_off
defparam ix684_fadd.lut_mask = 16'h55AA;
defparam ix684_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N4
fiftyfivenm_lcell_comb ix23864z7095(
// Equation(s):
// nx23864z1 = ((pb_a0_a_ainput_o & (u_kirsch_reg_o_valid_aq)) # (!pb_a0_a_ainput_o & ((write_fifo_reg_rd_en_delayed_aq)))) # (!reset_n_ainput_o)

	.dataa(pb_a0_a_ainput_o),
	.datab(u_kirsch_reg_o_valid_aq),
	.datac(reset_n_ainput_o),
	.datad(write_fifo_reg_rd_en_delayed_aq),
	.cin(gnd),
	.combout(nx23864z1),
	.cout());
// synopsys translate_off
defparam ix23864z7095.lut_mask = 16'hDF8F;
defparam ix23864z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y14_N7
dffeas reg_q_0__dup_32(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_703),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_32_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_32.is_wysiwyg = "true";
defparam reg_q_0__dup_32.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N16
fiftyfivenm_lcell_comb ix720_fadd(
// Equation(s):
// inc_d_0__dup_739 = reg_q_0__dup_40_aq $ (VCC)
// nx65210z1 = CARRY(reg_q_0__dup_40_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_40_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_739),
	.cout(nx65210z1));
// synopsys translate_off
defparam ix720_fadd.lut_mask = 16'h33CC;
defparam ix720_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N14
fiftyfivenm_lcell_comb ix24859z7095(
// Equation(s):
// nx24859z1 = ((!reg_wait_for_tx_valid_delayed_aq & (!rb_i_valid & reg_rb_rd_en_aq))) # (!reset_n_ainput_o)

	.dataa(reg_wait_for_tx_valid_delayed_aq),
	.datab(rb_i_valid),
	.datac(reg_rb_rd_en_aq),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx24859z1),
	.cout());
// synopsys translate_off
defparam ix24859z7095.lut_mask = 16'h10FF;
defparam ix24859z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N17
dffeas reg_q_0__dup_40(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_739),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_40_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_40.is_wysiwyg = "true";
defparam reg_q_0__dup_40.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N0
fiftyfivenm_lcell_comb ix59319z7115(
// Equation(s):
// read_fifo_pointer[0] = (rb_i_valid & (reg_q_0__dup_32_aq)) # (!rb_i_valid & ((reg_q_0__dup_40_aq)))

	.dataa(gnd),
	.datab(rb_i_valid),
	.datac(reg_q_0__dup_32_aq),
	.datad(reg_q_0__dup_40_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[0]),
	.cout());
// synopsys translate_off
defparam ix59319z7115.lut_mask = 16'hF3C0;
defparam ix59319z7115.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N8
fiftyfivenm_lcell_comb ix686_fadd(
// Equation(s):
// inc_d_1__dup_705 = (reg_q_1__dup_31_aq & (!nx4983z1)) # (!reg_q_1__dup_31_aq & ((nx4983z1) # (GND)))
// nx10591z1 = CARRY((!nx4983z1) # (!reg_q_1__dup_31_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_31_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4983z1),
	.combout(inc_d_1__dup_705),
	.cout(nx10591z1));
// synopsys translate_off
defparam ix686_fadd.lut_mask = 16'h3C3F;
defparam ix686_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N9
dffeas reg_q_1__dup_31(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_705),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_31_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_31.is_wysiwyg = "true";
defparam reg_q_1__dup_31.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N18
fiftyfivenm_lcell_comb ix722_fadd(
// Equation(s):
// inc_d_1__dup_741 = (reg_q_1__dup_39_aq & (!nx65210z1)) # (!reg_q_1__dup_39_aq & ((nx65210z1) # (GND)))
// nx49636z1 = CARRY((!nx65210z1) # (!reg_q_1__dup_39_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_39_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx65210z1),
	.combout(inc_d_1__dup_741),
	.cout(nx49636z1));
// synopsys translate_off
defparam ix722_fadd.lut_mask = 16'h3C3F;
defparam ix722_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N19
dffeas reg_q_1__dup_39(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_741),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_39_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_39.is_wysiwyg = "true";
defparam reg_q_1__dup_39.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N10
fiftyfivenm_lcell_comb ix59319z7114(
// Equation(s):
// read_fifo_pointer[1] = (rb_i_valid & (reg_q_1__dup_31_aq)) # (!rb_i_valid & ((reg_q_1__dup_39_aq)))

	.dataa(reg_q_1__dup_31_aq),
	.datab(rb_i_valid),
	.datac(gnd),
	.datad(reg_q_1__dup_39_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[1]),
	.cout());
// synopsys translate_off
defparam ix59319z7114.lut_mask = 16'hBB88;
defparam ix59319z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N10
fiftyfivenm_lcell_comb ix688_fadd(
// Equation(s):
// inc_d_2__dup_707 = (reg_q_2__dup_30_aq & (nx10591z1 $ (GND))) # (!reg_q_2__dup_30_aq & (!nx10591z1 & VCC))
// nx44222z1 = CARRY((reg_q_2__dup_30_aq & !nx10591z1))

	.dataa(reg_q_2__dup_30_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10591z1),
	.combout(inc_d_2__dup_707),
	.cout(nx44222z1));
// synopsys translate_off
defparam ix688_fadd.lut_mask = 16'hA50A;
defparam ix688_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N11
dffeas reg_q_2__dup_30(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_707),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_30_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_30.is_wysiwyg = "true";
defparam reg_q_2__dup_30.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N20
fiftyfivenm_lcell_comb ix724_fadd(
// Equation(s):
// inc_d_2__dup_743 = (reg_q_2__dup_38_aq & (nx49636z1 $ (GND))) # (!reg_q_2__dup_38_aq & (!nx49636z1 & VCC))
// nx31474z1 = CARRY((reg_q_2__dup_38_aq & !nx49636z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_38_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx49636z1),
	.combout(inc_d_2__dup_743),
	.cout(nx31474z1));
// synopsys translate_off
defparam ix724_fadd.lut_mask = 16'hC30C;
defparam ix724_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N21
dffeas reg_q_2__dup_38(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_743),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_38_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_38.is_wysiwyg = "true";
defparam reg_q_2__dup_38.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N26
fiftyfivenm_lcell_comb ix59319z7113(
// Equation(s):
// read_fifo_pointer[2] = (rb_i_valid & (reg_q_2__dup_30_aq)) # (!rb_i_valid & ((reg_q_2__dup_38_aq)))

	.dataa(reg_q_2__dup_30_aq),
	.datab(rb_i_valid),
	.datac(gnd),
	.datad(reg_q_2__dup_38_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[2]),
	.cout());
// synopsys translate_off
defparam ix59319z7113.lut_mask = 16'hBB88;
defparam ix59319z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N12
fiftyfivenm_lcell_comb ix690_fadd(
// Equation(s):
// inc_d_3__dup_709 = (reg_q_3__dup_29_aq & (!nx44222z1)) # (!reg_q_3__dup_29_aq & ((nx44222z1) # (GND)))
// nx59796z1 = CARRY((!nx44222z1) # (!reg_q_3__dup_29_aq))

	.dataa(reg_q_3__dup_29_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx44222z1),
	.combout(inc_d_3__dup_709),
	.cout(nx59796z1));
// synopsys translate_off
defparam ix690_fadd.lut_mask = 16'h5A5F;
defparam ix690_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N13
dffeas reg_q_3__dup_29(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_709),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_29_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_29.is_wysiwyg = "true";
defparam reg_q_3__dup_29.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N22
fiftyfivenm_lcell_comb ix726_fadd(
// Equation(s):
// inc_d_3__dup_745 = (reg_q_3__dup_37_aq & (!nx31474z1)) # (!reg_q_3__dup_37_aq & ((nx31474z1) # (GND)))
// nx47048z1 = CARRY((!nx31474z1) # (!reg_q_3__dup_37_aq))

	.dataa(reg_q_3__dup_37_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31474z1),
	.combout(inc_d_3__dup_745),
	.cout(nx47048z1));
// synopsys translate_off
defparam ix726_fadd.lut_mask = 16'h5A5F;
defparam ix726_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N23
dffeas reg_q_3__dup_37(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_745),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_37_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_37.is_wysiwyg = "true";
defparam reg_q_3__dup_37.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N12
fiftyfivenm_lcell_comb ix59319z7112(
// Equation(s):
// read_fifo_pointer[3] = (rb_i_valid & (reg_q_3__dup_29_aq)) # (!rb_i_valid & ((reg_q_3__dup_37_aq)))

	.dataa(reg_q_3__dup_29_aq),
	.datab(gnd),
	.datac(reg_q_3__dup_37_aq),
	.datad(rb_i_valid),
	.cin(gnd),
	.combout(read_fifo_pointer[3]),
	.cout());
// synopsys translate_off
defparam ix59319z7112.lut_mask = 16'hAAF0;
defparam ix59319z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N14
fiftyfivenm_lcell_comb ix692_fadd(
// Equation(s):
// inc_d_4__dup_711 = (reg_q_4__dup_28_aq & (nx59796z1 $ (GND))) # (!reg_q_4__dup_28_aq & (!nx59796z1 & VCC))
// nx55702z1 = CARRY((reg_q_4__dup_28_aq & !nx59796z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_28_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59796z1),
	.combout(inc_d_4__dup_711),
	.cout(nx55702z1));
// synopsys translate_off
defparam ix692_fadd.lut_mask = 16'hC30C;
defparam ix692_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N15
dffeas reg_q_4__dup_28(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_711),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_28_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_28.is_wysiwyg = "true";
defparam reg_q_4__dup_28.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N24
fiftyfivenm_lcell_comb ix728_fadd(
// Equation(s):
// inc_d_4__dup_747 = (reg_q_4__dup_36_aq & (nx47048z1 $ (GND))) # (!reg_q_4__dup_36_aq & (!nx47048z1 & VCC))
// nx15143z1 = CARRY((reg_q_4__dup_36_aq & !nx47048z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_36_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47048z1),
	.combout(inc_d_4__dup_747),
	.cout(nx15143z1));
// synopsys translate_off
defparam ix728_fadd.lut_mask = 16'hC30C;
defparam ix728_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N25
dffeas reg_q_4__dup_36(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_747),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_36_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_36.is_wysiwyg = "true";
defparam reg_q_4__dup_36.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N6
fiftyfivenm_lcell_comb ix59319z7111(
// Equation(s):
// read_fifo_pointer[4] = (rb_i_valid & (reg_q_4__dup_28_aq)) # (!rb_i_valid & ((reg_q_4__dup_36_aq)))

	.dataa(gnd),
	.datab(rb_i_valid),
	.datac(reg_q_4__dup_28_aq),
	.datad(reg_q_4__dup_36_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7111.lut_mask = 16'hF3C0;
defparam ix59319z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N16
fiftyfivenm_lcell_comb ix694_fadd(
// Equation(s):
// inc_d_5__dup_713 = (reg_q_5__dup_27_aq & (!nx55702z1)) # (!reg_q_5__dup_27_aq & ((nx55702z1) # (GND)))
// nx40128z1 = CARRY((!nx55702z1) # (!reg_q_5__dup_27_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_27_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55702z1),
	.combout(inc_d_5__dup_713),
	.cout(nx40128z1));
// synopsys translate_off
defparam ix694_fadd.lut_mask = 16'h3C3F;
defparam ix694_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N17
dffeas reg_q_5__dup_27(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_713),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_27_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_27.is_wysiwyg = "true";
defparam reg_q_5__dup_27.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N26
fiftyfivenm_lcell_comb ix730_fadd(
// Equation(s):
// inc_d_5__dup_749 = (reg_q_5__dup_35_aq & (!nx15143z1)) # (!reg_q_5__dup_35_aq & ((nx15143z1) # (GND)))
// nx34819z1 = CARRY((!nx15143z1) # (!reg_q_5__dup_35_aq))

	.dataa(reg_q_5__dup_35_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx15143z1),
	.combout(inc_d_5__dup_749),
	.cout(nx34819z1));
// synopsys translate_off
defparam ix730_fadd.lut_mask = 16'h5A5F;
defparam ix730_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N27
dffeas reg_q_5__dup_35(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_749),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_35_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_35.is_wysiwyg = "true";
defparam reg_q_5__dup_35.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N8
fiftyfivenm_lcell_comb ix59319z7110(
// Equation(s):
// read_fifo_pointer[5] = (rb_i_valid & (reg_q_5__dup_27_aq)) # (!rb_i_valid & ((reg_q_5__dup_35_aq)))

	.dataa(reg_q_5__dup_27_aq),
	.datab(gnd),
	.datac(reg_q_5__dup_35_aq),
	.datad(rb_i_valid),
	.cin(gnd),
	.combout(read_fifo_pointer[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7110.lut_mask = 16'hAAF0;
defparam ix59319z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N18
fiftyfivenm_lcell_comb ix696_fadd(
// Equation(s):
// inc_d_6__dup_715 = (reg_q_6__dup_26_aq & (nx40128z1 $ (GND))) # (!reg_q_6__dup_26_aq & (!nx40128z1 & VCC))
// nx32341z1 = CARRY((reg_q_6__dup_26_aq & !nx40128z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_26_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx40128z1),
	.combout(inc_d_6__dup_715),
	.cout(nx32341z1));
// synopsys translate_off
defparam ix696_fadd.lut_mask = 16'hC30C;
defparam ix696_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N19
dffeas reg_q_6__dup_26(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_715),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_26_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_26.is_wysiwyg = "true";
defparam reg_q_6__dup_26.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N28
fiftyfivenm_lcell_comb ix732_fadd(
// Equation(s):
// inc_d_6__dup_751 = (reg_q_6__dup_34_aq & (nx34819z1 $ (GND))) # (!reg_q_6__dup_34_aq & (!nx34819z1 & VCC))
// nx27032z1 = CARRY((reg_q_6__dup_34_aq & !nx34819z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_34_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx34819z1),
	.combout(inc_d_6__dup_751),
	.cout(nx27032z1));
// synopsys translate_off
defparam ix732_fadd.lut_mask = 16'hC30C;
defparam ix732_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N29
dffeas reg_q_6__dup_34(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_751),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_34_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_34.is_wysiwyg = "true";
defparam reg_q_6__dup_34.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N2
fiftyfivenm_lcell_comb ix59319z7109(
// Equation(s):
// read_fifo_pointer[6] = (rb_i_valid & (reg_q_6__dup_26_aq)) # (!rb_i_valid & ((reg_q_6__dup_34_aq)))

	.dataa(gnd),
	.datab(rb_i_valid),
	.datac(reg_q_6__dup_26_aq),
	.datad(reg_q_6__dup_34_aq),
	.cin(gnd),
	.combout(read_fifo_pointer[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7109.lut_mask = 16'hF3C0;
defparam ix59319z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N20
fiftyfivenm_lcell_comb ix697_fadd(
// Equation(s):
// inc_d_7__dup_717 = nx32341z1 $ (reg_q_7__dup_25_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_7__dup_25_aq),
	.cin(nx32341z1),
	.combout(inc_d_7__dup_717),
	.cout());
// synopsys translate_off
defparam ix697_fadd.lut_mask = 16'h0FF0;
defparam ix697_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y14_N21
dffeas reg_q_7__dup_25(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_717),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx23864z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_25_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_25.is_wysiwyg = "true";
defparam reg_q_7__dup_25.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N30
fiftyfivenm_lcell_comb ix733_fadd(
// Equation(s):
// inc_d_7__dup_753 = reg_q_7__dup_33_aq $ (nx27032z1)

	.dataa(reg_q_7__dup_33_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx27032z1),
	.combout(inc_d_7__dup_753),
	.cout());
// synopsys translate_off
defparam ix733_fadd.lut_mask = 16'h5A5A;
defparam ix733_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X25_Y15_N31
dffeas reg_q_7__dup_33(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_753),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(nx24859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_33_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_33.is_wysiwyg = "true";
defparam reg_q_7__dup_33.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N4
fiftyfivenm_lcell_comb ix59319z7108(
// Equation(s):
// read_fifo_pointer[7] = (rb_i_valid & (reg_q_7__dup_25_aq)) # (!rb_i_valid & ((reg_q_7__dup_33_aq)))

	.dataa(reg_q_7__dup_25_aq),
	.datab(gnd),
	.datac(reg_q_7__dup_33_aq),
	.datad(rb_i_valid),
	.cin(gnd),
	.combout(read_fifo_pointer[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7108.lut_mask = 16'hAAF0;
defparam ix59319z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y21_N30
fiftyfivenm_lcell_comb ix22605z7096(
// Equation(s):
// nx22605z2 = (u_kirsch_reg_r_sub0_11__aq) # ((u_kirsch_reg_r_sub0_12__aq) # (nx22605z3))

	.dataa(gnd),
	.datab(u_kirsch_reg_r_sub0_11__aq),
	.datac(u_kirsch_reg_r_sub0_12__aq),
	.datad(nx22605z3),
	.cin(gnd),
	.combout(nx22605z2),
	.cout());
// synopsys translate_off
defparam ix22605z7096.lut_mask = 16'hFFFC;
defparam ix22605z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N20
fiftyfivenm_lcell_comb ix63331z7095(
// Equation(s):
// nx63331z1 = (u_kirsch_reg_dir2_final_2__aq & (nx22605z2 & ((u_kirsch_reg_dir2_final_0__aq) # (!u_kirsch_reg_dir2_final_1__aq))))

	.dataa(u_kirsch_reg_dir2_final_2__aq),
	.datab(nx22605z2),
	.datac(u_kirsch_reg_dir2_final_0__aq),
	.datad(u_kirsch_reg_dir2_final_1__aq),
	.cin(gnd),
	.combout(nx63331z1),
	.cout());
// synopsys translate_off
defparam ix63331z7095.lut_mask = 16'h8088;
defparam ix63331z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y18_N21
dffeas u_kirsch_reg_intermediate_dir_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63331z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_intermediate_dir_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_intermediate_dir_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_intermediate_dir_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N26
fiftyfivenm_lcell_comb ix59319z7106(
// Equation(s):
// rb_i_data[1] = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_1__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[1])))

	.dataa(pb_a0_a_ainput_o),
	.datab(gnd),
	.datac(u_kirsch_reg_intermediate_dir_1__aq),
	.datad(k_i_pixel[1]),
	.cin(gnd),
	.combout(rb_i_data[1]),
	.cout());
// synopsys translate_off
defparam ix59319z7106.lut_mask = 16'hF5A0;
defparam ix59319z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N26
fiftyfivenm_lcell_comb ix50073z7096(
// Equation(s):
// nx50073z2 = (u_kirsch_reg_max0_bit_counter_1__aq & (nx52067z3 & (!u_kirsch_reg_max0_bit_counter_0__aq & reset_n_ainput_o)))

	.dataa(u_kirsch_reg_max0_bit_counter_1__aq),
	.datab(nx52067z3),
	.datac(u_kirsch_reg_max0_bit_counter_0__aq),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx50073z2),
	.cout());
// synopsys translate_off
defparam ix50073z7096.lut_mask = 16'h0800;
defparam ix50073z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N4
fiftyfivenm_lcell_comb ix50073z7095(
// Equation(s):
// nx50073z1 = (nx50073z2 & ((nx40631z1))) # (!nx50073z2 & (u_kirsch_reg_dir1_2__aq))

	.dataa(gnd),
	.datab(nx50073z2),
	.datac(u_kirsch_reg_dir1_2__aq),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(nx50073z1),
	.cout());
// synopsys translate_off
defparam ix50073z7095.lut_mask = 16'hFC30;
defparam ix50073z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N5
dffeas u_kirsch_reg_dir1_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50073z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N6
fiftyfivenm_lcell_comb ix4088z7095(
// Equation(s):
// nx4088z1 = (nx2094z2 & (u_kirsch_reg_dir1_2__aq)) # (!nx2094z2 & ((u_kirsch_reg_dir1_final_2__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_dir1_2__aq),
	.datac(u_kirsch_reg_dir1_final_2__aq),
	.datad(nx2094z2),
	.cin(gnd),
	.combout(nx4088z1),
	.cout());
// synopsys translate_off
defparam ix4088z7095.lut_mask = 16'hCCF0;
defparam ix4088z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N7
dffeas u_kirsch_reg_dir1_final_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx4088z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_final_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_final_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_final_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N22
fiftyfivenm_lcell_comb ix52067z7096(
// Equation(s):
// nx52067z2 = (!u_kirsch_reg_max0_bit_counter_1__aq & (nx52067z3 & (!u_kirsch_reg_max0_bit_counter_0__aq & reset_n_ainput_o)))

	.dataa(u_kirsch_reg_max0_bit_counter_1__aq),
	.datab(nx52067z3),
	.datac(u_kirsch_reg_max0_bit_counter_0__aq),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(nx52067z2),
	.cout());
// synopsys translate_off
defparam ix52067z7096.lut_mask = 16'h0400;
defparam ix52067z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N8
fiftyfivenm_lcell_comb ix52067z7095(
// Equation(s):
// nx52067z1 = (nx52067z2 & ((nx40631z1))) # (!nx52067z2 & (u_kirsch_reg_dir1_0__aq))

	.dataa(nx52067z2),
	.datab(gnd),
	.datac(u_kirsch_reg_dir1_0__aq),
	.datad(nx40631z1),
	.cin(gnd),
	.combout(nx52067z1),
	.cout());
// synopsys translate_off
defparam ix52067z7095.lut_mask = 16'hFA50;
defparam ix52067z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N9
dffeas u_kirsch_reg_dir1_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx52067z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N26
fiftyfivenm_lcell_comb ix2094z7095(
// Equation(s):
// nx2094z1 = (nx2094z2 & (u_kirsch_reg_dir1_0__aq)) # (!nx2094z2 & ((u_kirsch_reg_dir1_final_0__aq)))

	.dataa(u_kirsch_reg_dir1_0__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_dir1_final_0__aq),
	.datad(nx2094z2),
	.cin(gnd),
	.combout(nx2094z1),
	.cout());
// synopsys translate_off
defparam ix2094z7095.lut_mask = 16'hAAF0;
defparam ix2094z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N27
dffeas u_kirsch_reg_dir1_final_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2094z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_dir1_final_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_dir1_final_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_dir1_final_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N30
fiftyfivenm_lcell_comb ix64328z7097(
// Equation(s):
// nx64328z3 = (u_kirsch_reg_dir2_final_0__aq & ((u_kirsch_reg_dir1_final_0__aq))) # (!u_kirsch_reg_dir2_final_0__aq & (u_kirsch_reg_dir1_final_1__aq))

	.dataa(u_kirsch_reg_dir2_final_0__aq),
	.datab(u_kirsch_reg_dir1_final_1__aq),
	.datac(u_kirsch_reg_dir1_final_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx64328z3),
	.cout());
// synopsys translate_off
defparam ix64328z7097.lut_mask = 16'hE4E4;
defparam ix64328z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N0
fiftyfivenm_lcell_comb ix64328z7096(
// Equation(s):
// nx64328z2 = (u_kirsch_reg_dir2_final_1__aq & ((nx64328z3))) # (!u_kirsch_reg_dir2_final_1__aq & (u_kirsch_reg_dir1_final_2__aq))

	.dataa(u_kirsch_reg_dir1_final_2__aq),
	.datab(gnd),
	.datac(u_kirsch_reg_dir2_final_1__aq),
	.datad(nx64328z3),
	.cin(gnd),
	.combout(nx64328z2),
	.cout());
// synopsys translate_off
defparam ix64328z7096.lut_mask = 16'hFA0A;
defparam ix64328z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N14
fiftyfivenm_lcell_comb ix64328z7095(
// Equation(s):
// nx64328z1 = (nx22605z2 & ((u_kirsch_reg_dir2_final_2__aq & ((nx64328z2))) # (!u_kirsch_reg_dir2_final_2__aq & (u_kirsch_reg_dir1_final_3__aq))))

	.dataa(u_kirsch_reg_dir1_final_3__aq),
	.datab(nx22605z2),
	.datac(nx64328z2),
	.datad(u_kirsch_reg_dir2_final_2__aq),
	.cin(gnd),
	.combout(nx64328z1),
	.cout());
// synopsys translate_off
defparam ix64328z7095.lut_mask = 16'hC088;
defparam ix64328z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y18_N15
dffeas u_kirsch_reg_intermediate_dir_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64328z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64328z4),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_intermediate_dir_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_intermediate_dir_2_.is_wysiwyg = "true";
defparam u_kirsch_reg_intermediate_dir_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N26
fiftyfivenm_lcell_comb ix59319z7105(
// Equation(s):
// rb_i_data[2] = (pb_a0_a_ainput_o & (u_kirsch_reg_intermediate_dir_2__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[2])))

	.dataa(gnd),
	.datab(pb_a0_a_ainput_o),
	.datac(u_kirsch_reg_intermediate_dir_2__aq),
	.datad(k_i_pixel[2]),
	.cin(gnd),
	.combout(rb_i_data[2]),
	.cout());
// synopsys translate_off
defparam ix59319z7105.lut_mask = 16'hF3C0;
defparam ix59319z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y19_N12
fiftyfivenm_lcell_comb ix22605z7095(
// Equation(s):
// nx22605z1 = (nx22605z2 & ((nx4094z2) # ((nx16758z7 & !u_kirsch_reg_stg_counter1_3__aq))))

	.dataa(nx22605z2),
	.datab(nx4094z2),
	.datac(nx16758z7),
	.datad(u_kirsch_reg_stg_counter1_3__aq),
	.cin(gnd),
	.combout(nx22605z1),
	.cout());
// synopsys translate_off
defparam ix22605z7095.lut_mask = 16'h88A8;
defparam ix22605z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y19_N13
dffeas u_kirsch_reg_o_edge(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx22605z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reset_n_ainput_o),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_edge_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_edge.is_wysiwyg = "true";
defparam u_kirsch_reg_o_edge.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N22
fiftyfivenm_lcell_comb ix59319z7103(
// Equation(s):
// rb_i_data[3] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_edge_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[3])))

	.dataa(gnd),
	.datab(pb_a0_a_ainput_o),
	.datac(u_kirsch_reg_o_edge_aq),
	.datad(k_i_pixel[3]),
	.cin(gnd),
	.combout(rb_i_data[3]),
	.cout());
// synopsys translate_off
defparam ix59319z7103.lut_mask = 16'hF3C0;
defparam ix59319z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N16
fiftyfivenm_lcell_comb ix37156z7095(
// Equation(s):
// nx37156z1 = (nx17755z2 & (nx16758z2 & (u_kirsch_reg_stg_counter1_3__aq & nx16758z7)))

	.dataa(nx17755z2),
	.datab(nx16758z2),
	.datac(u_kirsch_reg_stg_counter1_3__aq),
	.datad(nx16758z7),
	.cin(gnd),
	.combout(nx37156z1),
	.cout());
// synopsys translate_off
defparam ix37156z7095.lut_mask = 16'h8000;
defparam ix37156z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N17
dffeas u_kirsch_reg_o_mode_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx37156z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_mode_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_mode_0_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_mode_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y14_N24
fiftyfivenm_lcell_comb ix59319z7101(
// Equation(s):
// rb_i_data[4] = (pb_a0_a_ainput_o & (!u_kirsch_reg_o_mode_0__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[4])))

	.dataa(pb_a0_a_ainput_o),
	.datab(u_kirsch_reg_o_mode_0__aq),
	.datac(k_i_pixel[4]),
	.datad(gnd),
	.cin(gnd),
	.combout(rb_i_data[4]),
	.cout());
// synopsys translate_off
defparam ix59319z7101.lut_mask = 16'h7272;
defparam ix59319z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N2
fiftyfivenm_lcell_comb u_kirsch_reg_o_mode_1__afeeder(
// Equation(s):
// u_kirsch_reg_o_mode_1__afeeder_combout = VCC

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(u_kirsch_reg_o_mode_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_kirsch_reg_o_mode_1__afeeder.lut_mask = 16'hFFFF;
defparam u_kirsch_reg_o_mode_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N3
dffeas u_kirsch_reg_o_mode_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_kirsch_reg_o_mode_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_kirsch_reg_o_mode_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_kirsch_reg_o_mode_1_.is_wysiwyg = "true";
defparam u_kirsch_reg_o_mode_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N0
fiftyfivenm_lcell_comb ix59319z7099(
// Equation(s):
// rb_i_data[5] = (pb_a0_a_ainput_o & (u_kirsch_reg_o_mode_1__aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[5])))

	.dataa(pb_a0_a_ainput_o),
	.datab(gnd),
	.datac(u_kirsch_reg_o_mode_1__aq),
	.datad(k_i_pixel[5]),
	.cin(gnd),
	.combout(rb_i_data[5]),
	.cout());
// synopsys translate_off
defparam ix59319z7099.lut_mask = 16'hF5A0;
defparam ix59319z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y21_N28
fiftyfivenm_lcell_comb ix40325z7095(
// Equation(s):
// nx40325z1 = (u_uart_reg_RxFSM_5__aq) # ((!u_uart_reg_RxRDYi_aq & u_uart_reg_RxErr_aq))

	.dataa(u_uart_reg_RxRDYi_aq),
	.datab(gnd),
	.datac(u_uart_reg_RxErr_aq),
	.datad(u_uart_reg_RxFSM_5__aq),
	.cin(gnd),
	.combout(nx40325z1),
	.cout());
// synopsys translate_off
defparam ix40325z7095.lut_mask = 16'hFF50;
defparam ix40325z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y21_N29
dffeas u_uart_reg_RxErr(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx40325z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_RxErr_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_RxErr.is_wysiwyg = "true";
defparam u_uart_reg_RxErr.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N10
fiftyfivenm_lcell_comb ix59319z7097(
// Equation(s):
// rb_i_data[6] = (pb_a0_a_ainput_o & (u_uart_reg_RxErr_aq)) # (!pb_a0_a_ainput_o & ((k_i_pixel[6])))

	.dataa(pb_a0_a_ainput_o),
	.datab(gnd),
	.datac(u_uart_reg_RxErr_aq),
	.datad(k_i_pixel[6]),
	.cin(gnd),
	.combout(rb_i_data[6]),
	.cout());
// synopsys translate_off
defparam ix59319z7097.lut_mask = 16'hF5A0;
defparam ix59319z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N4
fiftyfivenm_lcell_comb ix59319z7095(
// Equation(s):
// rb_i_data[7] = (pb_a0_a_ainput_o & (!reset_n_ainput_o)) # (!pb_a0_a_ainput_o & ((k_i_pixel[7])))

	.dataa(reset_n_ainput_o),
	.datab(pb_a0_a_ainput_o),
	.datac(gnd),
	.datad(k_i_pixel[7]),
	.cin(gnd),
	.combout(rb_i_data[7]),
	.cout());
// synopsys translate_off
defparam ix59319z7095.lut_mask = 16'h7744;
defparam ix59319z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M9K_X26_Y18_N0
fiftyfivenm_ram_block read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(rb_i_valid),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clk_ainputclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,rb_i_data[7],rb_i_data[6],rb_i_data[5],rb_i_data[4],rb_i_data[3],rb_i_data[2],rb_i_data[1],rb_i_data[0]}),
	.portaaddr({read_fifo_pointer[7],read_fifo_pointer[6],read_fifo_pointer[5],read_fifo_pointer[4],read_fifo_pointer[3],read_fifo_pointer[2],read_fifo_pointer[1],read_fifo_pointer[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:read_fifo_mem_mem|altsyncram:ix64056z29482|altsyncram_r8g2:auto_generated|ALTSYNCRAM";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 18;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 18;
defparam read_fifo_mem_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M9K";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N18
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_0__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_0__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_0__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N19
dffeas read_fifo_reg_q_saved_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_0_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N16
fiftyfivenm_lcell_comb ix18859z7095(
// Equation(s):
// NOT_rb_o_data_0_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_0__aq))

	.dataa(reg_rb_rd_en_delayed_aq),
	.datab(read_fifo_reg_q_saved_0__aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(NOT_rb_o_data_0_),
	.cout());
// synopsys translate_off
defparam ix18859z7095.lut_mask = 16'h11BB;
defparam ix18859z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N24
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_1__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_1__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_1__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N25
dffeas read_fifo_reg_q_saved_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_1__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_1_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N22
fiftyfivenm_lcell_comb ix19856z7095(
// Equation(s):
// NOT_rb_o_data_1_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_1__aq))

	.dataa(reg_rb_rd_en_delayed_aq),
	.datab(read_fifo_reg_q_saved_1__aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(NOT_rb_o_data_1_),
	.cout());
// synopsys translate_off
defparam ix19856z7095.lut_mask = 16'h11BB;
defparam ix19856z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N20
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_2__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_2__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]

	.dataa(gnd),
	.datab(gnd),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datad(gnd),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_2__afeeder.lut_mask = 16'hF0F0;
defparam read_fifo_reg_q_saved_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N21
dffeas read_fifo_reg_q_saved_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_2_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N28
fiftyfivenm_lcell_comb ix20853z7095(
// Equation(s):
// NOT_rb_o_data_2_ = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2])) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_2__aq)))

	.dataa(reg_rb_rd_en_delayed_aq),
	.datab(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.datac(gnd),
	.datad(read_fifo_reg_q_saved_2__aq),
	.cin(gnd),
	.combout(NOT_rb_o_data_2_),
	.cout());
// synopsys translate_off
defparam ix20853z7095.lut_mask = 16'h2277;
defparam ix20853z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N2
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_3__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_3__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_3__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N3
dffeas read_fifo_reg_q_saved_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_3__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_3_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N4
fiftyfivenm_lcell_comb ix21850z7095(
// Equation(s):
// NOT_rb_o_data_3_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_3__aq))

	.dataa(reg_rb_rd_en_delayed_aq),
	.datab(read_fifo_reg_q_saved_3__aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(NOT_rb_o_data_3_),
	.cout());
// synopsys translate_off
defparam ix21850z7095.lut_mask = 16'h11BB;
defparam ix21850z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N6
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_4__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_4__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_4__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N7
dffeas read_fifo_reg_q_saved_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_4__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_4_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N8
fiftyfivenm_lcell_comb ix22847z7095(
// Equation(s):
// NOT_rb_o_data_4_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_4__aq))

	.dataa(read_fifo_reg_q_saved_4__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(NOT_rb_o_data_4_),
	.cout());
// synopsys translate_off
defparam ix22847z7095.lut_mask = 16'h11DD;
defparam ix22847z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N12
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_5__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_5__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_5__afeeder.lut_mask = 16'hFF00;
defparam read_fifo_reg_q_saved_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N13
dffeas read_fifo_reg_q_saved_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_5__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_5_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N26
fiftyfivenm_lcell_comb ix23844z7095(
// Equation(s):
// NOT_rb_o_data_5_ = (reg_rb_rd_en_delayed_aq & ((!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]))) # (!reg_rb_rd_en_delayed_aq & (!read_fifo_reg_q_saved_5__aq))

	.dataa(read_fifo_reg_q_saved_5__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(gnd),
	.datad(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(NOT_rb_o_data_5_),
	.cout());
// synopsys translate_off
defparam ix23844z7095.lut_mask = 16'h11DD;
defparam ix23844z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N0
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_6__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_6__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]

	.dataa(gnd),
	.datab(gnd),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datad(gnd),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_6__afeeder.lut_mask = 16'hF0F0;
defparam read_fifo_reg_q_saved_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N1
dffeas read_fifo_reg_q_saved_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_6__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_6_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N30
fiftyfivenm_lcell_comb ix24841z7095(
// Equation(s):
// NOT_rb_o_data_6_ = (reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6])) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_6__aq)))

	.dataa(reg_rb_rd_en_delayed_aq),
	.datab(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.datac(gnd),
	.datad(read_fifo_reg_q_saved_6__aq),
	.cin(gnd),
	.combout(NOT_rb_o_data_6_),
	.cout());
// synopsys translate_off
defparam ix24841z7095.lut_mask = 16'h2277;
defparam ix24841z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N10
fiftyfivenm_lcell_comb read_fifo_reg_q_saved_7__afeeder(
// Equation(s):
// read_fifo_reg_q_saved_7__afeeder_combout = read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]

	.dataa(gnd),
	.datab(gnd),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datad(gnd),
	.cin(gnd),
	.combout(read_fifo_reg_q_saved_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam read_fifo_reg_q_saved_7__afeeder.lut_mask = 16'hF0F0;
defparam read_fifo_reg_q_saved_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N11
dffeas read_fifo_reg_q_saved_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(read_fifo_reg_q_saved_7__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(reg_rb_rd_en_delayed_aq),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(read_fifo_reg_q_saved_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam read_fifo_reg_q_saved_7_.is_wysiwyg = "true";
defparam read_fifo_reg_q_saved_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N14
fiftyfivenm_lcell_comb ix25838z7095(
// Equation(s):
// NOT_u_uart_Tx_Reg_14n6ss1_8_ = (!u_uart_reg_TxFSM_1__aq & ((reg_rb_rd_en_delayed_aq & (!read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7])) # (!reg_rb_rd_en_delayed_aq & ((!read_fifo_reg_q_saved_7__aq)))))

	.dataa(u_uart_reg_TxFSM_1__aq),
	.datab(reg_rb_rd_en_delayed_aq),
	.datac(read_fifo_mem_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.datad(read_fifo_reg_q_saved_7__aq),
	.cin(gnd),
	.combout(NOT_u_uart_Tx_Reg_14n6ss1_8_),
	.cout());
// synopsys translate_off
defparam ix25838z7095.lut_mask = 16'h0415;
defparam ix25838z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N14
fiftyfivenm_lcell_comb ix18859z7096(
// Equation(s):
// nx18859z1 = (!u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq & (u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_1__aq & ((!reg_tx_valid_aq)))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TopTx_aq),
	.datac(u_uart_reg_TxFSM_1__aq),
	.datad(reg_tx_valid_aq),
	.cin(gnd),
	.combout(nx18859z1),
	.cout());
// synopsys translate_off
defparam ix18859z7096.lut_mask = 16'h4045;
defparam ix18859z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y18_N15
dffeas u_uart_reg_Tx_Reg_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_u_uart_Tx_Reg_14n6ss1_8_),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_8_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_8_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N31
dffeas u_uart_reg_Tx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_6_),
	.asdata(u_uart_reg_Tx_Reg_8__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_7_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N27
dffeas u_uart_reg_Tx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_5_),
	.asdata(u_uart_reg_Tx_Reg_7__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_6_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N9
dffeas u_uart_reg_Tx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_4_),
	.asdata(u_uart_reg_Tx_Reg_6__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_5_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N5
dffeas u_uart_reg_Tx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_3_),
	.asdata(u_uart_reg_Tx_Reg_5__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_4_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N29
dffeas u_uart_reg_Tx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_2_),
	.asdata(u_uart_reg_Tx_Reg_4__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_3_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N23
dffeas u_uart_reg_Tx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_1_),
	.asdata(u_uart_reg_Tx_Reg_3__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_2_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X25_Y18_N17
dffeas u_uart_reg_Tx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_rb_o_data_0_),
	.asdata(u_uart_reg_Tx_Reg_2__aq),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(u_uart_reg_TxFSM_1__aq),
	.ena(nx18859z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_1_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N18
fiftyfivenm_lcell_comb ix17862z7097(
// Equation(s):
// u_uart_Tx_Reg_14n6ss1_0_ = (u_uart_reg_TxFSM_1__aq & ((!u_uart_reg_Tx_Reg_1__aq))) # (!u_uart_reg_TxFSM_1__aq & (!u_uart_reg_TxFSM_0__aq))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(gnd),
	.datac(u_uart_reg_Tx_Reg_1__aq),
	.datad(u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(u_uart_Tx_Reg_14n6ss1_0_),
	.cout());
// synopsys translate_off
defparam ix17862z7097.lut_mask = 16'h0F55;
defparam ix17862z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y21_N0
fiftyfivenm_lcell_comb ix17862z7096(
// Equation(s):
// nx17862z2 = (u_uart_reg_TxFSM_0__aq & (((u_uart_reg_TxFSM_1__aq)) # (!u_uart_reg_TopTx_aq))) # (!u_uart_reg_TxFSM_0__aq & ((u_uart_reg_TxFSM_1__aq & (!u_uart_reg_TopTx_aq)) # (!u_uart_reg_TxFSM_1__aq & ((reg_tx_valid_aq)))))

	.dataa(u_uart_reg_TxFSM_0__aq),
	.datab(u_uart_reg_TopTx_aq),
	.datac(u_uart_reg_TxFSM_1__aq),
	.datad(reg_tx_valid_aq),
	.cin(gnd),
	.combout(nx17862z2),
	.cout());
// synopsys translate_off
defparam ix17862z7096.lut_mask = 16'hB7B2;
defparam ix17862z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y21_N24
fiftyfivenm_lcell_comb ix17862z7095(
// Equation(s):
// nx17862z1 = (nx17862z2 & ((u_uart_reg_Tx_Reg_0__aq))) # (!nx17862z2 & (!u_uart_Tx_Reg_14n6ss1_0_))

	.dataa(gnd),
	.datab(u_uart_Tx_Reg_14n6ss1_0_),
	.datac(u_uart_reg_Tx_Reg_0__aq),
	.datad(nx17862z2),
	.cin(gnd),
	.combout(nx17862z1),
	.cout());
// synopsys translate_off
defparam ix17862z7095.lut_mask = 16'hF033;
defparam ix17862z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y21_N25
dffeas u_uart_reg_Tx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17862z1),
	.asdata(vcc),
	.clrn(!reg_uart_reset_aq),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_uart_reg_Tx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_uart_reg_Tx_Reg_0_.is_wysiwyg = "true";
defparam u_uart_reg_Tx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y18_N0
fiftyfivenm_lcell_comb ix3377z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_0_ = (reg_q_10__dup_50_aq & (nx51544z5)) # (!reg_q_10__dup_50_aq & ((nx51544z19)))

	.dataa(nx51544z5),
	.datab(gnd),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z19),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_0_),
	.cout());
// synopsys translate_off
defparam ix3377z7095.lut_mask = 16'hAFA0;
defparam ix3377z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y18_N1
dffeas u_seg7_u_dual_seg7_reg_o_char_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_0_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N10
fiftyfivenm_lcell_comb ix5371z7096(
// Equation(s):
// nx5371z1 = (u_kirsch_reg_o_row_7__aq & (((!u_kirsch_reg_o_row_5__aq & u_kirsch_reg_o_row_4__aq)) # (!u_kirsch_reg_o_row_6__aq))) # (!u_kirsch_reg_o_row_7__aq & ((u_kirsch_reg_o_row_6__aq) # ((u_kirsch_reg_o_row_4__aq) # (!u_kirsch_reg_o_row_5__aq))))

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx5371z1),
	.cout());
// synopsys translate_off
defparam ix5371z7096.lut_mask = 16'h7F67;
defparam ix5371z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N12
fiftyfivenm_lcell_comb ix5371z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_2_ = (reg_q_10__dup_50_aq & (nx5371z1)) # (!reg_q_10__dup_50_aq & ((nx51544z22)))

	.dataa(nx5371z1),
	.datab(gnd),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z22),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_2_),
	.cout());
// synopsys translate_off
defparam ix5371z7095.lut_mask = 16'hAFA0;
defparam ix5371z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y18_N13
dffeas u_seg7_u_dual_seg7_reg_o_char_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_2_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N18
fiftyfivenm_lcell_comb ix6368z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_3_ = (reg_q_10__dup_50_aq & ((nx51544z9) # ((nx51544z10)))) # (!reg_q_10__dup_50_aq & (((nx51544z14))))

	.dataa(nx51544z9),
	.datab(nx51544z10),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z14),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_3_),
	.cout());
// synopsys translate_off
defparam ix6368z7095.lut_mask = 16'hEFE0;
defparam ix6368z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y18_N19
dffeas u_seg7_u_dual_seg7_reg_o_char_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_3_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N4
fiftyfivenm_lcell_comb ix7365z7096(
// Equation(s):
// nx7365z1 = (!u_kirsch_reg_o_row_4__aq & ((u_kirsch_reg_o_row_7__aq) # ((u_kirsch_reg_o_row_5__aq) # (!u_kirsch_reg_o_row_6__aq))))

	.dataa(u_kirsch_reg_o_row_7__aq),
	.datab(u_kirsch_reg_o_row_6__aq),
	.datac(u_kirsch_reg_o_row_5__aq),
	.datad(u_kirsch_reg_o_row_4__aq),
	.cin(gnd),
	.combout(nx7365z1),
	.cout());
// synopsys translate_off
defparam ix7365z7096.lut_mask = 16'h00FB;
defparam ix7365z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y18_N8
fiftyfivenm_lcell_comb ix7365z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_4_ = (reg_q_10__dup_50_aq & ((nx51544z4) # ((nx7365z1)))) # (!reg_q_10__dup_50_aq & (((nx51544z20))))

	.dataa(nx51544z4),
	.datab(nx7365z1),
	.datac(reg_q_10__dup_50_aq),
	.datad(nx51544z20),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_4_),
	.cout());
// synopsys translate_off
defparam ix7365z7095.lut_mask = 16'hEFE0;
defparam ix7365z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y18_N9
dffeas u_seg7_u_dual_seg7_reg_o_char_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_4_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y18_N12
fiftyfivenm_lcell_comb ix10356z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_7_ = (reg_q_10__dup_50_aq & (u_kirsch_reg_o_mode_1__aq)) # (!reg_q_10__dup_50_aq & ((!u_kirsch_reg_o_mode_0__aq)))

	.dataa(gnd),
	.datab(u_kirsch_reg_o_mode_1__aq),
	.datac(reg_q_10__dup_50_aq),
	.datad(u_kirsch_reg_o_mode_0__aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_7_),
	.cout());
// synopsys translate_off
defparam ix10356z7095.lut_mask = 16'hC0CF;
defparam ix10356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y18_N13
dffeas u_seg7_u_dual_seg7_reg_o_char_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_7_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_7_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X0_Y5_N1
fiftyfivenm_io_ibuf sw_a0_a_ainput(
	.i(sw[0]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a0_a_ainput_o));
// synopsys translate_off
defparam sw_a0_a_ainput.bus_hold = "false";
defparam sw_a0_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a0_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N15
fiftyfivenm_io_ibuf sw_a1_a_ainput(
	.i(sw[1]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a1_a_ainput_o));
// synopsys translate_off
defparam sw_a1_a_ainput.bus_hold = "false";
defparam sw_a1_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a1_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N22
fiftyfivenm_io_ibuf sw_a2_a_ainput(
	.i(sw[2]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a2_a_ainput_o));
// synopsys translate_off
defparam sw_a2_a_ainput.bus_hold = "false";
defparam sw_a2_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a2_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y20_N15
fiftyfivenm_io_ibuf sw_a3_a_ainput(
	.i(sw[3]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a3_a_ainput_o));
// synopsys translate_off
defparam sw_a3_a_ainput.bus_hold = "false";
defparam sw_a3_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a3_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y21_N15
fiftyfivenm_io_ibuf sw_a4_a_ainput(
	.i(sw[4]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a4_a_ainput_o));
// synopsys translate_off
defparam sw_a4_a_ainput.bus_hold = "false";
defparam sw_a4_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a4_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y22_N15
fiftyfivenm_io_ibuf sw_a5_a_ainput(
	.i(sw[5]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a5_a_ainput_o));
// synopsys translate_off
defparam sw_a5_a_ainput.bus_hold = "false";
defparam sw_a5_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a5_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X3_Y0_N8
fiftyfivenm_io_ibuf sw_a6_a_ainput(
	.i(sw[6]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a6_a_ainput_o));
// synopsys translate_off
defparam sw_a6_a_ainput.bus_hold = "false";
defparam sw_a6_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a6_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X1_Y10_N15
fiftyfivenm_io_ibuf sw_a7_a_ainput(
	.i(sw[7]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a7_a_ainput_o));
// synopsys translate_off
defparam sw_a7_a_ainput.bus_hold = "false";
defparam sw_a7_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a7_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N22
fiftyfivenm_io_ibuf pb_a1_a_ainput(
	.i(pb[1]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a1_a_ainput_o));
// synopsys translate_off
defparam pb_a1_a_ainput.bus_hold = "false";
defparam pb_a1_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a1_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X9_Y0_N29
fiftyfivenm_io_ibuf pb_a2_a_ainput(
	.i(pb[2]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a2_a_ainput_o));
// synopsys translate_off
defparam pb_a2_a_ainput.bus_hold = "false";
defparam pb_a2_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a2_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X6_Y0_N15
fiftyfivenm_io_ibuf pb_a3_a_ainput(
	.i(pb[3]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(pb_a3_a_ainput_o));
// synopsys translate_off
defparam pb_a3_a_ainput.bus_hold = "false";
defparam pb_a3_a_ainput.listen_to_nsleep_signal = "false";
defparam pb_a3_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: UNVM_X0_Y11_N40
fiftyfivenm_unvm a_aQUARTUS_CREATED_UNVM_a(
	.arclk(vcc),
	.arshft(vcc),
	.drclk(vcc),
	.drshft(vcc),
	.drdin(vcc),
	.nprogram(vcc),
	.nerase(vcc),
	.nosc_ena(a_aQUARTUS_CREATED_GND_aI_combout),
	.par_en(vcc),
	.xe_ye(a_aQUARTUS_CREATED_GND_aI_combout),
	.se(a_aQUARTUS_CREATED_GND_aI_combout),
	.ardin(23'b11111111111111111111111),
	.busy(a_aQUARTUS_CREATED_UNVM_a_abusy),
	.osc(),
	.bgpbusy(),
	.sp_pass(),
	.se_pass(),
	.drdout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_end_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range2_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.is_compressed_image = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_dual_boot = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_eram_skip = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.max_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.max_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.part_name = "quartus_created_unvm";
defparam a_aQUARTUS_CREATED_UNVM_a.reserve_block = "true";
// synopsys translate_on

// Location: ADCBLOCK_X10_Y24_N0
fiftyfivenm_adcblock a_aQUARTUS_CREATED_ADC1_a(
	.soc(a_aQUARTUS_CREATED_GND_aI_combout),
	.usr_pwd(vcc),
	.tsen(a_aQUARTUS_CREATED_GND_aI_combout),
	.clkin_from_pll_c0(gnd),
	.chsel({a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout}),
	.eoc(a_aQUARTUS_CREATED_ADC1_a_aeoc),
	.dout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_ADC1_a.analog_input_pin_mask = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.clkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.device_partname_fivechar_prefix = "none";
defparam a_aQUARTUS_CREATED_ADC1_a.is_this_first_or_second_adc = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.prescalar = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.pwd = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.refsel = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.reserve_block = "true";
defparam a_aQUARTUS_CREATED_ADC1_a.testbits = 66;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclksel = 0;
// synopsys translate_on

assign uart_tx = uart_tx_aoutput_o;

assign seg7_en[0] = seg7_en_a0_a_aoutput_o;

assign seg7_en[1] = seg7_en_a1_a_aoutput_o;

assign seg7_data[0] = seg7_data_a0_a_aoutput_o;

assign seg7_data[1] = seg7_data_a1_a_aoutput_o;

assign seg7_data[2] = seg7_data_a2_a_aoutput_o;

assign seg7_data[3] = seg7_data_a3_a_aoutput_o;

assign seg7_data[4] = seg7_data_a4_a_aoutput_o;

assign seg7_data[5] = seg7_data_a5_a_aoutput_o;

assign seg7_data[6] = seg7_data_a6_a_aoutput_o;

assign seg7_data[7] = seg7_data_a7_a_aoutput_o;

assign led[0] = led_a0_a_aoutput_o;

assign led[1] = led_a1_a_aoutput_o;

assign led[2] = led_a2_a_aoutput_o;

assign led[3] = led_a3_a_aoutput_o;

assign led[4] = led_a4_a_aoutput_o;

assign led[5] = led_a5_a_aoutput_o;

assign led[6] = led_a6_a_aoutput_o;

assign led[7] = led_a7_a_aoutput_o;

endmodule
