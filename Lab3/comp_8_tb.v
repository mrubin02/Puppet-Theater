
module comp_8_tb; 
    wire [7:0] A, B;
    input EQ1, GT1; 
    wire EQ, GT;
    wire i0, i1, i2, i3, i4, i5;

    comp_8 COMP(EQ, GT, A, B, EQ1, GT1, i0, i1, i2, i3, i4, i5);

    integer i; 
    assign {GT1, A, B} = i[16:0]; 
    assign EQ1 = 1;

    initial begin 
        for(i =1000; i<2000; i = i+1) begin 
            #2
            $display("EQ1:%b, GT1:%b, A:%b, B:%b  => EQ:%b, GT:%b", EQ1, GT1, A, B, EQ, GT);
        end 
        $finish;
    end

endmodule