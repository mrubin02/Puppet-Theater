`include "dff.v"
`include "dlatch.v"
module d_tb; 
    reg d, clk;
    wire ql, qff;
    dff DFF(d,clk,qff);
    dlatch DL(d,clk,ql);

    initial begin 
        d = 0; 
        clk = 0; 

        #80 
        $finish;
    end 

    always 
        #15 d = ~d;
    always 
        #10 clk = ~clk;

    always @(d, clk, ql, qff) begin 
        #1
        $display("d: %b, clk: %b ==> dff: %b, dl: %b", d, clk, qff, ql);
    end 

    initial begin 
        $dumpfile("d_tb.vcd");
        $dumpvars(0, d_tb);
    end
endmodule 
        

