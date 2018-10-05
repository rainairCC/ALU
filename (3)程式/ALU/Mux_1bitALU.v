
module Mux_ABitALU( Signal, Aand, Aor, add, Asub, out ) ;

	input Aand, Aor, add, Asub;
	input [5:0] Signal ;
	output out;

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;

	assign out = ( Signal == AND ) ? Aand:
         	    ( Signal == OR ) ? Aor: 
        	    ( Signal == ADD ) ? add:
         	    ( Signal == SUB ) ? Asub: 0;
	

endmodule

