`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2026 00:09:54
// Design Name: 
// Module Name: mux_8x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_8x1(
 input [7:0]i,
 input [2:0]s,
 output y
    );
    wire w1,w2;
    MUX_4X1 m1(.i(i[3:0]),.s(s[1:0]),.y(w1),.e(~s[2]));
    MUX_4X1 m2(.i(i[7:4]),.s(s[1:0]),.y(w2),.e(s[2]));
    or g1(y,w1,w2);
    
endmodule
