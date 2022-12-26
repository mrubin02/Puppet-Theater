module sra2(out, A);
    input [31:0] A;
    output [31:0] out; 

    assign out[31:30] = {A[31], A[31]};
    assign out[29:0] = A[31:2];

endmodule