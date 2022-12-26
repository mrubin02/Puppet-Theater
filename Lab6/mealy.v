`include "jk.v"

module mealy(out, w, clk, state, AN0, w7, w6, u8, v8, u5, v5, u7); 
    input w, clk; 
    output out; 
    output w7, w6, u8, v8, u5, v5, u7;

    output [2:0] state; 
    output J1, K1, J2, K2, J3, K3; 
    wire clr; 

    output AN0 = 1'b1; 

    assign w7 = LED_out[6];
    assign w6 = LED_out[5];
    assign u8 = LED_out[4];
    assign v8 = LED_out[3];
    assign u5 = LED_out[2];
    assign v5 = LED_out[1];
    assign u7 = LED_out[0];

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
    and FINAL(out, !state[2], state[1], state[0], w); 

    wire [6:0] LED_out;

    always @(*)
    begin
        case(state)
        3'b000: LED_out = 7'b0000001;    
        3'b001: LED_out = 7'b1001111; 
        3'b010: LED_out = 7'b0010010; 
        3'b011: LED_out = 7'b0000110; 
        3'b100: LED_out = 7'b1001100; 
        default: LED_out = 7'b0000001; 
        endcase
    end
    
endmodule