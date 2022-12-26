`include "mux_8.v" 

module comparator(EQ, GT, EQ1, GT1, A0, A1, B0, B1);
    input A0, A1, B0, B1, EQ1, GT1; 
    output EQ, GT;
    wire [2:0] select;
    wire e0, e1, e2, e3, c1, c2, f0, f1;

    wire nB0; 

    assign select[2] = A1; 
    assign select[1] = A0; 
    assign select[0] = B1;

    not NOT1(nB0, B0);

    mux_8 MUX1(e0, select, nB0, 0, B0, 0, 0, nB0, 0, B0);
    mux_8 MUX2(e1, select, 0, 0, nB0, 0, 1, 0, 1, nB0);
 


    xnor CHECK1(c1, EQ1, GT1); 
    assign f0 = c1 ? 0 : e0; 
    assign f1 = c1 ? 0 : e1;


    and CHECK2(c2, ~EQ1, GT1);

    assign EQ = c2 ? 0 : f0;  
    assign GT = c2 ? 1 : f1;  


endmodule

