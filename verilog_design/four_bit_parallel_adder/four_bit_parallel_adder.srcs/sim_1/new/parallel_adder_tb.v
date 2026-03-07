`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 10:48:39
// Design Name: 
// Module Name: parallel_adder_tb
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


module parallel_adder_tb;
reg [3:0]a;
reg [3:0]b;
wire [3:0]y;
wire co;
fourbit_adder uut(.a(a),.b(b),.y(y),.co(co));
initial begin
$monitor("a=%b b=%b s=%b co=%b",a,b,y,co);
a=4'b0010;b=4'b0001;#10
a=4'b1010;b=4'b0011;#10
a=4'b1011;b=4'b0001;#10
a=4'b1111;b=4'b1111;#10
a=4'b1010;b=4'b1001;#10
$finish;
end
endmodule
