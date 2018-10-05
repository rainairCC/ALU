`timescale 1ns/1ns
module FA(a, b, c, cout, sum);

    input a, b, c;
    output cout, sum;
    
    wire e1, e2, e3;

    and( e1, a, b );
    and( e2, a, c );
    and( e3, b, c );
    or ( cout, e1, e2, e3 );
    xor  (sum, a, b, c);

endmodule

