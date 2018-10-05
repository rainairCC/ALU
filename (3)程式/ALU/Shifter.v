`timescale 1ns/1ns
module Shifter( dataA, dataB, Signal, dataOut, reset);
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [31:0] dataOut ;

wire [4:0] sel ;
assign sel = dataB ;

wire [31:0] dataOut;

wire [31:0] a,b,c,d,e ;

parameter SRL = 6'b000010;

// level 1
Mux2_1 a_1( dataA[31], 1'b0, sel[0], a[31] ) ;
Mux2_1 a_2( dataA[30], dataA[31], sel[0], a[30] ) ;
Mux2_1 a_3( dataA[29], dataA[30], sel[0], a[29] ) ;
Mux2_1 a_4( dataA[28], dataA[29], sel[0], a[28] ) ;
Mux2_1 a_5( dataA[27], dataA[28], sel[0], a[27] ) ;
Mux2_1 a_6( dataA[26], dataA[27], sel[0], a[26] ) ;
Mux2_1 a_7( dataA[26], dataA[26], sel[0], a[25] ) ;
Mux2_1 a_8( dataA[25], dataA[25], sel[0], a[24] ) ;
Mux2_1 a_9( dataA[24], dataA[24], sel[0], a[23] ) ;
Mux2_1 a_10( dataA[23], dataA[23], sel[0], a[22] ) ;
Mux2_1 a_11( dataA[22], dataA[22], sel[0], a[21] ) ;
Mux2_1 a_12( dataA[21], dataA[21], sel[0], a[20] ) ;
Mux2_1 a_13( dataA[20], dataA[20], sel[0], a[19] ) ;
Mux2_1 a_14( dataA[19], dataA[19], sel[0], a[18] ) ;
Mux2_1 a_15( dataA[18], dataA[18], sel[0], a[17] ) ;
Mux2_1 a_16( dataA[17], dataA[17], sel[0], a[16] ) ;
Mux2_1 a_17( dataA[16], dataA[16], sel[0], a[15] ) ;
Mux2_1 a_18( dataA[15], dataA[15], sel[0], a[14] ) ;
Mux2_1 a_19( dataA[14], dataA[14], sel[0], a[13] ) ;
Mux2_1 a_20( dataA[12], dataA[13], sel[0], a[12] ) ;
Mux2_1 a_21( dataA[11], dataA[12], sel[0], a[11] ) ;
Mux2_1 a_22( dataA[10], dataA[11], sel[0], a[10] ) ;
Mux2_1 a_23( dataA[9], dataA[10], sel[0], a[9] ) ;
Mux2_1 a_24( dataA[8], dataA[9], sel[0], a[8] ) ;
Mux2_1 a_25( dataA[7], dataA[8], sel[0], a[7] ) ;
Mux2_1 a_26( dataA[6], dataA[7], sel[0], a[6] ) ;
Mux2_1 a_27( dataA[5], dataA[6], sel[0], a[5] ) ;
Mux2_1 a_28( dataA[4], dataA[5], sel[0], a[4] ) ;
Mux2_1 a_29( dataA[3], dataA[4], sel[0], a[3] ) ;
Mux2_1 a_30( dataA[2], dataA[3], sel[0], a[2] ) ;
Mux2_1 a_31( dataA[1], dataA[2], sel[0], a[1] ) ;
Mux2_1 a_32( dataA[0], dataA[1], sel[0], a[0] ) ;

// level 2

Mux2_1 b_1( a[31], 1'b0, sel[1], b[31] ) ;
Mux2_1 b_2( a[30], 1'b0, sel[1], b[30] ) ;
Mux2_1 b_3( a[29], a[31], sel[1], b[29] ) ;
Mux2_1 b_4( a[28], a[30], sel[1], b[28] ) ;
Mux2_1 b_5( a[27], a[29], sel[1], b[27] ) ;
Mux2_1 b_6( a[26], a[28], sel[1], b[26] ) ;
Mux2_1 b_7( a[25], a[27], sel[1], b[25] ) ;
Mux2_1 b_8( a[24], a[26], sel[1], b[24] ) ;
Mux2_1 b_9( a[23], a[25], sel[1], b[23] ) ;
Mux2_1 b_10( a[22], a[24], sel[1], b[22] ) ;
Mux2_1 b_11( a[21], a[23], sel[1], b[21] ) ;
Mux2_1 b_12( a[20], a[22], sel[1], b[20] ) ;
Mux2_1 b_13( a[19], a[21], sel[1], b[19] ) ;
Mux2_1 b_14( a[18], a[20], sel[1], b[18] ) ;
Mux2_1 b_15( a[17], a[19], sel[1], b[17] ) ;
Mux2_1 b_16( a[16], a[18], sel[1], b[16] ) ;
Mux2_1 b_17( a[15], a[17], sel[1], b[15] ) ;
Mux2_1 b_18( a[14], a[16], sel[1], b[14] ) ;
Mux2_1 b_19( a[13], a[15], sel[1], b[13] ) ;
Mux2_1 b_20( a[12], a[14], sel[1], b[12] ) ;
Mux2_1 b_21( a[11], a[13], sel[1], b[11] ) ;
Mux2_1 b_22( a[10], a[12], sel[1], b[10] ) ;
Mux2_1 b_23( a[9], a[11], sel[1], b[9] ) ;
Mux2_1 b_24( a[8], a[10], sel[1], b[8] ) ;
Mux2_1 b_25( a[7], a[9], sel[1], b[7] ) ;
Mux2_1 b_26( a[6], a[8], sel[1], b[6] ) ;
Mux2_1 b_27( a[5], a[7], sel[1], b[5] ) ;
Mux2_1 b_28( a[4], a[6], sel[1], b[4] ) ;
Mux2_1 b_29( a[3], a[5], sel[1], b[3] ) ;
Mux2_1 b_30( a[2], a[4], sel[1], b[2] ) ;
Mux2_1 b_31( a[1], a[3], sel[1], b[1] ) ;
Mux2_1 b_32( a[0], a[2], sel[1], b[0] ) ;

// level 3
Mux2_1 c_1( b[31], 1'b0, sel[2], c[31] ) ;
Mux2_1 c_2( b[30], 1'b0, sel[2], c[30] ) ;
Mux2_1 c_3( b[29], 1'b0, sel[2], c[29] ) ;
Mux2_1 c_4( b[28], 1'b0, sel[2], c[28] ) ;
Mux2_1 c_5( b[27], b[31], sel[2], c[27] ) ;
Mux2_1 c_6( b[26], b[30], sel[2], c[26] ) ;
Mux2_1 c_7( b[25], b[29], sel[2], c[25] ) ;
Mux2_1 c_8( b[24], b[28], sel[2], c[24] ) ;
Mux2_1 c_9( b[23], b[27], sel[2], c[23] ) ;
Mux2_1 c_10( b[22], b[26], sel[2], c[22] ) ;
Mux2_1 c_11( b[21], b[25], sel[2], c[21] ) ;
Mux2_1 c_12( b[20], b[24], sel[2], c[20] ) ;
Mux2_1 c_13( b[19], b[23], sel[2], c[19] ) ;
Mux2_1 c_14( b[18], b[22], sel[2], c[18] ) ;
Mux2_1 c_15( b[17], b[21], sel[2], c[17] ) ;
Mux2_1 c_16( b[16], b[20], sel[2], c[16] ) ;
Mux2_1 c_17( b[15], b[19], sel[2], c[15] ) ;
Mux2_1 c_18( b[14], b[18], sel[2], c[14] ) ;
Mux2_1 c_19( b[13], b[17], sel[2], c[13] ) ;
Mux2_1 c_20( b[12], b[16], sel[2], c[12] ) ;
Mux2_1 c_21( b[11], b[15], sel[2], c[11] ) ;
Mux2_1 c_22( b[10], b[14], sel[2], c[10] ) ;
Mux2_1 c_23( b[9], b[13], sel[2], c[9] ) ;
Mux2_1 c_24( b[8], b[12], sel[2], c[8] ) ;
Mux2_1 c_25( b[7], b[11], sel[2], c[7] ) ;
Mux2_1 c_26( b[6], b[10], sel[2], c[6] ) ;
Mux2_1 c_27( b[5], b[9], sel[2], c[5] ) ;
Mux2_1 c_28( b[4], b[8], sel[2], c[4] ) ;
Mux2_1 c_29( b[3], b[7],sel[2], c[3] ) ;
Mux2_1 c_30( b[2], b[6], sel[2], c[2] ) ;
Mux2_1 c_31( b[1], b[5], sel[2], c[1] ) ;
Mux2_1 c_32( b[0], b[4], sel[2], c[0] ) ;

// level 4
Mux2_1 d_1( c[31], 1'b0, sel[3], d[31] ) ;
Mux2_1 d_2( c[30], 1'b0, sel[3], d[30] ) ;
Mux2_1 d_3( c[29], 1'b0, sel[3], d[29] ) ;
Mux2_1 d_4( c[28], 1'b0, sel[3], d[28] ) ;
Mux2_1 d_5( c[27], 1'b0, sel[3], d[27] ) ;
Mux2_1 d_6( c[26], 1'b0,  sel[3], d[26] ) ;
Mux2_1 d_7( c[25], 1'b0, sel[3], d[25] ) ;
Mux2_1 d_8( c[24], 1'b0, sel[3], d[24] ) ;
Mux2_1 d_9( c[23], c[31], sel[3], d[23] ) ;
Mux2_1 d_10( c[22], c[30], sel[3], d[22] ) ;
Mux2_1 d_11( c[21], c[29], sel[3], d[21] ) ;
Mux2_1 d_12( c[20], c[28], sel[3], d[20] ) ;
Mux2_1 d_13( c[19], c[27], sel[3], d[19] ) ;
Mux2_1 d_14( c[18], c[26], sel[3], d[18] ) ;
Mux2_1 d_15( c[17], c[25], sel[3], d[17] ) ;
Mux2_1 d_16( c[16], c[24], sel[3], d[16] ) ;
Mux2_1 d_17( c[15], c[23], sel[3], d[15] ) ;
Mux2_1 d_18( c[14], c[22], sel[3], d[14] ) ;
Mux2_1 d_19( c[13], c[21], sel[3], d[13] ) ;
Mux2_1 d_20( c[12], c[20], sel[3], d[12] ) ;
Mux2_1 d_21( c[11], c[19], sel[3], d[11] ) ;
Mux2_1 d_22( c[10], c[18], sel[3], d[10] ) ;
Mux2_1 d_23( c[9], c[17], sel[3], d[9] ) ;
Mux2_1 d_24( c[8], c[16], sel[3], d[8] ) ;
Mux2_1 d_25( c[7], c[15], sel[3], d[7] ) ;
Mux2_1 d_26( c[6], c[14], sel[3], d[6] ) ;
Mux2_1 d_27( c[5], c[13], sel[3], d[5] ) ;
Mux2_1 d_28( c[4], c[12], sel[3], d[4] ) ;
Mux2_1 d_29( c[3], c[11], sel[3], d[3] ) ;
Mux2_1 d_30( c[2], c[10], sel[3], d[2] ) ;
Mux2_1 d_31( c[1], c[9], sel[3], d[1] ) ;
Mux2_1 d_32( c[0], c[8], sel[3], d[0] ) ;

// level 5

Mux2_1 e_1( d[31], 1'b0, sel[4], e[31] ) ;
Mux2_1 e_2( d[30], 1'b0, sel[4], e[30] ) ;
Mux2_1 e_3( d[29], 1'b0, sel[4],  e[29] ) ;
Mux2_1 e_4( d[28], 1'b0, sel[4], e[28] ) ;
Mux2_1 e_5( d[27], 1'b0, sel[4], e[27] ) ;
Mux2_1 e_6( d[26], 1'b0, sel[4], e[26] ) ;
Mux2_1 e_7( d[25], 1'b0, sel[4], e[25] ) ;
Mux2_1 e_8( d[24], 1'b0, sel[4], e[24] ) ;
Mux2_1 e_9( d[23], 1'b0, sel[4], e[23] ) ;
Mux2_1 e_10( d[22], 1'b0, sel[4], e[22] ) ;
Mux2_1 e_11( d[21], 1'b0, sel[4], e[21] ) ;
Mux2_1 e_12( d[20], 1'b0, sel[4], e[20] ) ;
Mux2_1 e_13( d[19], 1'b0, sel[4], e[19] ) ;
Mux2_1 e_14( d[18], 1'b0, sel[4], e[18] ) ;
Mux2_1 e_15( d[17], 1'b0, sel[4], e[17] ) ;
Mux2_1 e_16( d[16], 1'b0, sel[4], e[16] ) ;
Mux2_1 e_17( d[15], d[31], sel[4], e[15] ) ;
Mux2_1 e_18( d[14], d[30], sel[4], e[14] ) ;
Mux2_1 e_19( d[13], d[29], sel[4], e[13] ) ;
Mux2_1 e_20( d[12], d[28], sel[4], e[12] ) ;
Mux2_1 e_21( d[11], d[27], sel[4], e[11] ) ;
Mux2_1 e_22( d[10], d[26], sel[4], e[10] ) ;
Mux2_1 e_23( d[9], d[25], sel[4], e[9] ) ;
Mux2_1 e_24( d[8], d[24], sel[4], e[8] ) ;
Mux2_1 e_25( d[7], d[23], sel[4], e[7] ) ;
Mux2_1 e_26( d[6], d[22], sel[4], e[6] ) ;
Mux2_1 e_27( d[5], d[21], sel[4], e[5] ) ;
Mux2_1 e_28( d[4], d[20], sel[4], e[4] ) ;
Mux2_1 e_29( d[3], d[19], sel[4], e[3] ) ;
Mux2_1 e_30( d[2], d[18], sel[4], e[2] ) ;
Mux2_1 e_31( d[1], d[17], sel[4], e[1] ) ;
Mux2_1 e_32( d[0], d[16], sel[4], e[0] ) ;

assign dataOut = ( reset == 1'b1 ) ? 0 : e;
assign dataOut=(Signal == SRL)? e:32'b0 ;

endmodule 