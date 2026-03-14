`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 23:35:34
// Design Name: 
// Module Name: MUX_4X1
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


module MUX_4X1(
input  [1:0]s,
input e,
input  [3:0]i,
output y

    );
    
   assign y=(e==0)?1'b0:(s==2'b00)?i[0]:(s==2'b01)?i[1]:(s==2'b10)?i[2]:i[3];
    
endmodule
