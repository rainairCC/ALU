`timescale 1ns/1ns
module MUX( ALUOut, HiOut, LoOut, Shifter, Signal, dataOut );
input [31:0] ALUOut ;
input [31:0] HiOut ;
input [31:0] LoOut ;
input [31:0] Shifter ;
input [5:0] Signal ;
output [31:0] dataOut ;


reg [31:0] temp ;

parameter AND = 6'b100100;
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;

parameter SRL = 6'b000010;

parameter MULTU= 6'b011001;
parameter MFHI= 6'b010000;
parameter MFLO= 6'b010010;
/*
�w�q�U�ذT��
*/
/*
=====================================================
�U���������d�ҡA�{�����g�п�ӦѮv�W�һ�������k�Ӽg
=====================================================
*/
assign dataOut = (Signal[5]) ? (ALUOut) : ( (Signal[1]) ? ((Signal[4]) ? (LoOut):(Shifter)) : HiOut) ;
/*
===========
   ���n
===========
MFHI�MMFLO
�o��D���O�@�w�n�[�i��
�o�O��HILO�Ȧs�����ȿ�X�����O
�ЧO�ѰO
===========
   ���n
===========
/*
���O�ھڶǶi�Ӫ�signal�ӿ�ܤ��P����J�ӷ�
�M���i�Ȧs���A��X
*/

endmodule
