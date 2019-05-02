//
// Verilog description for cell mult, 
// Sun May 27 21:54:33 2018
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module mult ( clk, reset, i_valid, i_a, i_b, o_valid, o_z ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_a ;
    input [7:0]i_b ;
    output o_valid ;
    output [7:0]o_z ;

    wire [7:0]a;
    wire [7:0]b;
    wire [1:0]State;
    wire [7:0]o_z_3n5s1;
    wire nx14046z1, nx20342z1, nx54730z1, nx60011z1, nx39913z1, nx56244z1, 
         nx24866z1, PWR, GND;
    wire [6:0]a_3n10ss1;
    wire [7:1]b_3n10ss1;
    wire nx61882z2, nx33332z1, not_State_0, nx61882z1, nx19052z1, nx60567z1, 
         nx40177z1, nx39180z1, nx61882z4, nx39180z2, nx60567z2, nx33332z2, 
         nx61882z3, nx39180z3;
    wire [162:0] xmplr_dummy ;




    assign PWR = 1'b1 ;
    assign GND = 1'b0 ;
    assign not_State_0 = ~State[0] ;
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix36_fadd (.combout (o_z_3n5s1[0]), .cout (
                           nx14046z1), .dataa (o_z[0]), .datab (b[0]), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam o_z_add8_3i1_ix36_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix40_fadd (.combout (o_z_3n5s1[1]), .cout (
                           nx20342z1), .dataa (o_z[1]), .datab (b[1]), .datac (
                           1'b1), .datad (PWR), .cin (nx14046z1)) ;
                           defparam o_z_add8_3i1_ix40_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix40_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix44_fadd (.combout (o_z_3n5s1[2]), .cout (
                           nx54730z1), .dataa (o_z[2]), .datab (b[2]), .datac (
                           1'b1), .datad (PWR), .cin (nx20342z1)) ;
                           defparam o_z_add8_3i1_ix44_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix44_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix48_fadd (.combout (o_z_3n5s1[3]), .cout (
                           nx60011z1), .dataa (o_z[3]), .datab (b[3]), .datac (
                           1'b1), .datad (PWR), .cin (nx54730z1)) ;
                           defparam o_z_add8_3i1_ix48_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix52_fadd (.combout (o_z_3n5s1[4]), .cout (
                           nx39913z1), .dataa (o_z[4]), .datab (b[4]), .datac (
                           1'b1), .datad (PWR), .cin (nx60011z1)) ;
                           defparam o_z_add8_3i1_ix52_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix56_fadd (.combout (o_z_3n5s1[5]), .cout (
                           nx56244z1), .dataa (o_z[5]), .datab (b[5]), .datac (
                           1'b1), .datad (PWR), .cin (nx39913z1)) ;
                           defparam o_z_add8_3i1_ix56_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix60_fadd (.combout (o_z_3n5s1[6]), .cout (
                           nx24866z1), .dataa (o_z[6]), .datab (b[6]), .datac (
                           1'b1), .datad (PWR), .cin (nx56244z1)) ;
                           defparam o_z_add8_3i1_ix60_fadd.lut_mask = 16'h96e8;
                           defparam o_z_add8_3i1_ix60_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb o_z_add8_3i1_ix62_fadd (.combout (o_z_3n5s1[7]), .dataa (
                           o_z[7]), .datab (b[7]), .datac (1'b1), .datad (PWR), 
                           .cin (nx24866z1)) ;
                           defparam o_z_add8_3i1_ix62_fadd.lut_mask = 16'h9696;
                           defparam o_z_add8_3i1_ix62_fadd.sum_lutc_input = "cin";
    dffeas reg_o_z_7_ (.q (o_z[7]), .d (o_z_3n5s1[7]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_6_ (.q (o_z[6]), .d (o_z_3n5s1[6]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_5_ (.q (o_z[5]), .d (o_z_3n5s1[5]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_4_ (.q (o_z[4]), .d (o_z_3n5s1[4]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_3_ (.q (o_z[3]), .d (o_z_3n5s1[3]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_2_ (.q (o_z[2]), .d (o_z_3n5s1[2]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_1_ (.q (o_z[1]), .d (o_z_3n5s1[1]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_o_z_0_ (.q (o_z[0]), .d (o_z_3n5s1[0]), .clk (clk), .ena (
           nx33332z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           not_State_0), .sload (GND)) ;
    dffeas reg_State_1_ (.q (State[1]), .d (nx39180z1), .clk (clk), .ena (PWR), 
           .clrn (nx39180z3), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    assign nx39180z3 = ~reset ;
    dffeas reg_o_valid (.q (o_valid), .d (nx60567z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_b_0_ (.q (b[0]), .d (nx19052z1), .clk (clk), .ena (nx61882z2), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a_7_ (.q (a[7]), .d (nx61882z1), .clk (clk), .ena (nx61882z2), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_State_0_ (.q (State[0]), .d (nx40177z1), .clk (clk), .ena (PWR), 
           .clrn (nx39180z3), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    fiftyfivenm_lcell_comb ix60885z7095 (.combout (a_3n10ss1[6]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[7]), .datad (i_a[6])
                           ) ;
                           defparam ix60885z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix59888z7095 (.combout (a_3n10ss1[5]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[6]), .datad (i_a[5])
                           ) ;
                           defparam ix59888z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix58891z7095 (.combout (a_3n10ss1[4]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[5]), .datad (i_a[4])
                           ) ;
                           defparam ix58891z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix57894z7095 (.combout (a_3n10ss1[3]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[4]), .datad (i_a[3])
                           ) ;
                           defparam ix57894z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix56897z7095 (.combout (a_3n10ss1[2]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[3]), .datad (i_a[2])
                           ) ;
                           defparam ix56897z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix55900z7095 (.combout (a_3n10ss1[1]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[2]), .datad (i_a[1])
                           ) ;
                           defparam ix55900z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix54903z7095 (.combout (a_3n10ss1[0]), .dataa (1'b1)
                           , .datab (State[1]), .datac (a[1]), .datad (i_a[0])
                           ) ;
                           defparam ix54903z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix12073z7095 (.combout (b_3n10ss1[7]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[6]), .datad (i_b[7])
                           ) ;
                           defparam ix12073z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix13070z7095 (.combout (b_3n10ss1[6]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[5]), .datad (i_b[6])
                           ) ;
                           defparam ix13070z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix14067z7095 (.combout (b_3n10ss1[5]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[4]), .datad (i_b[5])
                           ) ;
                           defparam ix14067z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix15064z7095 (.combout (b_3n10ss1[4]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[3]), .datad (i_b[4])
                           ) ;
                           defparam ix15064z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix16061z7095 (.combout (b_3n10ss1[3]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[2]), .datad (i_b[3])
                           ) ;
                           defparam ix16061z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix17058z7095 (.combout (b_3n10ss1[2]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[1]), .datad (i_b[2])
                           ) ;
                           defparam ix17058z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix18055z7095 (.combout (b_3n10ss1[1]), .dataa (1'b1)
                           , .datab (State[1]), .datac (b[0]), .datad (i_b[1])
                           ) ;
                           defparam ix18055z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix61882z7096 (.combout (nx61882z2), .dataa (1'b1), .datab (
                           nx61882z3), .datac (State[0]), .datad (reset)) ;
                           defparam ix61882z7096.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix33332z7095 (.combout (nx33332z1), .dataa (1'b1), .datab (
                           nx33332z2), .datac (State[1]), .datad (reset)) ;
                           defparam ix33332z7095.lut_mask = 16'h000c;
    fiftyfivenm_lcell_comb ix61882z7095 (.combout (nx61882z1), .dataa (1'b1), .datab (
                           1'b1), .datac (State[1]), .datad (i_a[7])) ;
                           defparam ix61882z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix19052z7095 (.combout (nx19052z1), .dataa (1'b1), .datab (
                           1'b1), .datac (State[1]), .datad (i_b[0])) ;
                           defparam ix19052z7095.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix60567z7095 (.combout (nx60567z1), .dataa (nx60567z2
                           ), .datab (State[1]), .datac (o_valid), .datad (reset
                           )) ;
                           defparam ix60567z7095.lut_mask = 16'hf0d8;
    fiftyfivenm_lcell_comb ix40177z7095 (.combout (nx40177z1), .dataa (State[0])
                           , .datab (State[1]), .datac (i_valid), .datad (reset)
                           ) ;
                           defparam ix40177z7095.lut_mask = 16'h4454;
    fiftyfivenm_lcell_comb ix39180z7095 (.combout (nx39180z1), .dataa (nx39180z2
                           ), .datab (nx61882z4), .datac (State[0]), .datad (
                           State[1])) ;
                           defparam ix39180z7095.lut_mask = 16'h08f0;
    fiftyfivenm_lcell_comb ix61882z7098 (.combout (nx61882z4), .dataa (a[4]), .datab (
                           a[5]), .datac (a[6]), .datad (a[7])) ;
                           defparam ix61882z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix39180z7096 (.combout (nx39180z2), .dataa (a[0]), .datab (
                           a[1]), .datac (a[2]), .datad (a[3])) ;
                           defparam ix39180z7096.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix60567z7096 (.combout (nx60567z2), .dataa (1'b1), .datab (
                           State[0]), .datac (State[1]), .datad (i_valid)) ;
                           defparam ix60567z7096.lut_mask = 16'hc3c0;
    fiftyfivenm_lcell_comb ix33332z7096 (.combout (nx33332z2), .dataa (1'b1), .datab (
                           State[0]), .datac (a[0]), .datad (i_valid)) ;
                           defparam ix33332z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix61882z7097 (.combout (nx61882z3), .dataa (nx39180z2
                           ), .datab (nx61882z4), .datac (State[1]), .datad (
                           i_valid)) ;
                           defparam ix61882z7097.lut_mask = 16'h7f70;
    dffeas reg_b_7_ (.q (b[7]), .d (b_3n10ss1[7]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_6_ (.q (b[6]), .d (b_3n10ss1[6]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_5_ (.q (b[5]), .d (b_3n10ss1[5]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_4_ (.q (b[4]), .d (b_3n10ss1[4]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_3_ (.q (b[3]), .d (b_3n10ss1[3]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_2_ (.q (b[2]), .d (b_3n10ss1[2]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_b_1_ (.q (b[1]), .d (b_3n10ss1[1]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_6_ (.q (a[6]), .d (a_3n10ss1[6]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_5_ (.q (a[5]), .d (a_3n10ss1[5]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_4_ (.q (a[4]), .d (a_3n10ss1[4]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_3_ (.q (a[3]), .d (a_3n10ss1[3]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_2_ (.q (a[2]), .d (a_3n10ss1[2]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_1_ (.q (a[1]), .d (a_3n10ss1[1]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_a_0_ (.q (a[0]), .d (a_3n10ss1[0]), .clk (clk), .ena (nx61882z2)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
endmodule

