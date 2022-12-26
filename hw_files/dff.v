module dff(d, clk, q);
    input d, clk;
    output q;
    reg q;
    always @(posedge clk) begin
        casex({clk,d})
        2'b1x: q = d; endcase
    end
endmodule