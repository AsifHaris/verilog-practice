`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 10:40:03
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(
input [3:0]a,
input [3:0]b,
output [3:0]y,
output co

    );
    wire c0,c1,c2;
    full_adder g1(.a(a[0]),.b(b[0]),.c(1'b0),.s(y[0]),.co(c0));
     full_adder g2(.a(a[1]),.b(b[1]),.c(c0),.s(y[1]),.co(c1));
      full_adder g3(.a(a[2]),.b(b[2]),.c(c1),.s(y[2]),.co(c2));
       full_adder g4(.a(a[3]),.b(b[3]),.c(c2),.s(y[3]),.co(co));
endmodule
