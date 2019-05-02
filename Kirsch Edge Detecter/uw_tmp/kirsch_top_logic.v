//
// Verilog description for cell kirsch_top, 
// Sun Jul 15 11:17:46 2018
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch_top ( reset_n, clk, uart_rx, uart_tx, sw, pb, seg7_en, seg7_data, 
                    led ) ;

    input reset_n ;
    input clk ;
    input uart_rx ;
    output uart_tx ;
    input [7:0]sw ;
    input [3:0]pb ;
    output [1:0]seg7_en ;
    output [7:0]seg7_data ;
    output [7:0]led ;

    wire k_o_valid, k_o_data_6_, k_o_data_3_, k_o_data_2_, k_o_data_1_, 
         k_o_data_0_, tx_busy_delayed, tx_busy, rx_valid;
    wire [7:0]seg7_num;
    wire [1:1]seg7_pts;
    wire uart_reset;
    wire [10:0]reset_count;
    wire [7:0]uart_pixel;
    wire rb_rd_en, rb_rd_en_delayed, wait_for_tx_valid, 
         wait_for_tx_valid_delayed;
    wire [7:0]write_fifo_wr_pointer;
    wire [7:0]write_fifo_rd_pointer;
    wire [8:0]write_fifo_status_cnt;
    wire [7:0]write_fifo_q;
    wire [7:0]write_fifo_q_saved;
    wire write_fifo_rd_en_delayed;
    wire [7:0]read_fifo_wr_pointer;
    wire [7:0]read_fifo_rd_pointer;
    wire [8:0]read_fifo_status_cnt;
    wire [7:0]read_fifo_q;
    wire [7:0]read_fifo_q_saved;
    wire u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
         u_seg7_u_dual_seg7_prev_reset, u_seg7_u_dual_seg7_prev_char0_en;
    wire [7:0]u_uart_Rx_Reg;
    wire u_uart_RxDivisor_4_;
    wire [10:0]u_uart_RxDiv;
    wire [11:0]u_uart_TxDiv;
    wire u_uart_TopTx, u_uart_TopRx;
    wire [3:0]u_uart_TxBitCnt;
    wire [3:0]u_uart_RxBitCnt;
    wire u_uart_Rx_r;
    wire [5:0]u_uart_RxFSM;
    wire [1:0]u_uart_TxFSM;
    wire [7:0]u_kirsch_i_0;
    wire [7:0]u_kirsch_i_1;
    wire [7:0]u_kirsch_i_2;
    wire [7:0]u_kirsch_i_3;
    wire [7:0]u_kirsch_r_max0;
    wire [9:0]u_kirsch_r_max1;
    wire [8:0]u_kirsch_r_add0_a;
    wire [8:0]u_kirsch_r_add0_b;
    wire [9:0]u_kirsch_r_add1_a;
    wire [9:0]u_kirsch_r_add1_b;
    wire [12:0]u_kirsch_r_add2;
    wire u_kirsch_r_sub0_12_, u_kirsch_r_sub0_11_, u_kirsch_r_sub0_10_, 
         u_kirsch_r_sub0_9_, u_kirsch_r_sub0_8_, u_kirsch_r_sub0_7_;
    wire [3:0]u_kirsch_dir1;
    wire [3:0]u_kirsch_dir1_final;
    wire [2:0]u_kirsch_dir2;
    wire [2:0]u_kirsch_dir2_final;
    wire [3:0]u_kirsch_stg_counter1;
    wire [3:0]u_kirsch_stg_counter2;
    wire [1:0]u_kirsch_max0_bit_counter;
    wire [1:0]u_kirsch_max1_bit_counter;
    wire [7:0]u_kirsch_address;
    wire [1:0]u_kirsch_row_index;
    wire [7:0]u_kirsch_row_count;
    wire [7:0]u_kirsch_o_dataA;
    wire [7:0]u_kirsch_o_dataB;
    wire [7:0]u_kirsch_o_dataC;
    wire [7:0]u_kirsch_c3;
    wire [7:0]u_kirsch_d3;
    wire [7:0]u_kirsch_e3;
    wire [7:0]u_kirsch_a2;
    wire [7:0]u_kirsch_h2;
    wire [7:0]u_kirsch_g2;
    wire [7:0]u_kirsch_a3;
    wire [7:0]u_kirsch_h3;
    wire [7:0]u_kirsch_g3;
    wire [8:0]u_kirsch_r_add0_a_0n1s1;
    wire [9:0]u_kirsch_r_add1_a_3n1s1;
    wire [12:0]u_kirsch_r_add2_4n1s1;
    wire nx29221z4, u_kirsch_r_sub0_6n1s1_14_, u_kirsch_r_sub0_6n1s1_12_, 
         u_kirsch_r_sub0_6n1s1_11_, u_kirsch_r_sub0_6n1s1_10_, 
         u_kirsch_r_sub0_6n1s1_9_, u_kirsch_r_sub0_6n1s1_8_, 
         u_kirsch_r_sub0_6n1s1_7_, nx40631z1, nx29221z7, inc_d_0_, nx27063z1, 
         inc_d_1_, nx39256z1, inc_d_2_, nx57428z1, inc_d_3_, nx23040z1, inc_d_4_, 
         nx58827z1, inc_d_5_, nx37857z1, inc_d_6_, nx41995z1, inc_d_7_, nx8364z1, 
         inc_d_8_, nx9072z1, inc_d_9_, nx40977z1, inc_d_10_, inc_d_0__dup_602, 
         nx38358z1, inc_d_1__dup_604, nx53932z1, inc_d_2__dup_606, nx43509z1, 
         inc_d_3__dup_608, nx27935z1, inc_d_4__dup_610, nx12361z1, 
         inc_d_5__dup_612, nx62323z1, inc_d_6__dup_614, nx11000z1, 
         inc_d_7__dup_616, inc_d_0__dup_638, nx35880z1, inc_d_1__dup_640, 
         nx51454z1, inc_d_2__dup_642, nx1492z1, inc_d_3__dup_644, nx17066z1, 
         inc_d_4__dup_646, nx32896z1, inc_d_5__dup_648, nx64801z1, 
         inc_d_6__dup_650, nx57014z1, inc_d_7__dup_652, nx30620z1, 
         incdec_mux_1_dup_114, nx15046z1, incdec_mux_2_dup_115, nx46951z1, 
         incdec_mux_3_dup_116, nx34159z1, incdec_mux_4_dup_117, nx49733z1, 
         incdec_mux_5_dup_118, nx65307z1, incdec_mux_6_dup_119, nx50191z1, 
         incdec_mux_7_dup_120, nx42404z1, incdec_mux_8_dup_121, inc_d_0__dup_703, 
         nx4983z1, inc_d_1__dup_705, nx10591z1, inc_d_2__dup_707, nx44222z1, 
         inc_d_3__dup_709, nx59796z1, inc_d_4__dup_711, nx55702z1, 
         inc_d_5__dup_713, nx40128z1, inc_d_6__dup_715, nx32341z1, 
         inc_d_7__dup_717, inc_d_0__dup_739, nx65210z1, inc_d_1__dup_741, 
         nx49636z1, inc_d_2__dup_743, nx31474z1, inc_d_3__dup_745, nx47048z1, 
         inc_d_4__dup_747, nx15143z1, inc_d_5__dup_749, nx34819z1, 
         inc_d_6__dup_751, nx27032z1, inc_d_7__dup_753, nx58387z1, 
         incdec_mux_1_dup_114_dup_779, nx24756z1, incdec_mux_2_dup_115_dup_781, 
         nx9182z2, incdec_mux_3_dup_116_dup_783, nx59144z1, 
         incdec_mux_4_dup_117_dup_785, nx21966z1, incdec_mux_5_dup_118_dup_787, 
         nx37540z1, incdec_mux_6_dup_119_dup_789, nx5635z1, 
         incdec_mux_7_dup_120_dup_791, nx52114z1, incdec_mux_8_dup_121_dup_793, 
         nx44217z1, nx55707z1, nx49288z1, nx674z1, nx50636z1, nx35062z1, 
         nx46048z1, nx60108z1, nx55390z1, nx39816z1, inc_d_0__dup_814, nx55390z2, 
         inc_d_1__dup_815, nx60108z2, inc_d_2__dup_816, nx46048z2, 
         inc_d_3__dup_817, nx35062z2, inc_d_4__dup_818, nx50636z2, 
         inc_d_5__dup_819, nx674z2, inc_d_6__dup_820, nx49288z2, 
         inc_d_7__dup_821, nx55707z2, inc_d_8__dup_822, nx44217z2, 
         inc_d_9__dup_823, nx10586z1, inc_d_10__dup_824, inc_d_0__dup_862, 
         nx52912z1, inc_d_1__dup_864, nx2950z1, inc_d_2__dup_866, nx47012z1, 
         inc_d_3__dup_868, nx31438z1, inc_d_4__dup_870, nx63343z1, 
         inc_d_5__dup_872, nx17767z1, inc_d_6__dup_874, nx33341z1, 
         inc_d_7__dup_876, nx48915z1, inc_d_8__dup_878, nx64489z1, 
         inc_d_9__dup_880, nx58796z1, inc_d_10__dup_882, inc_d_0__dup_915, 
         nx39407z1, inc_d_1__dup_917, nx10555z1, inc_d_2__dup_919, nx42460z1, 
         inc_d_3__dup_921, nx26886z1, inc_d_4__dup_923, nx11312z1, 
         inc_d_5__dup_925, nx4262z1, inc_d_6__dup_927, nx19836z1, 
         inc_d_7__dup_929, nx31640z1, inc_d_8__dup_931, nx47250z1, 
         inc_d_9__dup_933, nx16066z1, inc_d_10__dup_935, nx8279z1, inc_d_11_, 
         nx46608z1, nx34502z1, nx50076z1, nx114z1, nx31791z1, nx16217z1, nx643z1, 
         nx52980z1, nx21832z1, nx27373z1, nx58521z1, nx23346z1, nx7802z1, 
         nx38950z5, nx42917z1, nx11769z1, nx37436z1, nx62488z1, nx46914z1, 
         nx28806z1, nx44380z1, nx12475z1, nx37487z1, nx21913z1, nx6339z1, 
         nx56301z1, nx42866z1, nx58440z1, nx26840z1, nx54270z1, nx22365z1, 
         nx37939z1, nx12023z1, nx61985z1, nx46411z1, nx12780z1, nx2794z1, 
         inc_d_0__dup_997, nx38998z1, inc_d_1__dup_999, nx10964z1, 
         inc_d_2__dup_1001, nx42869z1, inc_d_3__dup_1003, nx27295z1, 
         inc_d_4__dup_1005, nx53815z1, inc_d_5__dup_1007, nx3853z1, 
         inc_d_6__dup_1009, nx11640z1, inc_d_7__dup_1011, inc_d_0__dup_1037, 
         nx16836z1, inc_d_1__dup_1039, nx64274z1, inc_d_2__dup_1041, nx32369z1, 
         inc_d_3__dup_1043, nx47943z1, inc_d_4__dup_1045, nx2019z1, 
         inc_d_5__dup_1047, nx51981z1, inc_d_6__dup_1049, nx44194z1, 
         inc_d_7__dup_1051, nx14816z1, nx1515z1, nx29633z1, nx13302z1, nx21086z1, 
         nx55474z1, nx59267z1, nx53938z1, nx42746z1, nx57178z1, nx7973z1, 
         nx23175z1, nx6844z1, nx27544z1, nx3604z1, nx13358z1, nx36604z1, 
         nx21030z1, nx52935z1, nx37361z1, nx59323z1, nx22544z1, nx56932z1, 
         nx39752z1, nx23421z3, nx10967z1, nx6502z1, nx1252z1, nx26313z1, 
         nx21429z1, nx24080z1, nx51089z1, nx19433z1, nx20430z1, nx21427z1, 
         nx22424z1, nx23421z1, nx24418z1, nx25415z1, nx26412z1, nx62941z1, 
         nx61944z1, nx60947z1, nx59950z1, nx58953z1, nx57956z1, nx56959z1, 
         nx55962z1, incdec_mux_0_dup_113, incdec_mux_0_dup_113_dup_777;
    wire [7:0]k_i_pixel;
    wire k_o_data_7_, GND, rb_empty, rb_i_valid;
    wire [7:0]rb_i_data;
    wire rb_rd_en_true, PWR, nx25391z3, nx7605z1, nx15004z1, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2, 
         u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4, 
         write_fifo_full;
    wire [7:0]write_fifo_pointer;
    wire [7:0]read_fifo_pointer;
    wire nx9182z1, nx51544z6, nx51544z8, nx51544z5, nx51544z20, nx51544z14, 
         nx51544z22, nx51544z17, nx51544z19, u_seg7_u_dual_seg7_muxed_char_4_, 
         u_seg7_u_dual_seg7_muxed_char_3_, u_seg7_u_dual_seg7_muxed_char_2_, 
         u_seg7_u_dual_seg7_muxed_char_0_, u_seg7_u_dual_seg7_muxed_char_7_, 
         nx29573z1, u_seg7_u_dual_seg7_load_reg, nx2379z1, 
         u_uart_Tx_Reg_14n6ss1_0_, nx18859z1, nx61431z2, nx13938z1, nx44871z1, 
         nx12790z1, nx10796z1, nx11793z1, nx9799z1, nx59343z1, nx8802z1, 
         nx13251z1, nx59343z2, nx57349z1, nx8356z3, nx9799z2;
    wire [7:0]u_kirsch_r_max0_1n2ss1;
    wire nx52067z3, nx2094z2, nx26412z9, nx38950z2;
    wire [9:0]u_kirsch_r_max1_5n6ss1;
    wire nx29221z10, nx12123z1, nx29221z5, nx4094z1, nx64328z4, nx22605z2, 
         u_kirsch_d3_9n15ss1_7_, u_kirsch_d3_9n15ss1_6_, u_kirsch_d3_9n15ss1_5_, 
         u_kirsch_d3_9n15ss1_4_, u_kirsch_d3_9n15ss1_3_, u_kirsch_d3_9n15ss1_2_, 
         u_kirsch_d3_9n15ss1_1_;
    wire [7:0]u_kirsch_a2_9n22ss1;
    wire [7:0]u_kirsch_h2_9n22ss1;
    wire [7:0]u_kirsch_f3_9n22ss1;
    wire nx41042z11, nx55203z2, nx18752z3, nx16758z3, nx53163z3, nx26412z7, 
         nx41042z5, nx55203z3, nx63596z4, nx49076z2, nx52067z2, nx50073z2, 
         nx22605z1, nx29221z1, nx4443z1, nx62334z1, nx60486z3, nx63331z1, 
         nx64328z1, nx41042z4, nx41042z3, nx40631z2, nx29221z8, nx60486z6, 
         nx38950z4, nx4094z2, nx41042z10, nx26412z4, nx18752z2, nx38950z3, 
         nx16758z7, nx38950z1, nx63596z2, nx37417z1;
    wire [9:0]u_kirsch_r_add2_4n1s1f1;
    wire [12:1]u_kirsch_r_add2_4n1s1f2;
    wire nx62334z3, nx29221z6, nx19433z2, nx20430z2, nx21427z2, nx22424z2, 
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
         nx2094z1, nx3091z1, nx4088z1, nx5085z1, nx58151z1, nx58143z1, nx22869z1, 
         nx23864z1, nx24859z1, nx383z1, nx25391z1, nx12790z2, nx59437z2, 
         nx59437z1, nx60434z1, nx61431z1, nx62428z1, nx62428z2, nx64683z3, 
         nx64683z1, nx144z1, nx1141z1, nx2138z1, nx2138z2, nx16758z2, nx16758z4, 
         nx22869z2, nx7605z2, nx15004z2, nx22869z3, nx15004z3, nx60415z5, 
         nx60415z3, nx60415z2, nx55203z4, nx37417z3, nx25391z2, nx25391z6, 
         nx25391z5, nx16758z6, nx16758z5, nx53163z4, nx8356z2, nx7359z2, 
         nx53163z2, nx52166z2, nx51169z2, nx50172z2, nx49175z2, nx48178z2, 
         nx47181z2, nx46184z2, nx58298z2, nx57301z2, nx56304z2, nx55307z2, 
         nx54310z2, nx53313z2, nx52316z2, nx51319z2, nx25391z4, nx37417z2, 
         nx64381z1, nx65378z1, nx839z1, nx1836z1, nx2833z1, nx3830z1, nx4827z1, 
         nx5824z1, nx17993z1, nx16996z1, nx15999z1, nx15002z1, nx14005z1, 
         nx13008z1, nx12011z1, nx11014z1, nx53163z1, nx52166z1, nx51169z1, 
         nx50172z1, nx49175z1, nx48178z1, nx47181z1, nx46184z1, nx58298z1, 
         nx57301z1, nx56304z1, nx55307z1, nx54310z1, nx53313z1, nx52316z1, 
         nx51319z1, nx41042z2, nx41042z1, nx40045z2, nx40045z1, nx39048z2, 
         nx39048z1, nx38051z2, nx38051z1, nx37054z2, nx37054z1, nx36057z2, 
         nx36057z1, nx35060z2, nx35060z1, nx34063z2, nx34063z1, nx63433z2, 
         nx63433z1, nx55082z2, nx55082z1, nx56079z2, nx56079z1, nx57076z2, 
         nx57076z1, nx58073z2, nx58073z1, nx59070z2, nx59070z1, nx60067z2, 
         nx60067z1, nx61064z2, nx61064z1, nx60486z7, nx60486z4, nx60486z11, 
         nx60486z10, nx60486z9, nx60486z8, nx59343z5, nx59343z6, nx59343z4, 
         nx59343z3, nx64328z2, nx57349z4, nx57349z3, nx57349z2, nx57349z6, 
         nx57349z5, nx51544z4, nx51544z24, nx51544z23, nx839z2, nx1836z2, 
         nx2833z2, nx51544z10, nx51544z9, nx51544z18, nx51544z16, nx383z2, 
         nx5371z1, nx17993z4, nx16996z4, nx15999z4, nx15002z4, nx14005z4, 
         nx13008z4, nx12011z4, nx11014z4, nx5824z4, nx26412z8, nx41042z7, 
         nx62334z2, nx58492z2, nx17862z2, nx41042z6, nx64328z3, nx26412z2, 
         nx41042z8, nx22605z3, nx12123z3, nx51544z15, nx51544z25, nx7365z1, 
         nx60415z4, nx60486z2, nx59489z2, nx29221z9, nx60486z5, nx29221z3, 
         nx64502z2, nx63596z3, nx12123z2, nx41042z9, nx26412z3, nx26412z6, 
         nx29221z2, nx64381z3, nx64381z2, nx65378z3, nx65378z2, nx3830z2, 
         nx4827z2, nx5824z2, nx17993z2, nx16996z2, nx15999z2, nx15002z2, 
         nx14005z2, nx13008z2, nx12011z2, nx11014z2, nx51544z7, nx51544z12, 
         nx51544z3, nx51544z11, nx51544z2, nx51544z21, nx51544z13, 
         NOT_u_uart_Tx_Reg_7_, NOT_rb_o_data_6_, NOT_u_uart_Tx_Reg_6_, 
         NOT_rb_o_data_5_, NOT_u_uart_Tx_Reg_5_, NOT_rb_o_data_4_, 
         NOT_u_uart_Tx_Reg_4_, NOT_rb_o_data_3_, NOT_u_uart_Tx_Reg_3_, 
         NOT_rb_o_data_2_, NOT_u_uart_Tx_Reg_2_, NOT_rb_o_data_1_, nx17862z3, 
         NOT_rb_o_data_0_, nx62197z1, nx17862z1, NOT_GND, nx7359z3, 
         NOT_rb_rd_en_delayed, nx59319z1, nx37156z1, nx12790z3, NOT_uart_rx, 
         NOT_u_uart_Tx_Reg_8_, NOT_u_uart_Tx_Reg_14n6ss1_8_, nx64683z2, 
         nx13787z1, nx24396z1;
    wire [2843:0] xmplr_dummy ;




    ram_dq_8_0 write_fifo_mem_mem (.wr_data1 ({uart_pixel[7],uart_pixel[6],
               uart_pixel[5],uart_pixel[4],uart_pixel[3],uart_pixel[2],
               uart_pixel[1],uart_pixel[0]}), .rd_data1 ({write_fifo_q[7],
               write_fifo_q[6],write_fifo_q[5],write_fifo_q[4],write_fifo_q[3],
               write_fifo_q[2],write_fifo_q[1],write_fifo_q[0]}), .addr1 ({
               write_fifo_pointer[7],write_fifo_pointer[6],write_fifo_pointer[5]
               ,write_fifo_pointer[4],write_fifo_pointer[3],
               write_fifo_pointer[2],write_fifo_pointer[1],write_fifo_pointer[0]
               }), .wr_clk1 (clk), .wr_ena1 (rx_valid)) ;
    ram_dq_8_1 read_fifo_mem_mem (.wr_data1 ({rb_i_data[7],rb_i_data[6],
               rb_i_data[5],rb_i_data[4],rb_i_data[3],rb_i_data[2],rb_i_data[1],
               rb_i_data[0]}), .rd_data1 ({read_fifo_q[7],read_fifo_q[6],
               read_fifo_q[5],read_fifo_q[4],read_fifo_q[3],read_fifo_q[2],
               read_fifo_q[1],read_fifo_q[0]}), .addr1 ({read_fifo_pointer[7],
               read_fifo_pointer[6],read_fifo_pointer[5],read_fifo_pointer[4],
               read_fifo_pointer[3],read_fifo_pointer[2],read_fifo_pointer[1],
               read_fifo_pointer[0]}), .wr_clk1 (clk), .wr_ena1 (rb_i_valid)) ;
    ram_dq_8_2 u_kirsch_memA_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_o_dataA[7],
               u_kirsch_o_dataA[6],u_kirsch_o_dataA[5],u_kirsch_o_dataA[4],
               u_kirsch_o_dataA[3],u_kirsch_o_dataA[2],u_kirsch_o_dataA[1],
               u_kirsch_o_dataA[0]}), .addr1 ({u_kirsch_address[7],
               u_kirsch_address[6],u_kirsch_address[5],u_kirsch_address[4],
               u_kirsch_address[3],u_kirsch_address[2],u_kirsch_address[1],
               u_kirsch_address[0]}), .wr_clk1 (clk), .wr_ena1 (nx41042z4)) ;
    ram_dq_8_3 u_kirsch_memB_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_o_dataB[7],
               u_kirsch_o_dataB[6],u_kirsch_o_dataB[5],u_kirsch_o_dataB[4],
               u_kirsch_o_dataB[3],u_kirsch_o_dataB[2],u_kirsch_o_dataB[1],
               u_kirsch_o_dataB[0]}), .addr1 ({u_kirsch_address[7],
               u_kirsch_address[6],u_kirsch_address[5],u_kirsch_address[4],
               u_kirsch_address[3],u_kirsch_address[2],u_kirsch_address[1],
               u_kirsch_address[0]}), .wr_clk1 (clk), .wr_ena1 (nx41042z3)) ;
    ram_dq_8_4 u_kirsch_memC_mem (.wr_data1 ({k_i_pixel[7],k_i_pixel[6],
               k_i_pixel[5],k_i_pixel[4],k_i_pixel[3],k_i_pixel[2],k_i_pixel[1],
               k_i_pixel[0]}), .rd_data1 ({u_kirsch_o_dataC[7],
               u_kirsch_o_dataC[6],u_kirsch_o_dataC[5],u_kirsch_o_dataC[4],
               u_kirsch_o_dataC[3],u_kirsch_o_dataC[2],u_kirsch_o_dataC[1],
               u_kirsch_o_dataC[0]}), .addr1 ({u_kirsch_address[7],
               u_kirsch_address[6],u_kirsch_address[5],u_kirsch_address[4],
               u_kirsch_address[3],u_kirsch_address[2],u_kirsch_address[1],
               u_kirsch_address[0]}), .wr_clk1 (clk), .wr_ena1 (nx4443z1)) ;
    TRI led_triBus1_0_ (.out (led[0]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_1_ (.out (led[1]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_2_ (.out (led[2]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_3_ (.out (led[3]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_4_ (.out (led[4]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_5_ (.out (led[5]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_6_ (.out (led[6]), .in (GND), .oe (GND)) ;
    TRI led_triBus1_7_ (.out (led[7]), .in (GND), .oe (GND)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_6_ (.out (seg7_data[6]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4)) ;
    TRI u_seg7_u_dual_seg7_o_char_triBus3_5_ (.out (seg7_data[5]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2)) ;
    TRI u_seg7_u_dual_seg7_ix36127z20184 (.out (seg7_data[1]), .in (GND), .oe (
        u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0)) ;
    assign incdec_mux_0_dup_113 = ~write_fifo_status_cnt[0] ;
    assign incdec_mux_0_dup_113_dup_777 = ~read_fifo_status_cnt[0] ;
    assign seg7_en[0] = ~seg7_en[1] ;
    assign k_o_data_7_ = ~reset_n ;
    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_1_TE_rtlcGen0 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_5_TE_rtlcGen2 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2 ;
    assign u_seg7_u_dual_seg7_not_o_char_rtlc6_o_char_6_TE_rtlcGen4 = ~
    u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4 ;
    assign uart_tx = ~nx62197z1 ;
    assign NOT_GND = ~GND ;
    assign NOT_rb_rd_en_delayed = ~rb_rd_en_delayed ;
    assign u_uart_Rx_r = ~nx12790z3 ;
    assign NOT_uart_rx = ~uart_rx ;
    assign u_uart_RxFSM[0] = ~nx64683z2 ;
    fiftyfivenm_lcell_comb ix2_fadd (.combout (inc_d_0_), .cout (nx27063z1), .dataa (
                           reset_count[0]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam ix2_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (inc_d_1_), .cout (nx39256z1), .dataa (
                           reset_count[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx27063z1)) ;
                           defparam ix6_fadd.lut_mask = 16'h5aa0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (inc_d_2_), .cout (nx57428z1), .dataa (
                           reset_count[2]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx39256z1)) ;
                           defparam ix10_fadd.lut_mask = 16'h5aa0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (inc_d_3_), .cout (nx23040z1), .dataa (
                           reset_count[3]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx57428z1)) ;
                           defparam ix14_fadd.lut_mask = 16'h5aa0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix18_fadd (.combout (inc_d_4_), .cout (nx58827z1), .dataa (
                           reset_count[4]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx23040z1)) ;
                           defparam ix18_fadd.lut_mask = 16'h5aa0;
                           defparam ix18_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (inc_d_5_), .cout (nx37857z1), .dataa (
                           reset_count[5]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58827z1)) ;
                           defparam ix22_fadd.lut_mask = 16'h5aa0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix26_fadd (.combout (inc_d_6_), .cout (nx41995z1), .dataa (
                           reset_count[6]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx37857z1)) ;
                           defparam ix26_fadd.lut_mask = 16'h5aa0;
                           defparam ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix578_fadd (.combout (inc_d_7_), .cout (nx8364z1), .dataa (
                           reset_count[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx41995z1)) ;
                           defparam ix578_fadd.lut_mask = 16'h5aa0;
                           defparam ix578_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix580_fadd (.combout (inc_d_8_), .cout (nx9072z1), .dataa (
                           reset_count[8]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx8364z1)) ;
                           defparam ix580_fadd.lut_mask = 16'h5aa0;
                           defparam ix580_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix49_fadd (.combout (inc_d_9_), .cout (nx40977z1), .dataa (
                           reset_count[9]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx9072z1)) ;
                           defparam ix49_fadd.lut_mask = 16'h5aa0;
                           defparam ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix51_fadd (.combout (inc_d_10_), .dataa (
                           reset_count[10]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx40977z1)) ;
                           defparam ix51_fadd.lut_mask = 16'h5a5a;
                           defparam ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix584_fadd (.combout (inc_d_0__dup_602), .cout (
                           nx38358z1), .dataa (write_fifo_wr_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix584_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix586_fadd (.combout (inc_d_1__dup_604), .cout (
                           nx53932z1), .dataa (write_fifo_wr_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx38358z1)
                           ) ;
                           defparam ix586_fadd.lut_mask = 16'h5aa0;
                           defparam ix586_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix588_fadd (.combout (inc_d_2__dup_606), .cout (
                           nx43509z1), .dataa (write_fifo_wr_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx53932z1)
                           ) ;
                           defparam ix588_fadd.lut_mask = 16'h5aa0;
                           defparam ix588_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix590_fadd (.combout (inc_d_3__dup_608), .cout (
                           nx27935z1), .dataa (write_fifo_wr_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx43509z1)
                           ) ;
                           defparam ix590_fadd.lut_mask = 16'h5aa0;
                           defparam ix590_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix592_fadd (.combout (inc_d_4__dup_610), .cout (
                           nx12361z1), .dataa (write_fifo_wr_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx27935z1)
                           ) ;
                           defparam ix592_fadd.lut_mask = 16'h5aa0;
                           defparam ix592_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix594_fadd (.combout (inc_d_5__dup_612), .cout (
                           nx62323z1), .dataa (write_fifo_wr_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx12361z1)
                           ) ;
                           defparam ix594_fadd.lut_mask = 16'h5aa0;
                           defparam ix594_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix596_fadd (.combout (inc_d_6__dup_614), .cout (
                           nx11000z1), .dataa (write_fifo_wr_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx62323z1)
                           ) ;
                           defparam ix596_fadd.lut_mask = 16'h5aa0;
                           defparam ix596_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix597_fadd (.combout (inc_d_7__dup_616), .dataa (
                           write_fifo_wr_pointer[7]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx11000z1)) ;
                           defparam ix597_fadd.lut_mask = 16'h5a5a;
                           defparam ix597_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix619_fadd (.combout (inc_d_0__dup_638), .cout (
                           nx35880z1), .dataa (write_fifo_rd_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix619_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix621_fadd (.combout (inc_d_1__dup_640), .cout (
                           nx51454z1), .dataa (write_fifo_rd_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx35880z1)
                           ) ;
                           defparam ix621_fadd.lut_mask = 16'h5aa0;
                           defparam ix621_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix623_fadd (.combout (inc_d_2__dup_642), .cout (
                           nx1492z1), .dataa (write_fifo_rd_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx51454z1)
                           ) ;
                           defparam ix623_fadd.lut_mask = 16'h5aa0;
                           defparam ix623_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix625_fadd (.combout (inc_d_3__dup_644), .cout (
                           nx17066z1), .dataa (write_fifo_rd_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx1492z1)
                           ) ;
                           defparam ix625_fadd.lut_mask = 16'h5aa0;
                           defparam ix625_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix627_fadd (.combout (inc_d_4__dup_646), .cout (
                           nx32896z1), .dataa (write_fifo_rd_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx17066z1)
                           ) ;
                           defparam ix627_fadd.lut_mask = 16'h5aa0;
                           defparam ix627_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix629_fadd (.combout (inc_d_5__dup_648), .cout (
                           nx64801z1), .dataa (write_fifo_rd_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx32896z1)
                           ) ;
                           defparam ix629_fadd.lut_mask = 16'h5aa0;
                           defparam ix629_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix631_fadd (.combout (inc_d_6__dup_650), .cout (
                           nx57014z1), .dataa (write_fifo_rd_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx64801z1)
                           ) ;
                           defparam ix631_fadd.lut_mask = 16'h5aa0;
                           defparam ix631_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix632_fadd (.combout (inc_d_7__dup_652), .dataa (
                           write_fifo_rd_pointer[7]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx57014z1)) ;
                           defparam ix632_fadd.lut_mask = 16'h5a5a;
                           defparam ix632_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix684_fadd (.combout (inc_d_0__dup_703), .cout (
                           nx4983z1), .dataa (read_fifo_wr_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix684_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix686_fadd (.combout (inc_d_1__dup_705), .cout (
                           nx10591z1), .dataa (read_fifo_wr_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx4983z1)
                           ) ;
                           defparam ix686_fadd.lut_mask = 16'h5aa0;
                           defparam ix686_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix688_fadd (.combout (inc_d_2__dup_707), .cout (
                           nx44222z1), .dataa (read_fifo_wr_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx10591z1)
                           ) ;
                           defparam ix688_fadd.lut_mask = 16'h5aa0;
                           defparam ix688_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix690_fadd (.combout (inc_d_3__dup_709), .cout (
                           nx59796z1), .dataa (read_fifo_wr_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx44222z1)
                           ) ;
                           defparam ix690_fadd.lut_mask = 16'h5aa0;
                           defparam ix690_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix692_fadd (.combout (inc_d_4__dup_711), .cout (
                           nx55702z1), .dataa (read_fifo_wr_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx59796z1)
                           ) ;
                           defparam ix692_fadd.lut_mask = 16'h5aa0;
                           defparam ix692_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix694_fadd (.combout (inc_d_5__dup_713), .cout (
                           nx40128z1), .dataa (read_fifo_wr_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx55702z1)
                           ) ;
                           defparam ix694_fadd.lut_mask = 16'h5aa0;
                           defparam ix694_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix696_fadd (.combout (inc_d_6__dup_715), .cout (
                           nx32341z1), .dataa (read_fifo_wr_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx40128z1)
                           ) ;
                           defparam ix696_fadd.lut_mask = 16'h5aa0;
                           defparam ix696_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix697_fadd (.combout (inc_d_7__dup_717), .dataa (
                           read_fifo_wr_pointer[7]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR), .cin (nx32341z1)) ;
                           defparam ix697_fadd.lut_mask = 16'h5a5a;
                           defparam ix697_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix720_fadd (.combout (inc_d_0__dup_739), .cout (
                           nx65210z1), .dataa (read_fifo_rd_pointer[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix720_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix722_fadd (.combout (inc_d_1__dup_741), .cout (
                           nx49636z1), .dataa (read_fifo_rd_pointer[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx65210z1)
                           ) ;
                           defparam ix722_fadd.lut_mask = 16'h5aa0;
                           defparam ix722_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix724_fadd (.combout (inc_d_2__dup_743), .cout (
                           nx31474z1), .dataa (read_fifo_rd_pointer[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx49636z1)
                           ) ;
                           defparam ix724_fadd.lut_mask = 16'h5aa0;
                           defparam ix724_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix726_fadd (.combout (inc_d_3__dup_745), .cout (
                           nx47048z1), .dataa (read_fifo_rd_pointer[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx31474z1)
                           ) ;
                           defparam ix726_fadd.lut_mask = 16'h5aa0;
                           defparam ix726_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix728_fadd (.combout (inc_d_4__dup_747), .cout (
                           nx15143z1), .dataa (read_fifo_rd_pointer[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx47048z1)
                           ) ;
                           defparam ix728_fadd.lut_mask = 16'h5aa0;
                           defparam ix728_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix730_fadd (.combout (inc_d_5__dup_749), .cout (
                           nx34819z1), .dataa (read_fifo_rd_pointer[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx15143z1)
                           ) ;
                           defparam ix730_fadd.lut_mask = 16'h5aa0;
                           defparam ix730_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix732_fadd (.combout (inc_d_6__dup_751), .cout (
                           nx27032z1), .dataa (read_fifo_rd_pointer[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx34819z1)
                           ) ;
                           defparam ix732_fadd.lut_mask = 16'h5aa0;
                           defparam ix732_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix733_fadd (.combout (inc_d_7__dup_753), .dataa (
                           read_fifo_rd_pointer[7]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR), .cin (nx27032z1)) ;
                           defparam ix733_fadd.lut_mask = 16'h5a5a;
                           defparam ix733_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix795_fadd (.combout (inc_d_0__dup_814), .cout (
                           nx55390z2), .dataa (nx39816z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix795_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix797_fadd (.combout (inc_d_1__dup_815), .cout (
                           nx60108z2), .dataa (nx55390z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx55390z2)) ;
                           defparam ix797_fadd.lut_mask = 16'h5aa0;
                           defparam ix797_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix799_fadd (.combout (inc_d_2__dup_816), .cout (
                           nx46048z2), .dataa (nx60108z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx60108z2)) ;
                           defparam ix799_fadd.lut_mask = 16'h5aa0;
                           defparam ix799_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix801_fadd (.combout (inc_d_3__dup_817), .cout (
                           nx35062z2), .dataa (nx46048z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx46048z2)) ;
                           defparam ix801_fadd.lut_mask = 16'h5aa0;
                           defparam ix801_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix803_fadd (.combout (inc_d_4__dup_818), .cout (
                           nx50636z2), .dataa (nx35062z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx35062z2)) ;
                           defparam ix803_fadd.lut_mask = 16'h5aa0;
                           defparam ix803_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix805_fadd (.combout (inc_d_5__dup_819), .cout (
                           nx674z2), .dataa (nx50636z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx50636z2)) ;
                           defparam ix805_fadd.lut_mask = 16'h5aa0;
                           defparam ix805_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix807_fadd (.combout (inc_d_6__dup_820), .cout (
                           nx49288z2), .dataa (nx674z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx674z2)) ;
                           defparam ix807_fadd.lut_mask = 16'h5aa0;
                           defparam ix807_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix809_fadd (.combout (inc_d_7__dup_821), .cout (
                           nx55707z2), .dataa (nx49288z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx49288z2)) ;
                           defparam ix809_fadd.lut_mask = 16'h5aa0;
                           defparam ix809_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix55_fadd (.combout (inc_d_8__dup_822), .cout (
                           nx44217z2), .dataa (nx55707z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx55707z2)) ;
                           defparam ix55_fadd.lut_mask = 16'h5aa0;
                           defparam ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix59_fadd (.combout (inc_d_9__dup_823), .cout (
                           nx10586z1), .dataa (nx44217z1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx44217z2)) ;
                           defparam ix59_fadd.lut_mask = 16'h5aa0;
                           defparam ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix61_fadd (.combout (inc_d_10__dup_824), .dataa (
                           seg7_en[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx10586z1)) ;
                           defparam ix61_fadd.lut_mask = 16'h5a5a;
                           defparam ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix830_fadd (.combout (inc_d_0__dup_862), .cout (
                           nx52912z1), .dataa (u_uart_RxDiv[0]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR)) ;
                           defparam ix830_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix832_fadd (.combout (inc_d_1__dup_864), .cout (
                           nx2950z1), .dataa (u_uart_RxDiv[1]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx52912z1)) ;
                           defparam ix832_fadd.lut_mask = 16'h5aa0;
                           defparam ix832_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix834_fadd (.combout (inc_d_2__dup_866), .cout (
                           nx47012z1), .dataa (u_uart_RxDiv[2]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx2950z1)) ;
                           defparam ix834_fadd.lut_mask = 16'h5aa0;
                           defparam ix834_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix836_fadd (.combout (inc_d_3__dup_868), .cout (
                           nx31438z1), .dataa (u_uart_RxDiv[3]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx47012z1)) ;
                           defparam ix836_fadd.lut_mask = 16'h5aa0;
                           defparam ix836_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix838_fadd (.combout (inc_d_4__dup_870), .cout (
                           nx63343z1), .dataa (u_uart_RxDiv[4]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx31438z1)) ;
                           defparam ix838_fadd.lut_mask = 16'h5aa0;
                           defparam ix838_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix840_fadd (.combout (inc_d_5__dup_872), .cout (
                           nx17767z1), .dataa (u_uart_RxDiv[5]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx63343z1)) ;
                           defparam ix840_fadd.lut_mask = 16'h5aa0;
                           defparam ix840_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix842_fadd (.combout (inc_d_6__dup_874), .cout (
                           nx33341z1), .dataa (u_uart_RxDiv[6]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx17767z1)) ;
                           defparam ix842_fadd.lut_mask = 16'h5aa0;
                           defparam ix842_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix844_fadd (.combout (inc_d_7__dup_876), .cout (
                           nx48915z1), .dataa (u_uart_RxDiv[7]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx33341z1)) ;
                           defparam ix844_fadd.lut_mask = 16'h5aa0;
                           defparam ix844_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix846_fadd (.combout (inc_d_8__dup_878), .cout (
                           nx64489z1), .dataa (u_uart_RxDiv[8]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx48915z1)) ;
                           defparam ix846_fadd.lut_mask = 16'h5aa0;
                           defparam ix846_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix848_fadd (.combout (inc_d_9__dup_880), .cout (
                           nx58796z1), .dataa (u_uart_RxDiv[9]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx64489z1)) ;
                           defparam ix848_fadd.lut_mask = 16'h5aa0;
                           defparam ix848_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix849_fadd (.combout (inc_d_10__dup_882), .dataa (
                           u_uart_RxDiv[10]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58796z1)) ;
                           defparam ix849_fadd.lut_mask = 16'h5a5a;
                           defparam ix849_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix884_fadd (.combout (inc_d_0__dup_915), .cout (
                           nx39407z1), .dataa (u_uart_TxDiv[0]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR)) ;
                           defparam ix884_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix886_fadd (.combout (inc_d_1__dup_917), .cout (
                           nx10555z1), .dataa (u_uart_TxDiv[1]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx39407z1)) ;
                           defparam ix886_fadd.lut_mask = 16'h5aa0;
                           defparam ix886_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix888_fadd (.combout (inc_d_2__dup_919), .cout (
                           nx42460z1), .dataa (u_uart_TxDiv[2]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx10555z1)) ;
                           defparam ix888_fadd.lut_mask = 16'h5aa0;
                           defparam ix888_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix890_fadd (.combout (inc_d_3__dup_921), .cout (
                           nx26886z1), .dataa (u_uart_TxDiv[3]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx42460z1)) ;
                           defparam ix890_fadd.lut_mask = 16'h5aa0;
                           defparam ix890_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix892_fadd (.combout (inc_d_4__dup_923), .cout (
                           nx11312z1), .dataa (u_uart_TxDiv[4]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx26886z1)) ;
                           defparam ix892_fadd.lut_mask = 16'h5aa0;
                           defparam ix892_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix894_fadd (.combout (inc_d_5__dup_925), .cout (
                           nx4262z1), .dataa (u_uart_TxDiv[5]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx11312z1)) ;
                           defparam ix894_fadd.lut_mask = 16'h5aa0;
                           defparam ix894_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix896_fadd (.combout (inc_d_6__dup_927), .cout (
                           nx19836z1), .dataa (u_uart_TxDiv[6]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx4262z1)) ;
                           defparam ix896_fadd.lut_mask = 16'h5aa0;
                           defparam ix896_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix898_fadd (.combout (inc_d_7__dup_929), .cout (
                           nx31640z1), .dataa (u_uart_TxDiv[7]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx19836z1)) ;
                           defparam ix898_fadd.lut_mask = 16'h5aa0;
                           defparam ix898_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix900_fadd (.combout (inc_d_8__dup_931), .cout (
                           nx47250z1), .dataa (u_uart_TxDiv[8]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx31640z1)) ;
                           defparam ix900_fadd.lut_mask = 16'h5aa0;
                           defparam ix900_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix38_fadd (.combout (inc_d_9__dup_933), .cout (
                           nx16066z1), .dataa (u_uart_TxDiv[9]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx47250z1)) ;
                           defparam ix38_fadd.lut_mask = 16'h5aa0;
                           defparam ix38_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix902_fadd (.combout (inc_d_10__dup_935), .cout (
                           nx8279z1), .dataa (u_uart_TxDiv[10]), .datab (1'b1), 
                           .datac (1'b1), .datad (PWR), .cin (nx16066z1)) ;
                           defparam ix902_fadd.lut_mask = 16'h5aa0;
                           defparam ix902_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix903_fadd (.combout (inc_d_11_), .dataa (
                           u_uart_TxDiv[11]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx8279z1)) ;
                           defparam ix903_fadd.lut_mask = 16'h5a5a;
                           defparam ix903_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix975_fadd (.combout (inc_d_0__dup_997), .cout (
                           nx38998z1), .dataa (u_kirsch_row_count[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix975_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix977_fadd (.combout (inc_d_1__dup_999), .cout (
                           nx10964z1), .dataa (u_kirsch_row_count[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx38998z1)
                           ) ;
                           defparam ix977_fadd.lut_mask = 16'h5aa0;
                           defparam ix977_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix979_fadd (.combout (inc_d_2__dup_1001), .cout (
                           nx42869z1), .dataa (u_kirsch_row_count[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx10964z1)
                           ) ;
                           defparam ix979_fadd.lut_mask = 16'h5aa0;
                           defparam ix979_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix981_fadd (.combout (inc_d_3__dup_1003), .cout (
                           nx27295z1), .dataa (u_kirsch_row_count[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx42869z1)
                           ) ;
                           defparam ix981_fadd.lut_mask = 16'h5aa0;
                           defparam ix981_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix983_fadd (.combout (inc_d_4__dup_1005), .cout (
                           nx53815z1), .dataa (u_kirsch_row_count[4]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx27295z1)
                           ) ;
                           defparam ix983_fadd.lut_mask = 16'h5aa0;
                           defparam ix983_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix985_fadd (.combout (inc_d_5__dup_1007), .cout (
                           nx3853z1), .dataa (u_kirsch_row_count[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx53815z1)
                           ) ;
                           defparam ix985_fadd.lut_mask = 16'h5aa0;
                           defparam ix985_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix987_fadd (.combout (inc_d_6__dup_1009), .cout (
                           nx11640z1), .dataa (u_kirsch_row_count[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx3853z1)
                           ) ;
                           defparam ix987_fadd.lut_mask = 16'h5aa0;
                           defparam ix987_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix988_fadd (.combout (inc_d_7__dup_1011), .dataa (
                           u_kirsch_row_count[7]), .datab (1'b1), .datac (1'b1)
                           , .datad (PWR), .cin (nx11640z1)) ;
                           defparam ix988_fadd.lut_mask = 16'h5a5a;
                           defparam ix988_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1015_fadd (.combout (inc_d_0__dup_1037), .cout (
                           nx16836z1), .dataa (u_kirsch_address[0]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR)) ;
                           defparam ix1015_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix1017_fadd (.combout (inc_d_1__dup_1039), .cout (
                           nx64274z1), .dataa (u_kirsch_address[1]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx16836z1)
                           ) ;
                           defparam ix1017_fadd.lut_mask = 16'h5aa0;
                           defparam ix1017_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1019_fadd (.combout (inc_d_2__dup_1041), .cout (
                           nx32369z1), .dataa (u_kirsch_address[2]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx64274z1)
                           ) ;
                           defparam ix1019_fadd.lut_mask = 16'h5aa0;
                           defparam ix1019_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1021_fadd (.combout (inc_d_3__dup_1043), .cout (
                           nx47943z1), .dataa (u_kirsch_address[3]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx32369z1)
                           ) ;
                           defparam ix1021_fadd.lut_mask = 16'h5aa0;
                           defparam ix1021_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1023_fadd (.combout (inc_d_4__dup_1045), .cout (
                           nx2019z1), .dataa (u_kirsch_address[4]), .datab (1'b1
                           ), .datac (1'b1), .datad (PWR), .cin (nx47943z1)) ;
                           defparam ix1023_fadd.lut_mask = 16'h5aa0;
                           defparam ix1023_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1025_fadd (.combout (inc_d_5__dup_1047), .cout (
                           nx51981z1), .dataa (u_kirsch_address[5]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx2019z1)
                           ) ;
                           defparam ix1025_fadd.lut_mask = 16'h5aa0;
                           defparam ix1025_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1027_fadd (.combout (inc_d_6__dup_1049), .cout (
                           nx44194z1), .dataa (u_kirsch_address[6]), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx51981z1)
                           ) ;
                           defparam ix1027_fadd.lut_mask = 16'h5aa0;
                           defparam ix1027_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix1028_fadd (.combout (inc_d_7__dup_1051), .dataa (
                           u_kirsch_address[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx44194z1)) ;
                           defparam ix1028_fadd.lut_mask = 16'h5a5a;
                           defparam ix1028_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix5_fadd (.cout (nx58387z1), .dataa (
                           read_fifo_status_cnt[0]), .datab (1'b1), .datac (1'b1
                           ), .datad (PWR)) ;
                           defparam ix5_fadd.lut_mask = 16'h00aa;
    fiftyfivenm_lcell_comb ix758_fadd (.combout (incdec_mux_1_dup_114_dup_779), 
                           .cout (nx24756z1), .dataa (read_fifo_status_cnt[1]), 
                           .datab (nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx58387z1)) ;
                           defparam ix758_fadd.lut_mask = 16'h96e8;
                           defparam ix758_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix760_fadd (.combout (incdec_mux_2_dup_115_dup_781), 
                           .cout (nx9182z2), .dataa (read_fifo_status_cnt[2]), .datab (
                           nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx24756z1)) ;
                           defparam ix760_fadd.lut_mask = 16'h96e8;
                           defparam ix760_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix762_fadd (.combout (incdec_mux_3_dup_116_dup_783), 
                           .cout (nx59144z1), .dataa (read_fifo_status_cnt[3]), 
                           .datab (nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx9182z2)) ;
                           defparam ix762_fadd.lut_mask = 16'h96e8;
                           defparam ix762_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix764_fadd (.combout (incdec_mux_4_dup_117_dup_785), 
                           .cout (nx21966z1), .dataa (read_fifo_status_cnt[4]), 
                           .datab (nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx59144z1)) ;
                           defparam ix764_fadd.lut_mask = 16'h96e8;
                           defparam ix764_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix766_fadd (.combout (incdec_mux_5_dup_118_dup_787), 
                           .cout (nx37540z1), .dataa (read_fifo_status_cnt[5]), 
                           .datab (nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx21966z1)) ;
                           defparam ix766_fadd.lut_mask = 16'h96e8;
                           defparam ix766_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix768_fadd (.combout (incdec_mux_6_dup_119_dup_789), 
                           .cout (nx5635z1), .dataa (read_fifo_status_cnt[6]), .datab (
                           nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx37540z1)) ;
                           defparam ix768_fadd.lut_mask = 16'h96e8;
                           defparam ix768_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix770_fadd (.combout (incdec_mux_7_dup_120_dup_791), 
                           .cout (nx52114z1), .dataa (read_fifo_status_cnt[7]), 
                           .datab (nx9182z1), .datac (1'b1), .datad (PWR), .cin (
                           nx5635z1)) ;
                           defparam ix770_fadd.lut_mask = 16'h96e8;
                           defparam ix770_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix771_fadd (.combout (incdec_mux_8_dup_121_dup_793), 
                           .dataa (read_fifo_status_cnt[8]), .datab (nx9182z1), 
                           .datac (1'b1), .datad (PWR), .cin (nx52114z1)) ;
                           defparam ix771_fadd.lut_mask = 16'h9696;
                           defparam ix771_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix7_fadd (.cout (nx30620z1), .dataa (
                           write_fifo_status_cnt[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix7_fadd.lut_mask = 16'h00aa;
    fiftyfivenm_lcell_comb ix656_fadd (.combout (incdec_mux_1_dup_114), .cout (
                           nx15046z1), .dataa (write_fifo_status_cnt[1]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx30620z1)) ;
                           defparam ix656_fadd.lut_mask = 16'h96e8;
                           defparam ix656_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix658_fadd (.combout (incdec_mux_2_dup_115), .cout (
                           nx46951z1), .dataa (write_fifo_status_cnt[2]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx15046z1)) ;
                           defparam ix658_fadd.lut_mask = 16'h96e8;
                           defparam ix658_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix660_fadd (.combout (incdec_mux_3_dup_116), .cout (
                           nx34159z1), .dataa (write_fifo_status_cnt[3]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx46951z1)) ;
                           defparam ix660_fadd.lut_mask = 16'h96e8;
                           defparam ix660_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix662_fadd (.combout (incdec_mux_4_dup_117), .cout (
                           nx49733z1), .dataa (write_fifo_status_cnt[4]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx34159z1)) ;
                           defparam ix662_fadd.lut_mask = 16'h96e8;
                           defparam ix662_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix664_fadd (.combout (incdec_mux_5_dup_118), .cout (
                           nx65307z1), .dataa (write_fifo_status_cnt[5]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx49733z1)) ;
                           defparam ix664_fadd.lut_mask = 16'h96e8;
                           defparam ix664_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix666_fadd (.combout (incdec_mux_6_dup_119), .cout (
                           nx50191z1), .dataa (write_fifo_status_cnt[6]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx65307z1)) ;
                           defparam ix666_fadd.lut_mask = 16'h96e8;
                           defparam ix666_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix668_fadd (.combout (incdec_mux_7_dup_120), .cout (
                           nx42404z1), .dataa (write_fifo_status_cnt[7]), .datab (
                           nx7605z1), .datac (1'b1), .datad (PWR), .cin (
                           nx50191z1)) ;
                           defparam ix668_fadd.lut_mask = 16'h96e8;
                           defparam ix668_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix669_fadd (.combout (incdec_mux_8_dup_121), .dataa (
                           write_fifo_status_cnt[8]), .datab (nx7605z1), .datac (
                           1'b1), .datad (PWR), .cin (nx42404z1)) ;
                           defparam ix669_fadd.lut_mask = 16'h9696;
                           defparam ix669_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix21_fadd (.cout (nx46608z1)
                           , .dataa (u_kirsch_i_3[0]), .datab (u_kirsch_i_2[0])
                           , .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix21_fadd.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix23_fadd (.cout (nx34502z1)
                           , .dataa (u_kirsch_i_3[1]), .datab (u_kirsch_i_2[1])
                           , .datac (1'b1), .datad (PWR), .cin (nx46608z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix23_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix23_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix25_fadd (.cout (nx50076z1)
                           , .dataa (u_kirsch_i_3[2]), .datab (u_kirsch_i_2[2])
                           , .datac (1'b1), .datad (PWR), .cin (nx34502z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix25_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix25_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix27_fadd (.cout (nx114z1), 
                           .dataa (u_kirsch_i_3[3]), .datab (u_kirsch_i_2[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx50076z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix27_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix27_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix29_fadd (.cout (nx31791z1)
                           , .dataa (u_kirsch_i_3[4]), .datab (u_kirsch_i_2[4])
                           , .datac (1'b1), .datad (PWR), .cin (nx114z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix29_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix29_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix31_fadd (.cout (nx16217z1)
                           , .dataa (u_kirsch_i_3[5]), .datab (u_kirsch_i_2[5])
                           , .datac (1'b1), .datad (PWR), .cin (nx31791z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix31_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix31_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix33_fadd (.cout (nx643z1), 
                           .dataa (u_kirsch_i_3[6]), .datab (u_kirsch_i_2[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx16217z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix33_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix33_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix35_fadd (.cout (nx26313z1)
                           , .dataa (u_kirsch_i_3[7]), .datab (u_kirsch_i_2[7])
                           , .datac (1'b1), .datad (PWR), .cin (nx643z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix25_fadd (.cout (nx28806z1)
                           , .dataa (u_kirsch_r_add1_a[0]), .datab (
                           u_kirsch_r_max1[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix25_fadd.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix27_fadd (.cout (nx44380z1)
                           , .dataa (u_kirsch_r_add1_a[1]), .datab (
                           u_kirsch_r_max1[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx28806z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix27_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix27_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix29_fadd (.cout (nx12475z1)
                           , .dataa (u_kirsch_r_add1_a[2]), .datab (
                           u_kirsch_r_max1[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx44380z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix29_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix29_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix31_fadd (.cout (nx37487z1)
                           , .dataa (u_kirsch_r_add1_a[3]), .datab (
                           u_kirsch_r_max1[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx12475z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix31_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix31_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix33_fadd (.cout (nx21913z1)
                           , .dataa (u_kirsch_r_add1_a[4]), .datab (
                           u_kirsch_r_max1[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx37487z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix33_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix33_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix35_fadd (.cout (nx6339z1)
                           , .dataa (u_kirsch_r_add1_a[5]), .datab (
                           u_kirsch_r_max1[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx21913z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix35_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix35_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix37_fadd (.cout (nx56301z1)
                           , .dataa (u_kirsch_r_add1_a[6]), .datab (
                           u_kirsch_r_max1[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx6339z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix37_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix37_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix39_fadd (.cout (nx42866z1)
                           , .dataa (u_kirsch_r_add1_a[7]), .datab (
                           u_kirsch_r_max1[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx56301z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix39_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix41_fadd (.cout (nx58440z1)
                           , .dataa (u_kirsch_r_add1_a[8]), .datab (
                           u_kirsch_r_max1[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx42866z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix41_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix43_fadd (.cout (nx1252z1)
                           , .dataa (u_kirsch_r_add1_a[9]), .datab (
                           u_kirsch_r_max1[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx58440z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix25_fadd (.cout (nx26840z1)
                           , .dataa (u_kirsch_r_add1_a[0]), .datab (
                           u_kirsch_r_add1_b[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix25_fadd.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix27_fadd (.cout (nx54270z1)
                           , .dataa (u_kirsch_r_add1_a[1]), .datab (
                           u_kirsch_r_add1_b[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx26840z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix27_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix27_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix29_fadd (.cout (nx22365z1)
                           , .dataa (u_kirsch_r_add1_a[2]), .datab (
                           u_kirsch_r_add1_b[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx54270z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix29_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix29_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix31_fadd (.cout (nx37939z1)
                           , .dataa (u_kirsch_r_add1_a[3]), .datab (
                           u_kirsch_r_add1_b[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx22365z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix31_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix31_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix33_fadd (.cout (nx12023z1)
                           , .dataa (u_kirsch_r_add1_a[4]), .datab (
                           u_kirsch_r_add1_b[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx37939z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix33_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix33_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix35_fadd (.cout (nx61985z1)
                           , .dataa (u_kirsch_r_add1_a[5]), .datab (
                           u_kirsch_r_add1_b[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx12023z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix35_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix35_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix37_fadd (.cout (nx46411z1)
                           , .dataa (u_kirsch_r_add1_a[6]), .datab (
                           u_kirsch_r_add1_b[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx61985z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix37_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix37_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix39_fadd (.cout (nx12780z1)
                           , .dataa (u_kirsch_r_add1_a[7]), .datab (
                           u_kirsch_r_add1_b[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx46411z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix39_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix41_fadd (.cout (nx2794z1)
                           , .dataa (u_kirsch_r_add1_a[8]), .datab (
                           u_kirsch_r_add1_b[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx12780z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix41_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_rtlc5_215_gt_26_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix43_fadd (.cout (nx6502z1)
                           , .dataa (u_kirsch_r_add1_a[9]), .datab (
                           u_kirsch_r_add1_b[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx2794z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd.lut_mask = 16'h004d;
                           defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix35_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[0]), .cout (nx14816z1), .dataa (
                           u_kirsch_i_0[0]), .datab (u_kirsch_i_1[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix35_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix39_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[1]), .cout (nx1515z1), .dataa (
                           u_kirsch_i_0[1]), .datab (u_kirsch_i_1[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx14816z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix39_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix43_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[2]), .cout (nx29633z1), .dataa (
                           u_kirsch_i_0[2]), .datab (u_kirsch_i_1[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx1515z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix43_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix47_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[3]), .cout (nx13302z1), .dataa (
                           u_kirsch_i_0[3]), .datab (u_kirsch_i_1[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx29633z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix47_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix47_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix51_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[4]), .cout (nx21086z1), .dataa (
                           u_kirsch_i_0[4]), .datab (u_kirsch_i_1[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx13302z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix51_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix55_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[5]), .cout (nx55474z1), .dataa (
                           u_kirsch_i_0[5]), .datab (u_kirsch_i_1[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx21086z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix55_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix59_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[6]), .cout (nx59267z1), .dataa (
                           u_kirsch_i_0[6]), .datab (u_kirsch_i_1[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx55474z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix59_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix63_fadd (.combout (
                           u_kirsch_r_add0_a_0n1s1[7]), .cout (nx51089z1), .dataa (
                           u_kirsch_i_0[7]), .datab (u_kirsch_i_1[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx59267z1)) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix37_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[0]), .cout (nx53938z1), .dataa (
                           u_kirsch_r_max0[0]), .datab (u_kirsch_r_add0_a[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix37_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix41_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[1]), .cout (nx42746z1), .dataa (
                           u_kirsch_r_max0[1]), .datab (u_kirsch_r_add0_a[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx53938z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix41_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix45_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[2]), .cout (nx57178z1), .dataa (
                           u_kirsch_r_max0[2]), .datab (u_kirsch_r_add0_a[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx42746z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix45_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix45_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix49_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[3]), .cout (nx7973z1), .dataa (
                           u_kirsch_r_max0[3]), .datab (u_kirsch_r_add0_a[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx57178z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix49_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix53_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[4]), .cout (nx23175z1), .dataa (
                           u_kirsch_r_max0[4]), .datab (u_kirsch_r_add0_a[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx7973z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix53_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix53_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix57_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[5]), .cout (nx6844z1), .dataa (
                           u_kirsch_r_max0[5]), .datab (u_kirsch_r_add0_a[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx23175z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix57_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix57_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix61_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[6]), .cout (nx27544z1), .dataa (
                           u_kirsch_r_max0[6]), .datab (u_kirsch_r_add0_a[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx6844z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix61_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix65_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[7]), .cout (nx3604z1), .dataa (
                           u_kirsch_r_max0[7]), .datab (u_kirsch_r_add0_a[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx27544z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix65_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix65_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix69_fadd (.combout (
                           u_kirsch_r_add1_a_3n1s1[8]), .cout (nx24080z1), .dataa (
                           u_kirsch_r_add0_a[8]), .datab (1'b1), .datac (1'b1), 
                           .datad (PWR), .cin (nx3604z1)) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd.lut_mask = 16'h5aa0;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix22_fadd (.cout (nx13358z1
                           ), .dataa (u_kirsch_r_add2[1]), .datab (
                           u_kirsch_r_add2[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix22_fadd.lut_mask = 16'h0011;
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix24_fadd (.cout (nx36604z1
                           ), .dataa (u_kirsch_r_add2[2]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx13358z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix24_fadd.lut_mask = 16'h0050;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix24_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix26_fadd (.cout (nx21030z1
                           ), .dataa (u_kirsch_r_max1[0]), .datab (
                           u_kirsch_r_add2[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx36604z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix26_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix28_fadd (.cout (nx52935z1
                           ), .dataa (u_kirsch_r_max1[1]), .datab (
                           u_kirsch_r_add2[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx21030z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix28_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix28_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix30_fadd (.cout (nx37361z1
                           ), .dataa (u_kirsch_r_max1[2]), .datab (
                           u_kirsch_r_add2[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx52935z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix30_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix30_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix32_fadd (.cout (nx59323z1
                           ), .dataa (u_kirsch_r_max1[3]), .datab (
                           u_kirsch_r_add2[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx37361z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix32_fadd.lut_mask = 16'h00b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix32_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix36_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_7_), .cout (nx22544z1), .dataa (
                           u_kirsch_r_max1[4]), .datab (u_kirsch_r_add2[7]), .datac (
                           1'b1), .datad (PWR), .cin (nx59323z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix36_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix36_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix40_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_8_), .cout (nx56932z1), .dataa (
                           u_kirsch_r_max1[5]), .datab (u_kirsch_r_add2[8]), .datac (
                           1'b1), .datad (PWR), .cin (nx22544z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix40_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix40_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix44_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_9_), .cout (nx39752z1), .dataa (
                           u_kirsch_r_max1[6]), .datab (u_kirsch_r_add2[9]), .datac (
                           1'b1), .datad (PWR), .cin (nx56932z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix44_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix44_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix48_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_10_), .cout (nx23421z3), .dataa (
                           u_kirsch_r_max1[7]), .datab (u_kirsch_r_add2[10]), .datac (
                           1'b1), .datad (PWR), .cin (nx39752z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix48_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix52_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_11_), .cout (nx10967z1), .dataa (
                           u_kirsch_r_max1[8]), .datab (u_kirsch_r_add2[11]), .datac (
                           1'b1), .datad (PWR), .cin (nx23421z3)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix52_fadd.lut_mask = 16'h69b2;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix56_fadd (.combout (
                           u_kirsch_r_sub0_6n1s1_12_), .cout (nx21429z1), .dataa (
                           u_kirsch_r_max1[9]), .datab (u_kirsch_r_add2[12]), .datac (
                           1'b1), .datad (PWR), .cin (nx10967z1)) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd.lut_mask = 16'h694d;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix51_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[0]), .cout (nx52980z1), .dataa (
                           nx38950z2), .datab (u_kirsch_r_add2_4n1s1f1[0]), .datac (
                           1'b1), .datad (PWR), .cin (u_kirsch_r_add0_a[0])) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix51_fadd.lut_mask = 16'h9c40;
                           defparam u_kirsch_r_add2_add13_4i1_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix55_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[1]), .cout (nx21832z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[1]), .datab (
                           u_kirsch_r_add2_4n1s1f2[1]), .datac (1'b1), .datad (
                           PWR), .cin (nx52980z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix55_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix59_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[2]), .cout (nx27373z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[2]), .datab (
                           u_kirsch_r_add2_4n1s1f2[2]), .datac (1'b1), .datad (
                           PWR), .cin (nx21832z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix59_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix63_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[3]), .cout (nx58521z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[3]), .datab (
                           u_kirsch_r_add2_4n1s1f2[3]), .datac (1'b1), .datad (
                           PWR), .cin (nx27373z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix63_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix67_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[4]), .cout (nx23346z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[4]), .datab (
                           u_kirsch_r_add2_4n1s1f2[4]), .datac (1'b1), .datad (
                           PWR), .cin (nx58521z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix67_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix67_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix71_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[5]), .cout (nx7802z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[5]), .datab (
                           u_kirsch_r_add2_4n1s1f2[5]), .datac (1'b1), .datad (
                           PWR), .cin (nx23346z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix71_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix71_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix75_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[6]), .cout (nx38950z5), .dataa (
                           u_kirsch_r_add2_4n1s1f1[6]), .datab (
                           u_kirsch_r_add2_4n1s1f2[6]), .datac (1'b1), .datad (
                           PWR), .cin (nx7802z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix75_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix75_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix79_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[7]), .cout (nx42917z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[7]), .datab (
                           u_kirsch_r_add2_4n1s1f2[7]), .datac (1'b1), .datad (
                           PWR), .cin (nx38950z5)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix79_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix79_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix83_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[8]), .cout (nx11769z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[8]), .datab (
                           u_kirsch_r_add2_4n1s1f2[8]), .datac (1'b1), .datad (
                           PWR), .cin (nx42917z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix83_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix83_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix87_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[9]), .cout (nx37436z1), .dataa (
                           u_kirsch_r_add2_4n1s1f1[9]), .datab (
                           u_kirsch_r_add2_4n1s1f2[9]), .datac (1'b1), .datad (
                           PWR), .cin (nx11769z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix87_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix87_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix91_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[10]), .cout (nx62488z1), .dataa (
                           u_kirsch_r_add2[10]), .datab (
                           u_kirsch_r_add2_4n1s1f2[10]), .datac (1'b1), .datad (
                           PWR), .cin (nx37436z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix91_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix91_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix95_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[11]), .cout (nx46914z1), .dataa (
                           u_kirsch_r_add2[11]), .datab (
                           u_kirsch_r_add2_4n1s1f2[11]), .datac (1'b1), .datad (
                           PWR), .cin (nx62488z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix95_fadd.lut_mask = 16'h96e8;
                           defparam u_kirsch_r_add2_add13_4i1_ix95_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add2_add13_4i1_ix97_fadd (.combout (
                           u_kirsch_r_add2_4n1s1[12]), .dataa (
                           u_kirsch_r_add2[12]), .datab (
                           u_kirsch_r_add2_4n1s1f2[12]), .datac (1'b1), .datad (
                           PWR), .cin (nx46914z1)) ;
                           defparam u_kirsch_r_add2_add13_4i1_ix97_fadd.lut_mask = 16'h9696;
                           defparam u_kirsch_r_add2_add13_4i1_ix97_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf (.combout (
                           nx29221z4), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx6502z1)) ;
                           defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_rtlc5_215_gt_26_ix43_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf (.combout (
                           nx29221z7), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx1252z1)) ;
                           defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_rtlc5_205_gt_25_ix43_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf (.combout (
                           nx40631z1), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx26313z1)) ;
                           defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_rtlc1_110_gt_19_ix35_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf (.combout (
                           u_kirsch_r_sub0_6n1s1_14_), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx21429z1)
                           ) ;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r_sub0_sub13_6i1_ix56_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf (.combout (
                           u_kirsch_r_add1_a_3n1s1[9]), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx24080z1)
                           ) ;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r_add1_a_add9_3i1_ix69_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf (.combout (
                           u_kirsch_r_add0_a_0n1s1[8]), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx51089z1)
                           ) ;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf.lut_mask = 16'hf0f0;
                           defparam u_kirsch_r_add0_a_add8_0i1_ix63_fadd_buf.sum_lutc_input = "cin";
    dffeas u_uart_reg_Tx_Reg_7_ (.q (NOT_u_uart_Tx_Reg_7_), .d (NOT_rb_o_data_6_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_8_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    assign nx24396z1 = ~uart_reset ;
    dffeas u_uart_reg_Tx_Reg_6_ (.q (NOT_u_uart_Tx_Reg_6_), .d (NOT_rb_o_data_5_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_7_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_5_ (.q (NOT_u_uart_Tx_Reg_5_), .d (NOT_rb_o_data_4_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_6_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_4_ (.q (NOT_u_uart_Tx_Reg_4_), .d (NOT_rb_o_data_3_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_5_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_3_ (.q (NOT_u_uart_Tx_Reg_3_), .d (NOT_rb_o_data_2_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_4_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_2_ (.q (NOT_u_uart_Tx_Reg_2_), .d (NOT_rb_o_data_1_
           ), .clk (clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_3_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_uart_reg_Tx_Reg_1_ (.q (nx17862z3), .d (NOT_rb_o_data_0_), .clk (
           clk), .ena (nx18859z1), .clrn (nx24396z1), .prn (PWR), .asdata (
           NOT_u_uart_Tx_Reg_2_), .sclr (1'b0), .sload (u_uart_TxFSM[1])) ;
    dffeas u_kirsch_reg_i_3_7_ (.q (u_kirsch_i_3[7]), .d (nx64381z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_6_ (.q (u_kirsch_i_3[6]), .d (nx65378z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_5_ (.q (u_kirsch_i_3[5]), .d (nx839z1), .clk (clk), 
           .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_4_ (.q (u_kirsch_i_3[4]), .d (nx1836z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_3_ (.q (u_kirsch_i_3[3]), .d (nx2833z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_2_ (.q (u_kirsch_i_3[2]), .d (nx3830z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_1_ (.q (u_kirsch_i_3[1]), .d (nx4827z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_3_0_ (.q (u_kirsch_i_3[0]), .d (nx5824z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_2_7_ (.q (u_kirsch_i_2[7]), .d (nx55962z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[7])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_6_ (.q (u_kirsch_i_2[6]), .d (nx56959z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[6])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_5_ (.q (u_kirsch_i_2[5]), .d (nx57956z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[5])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_4_ (.q (u_kirsch_i_2[4]), .d (nx58953z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[4])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_3_ (.q (u_kirsch_i_2[3]), .d (nx59950z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[3])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_2_ (.q (u_kirsch_i_2[2]), .d (nx60947z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[2])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_1_ (.q (u_kirsch_i_2[1]), .d (nx61944z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[1])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_2_0_ (.q (u_kirsch_i_2[0]), .d (nx62941z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a3[0])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_1_7_ (.q (u_kirsch_i_1[7]), .d (nx17993z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_6_ (.q (u_kirsch_i_1[6]), .d (nx16996z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_5_ (.q (u_kirsch_i_1[5]), .d (nx15999z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_4_ (.q (u_kirsch_i_1[4]), .d (nx15002z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_3_ (.q (u_kirsch_i_1[3]), .d (nx14005z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_2_ (.q (u_kirsch_i_1[2]), .d (nx13008z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_1_ (.q (u_kirsch_i_1[1]), .d (nx12011z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_1_0_ (.q (u_kirsch_i_1[0]), .d (nx11014z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_i_0_7_ (.q (u_kirsch_i_0[7]), .d (nx26412z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[7])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_6_ (.q (u_kirsch_i_0[6]), .d (nx25415z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[6])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_5_ (.q (u_kirsch_i_0[5]), .d (nx24418z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[5])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_4_ (.q (u_kirsch_i_0[4]), .d (nx23421z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[4])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_3_ (.q (u_kirsch_i_0[3]), .d (nx22424z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[3])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_2_ (.q (u_kirsch_i_0[2]), .d (nx21427z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[2])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_1_ (.q (u_kirsch_i_0[1]), .d (nx20430z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[1])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_i_0_0_ (.q (u_kirsch_i_0[0]), .d (nx19433z1), .clk (clk)
           , .ena (nx26412z7), .clrn (PWR), .prn (PWR), .asdata (u_kirsch_a2[0])
           , .sclr (1'b0), .sload (nx25391z3)) ;
    dffeas u_kirsch_reg_d3_7_ (.q (u_kirsch_d3[7]), .d (nx53163z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_6_ (.q (u_kirsch_d3[6]), .d (nx52166z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_5_ (.q (u_kirsch_d3[5]), .d (nx51169z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_4_ (.q (u_kirsch_d3[4]), .d (nx50172z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_3_ (.q (u_kirsch_d3[3]), .d (nx49175z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_2_ (.q (u_kirsch_d3[2]), .d (nx48178z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_1_ (.q (u_kirsch_d3[1]), .d (nx47181z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_d3_0_ (.q (u_kirsch_d3[0]), .d (nx46184z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_7_ (.q (u_kirsch_c3[7]), .d (nx58298z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_6_ (.q (u_kirsch_c3[6]), .d (nx57301z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_5_ (.q (u_kirsch_c3[5]), .d (nx56304z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_4_ (.q (u_kirsch_c3[4]), .d (nx55307z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_3_ (.q (u_kirsch_c3[3]), .d (nx54310z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_2_ (.q (u_kirsch_c3[2]), .d (nx53313z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_1_ (.q (u_kirsch_c3[1]), .d (nx52316z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_c3_0_ (.q (u_kirsch_c3[0]), .d (nx51319z1), .clk (clk), 
           .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_final_3_ (.q (u_kirsch_dir1_final[3]), .d (nx5085z1
           ), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_final_2_ (.q (u_kirsch_dir1_final[2]), .d (nx4088z1
           ), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_final_1_ (.q (u_kirsch_dir1_final[1]), .d (nx3091z1
           ), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_final_0_ (.q (u_kirsch_dir1_final[0]), .d (nx2094z1
           ), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_row_index_0_ (.q (u_kirsch_row_index[0]), .d (nx63596z1)
           , .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_kirsch_reg_row_index_1_ (.q (u_kirsch_row_index[1]), .d (nx62599z1)
           , .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_uart_reg_TxFSM_1_ (.q (u_uart_TxFSM[1]), .d (nx8356z1), .clk (clk)
           , .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_TxFSM_0_ (.q (u_uart_TxFSM[0]), .d (nx7359z1), .clk (clk)
           , .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Tx_Reg_0_ (.q (nx62197z1), .d (nx17862z1), .clk (clk), .ena (
           PWR), .clrn (nx24396z1), .prn (PWR), .asdata (NOT_GND), .sclr (1'b0)
           , .sload (1'b0)) ;
    dffeas reg_wait_for_tx_valid (.q (wait_for_tx_valid), .d (nx64502z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           k_o_data_7_), .sload (GND)) ;
    dffeas u_uart_reg_RxErr (.q (k_o_data_6_), .d (nx40325z1), .clk (clk), .ena (
           PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_dir2_0_ (.q (u_kirsch_dir2[0]), .d (nx60486z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir2_1_ (.q (u_kirsch_dir2[1]), .d (nx59489z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir2_2_ (.q (u_kirsch_dir2[2]), .d (nx58492z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_1_ (.q (u_kirsch_dir1[1]), .d (nx51070z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_3_ (.q (u_kirsch_dir1[3]), .d (nx49076z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_0_ (.q (u_kirsch_dir1[0]), .d (nx52067z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir1_2_ (.q (u_kirsch_dir1[2]), .d (nx50073z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_12_ (.q (u_kirsch_r_add2[12]), .d (nx55984z1), .clk (
           clk), .ena (reset_n), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_11_ (.q (u_kirsch_r_add2[11]), .d (nx56981z1), .clk (
           clk), .ena (reset_n), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_10_ (.q (u_kirsch_r_add2[10]), .d (nx57978z1), .clk (
           clk), .ena (reset_n), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_max0_bit_counter_1_ (.q (u_kirsch_max0_bit_counter[1]), 
           .d (nx63319z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_max0_bit_counter_0_ (.q (u_kirsch_max0_bit_counter[0]), 
           .d (nx64316z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_max1_bit_counter_1_ (.q (u_kirsch_max1_bit_counter[1]), 
           .d (nx45738z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_max1_bit_counter_0_ (.q (u_kirsch_max1_bit_counter[0]), 
           .d (nx46735z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_uart_reset (.q (uart_reset), .d (nx60415z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_stg_counter2_3_ (.q (u_kirsch_stg_counter2[3]), .d (
           nx15761z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter2_2_ (.q (u_kirsch_stg_counter2[2]), .d (
           nx16758z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter2_1_ (.q (u_kirsch_stg_counter2[1]), .d (
           nx17755z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter2_0_ (.q (u_kirsch_stg_counter2[0]), .d (
           nx18752z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter1_3_ (.q (u_kirsch_stg_counter1[3]), .d (
           nx58194z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter1_2_ (.q (u_kirsch_stg_counter1[2]), .d (
           nx57197z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter1_1_ (.q (u_kirsch_stg_counter1[1]), .d (
           nx56200z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_stg_counter1_0_ (.q (u_kirsch_stg_counter1[0]), .d (
           nx55203z1), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (
           GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_6_TE_rtlcGen4), .d (nx51544z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_5_TE_rtlcGen2), .d (nx28027z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 (.q (
           u_seg7_u_dual_seg7_o_char_rtlc6_o_char_1_TE_rtlcGen0), .d (nx18625z1)
           , .clk (clk), .ena (u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_q_10_ (.q (reset_count[10]), .d (inc_d_10_), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_9_ (.q (reset_count[9]), .d (inc_d_9_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_8_ (.q (reset_count[8]), .d (inc_d_8_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_7_ (.q (reset_count[7]), .d (inc_d_7_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_6_ (.q (reset_count[6]), .d (inc_d_6_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_5_ (.q (reset_count[5]), .d (inc_d_5_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_4_ (.q (reset_count[4]), .d (inc_d_4_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_3_ (.q (reset_count[3]), .d (inc_d_3_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_2_ (.q (reset_count[2]), .d (inc_d_2_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_1_ (.q (reset_count[1]), .d (inc_d_1_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_0_ (.q (reset_count[0]), .d (inc_d_0_), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (reset_n), .sload (
           GND)) ;
    dffeas reg_q_7__dup_0 (.q (write_fifo_wr_pointer[7]), .d (inc_d_7__dup_616)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_1 (.q (write_fifo_wr_pointer[6]), .d (inc_d_6__dup_614)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_2 (.q (write_fifo_wr_pointer[5]), .d (inc_d_5__dup_612)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_3 (.q (write_fifo_wr_pointer[4]), .d (inc_d_4__dup_610)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_4 (.q (write_fifo_wr_pointer[3]), .d (inc_d_3__dup_608)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_5 (.q (write_fifo_wr_pointer[2]), .d (inc_d_2__dup_606)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_6 (.q (write_fifo_wr_pointer[1]), .d (inc_d_1__dup_604)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_7 (.q (write_fifo_wr_pointer[0]), .d (inc_d_0__dup_602)
           , .clk (clk), .ena (nx58151z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_8 (.q (write_fifo_rd_pointer[7]), .d (inc_d_7__dup_652)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_9 (.q (write_fifo_rd_pointer[6]), .d (inc_d_6__dup_650)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_10 (.q (write_fifo_rd_pointer[5]), .d (inc_d_5__dup_648)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_11 (.q (write_fifo_rd_pointer[4]), .d (inc_d_4__dup_646)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_12 (.q (write_fifo_rd_pointer[3]), .d (inc_d_3__dup_644)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_13 (.q (write_fifo_rd_pointer[2]), .d (inc_d_2__dup_642)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_14 (.q (write_fifo_rd_pointer[1]), .d (inc_d_1__dup_640)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_15 (.q (write_fifo_rd_pointer[0]), .d (inc_d_0__dup_638)
           , .clk (clk), .ena (nx58143z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_8__dup_16 (.q (write_fifo_status_cnt[8]), .d (
           incdec_mux_8_dup_121), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_17 (.q (write_fifo_status_cnt[7]), .d (
           incdec_mux_7_dup_120), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_18 (.q (write_fifo_status_cnt[6]), .d (
           incdec_mux_6_dup_119), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_19 (.q (write_fifo_status_cnt[5]), .d (
           incdec_mux_5_dup_118), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_20 (.q (write_fifo_status_cnt[4]), .d (
           incdec_mux_4_dup_117), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_21 (.q (write_fifo_status_cnt[3]), .d (
           incdec_mux_3_dup_116), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_22 (.q (write_fifo_status_cnt[2]), .d (
           incdec_mux_2_dup_115), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_23 (.q (write_fifo_status_cnt[1]), .d (
           incdec_mux_1_dup_114), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_24 (.q (write_fifo_status_cnt[0]), .d (
           incdec_mux_0_dup_113), .clk (clk), .ena (nx22869z1), .clrn (PWR), .prn (
           PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_25 (.q (read_fifo_wr_pointer[7]), .d (inc_d_7__dup_717)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_26 (.q (read_fifo_wr_pointer[6]), .d (inc_d_6__dup_715)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_27 (.q (read_fifo_wr_pointer[5]), .d (inc_d_5__dup_713)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_28 (.q (read_fifo_wr_pointer[4]), .d (inc_d_4__dup_711)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_29 (.q (read_fifo_wr_pointer[3]), .d (inc_d_3__dup_709)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_30 (.q (read_fifo_wr_pointer[2]), .d (inc_d_2__dup_707)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_31 (.q (read_fifo_wr_pointer[1]), .d (inc_d_1__dup_705)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_32 (.q (read_fifo_wr_pointer[0]), .d (inc_d_0__dup_703)
           , .clk (clk), .ena (nx23864z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_33 (.q (read_fifo_rd_pointer[7]), .d (inc_d_7__dup_753)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_34 (.q (read_fifo_rd_pointer[6]), .d (inc_d_6__dup_751)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_35 (.q (read_fifo_rd_pointer[5]), .d (inc_d_5__dup_749)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_36 (.q (read_fifo_rd_pointer[4]), .d (inc_d_4__dup_747)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_37 (.q (read_fifo_rd_pointer[3]), .d (inc_d_3__dup_745)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_38 (.q (read_fifo_rd_pointer[2]), .d (inc_d_2__dup_743)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_39 (.q (read_fifo_rd_pointer[1]), .d (inc_d_1__dup_741)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_40 (.q (read_fifo_rd_pointer[0]), .d (inc_d_0__dup_739)
           , .clk (clk), .ena (nx24859z1), .clrn (PWR), .prn (PWR), .asdata (GND
           ), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_8__dup_41 (.q (read_fifo_status_cnt[8]), .d (
           incdec_mux_8_dup_121_dup_793), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_7__dup_42 (.q (read_fifo_status_cnt[7]), .d (
           incdec_mux_7_dup_120_dup_791), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_6__dup_43 (.q (read_fifo_status_cnt[6]), .d (
           incdec_mux_6_dup_119_dup_789), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_5__dup_44 (.q (read_fifo_status_cnt[5]), .d (
           incdec_mux_5_dup_118_dup_787), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_4__dup_45 (.q (read_fifo_status_cnt[4]), .d (
           incdec_mux_4_dup_117_dup_785), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_3__dup_46 (.q (read_fifo_status_cnt[3]), .d (
           incdec_mux_3_dup_116_dup_783), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_2__dup_47 (.q (read_fifo_status_cnt[2]), .d (
           incdec_mux_2_dup_115_dup_781), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_1__dup_48 (.q (read_fifo_status_cnt[1]), .d (
           incdec_mux_1_dup_114_dup_779), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_0__dup_49 (.q (read_fifo_status_cnt[0]), .d (
           incdec_mux_0_dup_113_dup_777), .clk (clk), .ena (nx383z1), .clrn (PWR
           ), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_q_10__dup_50 (.q (seg7_en[1]), .d (inc_d_10__dup_824), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx29573z1), .sload (GND)) ;
    dffeas reg_q_9__dup_51 (.q (nx44217z1), .d (inc_d_9__dup_823), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_8__dup_52 (.q (nx55707z1), .d (inc_d_8__dup_822), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_7__dup_53 (.q (nx49288z1), .d (inc_d_7__dup_821), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_6__dup_54 (.q (nx674z1), .d (inc_d_6__dup_820), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_5__dup_55 (.q (nx50636z1), .d (inc_d_5__dup_819), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_4__dup_56 (.q (nx35062z1), .d (inc_d_4__dup_818), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_3__dup_57 (.q (nx46048z1), .d (inc_d_3__dup_817), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_2__dup_58 (.q (nx60108z1), .d (inc_d_2__dup_816), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_1__dup_59 (.q (nx55390z1), .d (inc_d_1__dup_815), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_0__dup_60 (.q (nx39816z1), .d (inc_d_0__dup_814), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx29573z1), .sload (
           GND)) ;
    dffeas reg_q_10__dup_61 (.q (u_uart_RxDiv[10]), .d (inc_d_10__dup_882), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_9__dup_62 (.q (u_uart_RxDiv[9]), .d (inc_d_9__dup_880), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_8__dup_63 (.q (u_uart_RxDiv[8]), .d (inc_d_8__dup_878), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_7__dup_64 (.q (u_uart_RxDiv[7]), .d (inc_d_7__dup_876), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_6__dup_65 (.q (u_uart_RxDiv[6]), .d (inc_d_6__dup_874), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_5__dup_66 (.q (u_uart_RxDiv[5]), .d (inc_d_5__dup_872), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_4__dup_67 (.q (u_uart_RxDiv[4]), .d (inc_d_4__dup_870), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_3__dup_68 (.q (u_uart_RxDiv[3]), .d (inc_d_3__dup_868), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_2__dup_69 (.q (u_uart_RxDiv[2]), .d (inc_d_2__dup_866), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_1__dup_70 (.q (u_uart_RxDiv[1]), .d (inc_d_1__dup_864), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_0__dup_71 (.q (u_uart_RxDiv[0]), .d (inc_d_0__dup_862), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx2379z1), .sload (GND)) ;
    dffeas reg_q_11_ (.q (u_uart_TxDiv[11]), .d (inc_d_11_), .clk (clk), .ena (
           PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (nx57349z1)
           , .sload (GND)) ;
    dffeas reg_q_10__dup_72 (.q (u_uart_TxDiv[10]), .d (inc_d_10__dup_935), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_9__dup_73 (.q (u_uart_TxDiv[9]), .d (inc_d_9__dup_933), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_8__dup_74 (.q (u_uart_TxDiv[8]), .d (inc_d_8__dup_931), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_7__dup_75 (.q (u_uart_TxDiv[7]), .d (inc_d_7__dup_929), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_6__dup_76 (.q (u_uart_TxDiv[6]), .d (inc_d_6__dup_927), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_5__dup_77 (.q (u_uart_TxDiv[5]), .d (inc_d_5__dup_925), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_4__dup_78 (.q (u_uart_TxDiv[4]), .d (inc_d_4__dup_923), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_3__dup_79 (.q (u_uart_TxDiv[3]), .d (inc_d_3__dup_921), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_2__dup_80 (.q (u_uart_TxDiv[2]), .d (inc_d_2__dup_919), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_1__dup_81 (.q (u_uart_TxDiv[1]), .d (inc_d_1__dup_917), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_0__dup_82 (.q (u_uart_TxDiv[0]), .d (inc_d_0__dup_915), .clk (
           clk), .ena (PWR), .clrn (nx24396z1), .prn (PWR), .asdata (GND), .sclr (
           nx57349z1), .sload (GND)) ;
    dffeas reg_q_7__dup_83 (.q (u_kirsch_row_count[7]), .d (inc_d_7__dup_1011), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_6__dup_84 (.q (u_kirsch_row_count[6]), .d (inc_d_6__dup_1009), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_5__dup_85 (.q (u_kirsch_row_count[5]), .d (inc_d_5__dup_1007), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_4__dup_86 (.q (u_kirsch_row_count[4]), .d (inc_d_4__dup_1005), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_3__dup_87 (.q (u_kirsch_row_count[3]), .d (inc_d_3__dup_1003), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_2__dup_88 (.q (u_kirsch_row_count[2]), .d (inc_d_2__dup_1001), 
           .clk (clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND)
           , .sclr (nx25391z4), .sload (GND)) ;
    dffeas reg_q_1__dup_89 (.q (u_kirsch_row_count[1]), .d (inc_d_1__dup_999), .clk (
           clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx25391z4), .sload (GND)) ;
    dffeas reg_q_0__dup_90 (.q (u_kirsch_row_count[0]), .d (inc_d_0__dup_997), .clk (
           clk), .ena (nx25391z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx25391z4), .sload (GND)) ;
    dffeas reg_q_7__dup_91 (.q (u_kirsch_address[7]), .d (inc_d_7__dup_1051), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_6__dup_92 (.q (u_kirsch_address[6]), .d (inc_d_6__dup_1049), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_5__dup_93 (.q (u_kirsch_address[5]), .d (inc_d_5__dup_1047), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_4__dup_94 (.q (u_kirsch_address[4]), .d (inc_d_4__dup_1045), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_3__dup_95 (.q (u_kirsch_address[3]), .d (inc_d_3__dup_1043), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_2__dup_96 (.q (u_kirsch_address[2]), .d (inc_d_2__dup_1041), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_1__dup_97 (.q (u_kirsch_address[1]), .d (inc_d_1__dup_1039), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_q_0__dup_98 (.q (u_kirsch_address[0]), .d (inc_d_0__dup_1037), .clk (
           clk), .ena (nx37417z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx37417z2), .sload (GND)) ;
    dffeas reg_wait_for_tx_valid_delayed (.q (wait_for_tx_valid_delayed), .d (
           wait_for_tx_valid), .clk (clk), .ena (PWR), .clrn (PWR), .prn (PWR), 
           .asdata (GND), .sclr (k_o_data_7_), .sload (GND)) ;
    dffeas reg_tx_valid (.q (nx7359z3), .d (NOT_rb_rd_en_delayed), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (k_o_data_7_)
           , .sload (GND)) ;
    dffeas reg_rb_rd_en (.q (rb_rd_en), .d (nx15004z1), .clk (clk), .ena (PWR), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_12_ (.q (u_kirsch_r_sub0_12_), .d (
           u_kirsch_r_sub0_6n1s1_12_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_11_ (.q (u_kirsch_r_sub0_11_), .d (
           u_kirsch_r_sub0_6n1s1_11_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_10_ (.q (u_kirsch_r_sub0_10_), .d (
           u_kirsch_r_sub0_6n1s1_10_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_9_ (.q (u_kirsch_r_sub0_9_), .d (
           u_kirsch_r_sub0_6n1s1_9_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_8_ (.q (u_kirsch_r_sub0_8_), .d (
           u_kirsch_r_sub0_6n1s1_8_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_r_sub0_7_ (.q (u_kirsch_r_sub0_7_), .d (
           u_kirsch_r_sub0_6n1s1_7_), .clk (clk), .ena (nx12123z1), .clrn (PWR)
           , .prn (PWR), .asdata (GND), .sclr (u_kirsch_r_sub0_6n1s1_14_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_o_mode_1_ (.q (seg7_pts[1]), .d (PWR), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (k_o_data_7_), .sload (
           GND)) ;
    dffeas u_kirsch_reg_o_mode_0_ (.q (nx59319z1), .d (nx37156z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (NOT_GND), .sclr (k_o_data_7_)
           , .sload (GND)) ;
    dffeas reg_tx_busy_delayed (.q (tx_busy_delayed), .d (tx_busy), .clk (clk), 
           .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_rb_rd_en_delayed (.q (rb_rd_en_delayed), .d (rb_rd_en_true), .clk (
           clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_rd_en_delayed (.q (write_fifo_rd_en_delayed), .d (
           nx7605z1), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_7_ (.q (write_fifo_q_saved[7]), .d (
           write_fifo_q[7]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_6_ (.q (write_fifo_q_saved[6]), .d (
           write_fifo_q[6]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_5_ (.q (write_fifo_q_saved[5]), .d (
           write_fifo_q[5]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_4_ (.q (write_fifo_q_saved[4]), .d (
           write_fifo_q[4]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_3_ (.q (write_fifo_q_saved[3]), .d (
           write_fifo_q[3]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_2_ (.q (write_fifo_q_saved[2]), .d (
           write_fifo_q[2]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_1_ (.q (write_fifo_q_saved[1]), .d (
           write_fifo_q[1]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas write_fifo_reg_q_saved_0_ (.q (write_fifo_q_saved[0]), .d (
           write_fifo_q[0]), .clk (clk), .ena (write_fifo_rd_en_delayed), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_7_ (.q (read_fifo_q_saved[7]), .d (
           read_fifo_q[7]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_6_ (.q (read_fifo_q_saved[6]), .d (
           read_fifo_q[6]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_5_ (.q (read_fifo_q_saved[5]), .d (
           read_fifo_q[5]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_4_ (.q (read_fifo_q_saved[4]), .d (
           read_fifo_q[4]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_3_ (.q (read_fifo_q_saved[3]), .d (
           read_fifo_q[3]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_2_ (.q (read_fifo_q_saved[2]), .d (
           read_fifo_q[2]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_1_ (.q (read_fifo_q_saved[1]), .d (
           read_fifo_q[1]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas read_fifo_reg_q_saved_0_ (.q (read_fifo_q_saved[0]), .d (
           read_fifo_q[0]), .clk (clk), .ena (rb_rd_en_delayed), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_reset (.q (u_seg7_u_dual_seg7_prev_reset)
           , .d (k_o_data_7_), .clk (clk), .ena (1'b1), .clrn (PWR), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_prev_char0_en (.q (
           u_seg7_u_dual_seg7_prev_char0_en), .d (seg7_en[0]), .clk (clk), .ena (
           1'b1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_7_ (.q (seg7_data[7]), .d (
           u_seg7_u_dual_seg7_muxed_char_7_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_4_ (.q (seg7_data[4]), .d (
           u_seg7_u_dual_seg7_muxed_char_4_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_3_ (.q (seg7_data[3]), .d (
           u_seg7_u_dual_seg7_muxed_char_3_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_2_ (.q (seg7_data[2]), .d (
           u_seg7_u_dual_seg7_muxed_char_2_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_seg7_u_dual_seg7_reg_o_char_0_ (.q (seg7_data[0]), .d (
           u_seg7_u_dual_seg7_muxed_char_0_), .clk (clk), .ena (
           u_seg7_u_dual_seg7_load_reg), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_r (.q (nx12790z3), .d (NOT_uart_rx), .clk (clk), .ena (
           1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_RxDivisor_4_ (.q (u_uart_RxDivisor_4_), .d (PWR), .clk (
           clk), .ena (1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_TopRx (.q (u_uart_TopRx), .d (nx59343z1), .clk (clk), .ena (
           1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_TopTx (.q (u_uart_TopTx), .d (nx57349z1), .clk (clk), .ena (
           1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_TxBusy (.q (tx_busy), .d (nx13251z1), .clk (clk), .ena (
           1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_uart_reg_Tx_Reg_8_ (.q (NOT_u_uart_Tx_Reg_8_), .d (
           NOT_u_uart_Tx_Reg_14n6ss1_8_), .clk (clk), .ena (nx18859z1), .clrn (
           nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas u_uart_reg_RxFSM_5_ (.q (u_uart_RxFSM[5]), .d (nx8802z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_4_ (.q (u_uart_RxFSM[4]), .d (nx9799z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_3_ (.q (u_uart_RxFSM[3]), .d (nx10796z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_2_ (.q (u_uart_RxFSM[2]), .d (nx11793z1), .clk (clk)
           , .ena (nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_1_ (.q (u_uart_RxFSM[1]), .d (u_uart_RxFSM[0]), .clk (
           clk), .ena (nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxFSM_0_ (.q (nx64683z2), .d (nx13787z1), .clk (clk), .ena (
           nx12790z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_7_ (.q (uart_pixel[7]), .d (u_uart_Rx_Reg[7]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_6_ (.q (uart_pixel[6]), .d (u_uart_Rx_Reg[6]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_5_ (.q (uart_pixel[5]), .d (u_uart_Rx_Reg[5]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_4_ (.q (uart_pixel[4]), .d (u_uart_Rx_Reg[4]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_3_ (.q (uart_pixel[3]), .d (u_uart_Rx_Reg[3]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_2_ (.q (uart_pixel[2]), .d (u_uart_Rx_Reg[2]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_1_ (.q (uart_pixel[1]), .d (u_uart_Rx_Reg[1]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Dout_0_ (.q (uart_pixel[0]), .d (u_uart_Rx_Reg[0]), .clk (
           clk), .ena (nx13938z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_7_ (.q (u_uart_Rx_Reg[7]), .d (u_uart_Rx_r), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_6_ (.q (u_uart_Rx_Reg[6]), .d (u_uart_Rx_Reg[7]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_5_ (.q (u_uart_Rx_Reg[5]), .d (u_uart_Rx_Reg[6]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_4_ (.q (u_uart_Rx_Reg[4]), .d (u_uart_Rx_Reg[5]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_3_ (.q (u_uart_Rx_Reg[3]), .d (u_uart_Rx_Reg[4]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_2_ (.q (u_uart_Rx_Reg[2]), .d (u_uart_Rx_Reg[3]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_1_ (.q (u_uart_Rx_Reg[1]), .d (u_uart_Rx_Reg[2]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_Rx_Reg_0_ (.q (u_uart_Rx_Reg[0]), .d (u_uart_Rx_Reg[1]), .clk (
           clk), .ena (nx44871z1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_reg_RxRDYi (.q (rx_valid), .d (nx13938z1), .clk (clk), .ena (
           1'b1), .clrn (nx24396z1), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_8_ (.q (u_kirsch_r_add0_a[8]), .d (
           u_kirsch_r_add0_a_0n1s1[8]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_7_ (.q (u_kirsch_r_add0_a[7]), .d (
           u_kirsch_r_add0_a_0n1s1[7]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_6_ (.q (u_kirsch_r_add0_a[6]), .d (
           u_kirsch_r_add0_a_0n1s1[6]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_5_ (.q (u_kirsch_r_add0_a[5]), .d (
           u_kirsch_r_add0_a_0n1s1[5]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_4_ (.q (u_kirsch_r_add0_a[4]), .d (
           u_kirsch_r_add0_a_0n1s1[4]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_3_ (.q (u_kirsch_r_add0_a[3]), .d (
           u_kirsch_r_add0_a_0n1s1[3]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_2_ (.q (u_kirsch_r_add0_a[2]), .d (
           u_kirsch_r_add0_a_0n1s1[2]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_1_ (.q (u_kirsch_r_add0_a[1]), .d (
           u_kirsch_r_add0_a_0n1s1[1]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_a_0_ (.q (u_kirsch_r_add0_a[0]), .d (
           u_kirsch_r_add0_a_0n1s1[0]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_7_ (.q (u_kirsch_r_max0[7]), .d (
           u_kirsch_r_max0_1n2ss1[7]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_6_ (.q (u_kirsch_r_max0[6]), .d (
           u_kirsch_r_max0_1n2ss1[6]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_5_ (.q (u_kirsch_r_max0[5]), .d (
           u_kirsch_r_max0_1n2ss1[5]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_4_ (.q (u_kirsch_r_max0[4]), .d (
           u_kirsch_r_max0_1n2ss1[4]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_3_ (.q (u_kirsch_r_max0[3]), .d (
           u_kirsch_r_max0_1n2ss1[3]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_2_ (.q (u_kirsch_r_max0[2]), .d (
           u_kirsch_r_max0_1n2ss1[2]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_1_ (.q (u_kirsch_r_max0[1]), .d (
           u_kirsch_r_max0_1n2ss1[1]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max0_0_ (.q (u_kirsch_r_max0[0]), .d (
           u_kirsch_r_max0_1n2ss1[0]), .clk (clk), .ena (nx40631z2), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_8_ (.q (u_kirsch_r_add0_b[8]), .d (
           u_kirsch_r_add0_a[8]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_7_ (.q (u_kirsch_r_add0_b[7]), .d (
           u_kirsch_r_add0_a[7]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_6_ (.q (u_kirsch_r_add0_b[6]), .d (
           u_kirsch_r_add0_a[6]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_5_ (.q (u_kirsch_r_add0_b[5]), .d (
           u_kirsch_r_add0_a[5]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_4_ (.q (u_kirsch_r_add0_b[4]), .d (
           u_kirsch_r_add0_a[4]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_3_ (.q (u_kirsch_r_add0_b[3]), .d (
           u_kirsch_r_add0_a[3]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_2_ (.q (u_kirsch_r_add0_b[2]), .d (
           u_kirsch_r_add0_a[2]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_1_ (.q (u_kirsch_r_add0_b[1]), .d (
           u_kirsch_r_add0_a[1]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add0_b_0_ (.q (u_kirsch_r_add0_b[0]), .d (
           u_kirsch_r_add0_a[0]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_9_ (.q (u_kirsch_r_add1_a[9]), .d (
           u_kirsch_r_add1_a_3n1s1[9]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_8_ (.q (u_kirsch_r_add1_a[8]), .d (
           u_kirsch_r_add1_a_3n1s1[8]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_7_ (.q (u_kirsch_r_add1_a[7]), .d (
           u_kirsch_r_add1_a_3n1s1[7]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_6_ (.q (u_kirsch_r_add1_a[6]), .d (
           u_kirsch_r_add1_a_3n1s1[6]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_5_ (.q (u_kirsch_r_add1_a[5]), .d (
           u_kirsch_r_add1_a_3n1s1[5]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_4_ (.q (u_kirsch_r_add1_a[4]), .d (
           u_kirsch_r_add1_a_3n1s1[4]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_3_ (.q (u_kirsch_r_add1_a[3]), .d (
           u_kirsch_r_add1_a_3n1s1[3]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_2_ (.q (u_kirsch_r_add1_a[2]), .d (
           u_kirsch_r_add1_a_3n1s1[2]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_1_ (.q (u_kirsch_r_add1_a[1]), .d (
           u_kirsch_r_add1_a_3n1s1[1]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_a_0_ (.q (u_kirsch_r_add1_a[0]), .d (
           u_kirsch_r_add1_a_3n1s1[0]), .clk (clk), .ena (reset_n), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_9_ (.q (u_kirsch_r_add2[9]), .d (
           u_kirsch_r_add2_4n1s1[9]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_8_ (.q (u_kirsch_r_add2[8]), .d (
           u_kirsch_r_add2_4n1s1[8]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_7_ (.q (u_kirsch_r_add2[7]), .d (
           u_kirsch_r_add2_4n1s1[7]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_6_ (.q (u_kirsch_r_add2[6]), .d (
           u_kirsch_r_add2_4n1s1[6]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_5_ (.q (u_kirsch_r_add2[5]), .d (
           u_kirsch_r_add2_4n1s1[5]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_4_ (.q (u_kirsch_r_add2[4]), .d (
           u_kirsch_r_add2_4n1s1[4]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_3_ (.q (u_kirsch_r_add2[3]), .d (
           u_kirsch_r_add2_4n1s1[3]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_2_ (.q (u_kirsch_r_add2[2]), .d (
           u_kirsch_r_add2_4n1s1[2]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_1_ (.q (u_kirsch_r_add2[1]), .d (
           u_kirsch_r_add2_4n1s1[1]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add2_0_ (.q (u_kirsch_r_add2[0]), .d (
           u_kirsch_r_add2_4n1s1[0]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_9_ (.q (u_kirsch_r_max1[9]), .d (
           u_kirsch_r_max1_5n6ss1[9]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_8_ (.q (u_kirsch_r_max1[8]), .d (
           u_kirsch_r_max1_5n6ss1[8]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_7_ (.q (u_kirsch_r_max1[7]), .d (
           u_kirsch_r_max1_5n6ss1[7]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_6_ (.q (u_kirsch_r_max1[6]), .d (
           u_kirsch_r_max1_5n6ss1[6]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_5_ (.q (u_kirsch_r_max1[5]), .d (
           u_kirsch_r_max1_5n6ss1[5]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_4_ (.q (u_kirsch_r_max1[4]), .d (
           u_kirsch_r_max1_5n6ss1[4]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_3_ (.q (u_kirsch_r_max1[3]), .d (
           u_kirsch_r_max1_5n6ss1[3]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_2_ (.q (u_kirsch_r_max1[2]), .d (
           u_kirsch_r_max1_5n6ss1[2]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_1_ (.q (u_kirsch_r_max1[1]), .d (
           u_kirsch_r_max1_5n6ss1[1]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_max1_0_ (.q (u_kirsch_r_max1[0]), .d (
           u_kirsch_r_max1_5n6ss1[0]), .clk (clk), .ena (nx29221z5), .clrn (PWR)
           , .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir2_final_2_ (.q (u_kirsch_dir2_final[2]), .d (
           u_kirsch_dir2[2]), .clk (clk), .ena (nx12123z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir2_final_1_ (.q (u_kirsch_dir2_final[1]), .d (
           u_kirsch_dir2[1]), .clk (clk), .ena (nx12123z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_dir2_final_0_ (.q (u_kirsch_dir2_final[0]), .d (
           u_kirsch_dir2[0]), .clk (clk), .ena (nx12123z1), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_9_ (.q (u_kirsch_r_add1_b[9]), .d (
           u_kirsch_r_add1_a[9]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_8_ (.q (u_kirsch_r_add1_b[8]), .d (
           u_kirsch_r_add1_a[8]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_7_ (.q (u_kirsch_r_add1_b[7]), .d (
           u_kirsch_r_add1_a[7]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_6_ (.q (u_kirsch_r_add1_b[6]), .d (
           u_kirsch_r_add1_a[6]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_5_ (.q (u_kirsch_r_add1_b[5]), .d (
           u_kirsch_r_add1_a[5]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_4_ (.q (u_kirsch_r_add1_b[4]), .d (
           u_kirsch_r_add1_a[4]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_3_ (.q (u_kirsch_r_add1_b[3]), .d (
           u_kirsch_r_add1_a[3]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_2_ (.q (u_kirsch_r_add1_b[2]), .d (
           u_kirsch_r_add1_a[2]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_1_ (.q (u_kirsch_r_add1_b[1]), .d (
           u_kirsch_r_add1_a[1]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_r_add1_b_0_ (.q (u_kirsch_r_add1_b[0]), .d (
           u_kirsch_r_add1_a[0]), .clk (clk), .ena (reset_n), .clrn (PWR), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_7_ (.q (seg7_num[7]), .d (u_kirsch_row_count[7]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_6_ (.q (seg7_num[6]), .d (u_kirsch_row_count[6]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_5_ (.q (seg7_num[5]), .d (u_kirsch_row_count[5]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_4_ (.q (seg7_num[4]), .d (u_kirsch_row_count[4]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_3_ (.q (seg7_num[3]), .d (u_kirsch_row_count[3]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_2_ (.q (seg7_num[2]), .d (u_kirsch_row_count[2]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_1_ (.q (seg7_num[1]), .d (u_kirsch_row_count[1]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_row_0_ (.q (seg7_num[0]), .d (u_kirsch_row_count[0]), 
           .clk (clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0)
           , .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_valid (.q (k_o_valid), .d (nx4094z1), .clk (clk), .ena (
           reset_n), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_intermediate_dir_2_ (.q (k_o_data_2_), .d (nx64328z1), .clk (
           clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_intermediate_dir_1_ (.q (k_o_data_1_), .d (nx63331z1), .clk (
           clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_intermediate_dir_0_ (.q (k_o_data_0_), .d (nx62334z1), .clk (
           clk), .ena (nx64328z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_o_edge (.q (k_o_data_3_), .d (nx22605z1), .clk (clk), .ena (
           reset_n), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas u_kirsch_reg_f3_7_ (.q (u_kirsch_g2[7]), .d (u_kirsch_f3_9n22ss1[7])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_6_ (.q (u_kirsch_g2[6]), .d (u_kirsch_f3_9n22ss1[6])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_5_ (.q (u_kirsch_g2[5]), .d (u_kirsch_f3_9n22ss1[5])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_4_ (.q (u_kirsch_g2[4]), .d (u_kirsch_f3_9n22ss1[4])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_3_ (.q (u_kirsch_g2[3]), .d (u_kirsch_f3_9n22ss1[3])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_2_ (.q (u_kirsch_g2[2]), .d (u_kirsch_f3_9n22ss1[2])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_1_ (.q (u_kirsch_g2[1]), .d (u_kirsch_f3_9n22ss1[1])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g2_0_ (.q (u_kirsch_g2[0]), .d (u_kirsch_f3_9n22ss1[0])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_7_ (.q (u_kirsch_g3[7]), .d (u_kirsch_g2[7]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_6_ (.q (u_kirsch_g3[6]), .d (u_kirsch_g2[6]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_5_ (.q (u_kirsch_g3[5]), .d (u_kirsch_g2[5]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_4_ (.q (u_kirsch_g3[4]), .d (u_kirsch_g2[4]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_3_ (.q (u_kirsch_g3[3]), .d (u_kirsch_g2[3]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_2_ (.q (u_kirsch_g3[2]), .d (u_kirsch_g2[2]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_1_ (.q (u_kirsch_g3[1]), .d (u_kirsch_g2[1]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_g3_0_ (.q (u_kirsch_g3[0]), .d (u_kirsch_g2[0]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_7_ (.q (u_kirsch_h3[7]), .d (u_kirsch_h2[7]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_6_ (.q (u_kirsch_h3[6]), .d (u_kirsch_h2[6]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_5_ (.q (u_kirsch_h3[5]), .d (u_kirsch_h2[5]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_4_ (.q (u_kirsch_h3[4]), .d (u_kirsch_h2[4]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_3_ (.q (u_kirsch_h3[3]), .d (u_kirsch_h2[3]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_2_ (.q (u_kirsch_h3[2]), .d (u_kirsch_h2[2]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_1_ (.q (u_kirsch_h3[1]), .d (u_kirsch_h2[1]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h3_0_ (.q (u_kirsch_h3[0]), .d (u_kirsch_h2[0]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_7_ (.q (u_kirsch_a3[7]), .d (u_kirsch_a2[7]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_6_ (.q (u_kirsch_a3[6]), .d (u_kirsch_a2[6]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_5_ (.q (u_kirsch_a3[5]), .d (u_kirsch_a2[5]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_4_ (.q (u_kirsch_a3[4]), .d (u_kirsch_a2[4]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_3_ (.q (u_kirsch_a3[3]), .d (u_kirsch_a2[3]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_2_ (.q (u_kirsch_a3[2]), .d (u_kirsch_a2[2]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_1_ (.q (u_kirsch_a3[1]), .d (u_kirsch_a2[1]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a3_0_ (.q (u_kirsch_a3[0]), .d (u_kirsch_a2[0]), .clk (
           clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_7_ (.q (u_kirsch_h2[7]), .d (u_kirsch_h2_9n22ss1[7])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_6_ (.q (u_kirsch_h2[6]), .d (u_kirsch_h2_9n22ss1[6])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_5_ (.q (u_kirsch_h2[5]), .d (u_kirsch_h2_9n22ss1[5])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_4_ (.q (u_kirsch_h2[4]), .d (u_kirsch_h2_9n22ss1[4])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_3_ (.q (u_kirsch_h2[3]), .d (u_kirsch_h2_9n22ss1[3])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_2_ (.q (u_kirsch_h2[2]), .d (u_kirsch_h2_9n22ss1[2])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_1_ (.q (u_kirsch_h2[1]), .d (u_kirsch_h2_9n22ss1[1])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_h2_0_ (.q (u_kirsch_h2[0]), .d (u_kirsch_h2_9n22ss1[0])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_b3_7_ (.q (u_kirsch_a2[7]), .d (u_kirsch_a2_9n22ss1[7])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_6_ (.q (u_kirsch_a2[6]), .d (u_kirsch_a2_9n22ss1[6])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_5_ (.q (u_kirsch_a2[5]), .d (u_kirsch_a2_9n22ss1[5])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_4_ (.q (u_kirsch_a2[4]), .d (u_kirsch_a2_9n22ss1[4])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_3_ (.q (u_kirsch_a2[3]), .d (u_kirsch_a2_9n22ss1[3])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_2_ (.q (u_kirsch_a2[2]), .d (u_kirsch_a2_9n22ss1[2])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_1_ (.q (u_kirsch_a2[1]), .d (u_kirsch_a2_9n22ss1[1])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_a2_0_ (.q (u_kirsch_a2[0]), .d (u_kirsch_a2_9n22ss1[0])
           , .clk (clk), .ena (nx41042z5), .clrn (PWR), .prn (PWR), .asdata (
           1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_7_ (.q (u_kirsch_e3[7]), .d (write_fifo_q[7]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_6_ (.q (u_kirsch_e3[6]), .d (write_fifo_q[6]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_5_ (.q (u_kirsch_e3[5]), .d (write_fifo_q[5]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_4_ (.q (u_kirsch_e3[4]), .d (write_fifo_q[4]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_3_ (.q (u_kirsch_e3[3]), .d (write_fifo_q[3]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_2_ (.q (u_kirsch_e3[2]), .d (write_fifo_q[2]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_1_ (.q (u_kirsch_e3[1]), .d (write_fifo_q[1]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_kirsch_reg_e3_0_ (.q (u_kirsch_e3[0]), .d (write_fifo_q[0]), .clk (
           clk), .ena (nx53163z3), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_3_ (.q (u_uart_TxBitCnt[3]), .d (
           nx62428z1), .clk (clk), .ena (nx59437z2), .clrn (nx24396z1), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_2_ (.q (u_uart_TxBitCnt[2]), .d (
           nx61431z1), .clk (clk), .ena (nx59437z2), .clrn (nx24396z1), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_1_ (.q (u_uart_TxBitCnt[1]), .d (
           nx60434z1), .clk (clk), .ena (nx59437z2), .clrn (nx24396z1), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_TxBitCnt_reg_q_0_ (.q (u_uart_TxBitCnt[0]), .d (
           nx59437z1), .clk (clk), .ena (nx59437z2), .clrn (nx24396z1), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_3_ (.q (u_uart_RxBitCnt[3]), .d (
           nx2138z1), .clk (clk), .ena (nx64683z3), .clrn (nx24396z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_2_ (.q (u_uart_RxBitCnt[2]), .d (
           nx1141z1), .clk (clk), .ena (nx64683z3), .clrn (nx24396z1), .prn (PWR
           ), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_1_ (.q (u_uart_RxBitCnt[1]), .d (
           nx144z1), .clk (clk), .ena (nx64683z3), .clrn (nx24396z1), .prn (PWR)
           , .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas u_uart_modgen_counter_RxBitCnt_reg_q_0_ (.q (u_uart_RxBitCnt[0]), .d (
           nx64683z1), .clk (clk), .ena (nx64683z3), .clrn (nx24396z1), .prn (
           PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    fiftyfivenm_lcell_comb ix24841z7095 (.combout (NOT_rb_o_data_6_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[6]), .datac (
                           read_fifo_q[6]), .datad (rb_rd_en_delayed)) ;
                           defparam ix24841z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix23844z7095 (.combout (NOT_rb_o_data_5_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[5]), .datac (
                           read_fifo_q[5]), .datad (rb_rd_en_delayed)) ;
                           defparam ix23844z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix22847z7095 (.combout (NOT_rb_o_data_4_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[4]), .datac (
                           read_fifo_q[4]), .datad (rb_rd_en_delayed)) ;
                           defparam ix22847z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix21850z7095 (.combout (NOT_rb_o_data_3_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[3]), .datac (
                           read_fifo_q[3]), .datad (rb_rd_en_delayed)) ;
                           defparam ix21850z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix20853z7095 (.combout (NOT_rb_o_data_2_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[2]), .datac (
                           read_fifo_q[2]), .datad (rb_rd_en_delayed)) ;
                           defparam ix20853z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix19856z7095 (.combout (NOT_rb_o_data_1_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[1]), .datac (
                           read_fifo_q[1]), .datad (rb_rd_en_delayed)) ;
                           defparam ix19856z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix18859z7095 (.combout (NOT_rb_o_data_0_), .dataa (
                           1'b1), .datab (read_fifo_q_saved[0]), .datac (
                           read_fifo_q[0]), .datad (rb_rd_en_delayed)) ;
                           defparam ix18859z7095.lut_mask = 16'h0f33;
    fiftyfivenm_lcell_comb ix19433z7095 (.combout (nx19433z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx19433z2), .datad (
                           u_kirsch_d3[0])) ;
                           defparam ix19433z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix20430z7095 (.combout (nx20430z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx20430z2), .datad (
                           u_kirsch_d3[1])) ;
                           defparam ix20430z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix21427z7095 (.combout (nx21427z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx21427z2), .datad (
                           u_kirsch_d3[2])) ;
                           defparam ix21427z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix22424z7095 (.combout (nx22424z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx22424z2), .datad (
                           u_kirsch_d3[3])) ;
                           defparam ix22424z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix23421z7095 (.combout (nx23421z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx23421z2), .datad (
                           u_kirsch_d3[4])) ;
                           defparam ix23421z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix24418z7095 (.combout (nx24418z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx24418z2), .datad (
                           u_kirsch_d3[5])) ;
                           defparam ix24418z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix25415z7095 (.combout (nx25415z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx25415z2), .datad (
                           u_kirsch_d3[6])) ;
                           defparam ix25415z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix26412z7095 (.combout (nx26412z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx26412z5), .datad (
                           u_kirsch_d3[7])) ;
                           defparam ix26412z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix62941z7095 (.combout (nx62941z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx62941z2), .datad (
                           u_kirsch_c3[0])) ;
                           defparam ix62941z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix61944z7095 (.combout (nx61944z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx61944z2), .datad (
                           u_kirsch_c3[1])) ;
                           defparam ix61944z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix60947z7095 (.combout (nx60947z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx60947z2), .datad (
                           u_kirsch_c3[2])) ;
                           defparam ix60947z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59950z7095 (.combout (nx59950z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx59950z2), .datad (
                           u_kirsch_c3[3])) ;
                           defparam ix59950z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix58953z7095 (.combout (nx58953z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx58953z2), .datad (
                           u_kirsch_c3[4])) ;
                           defparam ix58953z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix57956z7095 (.combout (nx57956z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx57956z2), .datad (
                           u_kirsch_c3[5])) ;
                           defparam ix57956z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56959z7095 (.combout (nx56959z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx56959z2), .datad (
                           u_kirsch_c3[6])) ;
                           defparam ix56959z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix55962z7095 (.combout (nx55962z1), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx55962z2), .datad (
                           u_kirsch_c3[7])) ;
                           defparam ix55962z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7096 (.combout (k_i_pixel[7]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[7]), .datad (write_fifo_q[7])) ;
                           defparam ix59319z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7098 (.combout (k_i_pixel[6]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[6]), .datad (write_fifo_q[6])) ;
                           defparam ix59319z7098.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7100 (.combout (k_i_pixel[5]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[5]), .datad (write_fifo_q[5])) ;
                           defparam ix59319z7100.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7102 (.combout (k_i_pixel[4]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[4]), .datad (write_fifo_q[4])) ;
                           defparam ix59319z7102.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7104 (.combout (k_i_pixel[3]), .dataa (1'b1)
                           , .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[3]), .datad (write_fifo_q[3])) ;
                           defparam ix59319z7104.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix4443z7095 (.combout (k_i_pixel[2]), .dataa (1'b1), 
                           .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[2]), .datad (write_fifo_q[2])) ;
                           defparam ix4443z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix4443z7096 (.combout (k_i_pixel[1]), .dataa (1'b1), 
                           .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[1]), .datad (write_fifo_q[1])) ;
                           defparam ix4443z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix4443z7097 (.combout (k_i_pixel[0]), .dataa (1'b1), 
                           .datab (write_fifo_rd_en_delayed), .datac (
                           write_fifo_q_saved[0]), .datad (write_fifo_q[0])) ;
                           defparam ix4443z7097.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix15004z7096 (.combout (rb_empty), .dataa (nx15004z2)
                           , .datab (read_fifo_status_cnt[0]), .datac (
                           read_fifo_status_cnt[7]), .datad (
                           read_fifo_status_cnt[8])) ;
                           defparam ix15004z7096.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix11963z7096 (.combout (rb_i_valid), .dataa (1'b1), .datab (
                           write_fifo_rd_en_delayed), .datac (k_o_valid), .datad (
                           pb[0])) ;
                           defparam ix11963z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7095 (.combout (rb_i_data[7]), .dataa (1'b1)
                           , .datab (k_i_pixel[7]), .datac (pb[0]), .datad (
                           reset_n)) ;
                           defparam ix59319z7095.lut_mask = 16'h0cfc;
    fiftyfivenm_lcell_comb ix59319z7097 (.combout (rb_i_data[6]), .dataa (1'b1)
                           , .datab (k_i_pixel[6]), .datac (k_o_data_6_), .datad (
                           pb[0])) ;
                           defparam ix59319z7097.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7099 (.combout (rb_i_data[5]), .dataa (1'b1)
                           , .datab (k_i_pixel[5]), .datac (seg7_pts[1]), .datad (
                           pb[0])) ;
                           defparam ix59319z7099.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7101 (.combout (rb_i_data[4]), .dataa (1'b1)
                           , .datab (k_i_pixel[4]), .datac (nx59319z1), .datad (
                           pb[0])) ;
                           defparam ix59319z7101.lut_mask = 16'h0fcc;
    fiftyfivenm_lcell_comb ix59319z7103 (.combout (rb_i_data[3]), .dataa (1'b1)
                           , .datab (k_i_pixel[3]), .datac (k_o_data_3_), .datad (
                           pb[0])) ;
                           defparam ix59319z7103.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7105 (.combout (rb_i_data[2]), .dataa (1'b1)
                           , .datab (k_i_pixel[2]), .datac (k_o_data_2_), .datad (
                           pb[0])) ;
                           defparam ix59319z7105.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7106 (.combout (rb_i_data[1]), .dataa (1'b1)
                           , .datab (k_i_pixel[1]), .datac (k_o_data_1_), .datad (
                           pb[0])) ;
                           defparam ix59319z7106.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7107 (.combout (rb_i_data[0]), .dataa (1'b1)
                           , .datab (k_i_pixel[0]), .datac (k_o_data_0_), .datad (
                           pb[0])) ;
                           defparam ix59319z7107.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix11963z7095 (.combout (rb_rd_en_true), .dataa (1'b1)
                           , .datab (rb_i_valid), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix11963z7095.lut_mask = 16'h0300;
    fiftyfivenm_lcell_comb ix25391z7097 (.combout (nx25391z3), .dataa (1'b1), .datab (
                           1'b1), .datac (write_fifo_rd_en_delayed), .datad (
                           pb[0])) ;
                           defparam ix25391z7097.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix7605z7095 (.combout (nx7605z1), .dataa (nx7605z2), 
                           .datab (nx22869z2), .datac (write_fifo_status_cnt[0])
                           , .datad (rx_valid)) ;
                           defparam ix7605z7095.lut_mask = 16'h00f7;
    fiftyfivenm_lcell_comb ix15004z7095 (.combout (nx15004z1), .dataa (rb_empty)
                           , .datab (rb_rd_en), .datac (tx_busy), .datad (
                           tx_busy_delayed)) ;
                           defparam ix15004z7095.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix22869z7096 (.combout (write_fifo_full), .dataa (
                           nx22869z2), .datab (write_fifo_status_cnt[0]), .datac (
                           write_fifo_status_cnt[7]), .datad (
                           write_fifo_status_cnt[8])) ;
                           defparam ix22869z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix49438z7095 (.combout (write_fifo_pointer[7]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[7]), .datac (
                           write_fifo_wr_pointer[7]), .datad (rx_valid)) ;
                           defparam ix49438z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7096 (.combout (write_fifo_pointer[6]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[6]), .datac (
                           write_fifo_wr_pointer[6]), .datad (rx_valid)) ;
                           defparam ix49438z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7097 (.combout (write_fifo_pointer[5]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[5]), .datac (
                           write_fifo_wr_pointer[5]), .datad (rx_valid)) ;
                           defparam ix49438z7097.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7098 (.combout (write_fifo_pointer[4]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[4]), .datac (
                           write_fifo_wr_pointer[4]), .datad (rx_valid)) ;
                           defparam ix49438z7098.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7099 (.combout (write_fifo_pointer[3]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[3]), .datac (
                           write_fifo_wr_pointer[3]), .datad (rx_valid)) ;
                           defparam ix49438z7099.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7100 (.combout (write_fifo_pointer[2]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[2]), .datac (
                           write_fifo_wr_pointer[2]), .datad (rx_valid)) ;
                           defparam ix49438z7100.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7101 (.combout (write_fifo_pointer[1]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[1]), .datac (
                           write_fifo_wr_pointer[1]), .datad (rx_valid)) ;
                           defparam ix49438z7101.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix49438z7102 (.combout (write_fifo_pointer[0]), .dataa (
                           1'b1), .datab (write_fifo_rd_pointer[0]), .datac (
                           write_fifo_wr_pointer[0]), .datad (rx_valid)) ;
                           defparam ix49438z7102.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix59319z7108 (.combout (read_fifo_pointer[7]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[7]), .datad (
                           read_fifo_wr_pointer[7])) ;
                           defparam ix59319z7108.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7109 (.combout (read_fifo_pointer[6]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[6]), .datad (
                           read_fifo_wr_pointer[6])) ;
                           defparam ix59319z7109.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7110 (.combout (read_fifo_pointer[5]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[5]), .datad (
                           read_fifo_wr_pointer[5])) ;
                           defparam ix59319z7110.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7111 (.combout (read_fifo_pointer[4]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[4]), .datad (
                           read_fifo_wr_pointer[4])) ;
                           defparam ix59319z7111.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7112 (.combout (read_fifo_pointer[3]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[3]), .datad (
                           read_fifo_wr_pointer[3])) ;
                           defparam ix59319z7112.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7113 (.combout (read_fifo_pointer[2]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[2]), .datad (
                           read_fifo_wr_pointer[2])) ;
                           defparam ix59319z7113.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7114 (.combout (read_fifo_pointer[1]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[1]), .datad (
                           read_fifo_wr_pointer[1])) ;
                           defparam ix59319z7114.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59319z7115 (.combout (read_fifo_pointer[0]), .dataa (
                           1'b1), .datab (rb_i_valid), .datac (
                           read_fifo_rd_pointer[0]), .datad (
                           read_fifo_wr_pointer[0])) ;
                           defparam ix59319z7115.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix9182z7095 (.combout (nx9182z1), .dataa (rb_i_valid)
                           , .datab (rb_empty), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix9182z7095.lut_mask = 16'h0100;
    fiftyfivenm_lcell_comb ix51544z7100 (.combout (nx51544z6), .dataa (nx51544z7
                           ), .datab (nx51544z8), .datac (seg7_num[5]), .datad (
                           seg7_num[7])) ;
                           defparam ix51544z7100.lut_mask = 16'hbb3b;
    fiftyfivenm_lcell_comb ix51544z7102 (.combout (nx51544z8), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7102.lut_mask = 16'h279f;
    fiftyfivenm_lcell_comb ix51544z7099 (.combout (nx51544z5), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7099.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix51544z7114 (.combout (nx51544z20), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7114.lut_mask = 16'hfd45;
    fiftyfivenm_lcell_comb ix51544z7108 (.combout (nx51544z14), .dataa (
                           nx51544z15), .datab (nx51544z16), .datac (nx51544z17)
                           , .datad (seg7_num[0])) ;
                           defparam ix51544z7108.lut_mask = 16'heeef;
    fiftyfivenm_lcell_comb ix51544z7116 (.combout (nx51544z22), .dataa (
                           nx51544z23), .datab (nx51544z17), .datac (seg7_num[0]
                           ), .datad (seg7_num[1])) ;
                           defparam ix51544z7116.lut_mask = 16'heaee;
    fiftyfivenm_lcell_comb ix51544z7111 (.combout (nx51544z17), .dataa (
                           nx51544z18), .datab (nx51544z19), .datac (nx51544z20)
                           , .datad (seg7_num[2])) ;
                           defparam ix51544z7111.lut_mask = 16'habef;
    fiftyfivenm_lcell_comb ix51544z7113 (.combout (nx51544z19), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7113.lut_mask = 16'hd7ed;
    fiftyfivenm_lcell_comb ix7365z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_4_), .dataa (nx7365z1)
                           , .datab (nx51544z4), .datac (nx51544z20), .datad (
                           seg7_en[1])) ;
                           defparam ix7365z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix6368z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_3_), .dataa (nx51544z9)
                           , .datab (nx51544z10), .datac (nx51544z14), .datad (
                           seg7_en[1])) ;
                           defparam ix6368z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix5371z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_2_), .dataa (1'b1), .datab (
                           nx5371z1), .datac (nx51544z22), .datad (seg7_en[1])
                           ) ;
                           defparam ix5371z7095.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix3377z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_0_), .dataa (1'b1), .datab (
                           nx51544z19), .datac (nx51544z5), .datad (seg7_en[1])
                           ) ;
                           defparam ix3377z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix10356z7095 (.combout (
                           u_seg7_u_dual_seg7_muxed_char_7_), .dataa (1'b1), .datab (
                           nx59319z1), .datac (seg7_pts[1]), .datad (seg7_en[1])
                           ) ;
                           defparam ix10356z7095.lut_mask = 16'hf033;
    fiftyfivenm_lcell_comb ix29573z7095 (.combout (nx29573z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_seg7_u_dual_seg7_prev_reset), .datad (
                           reset_n)) ;
                           defparam ix29573z7095.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix10356z7096 (.combout (u_seg7_u_dual_seg7_load_reg)
                           , .dataa (1'b1), .datab (1'b1), .datac (
                           u_seg7_u_dual_seg7_prev_char0_en), .datad (seg7_en[1]
                           )) ;
                           defparam ix10356z7096.lut_mask = 16'hf00f;
    fiftyfivenm_lcell_comb ix2379z7095 (.combout (nx2379z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx59343z2), .datad (nx64683z2)) ;
                           defparam ix2379z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix25838z7095 (.combout (NOT_u_uart_Tx_Reg_14n6ss1_8_)
                           , .dataa (u_uart_TxFSM[1]), .datab (
                           read_fifo_q_saved[7]), .datac (read_fifo_q[7]), .datad (
                           rb_rd_en_delayed)) ;
                           defparam ix25838z7095.lut_mask = 16'h0511;
    fiftyfivenm_lcell_comb ix17862z7097 (.combout (u_uart_Tx_Reg_14n6ss1_0_), .dataa (
                           1'b1), .datab (u_uart_TxFSM[0]), .datac (
                           u_uart_TxFSM[1]), .datad (nx17862z3)) ;
                           defparam ix17862z7097.lut_mask = 16'h03f3;
    fiftyfivenm_lcell_comb ix18859z7096 (.combout (nx18859z1), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z3)) ;
                           defparam ix18859z7096.lut_mask = 16'h4051;
    fiftyfivenm_lcell_comb ix61431z7096 (.combout (nx61431z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxFSM[1]), .datad (u_uart_TopTx
                           )) ;
                           defparam ix61431z7096.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix13938z7095 (.combout (nx13938z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[4]), .datac (nx12790z3), .datad (
                           u_uart_TopRx)) ;
                           defparam ix13938z7095.lut_mask = 16'h0c00;
    fiftyfivenm_lcell_comb ix44871z7096 (.combout (nx44871z1), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxFSM[3]), .datad (u_uart_TopRx
                           )) ;
                           defparam ix44871z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix12790z7096 (.combout (nx12790z1), .dataa (1'b1), .datab (
                           nx12790z2), .datac (nx64683z2), .datad (nx12790z3)) ;
                           defparam ix12790z7096.lut_mask = 16'h3330;
    fiftyfivenm_lcell_comb ix10796z7095 (.combout (nx10796z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx9799z2), .datad (u_uart_RxFSM[2])) ;
                           defparam ix10796z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix11793z7095 (.combout (nx11793z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[1]), .datac (u_uart_RxFSM[3]), .datad (
                           nx12790z3)) ;
                           defparam ix11793z7095.lut_mask = 16'hfcf0;
    fiftyfivenm_lcell_comb ix13787z7095 (.combout (nx13787z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[4]), .datac (u_uart_RxFSM[5]), .datad (
                           nx12790z3)) ;
                           defparam ix13787z7095.lut_mask = 16'h0f03;
    fiftyfivenm_lcell_comb ix9799z7095 (.combout (nx9799z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx9799z2), .datad (u_uart_RxFSM[2])) ;
                           defparam ix9799z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix59343z7095 (.combout (nx59343z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx59343z2), .datad (nx64683z2)) ;
                           defparam ix59343z7095.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix8802z7095 (.combout (nx8802z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[1]), .datac (u_uart_RxFSM[4]), .datad (
                           nx12790z3)) ;
                           defparam ix8802z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix13251z7095 (.combout (nx13251z1), .dataa (1'b1), .datab (
                           u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           nx7359z3)) ;
                           defparam ix13251z7095.lut_mask = 16'hfcff;
    fiftyfivenm_lcell_comb ix59343z7096 (.combout (nx59343z2), .dataa (nx59343z3
                           ), .datab (nx59343z4), .datac (nx59343z5), .datad (
                           u_uart_RxDiv[6])) ;
                           defparam ix59343z7096.lut_mask = 16'ha0c0;
    fiftyfivenm_lcell_comb ix57349z7095 (.combout (nx57349z1), .dataa (nx57349z2
                           ), .datab (nx57349z3), .datac (nx57349z4), .datad (
                           u_uart_TxDiv[6])) ;
                           defparam ix57349z7095.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix8356z7097 (.combout (nx8356z3), .dataa (
                           u_uart_TxBitCnt[0]), .datab (u_uart_TxBitCnt[1]), .datac (
                           u_uart_TxBitCnt[2]), .datad (u_uart_TxBitCnt[3])) ;
                           defparam ix8356z7097.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix9799z7096 (.combout (nx9799z2), .dataa (
                           u_uart_RxBitCnt[0]), .datab (u_uart_RxBitCnt[1]), .datac (
                           u_uart_RxBitCnt[2]), .datad (u_uart_RxBitCnt[3])) ;
                           defparam ix9799z7096.lut_mask = 16'h0100;
    fiftyfivenm_lcell_comb ix40631z7095 (.combout (u_kirsch_r_max0_1n2ss1[7]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[7]), 
                           .datad (u_kirsch_i_2[7])) ;
                           defparam ix40631z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix39634z7095 (.combout (u_kirsch_r_max0_1n2ss1[6]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[6]), 
                           .datad (u_kirsch_i_2[6])) ;
                           defparam ix39634z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix38637z7095 (.combout (u_kirsch_r_max0_1n2ss1[5]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[5]), 
                           .datad (u_kirsch_i_2[5])) ;
                           defparam ix38637z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix37640z7095 (.combout (u_kirsch_r_max0_1n2ss1[4]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[4]), 
                           .datad (u_kirsch_i_2[4])) ;
                           defparam ix37640z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix36643z7095 (.combout (u_kirsch_r_max0_1n2ss1[3]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[3]), 
                           .datad (u_kirsch_i_2[3])) ;
                           defparam ix36643z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix35646z7095 (.combout (u_kirsch_r_max0_1n2ss1[2]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[2]), 
                           .datad (u_kirsch_i_2[2])) ;
                           defparam ix35646z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix34649z7095 (.combout (u_kirsch_r_max0_1n2ss1[1]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[1]), 
                           .datad (u_kirsch_i_2[1])) ;
                           defparam ix34649z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix33652z7095 (.combout (u_kirsch_r_max0_1n2ss1[0]), .dataa (
                           1'b1), .datab (nx40631z1), .datac (u_kirsch_i_3[0]), 
                           .datad (u_kirsch_i_2[0])) ;
                           defparam ix33652z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix52067z7097 (.combout (nx52067z3), .dataa (
                           u_kirsch_stg_counter2[2]), .datab (
                           u_kirsch_stg_counter2[3]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix52067z7097.lut_mask = 16'h111f;
    fiftyfivenm_lcell_comb ix2094z7096 (.combout (nx2094z2), .dataa (nx26412z3)
                           , .datab (nx12123z2), .datac (nx60486z6), .datad (
                           reset_n)) ;
                           defparam ix2094z7096.lut_mask = 16'hf800;
    fiftyfivenm_lcell_comb ix26412z7103 (.combout (nx26412z9), .dataa (nx29221z2
                           ), .datab (nx41042z10), .datac (
                           u_kirsch_stg_counter1[0]), .datad (
                           u_kirsch_stg_counter1[1])) ;
                           defparam ix26412z7103.lut_mask = 16'hcecc;
    fiftyfivenm_lcell_comb ix38950z7098 (.combout (nx38950z2), .dataa (
                           nx41042z10), .datab (nx38950z1), .datac (nx38950z3), 
                           .datad (nx38950z4)) ;
                           defparam ix38950z7098.lut_mask = 16'h1110;
    fiftyfivenm_lcell_comb ix34206z7095 (.combout (u_kirsch_r_max1_5n6ss1[9]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[9]), .datad (u_kirsch_r_add1_a[9])
                           ) ;
                           defparam ix34206z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix33209z7095 (.combout (u_kirsch_r_max1_5n6ss1[8]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[8]), .datad (u_kirsch_r_add1_a[8])
                           ) ;
                           defparam ix33209z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix32212z7095 (.combout (u_kirsch_r_max1_5n6ss1[7]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[7]), .datad (u_kirsch_r_add1_a[7])
                           ) ;
                           defparam ix32212z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix31215z7095 (.combout (u_kirsch_r_max1_5n6ss1[6]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[6]), .datad (u_kirsch_r_add1_a[6])
                           ) ;
                           defparam ix31215z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix30218z7095 (.combout (u_kirsch_r_max1_5n6ss1[5]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[5]), .datad (u_kirsch_r_add1_a[5])
                           ) ;
                           defparam ix30218z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix29221z7095 (.combout (u_kirsch_r_max1_5n6ss1[4]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[4]), .datad (u_kirsch_r_add1_a[4])
                           ) ;
                           defparam ix29221z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix28224z7095 (.combout (u_kirsch_r_max1_5n6ss1[3]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[3]), .datad (u_kirsch_r_add1_a[3])
                           ) ;
                           defparam ix28224z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix27227z7095 (.combout (u_kirsch_r_max1_5n6ss1[2]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[2]), .datad (u_kirsch_r_add1_a[2])
                           ) ;
                           defparam ix27227z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix26230z7095 (.combout (u_kirsch_r_max1_5n6ss1[1]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[1]), .datad (u_kirsch_r_add1_a[1])
                           ) ;
                           defparam ix26230z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix25233z7095 (.combout (u_kirsch_r_max1_5n6ss1[0]), .dataa (
                           1'b1), .datab (nx29221z1), .datac (
                           u_kirsch_r_add1_b[0]), .datad (u_kirsch_r_add1_a[0])
                           ) ;
                           defparam ix25233z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix29221z7103 (.combout (nx29221z10), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix29221z7103.lut_mask = 16'h0038;
    fiftyfivenm_lcell_comb ix12123z7095 (.combout (nx12123z1), .dataa (nx41042z9
                           ), .datab (nx12123z2), .datac (nx12123z3), .datad (
                           reset_n)) ;
                           defparam ix12123z7095.lut_mask = 16'hf800;
    fiftyfivenm_lcell_comb ix29221z7099 (.combout (nx29221z5), .dataa (1'b1), .datab (
                           1'b1), .datac (nx29221z6), .datad (nx29221z8)) ;
                           defparam ix29221z7099.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix4094z7095 (.combout (nx4094z1), .dataa (1'b1), .datab (
                           nx4094z2), .datac (nx16758z7), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix4094z7095.lut_mask = 16'hccfc;
    fiftyfivenm_lcell_comb ix64328z7098 (.combout (nx64328z4), .dataa (nx4094z2)
                           , .datab (nx16758z7), .datac (
                           u_kirsch_stg_counter1[3]), .datad (reset_n)) ;
                           defparam ix64328z7098.lut_mask = 16'hae00;
    fiftyfivenm_lcell_comb ix22605z7096 (.combout (nx22605z2), .dataa (1'b1), .datab (
                           nx22605z3), .datac (u_kirsch_r_sub0_11_), .datad (
                           u_kirsch_r_sub0_12_)) ;
                           defparam ix22605z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix64381z7098 (.combout (u_kirsch_d3_9n15ss1_7_), .dataa (
                           1'b1), .datab (nx64381z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[7])) ;
                           defparam ix64381z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix65378z7098 (.combout (u_kirsch_d3_9n15ss1_6_), .dataa (
                           1'b1), .datab (nx65378z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[6])) ;
                           defparam ix65378z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix839z7098 (.combout (u_kirsch_d3_9n15ss1_5_), .dataa (
                           1'b1), .datab (nx839z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[5])) ;
                           defparam ix839z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix1836z7098 (.combout (u_kirsch_d3_9n15ss1_4_), .dataa (
                           1'b1), .datab (nx1836z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[4])) ;
                           defparam ix1836z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix2833z7098 (.combout (u_kirsch_d3_9n15ss1_3_), .dataa (
                           1'b1), .datab (nx2833z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[3])) ;
                           defparam ix2833z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix3830z7098 (.combout (u_kirsch_d3_9n15ss1_2_), .dataa (
                           1'b1), .datab (nx3830z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[2])) ;
                           defparam ix3830z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix4827z7098 (.combout (u_kirsch_d3_9n15ss1_1_), .dataa (
                           1'b1), .datab (nx4827z4), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[1])) ;
                           defparam ix4827z7098.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix63433z7095 (.combout (u_kirsch_a2_9n22ss1[7]), .dataa (
                           nx63433z1), .datab (nx63433z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[7])) ;
                           defparam ix63433z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix55082z7095 (.combout (u_kirsch_a2_9n22ss1[6]), .dataa (
                           nx55082z1), .datab (nx55082z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[6])) ;
                           defparam ix55082z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix56079z7095 (.combout (u_kirsch_a2_9n22ss1[5]), .dataa (
                           nx56079z1), .datab (nx56079z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[5])) ;
                           defparam ix56079z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix57076z7095 (.combout (u_kirsch_a2_9n22ss1[4]), .dataa (
                           nx57076z1), .datab (nx57076z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[4])) ;
                           defparam ix57076z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix58073z7095 (.combout (u_kirsch_a2_9n22ss1[3]), .dataa (
                           nx58073z1), .datab (nx58073z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[3])) ;
                           defparam ix58073z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix59070z7095 (.combout (u_kirsch_a2_9n22ss1[2]), .dataa (
                           nx59070z1), .datab (nx59070z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[2])) ;
                           defparam ix59070z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix60067z7095 (.combout (u_kirsch_a2_9n22ss1[1]), .dataa (
                           nx60067z1), .datab (nx60067z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[1])) ;
                           defparam ix60067z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix61064z7095 (.combout (u_kirsch_a2_9n22ss1[0]), .dataa (
                           nx61064z1), .datab (nx61064z2), .datac (nx25391z3), .datad (
                           u_kirsch_c3[0])) ;
                           defparam ix61064z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix41042z7095 (.combout (u_kirsch_h2_9n22ss1[7]), .dataa (
                           nx41042z1), .datab (nx41042z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[7])) ;
                           defparam ix41042z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix40045z7095 (.combout (u_kirsch_h2_9n22ss1[6]), .dataa (
                           nx40045z1), .datab (nx40045z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[6])) ;
                           defparam ix40045z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix39048z7095 (.combout (u_kirsch_h2_9n22ss1[5]), .dataa (
                           nx39048z1), .datab (nx39048z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[5])) ;
                           defparam ix39048z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix38051z7095 (.combout (u_kirsch_h2_9n22ss1[4]), .dataa (
                           nx38051z1), .datab (nx38051z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[4])) ;
                           defparam ix38051z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix37054z7095 (.combout (u_kirsch_h2_9n22ss1[3]), .dataa (
                           nx37054z1), .datab (nx37054z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[3])) ;
                           defparam ix37054z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix36057z7095 (.combout (u_kirsch_h2_9n22ss1[2]), .dataa (
                           nx36057z1), .datab (nx36057z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[2])) ;
                           defparam ix36057z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix35060z7095 (.combout (u_kirsch_h2_9n22ss1[1]), .dataa (
                           nx35060z1), .datab (nx35060z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[1])) ;
                           defparam ix35060z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix34063z7095 (.combout (u_kirsch_h2_9n22ss1[0]), .dataa (
                           nx34063z1), .datab (nx34063z2), .datac (nx25391z3), .datad (
                           u_kirsch_d3[0])) ;
                           defparam ix34063z7095.lut_mask = 16'h8f80;
    fiftyfivenm_lcell_comb ix42893z7095 (.combout (u_kirsch_f3_9n22ss1[7]), .dataa (
                           k_i_pixel[7]), .datab (u_kirsch_e3[7]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix42893z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix45180z7095 (.combout (u_kirsch_f3_9n22ss1[6]), .dataa (
                           k_i_pixel[6]), .datab (u_kirsch_e3[6]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix45180z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix44183z7095 (.combout (u_kirsch_f3_9n22ss1[5]), .dataa (
                           k_i_pixel[5]), .datab (u_kirsch_e3[5]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix44183z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix43186z7095 (.combout (u_kirsch_f3_9n22ss1[4]), .dataa (
                           k_i_pixel[4]), .datab (u_kirsch_e3[4]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix43186z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix42189z7095 (.combout (u_kirsch_f3_9n22ss1[3]), .dataa (
                           k_i_pixel[3]), .datab (u_kirsch_e3[3]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix42189z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix41192z7095 (.combout (u_kirsch_f3_9n22ss1[2]), .dataa (
                           k_i_pixel[2]), .datab (u_kirsch_e3[2]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix41192z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix40195z7095 (.combout (u_kirsch_f3_9n22ss1[1]), .dataa (
                           k_i_pixel[1]), .datab (u_kirsch_e3[1]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix40195z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix39198z7095 (.combout (u_kirsch_f3_9n22ss1[0]), .dataa (
                           k_i_pixel[0]), .datab (u_kirsch_e3[0]), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix39198z7095.lut_mask = 16'haccc;
    fiftyfivenm_lcell_comb ix37156z7095 (.combout (nx37156z1), .dataa (nx16758z2
                           ), .datab (nx17755z2), .datac (nx16758z7), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix37156z7095.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix41042z7106 (.combout (nx41042z11), .dataa (
                           nx26412z4), .datab (u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix41042z7106.lut_mask = 16'haaab;
    fiftyfivenm_lcell_comb ix55203z7096 (.combout (nx55203z2), .dataa (nx16758z4
                           ), .datab (nx16758z7), .datac (nx55203z3), .datad (
                           reset_n)) ;
                           defparam ix55203z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix18752z7097 (.combout (nx18752z3), .dataa (nx16758z2
                           ), .datab (u_kirsch_stg_counter2[2]), .datac (
                           u_kirsch_stg_counter2[3]), .datad (reset_n)) ;
                           defparam ix18752z7097.lut_mask = 16'h08ff;
    fiftyfivenm_lcell_comb ix16758z7097 (.combout (nx16758z3), .dataa (nx16758z4
                           ), .datab (nx16758z7), .datac (nx55203z3), .datad (
                           reset_n)) ;
                           defparam ix16758z7097.lut_mask = 16'h2000;
    fiftyfivenm_lcell_comb ix53163z7097 (.combout (nx53163z3), .dataa (nx53163z4
                           ), .datab (nx16758z6), .datac (nx25391z3), .datad (
                           reset_n)) ;
                           defparam ix53163z7097.lut_mask = 16'he000;
    fiftyfivenm_lcell_comb ix26412z7101 (.combout (nx26412z7), .dataa (1'b1), .datab (
                           nx41042z6), .datac (nx26412z8), .datad (reset_n)) ;
                           defparam ix26412z7101.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix41042z7100 (.combout (nx41042z5), .dataa (1'b1), .datab (
                           nx41042z6), .datac (nx41042z7), .datad (reset_n)) ;
                           defparam ix41042z7100.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix55203z7097 (.combout (nx55203z3), .dataa (nx55203z4
                           ), .datab (u_kirsch_address[1]), .datac (
                           u_kirsch_address[2]), .datad (u_kirsch_address[4])) ;
                           defparam ix55203z7097.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix63596z7098 (.combout (nx63596z4), .dataa (nx25391z2
                           ), .datab (nx37417z3), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix63596z7098.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix49076z7096 (.combout (nx49076z2), .dataa (nx52067z3
                           ), .datab (u_kirsch_max0_bit_counter[0]), .datac (
                           u_kirsch_max0_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix49076z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix52067z7096 (.combout (nx52067z2), .dataa (nx52067z3
                           ), .datab (u_kirsch_max0_bit_counter[0]), .datac (
                           u_kirsch_max0_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix52067z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix50073z7096 (.combout (nx50073z2), .dataa (nx52067z3
                           ), .datab (u_kirsch_max0_bit_counter[0]), .datac (
                           u_kirsch_max0_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix50073z7096.lut_mask = 16'h2000;
    fiftyfivenm_lcell_comb ix22605z7095 (.combout (nx22605z1), .dataa (nx4094z2)
                           , .datab (nx16758z7), .datac (nx22605z2), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix22605z7095.lut_mask = 16'ha0e0;
    fiftyfivenm_lcell_comb ix29221z7096 (.combout (nx29221z1), .dataa (nx29221z2
                           ), .datab (nx29221z3), .datac (nx57197z2), .datad (
                           nx29221z4)) ;
                           defparam ix29221z7096.lut_mask = 16'hec00;
    fiftyfivenm_lcell_comb ix4443z7098 (.combout (nx4443z1), .dataa (
                           u_kirsch_row_index[0]), .datab (u_kirsch_row_index[1]
                           ), .datac (write_fifo_rd_en_delayed), .datad (pb[0])
                           ) ;
                           defparam ix4443z7098.lut_mask = 16'h4000;
    fiftyfivenm_lcell_comb ix62334z7095 (.combout (nx62334z1), .dataa (nx22605z3
                           ), .datab (nx62334z2), .datac (u_kirsch_r_sub0_11_), 
                           .datad (u_kirsch_r_sub0_12_)) ;
                           defparam ix62334z7095.lut_mask = 16'hccc8;
    fiftyfivenm_lcell_comb ix60486z7097 (.combout (nx60486z3), .dataa (nx60486z4
                           ), .datab (nx60486z7), .datac (nx29221z6), .datad (
                           nx29221z1)) ;
                           defparam ix60486z7097.lut_mask = 16'hffe0;
    fiftyfivenm_lcell_comb ix63331z7095 (.combout (nx63331z1), .dataa (nx22605z2
                           ), .datab (u_kirsch_dir2_final[0]), .datac (
                           u_kirsch_dir2_final[1]), .datad (
                           u_kirsch_dir2_final[2])) ;
                           defparam ix63331z7095.lut_mask = 16'h8a00;
    fiftyfivenm_lcell_comb ix64328z7095 (.combout (nx64328z1), .dataa (nx64328z2
                           ), .datab (nx22605z2), .datac (u_kirsch_dir2_final[2]
                           ), .datad (u_kirsch_dir1_final[3])) ;
                           defparam ix64328z7095.lut_mask = 16'h8c80;
    fiftyfivenm_lcell_comb ix41042z7099 (.combout (nx41042z4), .dataa (
                           u_kirsch_row_index[0]), .datab (u_kirsch_row_index[1]
                           ), .datac (write_fifo_rd_en_delayed), .datad (pb[0])
                           ) ;
                           defparam ix41042z7099.lut_mask = 16'h1000;
    fiftyfivenm_lcell_comb ix41042z7098 (.combout (nx41042z3), .dataa (
                           u_kirsch_row_index[0]), .datab (u_kirsch_row_index[1]
                           ), .datac (write_fifo_rd_en_delayed), .datad (pb[0])
                           ) ;
                           defparam ix41042z7098.lut_mask = 16'h2000;
    fiftyfivenm_lcell_comb ix40631z7096 (.combout (nx40631z2), .dataa (nx29221z2
                           ), .datab (u_kirsch_stg_counter2[2]), .datac (
                           u_kirsch_stg_counter2[3]), .datad (reset_n)) ;
                           defparam ix40631z7096.lut_mask = 16'hab00;
    fiftyfivenm_lcell_comb ix29221z7101 (.combout (nx29221z8), .dataa (nx29221z9
                           ), .datab (nx57197z2), .datac (nx29221z10), .datad (
                           reset_n)) ;
                           defparam ix29221z7101.lut_mask = 16'hf800;
    fiftyfivenm_lcell_comb ix60486z7100 (.combout (nx60486z6), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix60486z7100.lut_mask = 16'h0010;
    fiftyfivenm_lcell_comb ix38950z7100 (.combout (nx38950z4), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix38950z7100.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix4094z7096 (.combout (nx4094z2), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix4094z7096.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix41042z7105 (.combout (nx41042z10), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix41042z7105.lut_mask = 16'h0004;
    fiftyfivenm_lcell_comb ix26412z7098 (.combout (nx26412z4), .dataa (1'b1), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix26412z7098.lut_mask = 16'h0003;
    fiftyfivenm_lcell_comb ix18752z7096 (.combout (nx18752z2), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix18752z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix38950z7099 (.combout (nx38950z3), .dataa (
                           u_kirsch_stg_counter1[0]), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix38950z7099.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix16758z7101 (.combout (nx16758z7), .dataa (1'b1), .datab (
                           u_kirsch_stg_counter1[0]), .datac (
                           u_kirsch_stg_counter1[1]), .datad (
                           u_kirsch_stg_counter1[2])) ;
                           defparam ix16758z7101.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix38950z7096 (.combout (nx38950z1), .dataa (
                           u_kirsch_stg_counter1[0]), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix38950z7096.lut_mask = 16'h0004;
    fiftyfivenm_lcell_comb ix63596z7096 (.combout (nx63596z2), .dataa (nx63596z3
                           ), .datab (nx25391z6), .datac (u_kirsch_row_count[4])
                           , .datad (u_kirsch_row_count[5])) ;
                           defparam ix63596z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix37417z7095 (.combout (nx37417z1), .dataa (1'b1), .datab (
                           write_fifo_rd_en_delayed), .datac (pb[0]), .datad (
                           reset_n)) ;
                           defparam ix37417z7095.lut_mask = 16'hc0ff;
    fiftyfivenm_lcell_comb ix11769z7095 (.combout (u_kirsch_r_add2_4n1s1f1[9]), 
                           .dataa (1'b1), .datab (nx41042z10), .datac (nx38950z1
                           ), .datad (u_kirsch_r_add2[9])) ;
                           defparam ix11769z7095.lut_mask = 16'h0300;
    fiftyfivenm_lcell_comb ix42917z7095 (.combout (u_kirsch_r_add2_4n1s1f1[8]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[8]), .datad (u_kirsch_r_add0_b[8])) ;
                           defparam ix42917z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix38950z7095 (.combout (u_kirsch_r_add2_4n1s1f1[7]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[7]), .datad (u_kirsch_r_add0_b[7])) ;
                           defparam ix38950z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix7802z7095 (.combout (u_kirsch_r_add2_4n1s1f1[6]), .dataa (
                           nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[6]), .datad (u_kirsch_r_add0_b[6])) ;
                           defparam ix7802z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix23346z7095 (.combout (u_kirsch_r_add2_4n1s1f1[5]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[5]), .datad (u_kirsch_r_add0_b[5])) ;
                           defparam ix23346z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix58521z7095 (.combout (u_kirsch_r_add2_4n1s1f1[4]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[4]), .datad (u_kirsch_r_add0_b[4])) ;
                           defparam ix58521z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix27373z7095 (.combout (u_kirsch_r_add2_4n1s1f1[3]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[3]), .datad (u_kirsch_r_add0_b[3])) ;
                           defparam ix27373z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix21832z7095 (.combout (u_kirsch_r_add2_4n1s1f1[2]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[2]), .datad (u_kirsch_r_add0_b[2])) ;
                           defparam ix21832z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix52980z7095 (.combout (u_kirsch_r_add2_4n1s1f1[1]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[1]), .datad (u_kirsch_r_add0_b[1])) ;
                           defparam ix52980z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix46944z7095 (.combout (u_kirsch_r_add2_4n1s1f1[0]), 
                           .dataa (nx41042z10), .datab (nx38950z1), .datac (
                           u_kirsch_r_add2[0]), .datad (u_kirsch_r_add0_b[0])) ;
                           defparam ix46944z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix46914z7095 (.combout (u_kirsch_r_add2_4n1s1f2[12])
                           , .dataa (nx38950z3), .datab (nx38950z4), .datac (
                           nx26412z9), .datad (u_kirsch_r_add2[11])) ;
                           defparam ix46914z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix62488z7095 (.combout (u_kirsch_r_add2_4n1s1f2[11])
                           , .dataa (nx38950z3), .datab (nx38950z4), .datac (
                           nx26412z9), .datad (u_kirsch_r_add2[10])) ;
                           defparam ix62488z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix37436z7095 (.combout (u_kirsch_r_add2_4n1s1f2[10])
                           , .dataa (nx38950z3), .datab (nx38950z4), .datac (
                           nx26412z9), .datad (u_kirsch_r_add2[9])) ;
                           defparam ix37436z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix11769z7096 (.combout (u_kirsch_r_add2_4n1s1f2[9]), 
                           .dataa (nx38950z3), .datab (nx38950z4), .datac (
                           nx26412z9), .datad (u_kirsch_r_add2[8])) ;
                           defparam ix11769z7096.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix42917z7096 (.combout (u_kirsch_r_add2_4n1s1f2[8]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[7]), .datad (u_kirsch_r_add0_a[8])) ;
                           defparam ix42917z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix38950z7097 (.combout (u_kirsch_r_add2_4n1s1f2[7]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[6]), .datad (u_kirsch_r_add0_a[7])) ;
                           defparam ix38950z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix7802z7096 (.combout (u_kirsch_r_add2_4n1s1f2[6]), .dataa (
                           1'b1), .datab (nx38950z2), .datac (u_kirsch_r_add2[5]
                           ), .datad (u_kirsch_r_add0_a[6])) ;
                           defparam ix7802z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix23346z7096 (.combout (u_kirsch_r_add2_4n1s1f2[5]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[4]), .datad (u_kirsch_r_add0_a[5])) ;
                           defparam ix23346z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix58521z7096 (.combout (u_kirsch_r_add2_4n1s1f2[4]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[3]), .datad (u_kirsch_r_add0_a[4])) ;
                           defparam ix58521z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix27373z7096 (.combout (u_kirsch_r_add2_4n1s1f2[3]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[2]), .datad (u_kirsch_r_add0_a[3])) ;
                           defparam ix27373z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix21832z7096 (.combout (u_kirsch_r_add2_4n1s1f2[2]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[1]), .datad (u_kirsch_r_add0_a[2])) ;
                           defparam ix21832z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix52980z7096 (.combout (u_kirsch_r_add2_4n1s1f2[1]), 
                           .dataa (1'b1), .datab (nx38950z2), .datac (
                           u_kirsch_r_add2[0]), .datad (u_kirsch_r_add0_a[1])) ;
                           defparam ix52980z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix62334z7097 (.combout (nx62334z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_dir2_final[0]), .datad (
                           u_kirsch_dir1_final[1])) ;
                           defparam ix62334z7097.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix29221z7100 (.combout (nx29221z6), .dataa (nx29221z2
                           ), .datab (nx29221z3), .datac (nx57197z2), .datad (
                           nx29221z7)) ;
                           defparam ix29221z7100.lut_mask = 16'h0013;
    fiftyfivenm_lcell_comb ix19433z7096 (.combout (nx19433z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[0]), .datad (
                           u_kirsch_g2[0])) ;
                           defparam ix19433z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix20430z7096 (.combout (nx20430z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[1]), .datad (
                           u_kirsch_g2[1])) ;
                           defparam ix20430z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix21427z7096 (.combout (nx21427z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[2]), .datad (
                           u_kirsch_g2[2])) ;
                           defparam ix21427z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix22424z7096 (.combout (nx22424z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[3]), .datad (
                           u_kirsch_g2[3])) ;
                           defparam ix22424z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix23421z7096 (.combout (nx23421z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[4]), .datad (
                           u_kirsch_g2[4])) ;
                           defparam ix23421z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix24418z7096 (.combout (nx24418z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[5]), .datad (
                           u_kirsch_g2[5])) ;
                           defparam ix24418z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix25415z7096 (.combout (nx25415z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[6]), .datad (
                           u_kirsch_g2[6])) ;
                           defparam ix25415z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix26412z7099 (.combout (nx26412z5), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_h3[7]), .datad (
                           u_kirsch_g2[7])) ;
                           defparam ix26412z7099.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix11014z7097 (.combout (nx11014z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[0]), .datad (
                           u_kirsch_a3[0])) ;
                           defparam ix11014z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix12011z7097 (.combout (nx12011z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[1]), .datad (
                           u_kirsch_a3[1])) ;
                           defparam ix12011z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix13008z7097 (.combout (nx13008z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[2]), .datad (
                           u_kirsch_a3[2])) ;
                           defparam ix13008z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix14005z7097 (.combout (nx14005z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[3]), .datad (
                           u_kirsch_a3[3])) ;
                           defparam ix14005z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix15002z7097 (.combout (nx15002z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[4]), .datad (
                           u_kirsch_a3[4])) ;
                           defparam ix15002z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix15999z7097 (.combout (nx15999z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[5]), .datad (
                           u_kirsch_a3[5])) ;
                           defparam ix15999z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix16996z7097 (.combout (nx16996z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[6]), .datad (
                           u_kirsch_a3[6])) ;
                           defparam ix16996z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix17993z7097 (.combout (nx17993z3), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[7]), .datad (
                           u_kirsch_a3[7])) ;
                           defparam ix17993z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix62941z7096 (.combout (nx62941z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[0]), .datad (
                           u_kirsch_e3[0])) ;
                           defparam ix62941z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix61944z7096 (.combout (nx61944z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[1]), .datad (
                           u_kirsch_e3[1])) ;
                           defparam ix61944z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix60947z7096 (.combout (nx60947z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[2]), .datad (
                           u_kirsch_e3[2])) ;
                           defparam ix60947z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix59950z7096 (.combout (nx59950z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[3]), .datad (
                           u_kirsch_e3[3])) ;
                           defparam ix59950z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix58953z7096 (.combout (nx58953z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[4]), .datad (
                           u_kirsch_e3[4])) ;
                           defparam ix58953z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix57956z7096 (.combout (nx57956z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[5]), .datad (
                           u_kirsch_e3[5])) ;
                           defparam ix57956z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix56959z7096 (.combout (nx56959z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[6]), .datad (
                           u_kirsch_e3[6])) ;
                           defparam ix56959z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix55962z7096 (.combout (nx55962z2), .dataa (nx26412z6
                           ), .datab (nx26412z4), .datac (u_kirsch_g3[7]), .datad (
                           u_kirsch_e3[7])) ;
                           defparam ix55962z7096.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix5824z7097 (.combout (nx5824z3), .dataa (nx26412z6)
                           , .datab (nx26412z4), .datac (u_kirsch_h3[0]), .datad (
                           u_kirsch_a2[0])) ;
                           defparam ix5824z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix4827z7097 (.combout (nx4827z3), .dataa (nx26412z6)
                           , .datab (nx26412z4), .datac (u_kirsch_h3[1]), .datad (
                           u_kirsch_a2[1])) ;
                           defparam ix4827z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix3830z7097 (.combout (nx3830z3), .dataa (nx26412z6)
                           , .datab (nx26412z4), .datac (u_kirsch_h3[2]), .datad (
                           u_kirsch_a2[2])) ;
                           defparam ix3830z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix2833z7097 (.combout (nx2833z3), .dataa (nx26412z6)
                           , .datab (nx26412z4), .datac (u_kirsch_h3[3]), .datad (
                           u_kirsch_a2[3])) ;
                           defparam ix2833z7097.lut_mask = 16'hf1e0;
    fiftyfivenm_lcell_comb ix1836z7097 (.combout (nx1836z3), .dataa (1'b1), .datab (
                           nx41042z11), .datac (u_kirsch_h3[4]), .datad (
                           u_kirsch_a2[4])) ;
                           defparam ix1836z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix839z7097 (.combout (nx839z3), .dataa (1'b1), .datab (
                           nx41042z11), .datac (u_kirsch_h3[5]), .datad (
                           u_kirsch_a2[5])) ;
                           defparam ix839z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix64381z7099 (.combout (nx64381z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[7]), .datad (
                           u_kirsch_o_dataA[7])) ;
                           defparam ix64381z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix65378z7099 (.combout (nx65378z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[6]), .datad (
                           u_kirsch_o_dataA[6])) ;
                           defparam ix65378z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix839z7099 (.combout (nx839z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[5]), .datad (
                           u_kirsch_o_dataA[5])) ;
                           defparam ix839z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix1836z7099 (.combout (nx1836z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[4]), .datad (
                           u_kirsch_o_dataA[4])) ;
                           defparam ix1836z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix2833z7099 (.combout (nx2833z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[3]), .datad (
                           u_kirsch_o_dataA[3])) ;
                           defparam ix2833z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix3830z7099 (.combout (nx3830z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[2]), .datad (
                           u_kirsch_o_dataA[2])) ;
                           defparam ix3830z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix4827z7099 (.combout (nx4827z4), .dataa (1'b1), .datab (
                           nx41042z3), .datac (u_kirsch_o_dataB[1]), .datad (
                           u_kirsch_o_dataA[1])) ;
                           defparam ix4827z7099.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix18625z7095 (.combout (nx18625z1), .dataa (1'b1), .datab (
                           nx51544z17), .datac (nx51544z8), .datad (seg7_en[1])
                           ) ;
                           defparam ix18625z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix28027z7095 (.combout (nx28027z1), .dataa (
                           nx51544z24), .datab (nx51544z17), .datac (nx51544z6)
                           , .datad (seg7_en[1])) ;
                           defparam ix28027z7095.lut_mask = 16'hf0bb;
    fiftyfivenm_lcell_comb ix51544z7095 (.combout (nx51544z1), .dataa (nx51544z2
                           ), .datab (nx51544z11), .datac (nx51544z12), .datad (
                           seg7_en[1])) ;
                           defparam ix51544z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix56200z7096 (.combout (nx56200z2), .dataa (
                           u_kirsch_stg_counter1[0]), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix56200z7096.lut_mask = 16'he666;
    fiftyfivenm_lcell_comb ix57197z7096 (.combout (nx57197z2), .dataa (
                           u_kirsch_stg_counter1[0]), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix57197z7096.lut_mask = 16'hf878;
    fiftyfivenm_lcell_comb ix17755z7096 (.combout (nx17755z2), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix17755z7096.lut_mask = 16'he666;
    fiftyfivenm_lcell_comb ix60415z7095 (.combout (nx60415z1), .dataa (nx60415z2
                           ), .datab (nx60415z3), .datac (uart_reset), .datad (
                           reset_n)) ;
                           defparam ix60415z7095.lut_mask = 16'h00f8;
    fiftyfivenm_lcell_comb ix46735z7095 (.combout (nx46735z1), .dataa (nx29221z8
                           ), .datab (u_kirsch_max1_bit_counter[0]), .datac (
                           u_kirsch_max1_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix46735z7095.lut_mask = 16'h4602;
    fiftyfivenm_lcell_comb ix45738z7095 (.combout (nx45738z1), .dataa (nx29221z8
                           ), .datab (u_kirsch_max1_bit_counter[0]), .datac (
                           u_kirsch_max1_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix45738z7095.lut_mask = 16'h5808;
    fiftyfivenm_lcell_comb ix64316z7095 (.combout (nx64316z1), .dataa (1'b1), .datab (
                           nx52067z3), .datac (u_kirsch_max0_bit_counter[0]), .datad (
                           reset_n)) ;
                           defparam ix64316z7095.lut_mask = 16'h3c00;
    fiftyfivenm_lcell_comb ix63319z7095 (.combout (nx63319z1), .dataa (nx52067z3
                           ), .datab (u_kirsch_max0_bit_counter[0]), .datac (
                           u_kirsch_max0_bit_counter[1]), .datad (reset_n)) ;
                           defparam ix63319z7095.lut_mask = 16'h7800;
    fiftyfivenm_lcell_comb ix57978z7095 (.combout (nx57978z1), .dataa (nx29221z2
                           ), .datab (nx41042z9), .datac (nx41042z10), .datad (
                           u_kirsch_r_add2_4n1s1[10])) ;
                           defparam ix57978z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix56981z7095 (.combout (nx56981z1), .dataa (nx29221z2
                           ), .datab (nx41042z9), .datac (nx41042z10), .datad (
                           u_kirsch_r_add2_4n1s1[11])) ;
                           defparam ix56981z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix55984z7095 (.combout (nx55984z1), .dataa (nx29221z2
                           ), .datab (nx41042z9), .datac (nx41042z10), .datad (
                           u_kirsch_r_add2_4n1s1[12])) ;
                           defparam ix55984z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix55203z7095 (.combout (nx55203z1), .dataa (nx16758z7
                           ), .datab (nx55203z2), .datac (
                           u_kirsch_stg_counter1[0]), .datad (reset_n)) ;
                           defparam ix55203z7095.lut_mask = 16'h2333;
    fiftyfivenm_lcell_comb ix56200z7095 (.combout (nx56200z1), .dataa (nx56200z2
                           ), .datab (nx16758z7), .datac (nx55203z2), .datad (
                           reset_n)) ;
                           defparam ix56200z7095.lut_mask = 16'h0e0f;
    fiftyfivenm_lcell_comb ix57197z7095 (.combout (nx57197z1), .dataa (nx57197z2
                           ), .datab (nx16758z7), .datac (nx55203z2), .datad (
                           reset_n)) ;
                           defparam ix57197z7095.lut_mask = 16'h0e0f;
    fiftyfivenm_lcell_comb ix58194z7095 (.combout (nx58194z1), .dataa (nx16758z7
                           ), .datab (nx55203z2), .datac (
                           u_kirsch_stg_counter1[3]), .datad (reset_n)) ;
                           defparam ix58194z7095.lut_mask = 16'h3233;
    fiftyfivenm_lcell_comb ix18752z7095 (.combout (nx18752z1), .dataa (nx18752z2
                           ), .datab (nx16758z3), .datac (nx18752z3), .datad (
                           u_kirsch_stg_counter2[0])) ;
                           defparam ix18752z7095.lut_mask = 16'h3231;
    fiftyfivenm_lcell_comb ix17755z7095 (.combout (nx17755z1), .dataa (nx4094z2)
                           , .datab (nx17755z2), .datac (nx16758z3), .datad (
                           reset_n)) ;
                           defparam ix17755z7095.lut_mask = 16'h0e0f;
    fiftyfivenm_lcell_comb ix16758z7095 (.combout (nx16758z1), .dataa (nx16758z2
                           ), .datab (nx16758z3), .datac (
                           u_kirsch_stg_counter2[2]), .datad (reset_n)) ;
                           defparam ix16758z7095.lut_mask = 16'h3233;
    fiftyfivenm_lcell_comb ix15761z7095 (.combout (nx15761z1), .dataa (nx4094z2)
                           , .datab (nx16758z3), .datac (
                           u_kirsch_stg_counter2[3]), .datad (reset_n)) ;
                           defparam ix15761z7095.lut_mask = 16'h3233;
    fiftyfivenm_lcell_comb ix50073z7095 (.combout (nx50073z1), .dataa (1'b1), .datab (
                           nx50073z2), .datac (nx40631z1), .datad (
                           u_kirsch_dir1[2])) ;
                           defparam ix50073z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix52067z7095 (.combout (nx52067z1), .dataa (1'b1), .datab (
                           nx52067z2), .datac (nx40631z1), .datad (
                           u_kirsch_dir1[0])) ;
                           defparam ix52067z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix49076z7095 (.combout (nx49076z1), .dataa (1'b1), .datab (
                           nx49076z2), .datac (nx40631z1), .datad (
                           u_kirsch_dir1[3])) ;
                           defparam ix49076z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix51070z7095 (.combout (nx51070z1), .dataa (nx63319z1
                           ), .datab (nx40631z1), .datac (
                           u_kirsch_max0_bit_counter[1]), .datad (
                           u_kirsch_dir1[1])) ;
                           defparam ix51070z7095.lut_mask = 16'hfd08;
    fiftyfivenm_lcell_comb ix58492z7095 (.combout (nx58492z1), .dataa (1'b1), .datab (
                           nx58492z2), .datac (nx60486z3), .datad (
                           u_kirsch_dir2[2])) ;
                           defparam ix58492z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix59489z7095 (.combout (nx59489z1), .dataa (1'b1), .datab (
                           nx59489z2), .datac (nx60486z3), .datad (
                           u_kirsch_dir2[1])) ;
                           defparam ix59489z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix60486z7095 (.combout (nx60486z1), .dataa (1'b1), .datab (
                           nx60486z2), .datac (nx60486z3), .datad (
                           u_kirsch_dir2[0])) ;
                           defparam ix60486z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix40325z7095 (.combout (nx40325z1), .dataa (1'b1), .datab (
                           u_uart_RxFSM[5]), .datac (rx_valid), .datad (
                           k_o_data_6_)) ;
                           defparam ix40325z7095.lut_mask = 16'hcfcc;
    fiftyfivenm_lcell_comb ix64502z7095 (.combout (nx64502z1), .dataa (nx64502z2
                           ), .datab (rb_i_valid), .datac (
                           wait_for_tx_valid_delayed), .datad (rb_rd_en)) ;
                           defparam ix64502z7095.lut_mask = 16'habaa;
    fiftyfivenm_lcell_comb ix17862z7095 (.combout (nx17862z1), .dataa (1'b1), .datab (
                           nx17862z2), .datac (u_uart_Tx_Reg_14n6ss1_0_), .datad (
                           nx62197z1)) ;
                           defparam ix17862z7095.lut_mask = 16'hcf03;
    fiftyfivenm_lcell_comb ix7359z7095 (.combout (nx7359z1), .dataa (1'b1), .datab (
                           nx7359z2), .datac (nx8356z2), .datad (u_uart_TxFSM[0]
                           )) ;
                           defparam ix7359z7095.lut_mask = 16'hfc03;
    fiftyfivenm_lcell_comb ix8356z7095 (.combout (nx8356z1), .dataa (nx7359z2), 
                           .datab (nx8356z2), .datac (u_uart_TxFSM[0]), .datad (
                           u_uart_TxFSM[1])) ;
                           defparam ix8356z7095.lut_mask = 16'heddc;
    fiftyfivenm_lcell_comb ix62599z7095 (.combout (nx62599z1), .dataa (nx63596z2
                           ), .datab (nx63596z4), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix62599z7095.lut_mask = 16'h3340;
    fiftyfivenm_lcell_comb ix63596z7095 (.combout (nx63596z1), .dataa (nx63596z2
                           ), .datab (nx63596z4), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix63596z7095.lut_mask = 16'h3034;
    fiftyfivenm_lcell_comb ix2094z7095 (.combout (nx2094z1), .dataa (1'b1), .datab (
                           nx2094z2), .datac (u_kirsch_dir1_final[0]), .datad (
                           u_kirsch_dir1[0])) ;
                           defparam ix2094z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix3091z7095 (.combout (nx3091z1), .dataa (1'b1), .datab (
                           nx2094z2), .datac (u_kirsch_dir1_final[1]), .datad (
                           u_kirsch_dir1[1])) ;
                           defparam ix3091z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix4088z7095 (.combout (nx4088z1), .dataa (1'b1), .datab (
                           nx2094z2), .datac (u_kirsch_dir1_final[2]), .datad (
                           u_kirsch_dir1[2])) ;
                           defparam ix4088z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix5085z7095 (.combout (nx5085z1), .dataa (1'b1), .datab (
                           nx2094z2), .datac (u_kirsch_dir1_final[3]), .datad (
                           u_kirsch_dir1[3])) ;
                           defparam ix5085z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix58151z7095 (.combout (nx58151z1), .dataa (1'b1), .datab (
                           1'b1), .datac (rx_valid), .datad (reset_n)) ;
                           defparam ix58151z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix58143z7095 (.combout (nx58143z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx7605z1), .datad (reset_n)) ;
                           defparam ix58143z7095.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix22869z7095 (.combout (nx22869z1), .dataa (
                           write_fifo_full), .datab (nx7605z1), .datac (rx_valid
                           ), .datad (reset_n)) ;
                           defparam ix22869z7095.lut_mask = 16'hdcff;
    fiftyfivenm_lcell_comb ix23864z7095 (.combout (nx23864z1), .dataa (
                           write_fifo_rd_en_delayed), .datab (k_o_valid), .datac (
                           pb[0]), .datad (reset_n)) ;
                           defparam ix23864z7095.lut_mask = 16'hcaff;
    fiftyfivenm_lcell_comb ix24859z7095 (.combout (nx24859z1), .dataa (
                           rb_i_valid), .datab (wait_for_tx_valid_delayed), .datac (
                           rb_rd_en), .datad (reset_n)) ;
                           defparam ix24859z7095.lut_mask = 16'h10ff;
    fiftyfivenm_lcell_comb ix383z7095 (.combout (nx383z1), .dataa (nx383z2), .datab (
                           nx9182z1), .datac (rb_i_valid), .datad (reset_n)) ;
                           defparam ix383z7095.lut_mask = 16'hecff;
    fiftyfivenm_lcell_comb ix25391z7095 (.combout (nx25391z1), .dataa (nx25391z2
                           ), .datab (nx37417z3), .datac (nx25391z3), .datad (
                           reset_n)) ;
                           defparam ix25391z7095.lut_mask = 16'h80ff;
    fiftyfivenm_lcell_comb ix12790z7097 (.combout (nx12790z2), .dataa (nx64683z2
                           ), .datab (u_uart_RxFSM[5]), .datac (u_uart_TopRx), .datad (
                           uart_rx)) ;
                           defparam ix12790z7097.lut_mask = 16'h02ce;
    fiftyfivenm_lcell_comb ix59437z7096 (.combout (nx59437z2), .dataa (1'b1), .datab (
                           u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           u_uart_TopTx)) ;
                           defparam ix59437z7096.lut_mask = 16'h3c00;
    fiftyfivenm_lcell_comb ix59437z7095 (.combout (nx59437z1), .dataa (1'b1), .datab (
                           u_uart_TxFSM[1]), .datac (u_uart_TxBitCnt[0]), .datad (
                           u_uart_TopTx)) ;
                           defparam ix59437z7095.lut_mask = 16'h3f0f;
    fiftyfivenm_lcell_comb ix60434z7095 (.combout (nx60434z1), .dataa (
                           u_uart_TxFSM[1]), .datab (u_uart_TxBitCnt[0]), .datac (
                           u_uart_TxBitCnt[1]), .datad (u_uart_TopTx)) ;
                           defparam ix60434z7095.lut_mask = 16'h82c3;
    fiftyfivenm_lcell_comb ix61431z7095 (.combout (nx61431z1), .dataa (nx61431z2
                           ), .datab (u_uart_TxBitCnt[0]), .datac (
                           u_uart_TxBitCnt[1]), .datad (u_uart_TxBitCnt[2])) ;
                           defparam ix61431z7095.lut_mask = 16'h5401;
    fiftyfivenm_lcell_comb ix62428z7095 (.combout (nx62428z1), .dataa (nx62428z2
                           ), .datab (nx61431z2), .datac (u_uart_TxBitCnt[2]), .datad (
                           u_uart_TxBitCnt[3])) ;
                           defparam ix62428z7095.lut_mask = 16'hfecd;
    fiftyfivenm_lcell_comb ix62428z7096 (.combout (nx62428z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxBitCnt[0]), .datad (
                           u_uart_TxBitCnt[1])) ;
                           defparam ix62428z7096.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix64683z7096 (.combout (nx64683z3), .dataa (1'b1), .datab (
                           nx64683z2), .datac (u_uart_RxFSM[3]), .datad (
                           u_uart_TopRx)) ;
                           defparam ix64683z7096.lut_mask = 16'hf303;
    fiftyfivenm_lcell_comb ix64683z7095 (.combout (nx64683z1), .dataa (1'b1), .datab (
                           1'b1), .datac (nx64683z2), .datad (u_uart_RxBitCnt[0]
                           )) ;
                           defparam ix64683z7095.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix144z7095 (.combout (nx144z1), .dataa (1'b1), .datab (
                           nx64683z2), .datac (u_uart_RxBitCnt[0]), .datad (
                           u_uart_RxBitCnt[1])) ;
                           defparam ix144z7095.lut_mask = 16'h0cc0;
    fiftyfivenm_lcell_comb ix1141z7095 (.combout (nx1141z1), .dataa (nx64683z2)
                           , .datab (u_uart_RxBitCnt[0]), .datac (
                           u_uart_RxBitCnt[1]), .datad (u_uart_RxBitCnt[2])) ;
                           defparam ix1141z7095.lut_mask = 16'h2a80;
    fiftyfivenm_lcell_comb ix2138z7095 (.combout (nx2138z1), .dataa (nx2138z2), 
                           .datab (nx64683z2), .datac (u_uart_RxBitCnt[2]), .datad (
                           u_uart_RxBitCnt[3])) ;
                           defparam ix2138z7095.lut_mask = 16'h4c80;
    fiftyfivenm_lcell_comb ix2138z7096 (.combout (nx2138z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_RxBitCnt[0]), .datad (
                           u_uart_RxBitCnt[1])) ;
                           defparam ix2138z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix16758z7096 (.combout (nx16758z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_stg_counter2[0]), .datad (
                           u_kirsch_stg_counter2[1])) ;
                           defparam ix16758z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix16758z7098 (.combout (nx16758z4), .dataa (nx16758z5
                           ), .datab (nx16758z6), .datac (nx25391z3), .datad (
                           u_kirsch_row_count[2])) ;
                           defparam ix16758z7098.lut_mask = 16'hf0e0;
    fiftyfivenm_lcell_comb ix22869z7097 (.combout (nx22869z2), .dataa (1'b1), .datab (
                           nx22869z3), .datac (write_fifo_status_cnt[1]), .datad (
                           write_fifo_status_cnt[2])) ;
                           defparam ix22869z7097.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix7605z7096 (.combout (nx7605z2), .dataa (1'b1), .datab (
                           1'b1), .datac (write_fifo_status_cnt[7]), .datad (
                           write_fifo_status_cnt[8])) ;
                           defparam ix7605z7096.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix15004z7097 (.combout (nx15004z2), .dataa (1'b1), .datab (
                           nx15004z3), .datac (read_fifo_status_cnt[1]), .datad (
                           read_fifo_status_cnt[2])) ;
                           defparam ix15004z7097.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix22869z7098 (.combout (nx22869z3), .dataa (
                           write_fifo_status_cnt[3]), .datab (
                           write_fifo_status_cnt[4]), .datac (
                           write_fifo_status_cnt[5]), .datad (
                           write_fifo_status_cnt[6])) ;
                           defparam ix22869z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix15004z7098 (.combout (nx15004z3), .dataa (
                           read_fifo_status_cnt[3]), .datab (
                           read_fifo_status_cnt[4]), .datac (
                           read_fifo_status_cnt[5]), .datad (
                           read_fifo_status_cnt[6])) ;
                           defparam ix15004z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60415z7099 (.combout (nx60415z5), .dataa (
                           reset_count[1]), .datab (reset_count[2]), .datac (
                           reset_count[4]), .datad (reset_count[6])) ;
                           defparam ix60415z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix60415z7097 (.combout (nx60415z3), .dataa (nx60415z4
                           ), .datab (nx60415z5), .datac (reset_count[0]), .datad (
                           reset_count[8])) ;
                           defparam ix60415z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix60415z7096 (.combout (nx60415z2), .dataa (1'b1), .datab (
                           reset_count[5]), .datac (reset_count[7]), .datad (
                           reset_count[10])) ;
                           defparam ix60415z7096.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix55203z7098 (.combout (nx55203z4), .dataa (
                           u_kirsch_address[3]), .datab (u_kirsch_address[5]), .datac (
                           u_kirsch_address[6]), .datad (u_kirsch_address[7])) ;
                           defparam ix55203z7098.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix37417z7097 (.combout (nx37417z3), .dataa (
                           u_kirsch_address[0]), .datab (u_kirsch_address[1]), .datac (
                           u_kirsch_address[2]), .datad (u_kirsch_address[3])) ;
                           defparam ix37417z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25391z7096 (.combout (nx25391z2), .dataa (
                           u_kirsch_address[4]), .datab (u_kirsch_address[5]), .datac (
                           u_kirsch_address[6]), .datad (u_kirsch_address[7])) ;
                           defparam ix25391z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25391z7100 (.combout (nx25391z6), .dataa (
                           u_kirsch_row_count[0]), .datab (u_kirsch_row_count[1]
                           ), .datac (u_kirsch_row_count[2]), .datad (
                           u_kirsch_row_count[3])) ;
                           defparam ix25391z7100.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix25391z7099 (.combout (nx25391z5), .dataa (
                           u_kirsch_row_count[4]), .datab (u_kirsch_row_count[5]
                           ), .datac (u_kirsch_row_count[6]), .datad (
                           u_kirsch_row_count[7])) ;
                           defparam ix25391z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix16758z7100 (.combout (nx16758z6), .dataa (
                           u_kirsch_row_count[3]), .datab (u_kirsch_row_count[4]
                           ), .datac (u_kirsch_row_count[6]), .datad (
                           u_kirsch_row_count[7])) ;
                           defparam ix16758z7100.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix16758z7099 (.combout (nx16758z5), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_row_count[1]), .datad (
                           u_kirsch_row_count[5])) ;
                           defparam ix16758z7099.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix53163z7098 (.combout (nx53163z4), .dataa (1'b1), .datab (
                           u_kirsch_row_count[1]), .datac (u_kirsch_row_count[2]
                           ), .datad (u_kirsch_row_count[5])) ;
                           defparam ix53163z7098.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix8356z7096 (.combout (nx8356z2), .dataa (nx8356z3), 
                           .datab (u_uart_TxFSM[0]), .datac (u_uart_TxFSM[1]), .datad (
                           u_uart_TopTx)) ;
                           defparam ix8356z7096.lut_mask = 16'h10f0;
    fiftyfivenm_lcell_comb ix7359z7096 (.combout (nx7359z2), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z3)) ;
                           defparam ix7359z7096.lut_mask = 16'h1302;
    fiftyfivenm_lcell_comb ix53163z7096 (.combout (nx53163z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[7]), .datac (u_kirsch_o_dataA[7]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix53163z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix52166z7096 (.combout (nx52166z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[6]), .datac (u_kirsch_o_dataA[6]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix52166z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix51169z7096 (.combout (nx51169z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[5]), .datac (u_kirsch_o_dataA[5]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix51169z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix50172z7096 (.combout (nx50172z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[4]), .datac (u_kirsch_o_dataA[4]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix50172z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix49175z7096 (.combout (nx49175z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[3]), .datac (u_kirsch_o_dataA[3]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix49175z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix48178z7096 (.combout (nx48178z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[2]), .datac (u_kirsch_o_dataA[2]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix48178z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix47181z7096 (.combout (nx47181z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[1]), .datac (u_kirsch_o_dataA[1]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix47181z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix46184z7096 (.combout (nx46184z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[0]), .datac (u_kirsch_o_dataA[0]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix46184z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix58298z7096 (.combout (nx58298z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[7]), .datac (u_kirsch_o_dataA[7]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix58298z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix57301z7096 (.combout (nx57301z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[6]), .datac (u_kirsch_o_dataA[6]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix57301z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix56304z7096 (.combout (nx56304z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[5]), .datac (u_kirsch_o_dataA[5]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix56304z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix55307z7096 (.combout (nx55307z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[4]), .datac (u_kirsch_o_dataA[4]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix55307z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix54310z7096 (.combout (nx54310z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[3]), .datac (u_kirsch_o_dataA[3]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix54310z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix53313z7096 (.combout (nx53313z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[2]), .datac (u_kirsch_o_dataA[2]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix53313z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix52316z7096 (.combout (nx52316z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[1]), .datac (u_kirsch_o_dataA[1]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix52316z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51319z7096 (.combout (nx51319z2), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[0]), .datac (u_kirsch_o_dataA[0]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix51319z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix25391z7098 (.combout (nx25391z4), .dataa (nx25391z5
                           ), .datab (nx25391z6), .datac (nx25391z2), .datad (
                           reset_n)) ;
                           defparam ix25391z7098.lut_mask = 16'h80ff;
    fiftyfivenm_lcell_comb ix37417z7096 (.combout (nx37417z2), .dataa (1'b1), .datab (
                           nx25391z2), .datac (nx37417z3), .datad (reset_n)) ;
                           defparam ix37417z7096.lut_mask = 16'hc0ff;
    fiftyfivenm_lcell_comb ix64381z7095 (.combout (nx64381z1), .dataa (nx64381z2
                           ), .datab (nx64381z3), .datac (u_kirsch_d3_9n15ss1_7_
                           ), .datad (nx25391z3)) ;
                           defparam ix64381z7095.lut_mask = 16'hf088;
    fiftyfivenm_lcell_comb ix65378z7095 (.combout (nx65378z1), .dataa (nx65378z2
                           ), .datab (nx65378z3), .datac (u_kirsch_d3_9n15ss1_6_
                           ), .datad (nx25391z3)) ;
                           defparam ix65378z7095.lut_mask = 16'hf088;
    fiftyfivenm_lcell_comb ix839z7095 (.combout (nx839z1), .dataa (nx839z2), .datab (
                           u_kirsch_d3_9n15ss1_5_), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix839z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix1836z7095 (.combout (nx1836z1), .dataa (nx1836z2), 
                           .datab (u_kirsch_d3_9n15ss1_4_), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix1836z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix2833z7095 (.combout (nx2833z1), .dataa (nx2833z2), 
                           .datab (u_kirsch_d3_9n15ss1_3_), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix2833z7095.lut_mask = 16'hcaaa;
    fiftyfivenm_lcell_comb ix3830z7095 (.combout (nx3830z1), .dataa (nx3830z2), 
                           .datab (u_kirsch_d3_9n15ss1_2_), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix3830z7095.lut_mask = 16'h8aaa;
    fiftyfivenm_lcell_comb ix4827z7095 (.combout (nx4827z1), .dataa (nx4827z2), 
                           .datab (u_kirsch_d3_9n15ss1_1_), .datac (
                           write_fifo_rd_en_delayed), .datad (pb[0])) ;
                           defparam ix4827z7095.lut_mask = 16'h8aaa;
    fiftyfivenm_lcell_comb ix5824z7095 (.combout (nx5824z1), .dataa (nx5824z2), 
                           .datab (nx5824z4), .datac (nx34063z2), .datad (
                           nx25391z3)) ;
                           defparam ix5824z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix17993z7095 (.combout (nx17993z1), .dataa (nx17993z2
                           ), .datab (nx17993z4), .datac (nx63433z2), .datad (
                           nx25391z3)) ;
                           defparam ix17993z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix16996z7095 (.combout (nx16996z1), .dataa (nx16996z2
                           ), .datab (nx16996z4), .datac (nx55082z2), .datad (
                           nx25391z3)) ;
                           defparam ix16996z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix15999z7095 (.combout (nx15999z1), .dataa (nx15999z2
                           ), .datab (nx15999z4), .datac (nx56079z2), .datad (
                           nx25391z3)) ;
                           defparam ix15999z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix15002z7095 (.combout (nx15002z1), .dataa (nx15002z2
                           ), .datab (nx15002z4), .datac (nx57076z2), .datad (
                           nx25391z3)) ;
                           defparam ix15002z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix14005z7095 (.combout (nx14005z1), .dataa (nx14005z2
                           ), .datab (nx14005z4), .datac (nx58073z2), .datad (
                           nx25391z3)) ;
                           defparam ix14005z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix13008z7095 (.combout (nx13008z1), .dataa (nx13008z2
                           ), .datab (nx13008z4), .datac (nx59070z2), .datad (
                           nx25391z3)) ;
                           defparam ix13008z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix12011z7095 (.combout (nx12011z1), .dataa (nx12011z2
                           ), .datab (nx12011z4), .datac (nx60067z2), .datad (
                           nx25391z3)) ;
                           defparam ix12011z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix11014z7095 (.combout (nx11014z1), .dataa (nx11014z2
                           ), .datab (nx11014z4), .datac (nx61064z2), .datad (
                           nx25391z3)) ;
                           defparam ix11014z7095.lut_mask = 16'h80aa;
    fiftyfivenm_lcell_comb ix53163z7095 (.combout (nx53163z1), .dataa (1'b1), .datab (
                           nx53163z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[7])) ;
                           defparam ix53163z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix52166z7095 (.combout (nx52166z1), .dataa (1'b1), .datab (
                           nx52166z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[6])) ;
                           defparam ix52166z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix51169z7095 (.combout (nx51169z1), .dataa (1'b1), .datab (
                           nx51169z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[5])) ;
                           defparam ix51169z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix50172z7095 (.combout (nx50172z1), .dataa (1'b1), .datab (
                           nx50172z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[4])) ;
                           defparam ix50172z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix49175z7095 (.combout (nx49175z1), .dataa (1'b1), .datab (
                           nx49175z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[3])) ;
                           defparam ix49175z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix48178z7095 (.combout (nx48178z1), .dataa (1'b1), .datab (
                           nx48178z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[2])) ;
                           defparam ix48178z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix47181z7095 (.combout (nx47181z1), .dataa (1'b1), .datab (
                           nx47181z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[1])) ;
                           defparam ix47181z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix46184z7095 (.combout (nx46184z1), .dataa (1'b1), .datab (
                           nx46184z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataC[0])) ;
                           defparam ix46184z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix58298z7095 (.combout (nx58298z1), .dataa (1'b1), .datab (
                           nx58298z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[7])) ;
                           defparam ix58298z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix57301z7095 (.combout (nx57301z1), .dataa (1'b1), .datab (
                           nx57301z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[6])) ;
                           defparam ix57301z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix56304z7095 (.combout (nx56304z1), .dataa (1'b1), .datab (
                           nx56304z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[5])) ;
                           defparam ix56304z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix55307z7095 (.combout (nx55307z1), .dataa (1'b1), .datab (
                           nx55307z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[4])) ;
                           defparam ix55307z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix54310z7095 (.combout (nx54310z1), .dataa (1'b1), .datab (
                           nx54310z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[3])) ;
                           defparam ix54310z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix53313z7095 (.combout (nx53313z1), .dataa (1'b1), .datab (
                           nx53313z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[2])) ;
                           defparam ix53313z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix52316z7095 (.combout (nx52316z1), .dataa (1'b1), .datab (
                           nx52316z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[1])) ;
                           defparam ix52316z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix51319z7095 (.combout (nx51319z1), .dataa (1'b1), .datab (
                           nx51319z2), .datac (nx41042z4), .datad (
                           u_kirsch_o_dataB[0])) ;
                           defparam ix51319z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix41042z7097 (.combout (nx41042z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[7]), 
                           .datad (u_kirsch_o_dataA[7])) ;
                           defparam ix41042z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix41042z7096 (.combout (nx41042z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[7]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix41042z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix40045z7097 (.combout (nx40045z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[6]), 
                           .datad (u_kirsch_o_dataA[6])) ;
                           defparam ix40045z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix40045z7096 (.combout (nx40045z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[6]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix40045z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix39048z7097 (.combout (nx39048z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[5]), 
                           .datad (u_kirsch_o_dataA[5])) ;
                           defparam ix39048z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix39048z7096 (.combout (nx39048z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[5]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix39048z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix38051z7097 (.combout (nx38051z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[4]), 
                           .datad (u_kirsch_o_dataA[4])) ;
                           defparam ix38051z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix38051z7096 (.combout (nx38051z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[4]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix38051z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix37054z7097 (.combout (nx37054z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[3]), 
                           .datad (u_kirsch_o_dataA[3])) ;
                           defparam ix37054z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix37054z7096 (.combout (nx37054z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[3]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix37054z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix36057z7097 (.combout (nx36057z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[2]), 
                           .datad (u_kirsch_o_dataA[2])) ;
                           defparam ix36057z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix36057z7096 (.combout (nx36057z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[2]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix36057z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix35060z7097 (.combout (nx35060z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[1]), 
                           .datad (u_kirsch_o_dataA[1])) ;
                           defparam ix35060z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix35060z7096 (.combout (nx35060z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[1]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix35060z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix34063z7097 (.combout (nx34063z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataB[0]), 
                           .datad (u_kirsch_o_dataA[0])) ;
                           defparam ix34063z7097.lut_mask = 16'hfedc;
    fiftyfivenm_lcell_comb ix34063z7096 (.combout (nx34063z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataC[0]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix34063z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix63433z7097 (.combout (nx63433z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[7]), 
                           .datad (u_kirsch_o_dataA[7])) ;
                           defparam ix63433z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix63433z7096 (.combout (nx63433z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[7]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix63433z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix55082z7097 (.combout (nx55082z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[6]), 
                           .datad (u_kirsch_o_dataA[6])) ;
                           defparam ix55082z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix55082z7096 (.combout (nx55082z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[6]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix55082z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix56079z7097 (.combout (nx56079z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[5]), 
                           .datad (u_kirsch_o_dataA[5])) ;
                           defparam ix56079z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix56079z7096 (.combout (nx56079z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[5]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix56079z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix57076z7097 (.combout (nx57076z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[4]), 
                           .datad (u_kirsch_o_dataA[4])) ;
                           defparam ix57076z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix57076z7096 (.combout (nx57076z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[4]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix57076z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix58073z7097 (.combout (nx58073z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[3]), 
                           .datad (u_kirsch_o_dataA[3])) ;
                           defparam ix58073z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix58073z7096 (.combout (nx58073z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[3]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix58073z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix59070z7097 (.combout (nx59070z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[2]), 
                           .datad (u_kirsch_o_dataA[2])) ;
                           defparam ix59070z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix59070z7096 (.combout (nx59070z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[2]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix59070z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix60067z7097 (.combout (nx60067z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[1]), 
                           .datad (u_kirsch_o_dataA[1])) ;
                           defparam ix60067z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix60067z7096 (.combout (nx60067z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[1]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix60067z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix61064z7097 (.combout (nx61064z2), .dataa (nx41042z3
                           ), .datab (nx41042z4), .datac (u_kirsch_o_dataC[0]), 
                           .datad (u_kirsch_o_dataA[0])) ;
                           defparam ix61064z7097.lut_mask = 16'hfdec;
    fiftyfivenm_lcell_comb ix61064z7096 (.combout (nx61064z1), .dataa (1'b1), .datab (
                           u_kirsch_o_dataB[0]), .datac (u_kirsch_row_index[0])
                           , .datad (u_kirsch_row_index[1])) ;
                           defparam ix61064z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix60486z7101 (.combout (nx60486z7), .dataa (nx60486z8
                           ), .datab (nx60486z9), .datac (nx60486z10), .datad (
                           nx60486z11)) ;
                           defparam ix60486z7101.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix60486z7098 (.combout (nx60486z4), .dataa (nx26412z3
                           ), .datab (nx12123z2), .datac (nx60486z5), .datad (
                           nx60486z6)) ;
                           defparam ix60486z7098.lut_mask = 16'hfff8;
    fiftyfivenm_lcell_comb ix60486z7105 (.combout (nx60486z11), .dataa (
                           u_kirsch_r_add1_a[5]), .datab (u_kirsch_r_add1_a[9])
                           , .datac (u_kirsch_r_max1[5]), .datad (
                           u_kirsch_r_max1[9])) ;
                           defparam ix60486z7105.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix60486z7104 (.combout (nx60486z10), .dataa (
                           u_kirsch_r_add1_a[7]), .datab (u_kirsch_r_add1_a[8])
                           , .datac (u_kirsch_r_max1[7]), .datad (
                           u_kirsch_r_max1[8])) ;
                           defparam ix60486z7104.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix60486z7103 (.combout (nx60486z9), .dataa (
                           u_kirsch_r_add1_a[1]), .datab (u_kirsch_r_add1_a[6])
                           , .datac (u_kirsch_r_max1[1]), .datad (
                           u_kirsch_r_max1[6])) ;
                           defparam ix60486z7103.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix60486z7102 (.combout (nx60486z8), .dataa (
                           u_kirsch_r_add1_a[3]), .datab (u_kirsch_r_add1_a[4])
                           , .datac (u_kirsch_r_max1[3]), .datad (
                           u_kirsch_r_max1[4])) ;
                           defparam ix60486z7102.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix59343z7099 (.combout (nx59343z5), .dataa (nx59343z6
                           ), .datab (u_uart_RxDiv[5]), .datac (u_uart_RxDiv[8])
                           , .datad (u_uart_RxDiv[9])) ;
                           defparam ix59343z7099.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix59343z7100 (.combout (nx59343z6), .dataa (
                           u_uart_RxDiv[0]), .datab (u_uart_RxDiv[1]), .datac (
                           u_uart_RxDiv[2]), .datad (u_uart_RxDiv[10])) ;
                           defparam ix59343z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix59343z7098 (.combout (nx59343z4), .dataa (
                           u_uart_RxDiv[3]), .datab (u_uart_RxDiv[4]), .datac (
                           u_uart_RxDiv[7]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix59343z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix59343z7097 (.combout (nx59343z3), .dataa (
                           u_uart_RxDiv[3]), .datab (u_uart_RxDiv[4]), .datac (
                           u_uart_RxDiv[7]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix59343z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix64328z7096 (.combout (nx64328z2), .dataa (1'b1), .datab (
                           nx64328z3), .datac (u_kirsch_dir2_final[1]), .datad (
                           u_kirsch_dir1_final[2])) ;
                           defparam ix64328z7096.lut_mask = 16'hcfc0;
    fiftyfivenm_lcell_comb ix57349z7098 (.combout (nx57349z4), .dataa (nx57349z5
                           ), .datab (nx57349z6), .datac (u_uart_TxDiv[5]), .datad (
                           u_uart_TxDiv[8])) ;
                           defparam ix57349z7098.lut_mask = 16'ha00c;
    fiftyfivenm_lcell_comb ix57349z7097 (.combout (nx57349z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_uart_TxDiv[10]), .datad (
                           u_uart_TxDiv[9])) ;
                           defparam ix57349z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix57349z7096 (.combout (nx57349z2), .dataa (
                           u_uart_TxDiv[1]), .datab (u_uart_TxDiv[2]), .datac (
                           u_uart_TxDiv[3]), .datad (u_uart_TxDiv[11])) ;
                           defparam ix57349z7096.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix57349z7100 (.combout (nx57349z6), .dataa (
                           u_uart_TxDiv[0]), .datab (u_uart_TxDiv[4]), .datac (
                           u_uart_TxDiv[7]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix57349z7100.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix57349z7099 (.combout (nx57349z5), .dataa (
                           u_uart_TxDiv[0]), .datab (u_uart_TxDiv[4]), .datac (
                           u_uart_TxDiv[7]), .datad (u_uart_RxDivisor_4_)) ;
                           defparam ix57349z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix51544z7098 (.combout (nx51544z4), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7098.lut_mask = 16'hf800;
    fiftyfivenm_lcell_comb ix51544z7118 (.combout (nx51544z24), .dataa (
                           nx51544z25), .datab (nx51544z19), .datac (seg7_num[1]
                           ), .datad (seg7_num[3])) ;
                           defparam ix51544z7118.lut_mask = 16'hfe0e;
    fiftyfivenm_lcell_comb ix51544z7117 (.combout (nx51544z23), .dataa (1'b1), .datab (
                           1'b1), .datac (seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7117.lut_mask = 16'h0ff0;
    fiftyfivenm_lcell_comb ix839z7096 (.combout (nx839z2), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx839z3), .datad (u_kirsch_g2[5])
                           ) ;
                           defparam ix839z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix1836z7096 (.combout (nx1836z2), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx1836z3), .datad (u_kirsch_g2[4]
                           )) ;
                           defparam ix1836z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix2833z7096 (.combout (nx2833z2), .dataa (1'b1), .datab (
                           nx26412z2), .datac (nx2833z3), .datad (u_kirsch_g2[3]
                           )) ;
                           defparam ix2833z7096.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix51544z7104 (.combout (nx51544z10), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7104.lut_mask = 16'h132d;
    fiftyfivenm_lcell_comb ix51544z7103 (.combout (nx51544z9), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7103.lut_mask = 16'h7868;
    fiftyfivenm_lcell_comb ix51544z7112 (.combout (nx51544z18), .dataa (1'b1), .datab (
                           seg7_num[0]), .datac (seg7_num[1]), .datad (
                           seg7_num[3])) ;
                           defparam ix51544z7112.lut_mask = 16'h0cc0;
    fiftyfivenm_lcell_comb ix383z7096 (.combout (nx383z2), .dataa (nx15004z2), .datab (
                           read_fifo_status_cnt[0]), .datac (
                           read_fifo_status_cnt[7]), .datad (
                           read_fifo_status_cnt[8])) ;
                           defparam ix383z7096.lut_mask = 16'hfdff;
    fiftyfivenm_lcell_comb ix5371z7096 (.combout (nx5371z1), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix5371z7096.lut_mask = 16'h2ffb;
    fiftyfivenm_lcell_comb ix17993z7098 (.combout (nx17993z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[7]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix17993z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix16996z7098 (.combout (nx16996z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[6]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix16996z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix15999z7098 (.combout (nx15999z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[5]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix15999z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix15002z7098 (.combout (nx15002z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[4]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix15002z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix14005z7098 (.combout (nx14005z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[3]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix14005z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix13008z7098 (.combout (nx13008z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[2]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix13008z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix12011z7098 (.combout (nx12011z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[1]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix12011z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix11014z7098 (.combout (nx11014z4), .dataa (nx41042z3
                           ), .datab (nx25391z3), .datac (u_kirsch_o_dataB[0]), 
                           .datad (u_kirsch_row_index[1])) ;
                           defparam ix11014z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix5824z7098 (.combout (nx5824z4), .dataa (nx41042z3)
                           , .datab (nx25391z3), .datac (u_kirsch_o_dataC[0]), .datad (
                           u_kirsch_row_index[1])) ;
                           defparam ix5824z7098.lut_mask = 16'hfffb;
    fiftyfivenm_lcell_comb ix26412z7102 (.combout (nx26412z8), .dataa (nx55203z3
                           ), .datab (nx41042z11), .datac (nx26412z9), .datad (
                           nx25391z3)) ;
                           defparam ix26412z7102.lut_mask = 16'haafc;
    fiftyfivenm_lcell_comb ix41042z7102 (.combout (nx41042z7), .dataa (nx41042z8
                           ), .datab (nx55203z3), .datac (nx41042z11), .datad (
                           nx25391z3)) ;
                           defparam ix41042z7102.lut_mask = 16'h3305;
    fiftyfivenm_lcell_comb ix62334z7096 (.combout (nx62334z2), .dataa (nx62334z3
                           ), .datab (u_kirsch_dir2_final[1]), .datac (
                           u_kirsch_dir2_final[2]), .datad (
                           u_kirsch_dir1_final[3])) ;
                           defparam ix62334z7096.lut_mask = 16'hb0bf;
    fiftyfivenm_lcell_comb ix58492z7096 (.combout (nx58492z2), .dataa (1'b1), .datab (
                           nx29221z8), .datac (u_kirsch_max1_bit_counter[0]), .datad (
                           u_kirsch_max1_bit_counter[1])) ;
                           defparam ix58492z7096.lut_mask = 16'hf3ff;
    fiftyfivenm_lcell_comb ix17862z7096 (.combout (nx17862z2), .dataa (
                           u_uart_TxFSM[0]), .datab (u_uart_TxFSM[1]), .datac (
                           u_uart_TopTx), .datad (nx7359z3)) ;
                           defparam ix17862z7096.lut_mask = 16'h9f8e;
    fiftyfivenm_lcell_comb ix41042z7101 (.combout (nx41042z6), .dataa (nx16758z6
                           ), .datab (u_kirsch_row_count[1]), .datac (
                           u_kirsch_row_count[2]), .datad (u_kirsch_row_count[5]
                           )) ;
                           defparam ix41042z7101.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix64328z7097 (.combout (nx64328z3), .dataa (1'b1), .datab (
                           u_kirsch_dir2_final[0]), .datac (
                           u_kirsch_dir1_final[0]), .datad (
                           u_kirsch_dir1_final[1])) ;
                           defparam ix64328z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix26412z7096 (.combout (nx26412z2), .dataa (nx29221z2
                           ), .datab (nx26412z3), .datac (nx26412z4), .datad (
                           u_kirsch_stg_counter2[0])) ;
                           defparam ix26412z7096.lut_mask = 16'h88f8;
    fiftyfivenm_lcell_comb ix41042z7103 (.combout (nx41042z8), .dataa (nx41042z9
                           ), .datab (nx41042z10), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix41042z7103.lut_mask = 16'h3331;
    fiftyfivenm_lcell_comb ix22605z7097 (.combout (nx22605z3), .dataa (
                           u_kirsch_r_sub0_7_), .datab (u_kirsch_r_sub0_8_), .datac (
                           u_kirsch_r_sub0_9_), .datad (u_kirsch_r_sub0_10_)) ;
                           defparam ix22605z7097.lut_mask = 16'hfff8;
    fiftyfivenm_lcell_comb ix12123z7097 (.combout (nx12123z3), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix12123z7097.lut_mask = 16'h0040;
    fiftyfivenm_lcell_comb ix51544z7109 (.combout (nx51544z15), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7109.lut_mask = 16'h0045;
    fiftyfivenm_lcell_comb ix51544z7119 (.combout (nx51544z25), .dataa (
                           seg7_num[0]), .datab (seg7_num[1]), .datac (
                           seg7_num[2]), .datad (seg7_num[3])) ;
                           defparam ix51544z7119.lut_mask = 16'h00b0;
    fiftyfivenm_lcell_comb ix7365z7096 (.combout (nx7365z1), .dataa (seg7_num[4]
                           ), .datab (seg7_num[5]), .datac (seg7_num[6]), .datad (
                           seg7_num[7])) ;
                           defparam ix7365z7096.lut_mask = 16'h5545;
    fiftyfivenm_lcell_comb ix60415z7098 (.combout (nx60415z4), .dataa (1'b1), .datab (
                           1'b1), .datac (reset_count[3]), .datad (
                           reset_count[9])) ;
                           defparam ix60415z7098.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix60486z7096 (.combout (nx60486z2), .dataa (1'b1), .datab (
                           nx29221z8), .datac (u_kirsch_max1_bit_counter[0]), .datad (
                           u_kirsch_max1_bit_counter[1])) ;
                           defparam ix60486z7096.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix59489z7096 (.combout (nx59489z2), .dataa (1'b1), .datab (
                           nx29221z8), .datac (u_kirsch_max1_bit_counter[0]), .datad (
                           u_kirsch_max1_bit_counter[1])) ;
                           defparam ix59489z7096.lut_mask = 16'h00c0;
    fiftyfivenm_lcell_comb ix29221z7102 (.combout (nx29221z9), .dataa (
                           u_kirsch_stg_counter1[0]), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix29221z7102.lut_mask = 16'h00bf;
    fiftyfivenm_lcell_comb ix60486z7099 (.combout (nx60486z5), .dataa (
                           u_kirsch_r_add1_a[0]), .datab (u_kirsch_r_add1_a[2])
                           , .datac (u_kirsch_r_max1[0]), .datad (
                           u_kirsch_r_max1[2])) ;
                           defparam ix60486z7099.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix29221z7098 (.combout (nx29221z3), .dataa (
                           u_kirsch_stg_counter2[0]), .datab (
                           u_kirsch_stg_counter2[1]), .datac (
                           u_kirsch_stg_counter2[2]), .datad (
                           u_kirsch_stg_counter2[3])) ;
                           defparam ix29221z7098.lut_mask = 16'h0008;
    fiftyfivenm_lcell_comb ix64502z7096 (.combout (nx64502z2), .dataa (1'b1), .datab (
                           1'b1), .datac (wait_for_tx_valid), .datad (nx7359z3)
                           ) ;
                           defparam ix64502z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix63596z7097 (.combout (nx63596z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_row_count[6]), .datad (
                           u_kirsch_row_count[7])) ;
                           defparam ix63596z7097.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix12123z7096 (.combout (nx12123z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix12123z7096.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix41042z7104 (.combout (nx41042z9), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_stg_counter1[0]), .datad (
                           u_kirsch_stg_counter1[1])) ;
                           defparam ix41042z7104.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix26412z7097 (.combout (nx26412z3), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_stg_counter1[0]), .datad (
                           u_kirsch_stg_counter1[1])) ;
                           defparam ix26412z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix26412z7100 (.combout (nx26412z6), .dataa (1'b1), .datab (
                           u_kirsch_stg_counter1[1]), .datac (
                           u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix26412z7100.lut_mask = 16'h0003;
    fiftyfivenm_lcell_comb ix29221z7097 (.combout (nx29221z2), .dataa (1'b1), .datab (
                           1'b1), .datac (u_kirsch_stg_counter1[2]), .datad (
                           u_kirsch_stg_counter1[3])) ;
                           defparam ix29221z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix64381z7097 (.combout (nx64381z3), .dataa (nx26412z2
                           ), .datab (nx41042z11), .datac (u_kirsch_h3[7]), .datad (
                           u_kirsch_a2[7])) ;
                           defparam ix64381z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix64381z7096 (.combout (nx64381z2), .dataa (1'b1), .datab (
                           1'b1), .datac (nx26412z2), .datad (u_kirsch_g2[7])) ;
                           defparam ix64381z7096.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix65378z7097 (.combout (nx65378z3), .dataa (nx26412z2
                           ), .datab (nx41042z11), .datac (u_kirsch_h3[6]), .datad (
                           u_kirsch_a2[6])) ;
                           defparam ix65378z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix65378z7096 (.combout (nx65378z2), .dataa (1'b1), .datab (
                           1'b1), .datac (nx26412z2), .datad (u_kirsch_g2[6])) ;
                           defparam ix65378z7096.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix3830z7096 (.combout (nx3830z2), .dataa (nx26412z2)
                           , .datab (nx3830z3), .datac (nx25391z3), .datad (
                           u_kirsch_g2[2])) ;
                           defparam ix3830z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix4827z7096 (.combout (nx4827z2), .dataa (nx26412z2)
                           , .datab (nx4827z3), .datac (nx25391z3), .datad (
                           u_kirsch_g2[1])) ;
                           defparam ix4827z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix5824z7096 (.combout (nx5824z2), .dataa (nx26412z2)
                           , .datab (nx5824z3), .datac (nx25391z3), .datad (
                           u_kirsch_g2[0])) ;
                           defparam ix5824z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix17993z7096 (.combout (nx17993z2), .dataa (nx26412z2
                           ), .datab (nx17993z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[7])) ;
                           defparam ix17993z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix16996z7096 (.combout (nx16996z2), .dataa (nx26412z2
                           ), .datab (nx16996z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[6])) ;
                           defparam ix16996z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix15999z7096 (.combout (nx15999z2), .dataa (nx26412z2
                           ), .datab (nx15999z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[5])) ;
                           defparam ix15999z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix15002z7096 (.combout (nx15002z2), .dataa (nx26412z2
                           ), .datab (nx15002z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[4])) ;
                           defparam ix15002z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix14005z7096 (.combout (nx14005z2), .dataa (nx26412z2
                           ), .datab (nx14005z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[3])) ;
                           defparam ix14005z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix13008z7096 (.combout (nx13008z2), .dataa (nx26412z2
                           ), .datab (nx13008z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[2])) ;
                           defparam ix13008z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix12011z7096 (.combout (nx12011z2), .dataa (nx26412z2
                           ), .datab (nx12011z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[1])) ;
                           defparam ix12011z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix11014z7096 (.combout (nx11014z2), .dataa (nx26412z2
                           ), .datab (nx11014z3), .datac (nx25391z3), .datad (
                           u_kirsch_e3[0])) ;
                           defparam ix11014z7096.lut_mask = 16'hfef4;
    fiftyfivenm_lcell_comb ix51544z7101 (.combout (nx51544z7), .dataa (
                           seg7_num[4]), .datab (seg7_num[5]), .datac (
                           seg7_num[6]), .datad (seg7_num[7])) ;
                           defparam ix51544z7101.lut_mask = 16'hdffd;
    fiftyfivenm_lcell_comb ix51544z7106 (.combout (nx51544z12), .dataa (
                           nx51544z13), .datab (nx51544z21), .datac (nx51544z24)
                           , .datad (seg7_num[0])) ;
                           defparam ix51544z7106.lut_mask = 16'hfeee;
    fiftyfivenm_lcell_comb ix51544z7097 (.combout (nx51544z3), .dataa (nx51544z4
                           ), .datab (nx51544z5), .datac (seg7_num[4]), .datad (
                           nx51544z6)) ;
                           defparam ix51544z7097.lut_mask = 16'h5100;
    fiftyfivenm_lcell_comb ix51544z7105 (.combout (nx51544z11), .dataa (1'b1), .datab (
                           seg7_num[6]), .datac (seg7_num[7]), .datad (
                           seg7_num[4])) ;
                           defparam ix51544z7105.lut_mask = 16'hf030;
    fiftyfivenm_lcell_comb ix51544z7096 (.combout (nx51544z2), .dataa (nx51544z3
                           ), .datab (nx51544z9), .datac (nx51544z10), .datad (
                           seg7_num[5])) ;
                           defparam ix51544z7096.lut_mask = 16'hfeaa;
    fiftyfivenm_lcell_comb ix51544z7115 (.combout (nx51544z21), .dataa (1'b1), .datab (
                           nx51544z22), .datac (seg7_num[1]), .datad (
                           seg7_num[2])) ;
                           defparam ix51544z7115.lut_mask = 16'h0c00;
    fiftyfivenm_lcell_comb ix51544z7107 (.combout (nx51544z13), .dataa (
                           nx51544z14), .datab (seg7_num[1]), .datac (nx51544z17
                           ), .datad (seg7_num[3])) ;
                           defparam ix51544z7107.lut_mask = 16'hf888;
    fiftyfivenm_lcell_comb ix51544z7110 (.combout (nx51544z16), .dataa (
                           seg7_num[3]), .datab (seg7_num[2]), .datac (
                           seg7_num[1]), .datad (seg7_num[0])) ;
                           defparam ix51544z7110.lut_mask = 16'h3e0b;
endmodule


module ram_dq_8_4 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename146;



    altsyncram ix64056z29485 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename146), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename146), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29485.width_a = 8;
               defparam ix64056z29485.widthad_a = 8;
               defparam ix64056z29485.numwords_a = 256;
               defparam ix64056z29485.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29485.address_aclr_a = "NONE";
               defparam ix64056z29485.outdata_aclr_a = "NONE";
               defparam ix64056z29485.indata_aclr_a = "NONE";
               defparam ix64056z29485.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29485.byteena_aclr_a = "NONE";
               defparam ix64056z29485.width_byteena_a = 1;
               defparam ix64056z29485.width_b = 8;
               defparam ix64056z29485.widthad_b = 8;
               defparam ix64056z29485.numwords_b = 256;
               defparam ix64056z29485.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29485.address_reg_b = "CLOCK1";
               defparam ix64056z29485.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29485.outdata_aclr_b = "NONE";
               defparam ix64056z29485.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29485.indata_reg_b = "CLOCK1";
               defparam ix64056z29485.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29485.byteena_reg_b = "CLOCK1";
               defparam ix64056z29485.indata_aclr_b = "NONE";
               defparam ix64056z29485.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29485.byteena_aclr_b = "NONE";
               defparam ix64056z29485.width_byteena_b = 1;
               defparam ix64056z29485.address_aclr_b = "NONE";
               defparam ix64056z29485.operation_mode = "SINGLE_PORT";
               defparam ix64056z29485.byte_size = 8;
               defparam ix64056z29485.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29485.ram_block_type = "AUTO";
               defparam ix64056z29485.init_file = "UNUSED";
               defparam ix64056z29485.init_file_layout = "UNUSED";
               defparam ix64056z29485.maximum_depth = 0;
               defparam ix64056z29485.intended_device_family = "MAX 10";
               defparam ix64056z29485.lpm_hint = "UNUSED";
               defparam ix64056z29485.lpm_type = "altsyncram";
    assign rd_ena1_rename146 = 1'b1 ;
endmodule


module ram_dq_8_3 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename116;



    altsyncram ix64056z29484 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename116), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename116), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29484.width_a = 8;
               defparam ix64056z29484.widthad_a = 8;
               defparam ix64056z29484.numwords_a = 256;
               defparam ix64056z29484.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29484.address_aclr_a = "NONE";
               defparam ix64056z29484.outdata_aclr_a = "NONE";
               defparam ix64056z29484.indata_aclr_a = "NONE";
               defparam ix64056z29484.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29484.byteena_aclr_a = "NONE";
               defparam ix64056z29484.width_byteena_a = 1;
               defparam ix64056z29484.width_b = 8;
               defparam ix64056z29484.widthad_b = 8;
               defparam ix64056z29484.numwords_b = 256;
               defparam ix64056z29484.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29484.address_reg_b = "CLOCK1";
               defparam ix64056z29484.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29484.outdata_aclr_b = "NONE";
               defparam ix64056z29484.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29484.indata_reg_b = "CLOCK1";
               defparam ix64056z29484.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29484.byteena_reg_b = "CLOCK1";
               defparam ix64056z29484.indata_aclr_b = "NONE";
               defparam ix64056z29484.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29484.byteena_aclr_b = "NONE";
               defparam ix64056z29484.width_byteena_b = 1;
               defparam ix64056z29484.address_aclr_b = "NONE";
               defparam ix64056z29484.operation_mode = "SINGLE_PORT";
               defparam ix64056z29484.byte_size = 8;
               defparam ix64056z29484.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29484.ram_block_type = "AUTO";
               defparam ix64056z29484.init_file = "UNUSED";
               defparam ix64056z29484.init_file_layout = "UNUSED";
               defparam ix64056z29484.maximum_depth = 0;
               defparam ix64056z29484.intended_device_family = "MAX 10";
               defparam ix64056z29484.lpm_hint = "UNUSED";
               defparam ix64056z29484.lpm_type = "altsyncram";
    assign rd_ena1_rename116 = 1'b1 ;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename86;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename86), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename86), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29483.width_a = 8;
               defparam ix64056z29483.widthad_a = 8;
               defparam ix64056z29483.numwords_a = 256;
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29483.address_aclr_a = "NONE";
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               defparam ix64056z29483.indata_aclr_a = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               defparam ix64056z29483.width_byteena_a = 1;
               defparam ix64056z29483.width_b = 8;
               defparam ix64056z29483.widthad_b = 8;
               defparam ix64056z29483.numwords_b = 256;
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               defparam ix64056z29483.indata_aclr_b = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               defparam ix64056z29483.width_byteena_b = 1;
               defparam ix64056z29483.address_aclr_b = "NONE";
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               defparam ix64056z29483.byte_size = 8;
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29483.ram_block_type = "AUTO";
               defparam ix64056z29483.init_file = "UNUSED";
               defparam ix64056z29483.init_file_layout = "UNUSED";
               defparam ix64056z29483.maximum_depth = 0;
               defparam ix64056z29483.intended_device_family = "MAX 10";
               defparam ix64056z29483.lpm_hint = "UNUSED";
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign rd_ena1_rename86 = 1'b1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename56;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename56), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename56), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29482.width_a = 8;
               defparam ix64056z29482.widthad_a = 8;
               defparam ix64056z29482.numwords_a = 256;
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29482.address_aclr_a = "NONE";
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               defparam ix64056z29482.indata_aclr_a = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               defparam ix64056z29482.width_byteena_a = 1;
               defparam ix64056z29482.width_b = 8;
               defparam ix64056z29482.widthad_b = 8;
               defparam ix64056z29482.numwords_b = 256;
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               defparam ix64056z29482.indata_aclr_b = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               defparam ix64056z29482.width_byteena_b = 1;
               defparam ix64056z29482.address_aclr_b = "NONE";
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               defparam ix64056z29482.byte_size = 8;
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29482.ram_block_type = "AUTO";
               defparam ix64056z29482.init_file = "UNUSED";
               defparam ix64056z29482.init_file_layout = "UNUSED";
               defparam ix64056z29482.maximum_depth = 0;
               defparam ix64056z29482.intended_device_family = "MAX 10";
               defparam ix64056z29482.lpm_hint = "UNUSED";
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign rd_ena1_rename56 = 1'b1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename26;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename26), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename26), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29481.width_a = 8;
               defparam ix64056z29481.widthad_a = 8;
               defparam ix64056z29481.numwords_a = 256;
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29481.address_aclr_a = "NONE";
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               defparam ix64056z29481.indata_aclr_a = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               defparam ix64056z29481.width_byteena_a = 1;
               defparam ix64056z29481.width_b = 8;
               defparam ix64056z29481.widthad_b = 8;
               defparam ix64056z29481.numwords_b = 256;
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               defparam ix64056z29481.indata_aclr_b = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               defparam ix64056z29481.width_byteena_b = 1;
               defparam ix64056z29481.address_aclr_b = "NONE";
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               defparam ix64056z29481.byte_size = 8;
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29481.ram_block_type = "AUTO";
               defparam ix64056z29481.init_file = "UNUSED";
               defparam ix64056z29481.init_file_layout = "UNUSED";
               defparam ix64056z29481.maximum_depth = 0;
               defparam ix64056z29481.intended_device_family = "MAX 10";
               defparam ix64056z29481.lpm_hint = "UNUSED";
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign rd_ena1_rename26 = 1'b1 ;
endmodule

