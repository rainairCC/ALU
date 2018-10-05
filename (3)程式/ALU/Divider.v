`timescale 1ns/1ns
module Divider( clk, dataA, dataB, Signal, dataOut, reset );
input clk ;
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [63:0] dataOut ;

//   Signal ( 6-bits)?
//   DIVU  : 27

reg [63:0] temp ;
parameter DIVU = 6'b011011;
parameter OUT = 6'b111111;
/*
�w�q�U�ذT��
*/
/*
=====================================================
�U���������d�ҡA�{�����g�п�ӦѮv�W�һ�������k�Ӽg
=====================================================
*/
always@( posedge clk or reset )
begin
        if ( reset )
        begin
                temp = 32'b0 ;
        end
/*
reset�T�� �p�G�Oreset�N���k0
*/
        else
        begin
		case ( Signal )
  		DIVU:
		begin

		end
  		OUT:
		begin
			 temp[63:32] = dataA / dataB ;
			 temp[31:0]= dataA % dataB ;
			#330 ;
		end
		endcase
        end
/*
���k�B��
OUT�������O�n��control���A���O�A�~����⵪�׿�X��HILO�Ȧs��
*/

end
assign dataOut = temp ;

/*
=====================================================
�W���������d�ҡA�{�����g�п�ӦѮv�W�һ�������k�Ӽg
=====================================================
*/
endmodule