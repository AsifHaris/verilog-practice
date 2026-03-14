`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 23:40:05
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg [2:0]s;
reg [7:0]i;
wire y;
mux_8x1 uut(.s(s),.i(i),.y(y));
initial begin
i=8'b11001010;
$monitor("s=%b i=%b y=%b",s,i,y);
s=3'b000;#10
s=3'b001;#10
s=3'b010;#10
s=3'b011;#10
s=3'b100;#10
s=3'b101;#10
s=3'b110;#10
s=3'b111;#10
$finish;
end
endmodule
