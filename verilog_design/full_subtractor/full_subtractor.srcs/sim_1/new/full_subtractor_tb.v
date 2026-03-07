`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 10:23:54
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
reg a,b,c;
wire d,bo;
full_subtractor uut(.a(a),.b(b),.c(c),.d(d),.bo(bo));
initial begin
$monitor("a=%b b=%b cin=%b d=%b bo=%b",a,b,c,d,bo);
a=1'b0;b=1'b0;c=1'b0;#10
a=1'b0;b=1'b0;c=1'b1;#10
a=1'b0;b=1'b1;c=1'b0;#10
a=1'b0;b=1'b1;c=1'b1;#10
a=1'b1;b=1'b0;c=1'b0;#10
a=1'b1;b=1'b0;c=1'b1;#10
a=1'b1;b=1'b1;c=1'b0;#10
a=1'b1;b=1'b1;c=1'b1;#10
$finish;
end
endmodule
