`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 01:59:09
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input a,b,cin,
output s,cout

    );
    wire s1,c1,c2;
    half_adder g1(.a(a),.b(b),.s(s1),.co(c1));
    half_adder g2(.a(s1),.b(cin),.s(s),.co(c2));
    or g3(cout,c1,c2);
endmodule
