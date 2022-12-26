module sra4(out, A);
    input [31:0] A;
    output [31:0] out; 

    assign out[31:28] = {A[31], A[31], A[31], A[31]};
    assign out[27:0] = A[31:4];

endmodule