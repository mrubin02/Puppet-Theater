module comparator_tb;

    wire A0, A1, B0, B1, EQ1, GT1;
    wire EQ, GT;

    comparator COMP(EQ, GT, EQ1, GT1, A0, A1, B0, B1);

    integer i; 
    assign {EQ1, GT1, A1, A0, B1, B0} = i[5:0]; 

    initial begin 
        for(i =0; i<48; i = i+1) begin 
            #20 
            $display("EQ1:%b, GT1:%b, A:%b%b, B:%b%b  => EQ:%b, GT:%b", EQ1, GT1, A1, A0, B1, B0, EQ, GT);
        end 
        $finish;
    end

endmodule
