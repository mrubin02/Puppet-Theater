module mealy_tb; 

    wire [2:0] state; 
    reg w, clk; 
    wire out; 

    initial begin 
        w = 1; 
        clk = 1; 
        #10;
    end 

    always 
        #10 w = ~w; 
    always 
        #10 clk = ~clk; 

    wire J1, J2, J3, K1, K2, K3; 
    
    mealy M(out, w, clk, state, J1, J2, J3, K1, K2, K3); 

    always @(posedge(clk)) begin 
        #10;
        $display("out: %b, state: %b, J1: %b, K1: %b", out, state, J1, K1); 
    end 

endmodule 
    
