module full_adder_nand(S, Cout, A, B, Cin);
    input A, B, Cin;
    output S, Cout; 
    wire w1, w2, w3, w4, w5, w6, w7;
    nand N1(w1, A, B);
    nand N2(w2, A, w1);
    nand N3(w3, B, w1);
    nand N4(w4, w2, w3); 
    nand N5(w5, w4, Cin); 
    nand N6(w6, w5, w4); 
    nand N7(w7, Cin, w5); 
    nand N8(S, w6, w7); 
    nand N9(Cout, w5, w1);
endmodule 