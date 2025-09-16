`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/09/2025 02:46:21 PM
// Design Name: 
// Module Name: four_bit_fa_tb
// Project Name: ECE 128 Lab 2
// Target Devices: 
// Tool Versions: 
// Description: This is the test bench file used for the four-bit adders using the two methods. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_fa_tb;
reg [3:0] A1,B1;
reg Cin1;


wire [4:0] S1_f;

four_bit_fa uut0(.A1(A1),.B1(B1),.S1_f(S1_f));

integer i,j;

initial begin

for (i=0;i<16;i=i+1) begin
    for (j=0;j<16;j=j+1) begin
    A1=i;B1=j;Cin1=1'b0;
    #10;
    end
end
$stop;
end
endmodule
