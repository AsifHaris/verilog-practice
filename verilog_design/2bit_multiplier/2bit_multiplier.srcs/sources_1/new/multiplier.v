`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 22:41:49
// Design Name: 
// Module Name: multiplier
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


module multiplier(
input [1:0]a,input [1:0]b,
output [3:0]p

    );
    wire w1,w2,w3,w4,c1,c2;
    and g1(w1,a[0],b[0]);
    and g2(w2,a[1],b[0]);
    and g3(w3,a[0],b[1]);
    and g4(w4,a[1],b[1]);
    half_adder g5(.a(w2),.b(w3),.s(p[1]),.c(c1));
    half_adder g6(.a(c1),.b(w4),.s(p[2]),.c(c2));
    assign p[0]=w1;
    assign p[3]=c2;
endmodule
