`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 01:41:38 PM
// Design Name: 
// Module Name: one_bit_fa
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


module one_bit_fa(A,B,Cin,S,Cout);

input A,B,Cin;
output S,Cout;

assign S=(A^B)^Cin;
assign Cout=(A&B)|((A^B)&Cin);
endmodule
