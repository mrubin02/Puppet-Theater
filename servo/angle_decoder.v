`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent
// Engineer: Kaitlyn Franz
// 
// Create Date: 01/31/2016 03:04:42 PM
// Design Name: ServoControlwithPmodCON3
// Module Name: angle_decoder
// Project Name: The Claw
// Target Devices: Basys 3 with PmodCON3
// Tool Versions: 2015.4
// Description: 
//      This module takes in an angle value
//      and converts it into the PWM constant 
//      the servo needs to hold that angle.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module angle_decoder(
    input [31:0] angle,
    input cont, 
    output reg [19:0] value
    );
    
    // Run when angle changes
    always @ (angle)
    begin
        // The angle gets converted to the 
        // constant value. This equation
        // depends on the servo motor you are 
        // using. To get this equation I used 
        // trial and error to get the 0
        // and 360 values and created an equation
        // based on those two points. 

        value = cont ? 20'd100000 + angle * 20'd50000 : angle ? 20'd255000 : 20'd30000;
        //value = 20'd150000; // (angle = 0) 100 full speed CW, (1) 150 stop, (2) 200 CCW 
    end
endmodule
