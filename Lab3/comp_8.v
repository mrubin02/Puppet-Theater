
`include "comparator.v"

module comp_8(EQ, GT, A, B, EQ1, GT1, i0, i1, i2, i3, i4, i5);
    input [7:0] A, B; 
    input EQ1, GT1; 
    output EQ, GT;

    output i0, i1, i2, i3, i4, i5; 

    comparator COMP1(i0, i1, EQ1, GT1, A[6], A[7], B[6], B[7]); 
    comparator COMP2(i2, i3, i0, i1, A[4], A[5], B[4], B[5]);
    comparator COMP3(i4, i5, i2, i3, A[2], A[3], B[2], B[3]);
    comparator COMP4(EQ, GT, i4, i5, A[0], A[1], B[0], B[1]);


endmodule 



    




     


