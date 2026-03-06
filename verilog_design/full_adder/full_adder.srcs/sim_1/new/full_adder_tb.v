`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2026 02:04:02
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg a,b,cin;
wire s,cout;
full_adder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
$monitor("a=%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);
a=1'b0;b=1'b0;cin=1'b0;#10
a=1'b0;b=1'b0;cin=1'b1;#10
a=1'b0;b=1'b1;cin=1'b0;#10
a=1'b0;b=1'b1;cin=1'b1;#10
a=1'b1;b=1'b0;cin=1'b0;#10
a=1'b1;b=1'b0;cin=1'b1;#10
a=1'b1;b=1'b1;cin=1'b0;#10
a=1'b1;b=1'b1;cin=1'b1;#10
$finish;
end
endmodule
