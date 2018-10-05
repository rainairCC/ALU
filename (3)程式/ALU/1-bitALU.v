
module ABitALU( dataA, dataB, Signal, Cin, Cout, Sum );

	input dataA, dataB, Cin ;
	input [5:0] Signal ;
	output Cout, Sum ;

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;

	wire Aand, Aor, add, Asub, Aslt, AOut, SOut ;
	assign invertB = 1 ^ dataB;
	and( Aand, dataA, dataB ) ;
	or( Aor, dataA, dataB ) ;
	FA U_add(dataA,dataB,Cin,AOut,add);
	FA U_sub(dataA,invertB,Cin,SOut,Asub);

	assign Cout = ( Signal == ADD ) ? AOut: SOut ;
	Mux_ABitALU U_Mux_ABitALU( Signal, Aand, Aor, add, Asub, Sum ) ;
	

endmodule

