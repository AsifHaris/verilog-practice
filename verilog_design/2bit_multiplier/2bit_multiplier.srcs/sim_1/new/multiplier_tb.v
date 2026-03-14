`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 22:53:34
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb;
reg [1:0]a;
reg [1:0]b;
wire [3:0]p;
multiplier uut(.a(a),.b(b),.p(p));
initial begin 
$monitor("a=%b b=%b p=%b",a,b,p);
a=2'b00;b=2'b01;#10
a=2'b10;b=2'b11;#10
a=2'b11;b=2'b11;#10
$finish;
end
endmodule
