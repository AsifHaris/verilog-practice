`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 10:09:29
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;
reg a,b;
wire d,bo;
half_subtractor uut(.a(a),.b(b),.d(d),.bo(bo));
initial begin
$monitor("a=%b b=%b d=%b bo=%b",a,b,d,bo);
a=1'b0;b=1'b0;#10
a=1'b0;b=1'b1;#10
a=1'b1;b=1'b0;#10
a=1'b1;b=1'b1;#10
$finish ;
end
endmodule
