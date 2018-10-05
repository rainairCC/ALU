`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, reset );

	input reset ;
	input [31:0] dataA ;
	input [31:0] dataB ;
	input [5:0] Signal ;
	output [31:0] dataOut ;

	wire Cin ;
	wire [31:0] Cout ,O , Out;
	wire [31:0] slt, temp ;

	//   Signal 
	//   AND  : 36
	//   OR   : 37
	//   ADD  : 32
	//   SUB  : 34
	//   SLT  : 42

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;

	assign Cin = ( Signal == ADD ) ? 0 : 1 ;

	ABitALU ABitALU0( dataA[0], dataB[0], Signal, Cin, Out[0], O[0] ) ;
	ABitALU ABitALU1( dataA[1], dataB[1], Signal, Out[0], Out[1], O[1] ) ;
	ABitALU ABitALU2( dataA[2], dataB[2], Signal, Out[1], Out[2], O[2] ) ;
	ABitALU ABitALU3( dataA[3], dataB[3], Signal, Out[2], Out[3], O[3] ) ;
	ABitALU ABitALU4( dataA[4], dataB[4], Signal, Out[3], Out[4], O[4] ) ;
	ABitALU ABitALU5( dataA[5], dataB[5], Signal, Out[4], Out[5], O[5] ) ;
	ABitALU ABitALU6( dataA[6], dataB[6], Signal, Out[5], Out[6], O[6] ) ;
	ABitALU ABitALU7( dataA[7], dataB[7], Signal, Out[6], Out[7], O[7] ) ;
	ABitALU ABitALU8( dataA[8], dataB[8], Signal, Out[7], Out[8], O[8] ) ;
	ABitALU ABitALU9( dataA[9], dataB[9], Signal, Out[8], Out[9], O[9] ) ;
	ABitALU ABitALU10( dataA[10], dataB[10], Signal, Out[9], Out[10], O[10] ) ;
	ABitALU ABitALU11( dataA[11], dataB[11], Signal, Out[10], Out[11], O[11] ) ;
	ABitALU ABitALU12( dataA[12], dataB[12], Signal, Out[11], Out[12], O[12] ) ;
	ABitALU ABitALU13( dataA[13], dataB[13], Signal, Out[12], Out[13], O[13] ) ;
	ABitALU ABitALU14( dataA[14], dataB[14], Signal, Out[13], Out[14], O[14] ) ;
	ABitALU ABitALU15( dataA[15], dataB[15], Signal, Out[14], Out[15], O[15] ) ;
	ABitALU ABitALU16( dataA[16], dataB[16], Signal, Out[15], Out[16], O[16] ) ;
	ABitALU ABitALU17( dataA[17], dataB[17], Signal, Out[16], Out[17], O[17] ) ;
	ABitALU ABitALU18( dataA[18], dataB[18], Signal, Out[17], Out[18], O[18] ) ;
	ABitALU ABitALU19( dataA[19], dataB[19], Signal, Out[18], Out[19], O[19] ) ;
	ABitALU ABitALU20( dataA[20], dataB[20], Signal, Out[19], Out[20], O[20] ) ;
	ABitALU ABitALU21( dataA[21], dataB[21], Signal, Out[20], Out[21], O[21] ) ;
	ABitALU ABitALU22( dataA[22], dataB[22], Signal, Out[21], Out[22], O[22] ) ;
	ABitALU ABitALU23( dataA[23], dataB[23], Signal, Out[22], Out[23], O[23] ) ;
	ABitALU ABitALU24( dataA[24], dataB[24], Signal, Out[23], Out[24], O[24] ) ;
	ABitALU ABitALU25( dataA[25], dataB[25], Signal, Out[24], Out[25], O[25] ) ;
	ABitALU ABitALU26( dataA[26], dataB[26], Signal, Out[25], Out[26], O[26] ) ;
	ABitALU ABitALU27( dataA[27], dataB[27], Signal, Out[26], Out[27], O[27] ) ;
	ABitALU ABitALU28( dataA[28], dataB[28], Signal, Out[27], Out[28], O[28] ) ;
	ABitALU ABitALU29( dataA[29], dataB[29], Signal, Out[28], Out[29], O[29] ) ;
	ABitALU ABitALU30( dataA[30], dataB[30], Signal, Out[29], Out[30], O[30] ) ;
	ABitALU ABitALU31( dataA[31], dataB[31], Signal, Out[30], Out[31], O[31] ) ;

	assign slt = ( Out[31] == 1'b1 ) ? dataA : dataB;
	assign temp = ( Signal == SLT ) ? slt : O ;
	assign dataOut = ( reset == 1'b1 ) ? 0 : temp ;

endmodule

