module dlatch(d, clk, q);
    input d, clk;
    output q;
    reg q;
    always @(clk,d) begin
        casex({clk,d})
        2'b1x: q = d; endcase
    end
endmodule