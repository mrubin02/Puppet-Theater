`include "jk.v"

module moore(out, w, clk, w7, w6, u8, v8, u5, v5, u7); 
    input w, clk; 
    output out; 

    output [2:0] state; 
    output w7, 
    wire J1, K1, J2, K2, J3, K3; 
    wire clr; 

    jk JK1(state[0], J1, K1, !clk); 
    jk JK2(state[1], J2, K2, !clk); 
    jk JK3(state[2], J3, K3, !clk); 

    assign J1 =  clr ? 1'b0 : w; 
    assign K1 =  clr ? 1'b1 : w; 
    
    assign J2 = clr ? 1'b0 : w && state[0];
    assign K2 = clr ? 1'b1 : w && state[0];

    assign J3 =  clr ? 1'b0 : w && state[0] && state[1];
    assign K3 =  clr ? 1'b1 : w && state[0] && state[1];

    and CLEAR(clr, state[2], !state[1], !state[0], w);
    and FINAL(out, state[2], !state[1], !state[0]); 

    wire [7:0] LED_out;


    always @(*)
    begin
        case(state)
        3'b000: LED_out = 7'b0000001; // "0"     
        3'b001: LED_out = 7'b1001111; // "1" 
        3'b010: LED_out = 7'b0010010; // "2" 
        3'b011: LED_out = 7'b0000110; // "3" 
        3'b100: LED_out = 7'b1001100; // "4" 
        default: LED_out = 7'b0000001; // "0"
        endcase
    end
    
endmodule