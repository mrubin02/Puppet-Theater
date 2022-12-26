`include "dffe_ref.v"
module jk(Q, J, K, clk); 
    output Q; 
    input J;
    input K; 
    input clk;

    wire t1, t2, D; 
    dffe_ref DFF(Q, D, clk, 1'b1, 1'b0); 
    and AND1(t1, J, !Q); 
    and AND2(t2, !K, Q); 

    or DOR(D, t1, t2);

endmodule 