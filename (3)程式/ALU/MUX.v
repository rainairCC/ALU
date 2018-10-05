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
定義各種訊號
*/
/*
=====================================================
下面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/
assign dataOut = (Signal[5]) ? (ALUOut) : ( (Signal[1]) ? ((Signal[4]) ? (LoOut):(Shifter)) : HiOut) ;
/*
===========
   重要
===========
MFHI和MFLO
這兩道指令一定要加進來
這是把HILO暫存器的值輸出的指令
請別忘記
===========
   重要
===========
/*
分別根據傳進來的signal來選擇不同的輸入來源
然後放進暫存器再輸出
*/

endmodule
