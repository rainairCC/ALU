`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );
input clk ;
input reset ;
input [31:0] dataA, dataB;
input [5:0] Signal ;
output [63:0] dataOut;

//   Signal ( 6-bits)?
//   MULTU  : 25

reg [63:0] product ;
wire[63:0] temp1;
wire[31:0] temp2, temp3;
wire[31:0] temp4,temp5;

parameter MULTU  = 6'b011001;
parameter OUT = 6'b111111;

always@( Signal )
begin   
if ( Signal == MULTU  )  
	product[31:0] = dataB;
end

ALU alu( product[63:32] , dataA, 6'b100000, temp1, 0 );

always@( posedge clk or reset )
begin
        if ( reset )
        begin
                product = 64'b0;
        end

        else 
        begin   
	if ( Signal == MULTU  )
	begin   
	if( product[0] == 1 )
		begin
		product[63:32] =    temp1;
		end
		product = product >> 1;

	end
         end

        
end
assign dataOut= product ;

endmodule 

