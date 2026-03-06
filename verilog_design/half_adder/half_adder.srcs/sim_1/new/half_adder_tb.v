`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 01:50:16
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
reg a,b;
wire s,co;
half_adder uut(.a(a),.b(b),.s(s),.co(co));
initial begin
$monitor("a=%b b=%b s=%b co=%b",a,b,s,co);
a=1'b0;b=1'b0;#10
a=1'b0;b=1'b1;#10
a=1'b1;b=1'b0;#10
a=1'b1;b=1'b1;#10
$finish;
end
endmodule
