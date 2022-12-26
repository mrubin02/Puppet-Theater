`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent
// Engineer: Kaitlyn Franz
// 
// Create Date: 01/31/2016 03:04:42 PM
// Design Name: ServoControlwithPmodCON3
// Module Name: Servo_interface
// Project Name: The Claw
// Target Devices: Basys 3 with PmodCON3
// Tool Versions: 2015.4
// Description: 
//      This module creates the PWM signal needed to drive
//      one servo using the PmodCON3. To use the other 3 servo connectors,
//      you can instantiate this module 4 times, or send the same PWM sigal to 
//      four Pmod connector pins. This depends on whether you want the same servo signal, 
//      or different servo signals. 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Servo_interface (
    // input [8:0] angle_net,
    input clr,
    // input cont,
    input [19:0] pulse_width,
    input  clk,
    output PWM
    );
    
    wire [19:0] count_max;
    // wire [19:0] value_net;
    
    //wire [15:0] sw = 16'd64; 
    
    // Convert the incoming switch value
    // to an angle.
    //sw_to_angle converter(
        //.sw(sw),
        //.angle(angle_net)
       // );
    
    // Convert the angle value to 
    // the constant value needed for the PWM.
    // angle_decoder decode(
    //     .angle(angle_net),
    //     .value(value_net), .cont(cont)
    //     );
    
    // Compare the count value from the
    // counter, with the constant value set by
    // the switches.
    comparator compare(
        .A(count_max),
        .B(pulse_width),
        .PWM(PWM)
        );
      
    // Counts up to a certain value and then resets.
    // This module creates the refresh rate of 20ms.   
    counter count(
        .clr(clr),
        .clk(clk),
        .count(count_max)
        );
  
        
endmodule
