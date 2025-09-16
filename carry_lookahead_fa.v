`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh Univeristy 
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/09/2025 03:37:05 PM
// Module Name: carry_lookahead_fa
// Project Name: ECE 128 Lab 2
// Target Devices: 
// Tool Versions: 
// Description: This is the module for the FPGA implementation of a full adder using the carry lookahead method.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carry_lookahead_fa(A1,B1,Cin1,S1_f);

input [3:0] A1,B1;

input Cin1;



output [4:0] S1_f;


wire cout0,cout1,cout2,cout3;

wire [3:0] S1;
wire p0,p1,p2,p3;

wire g0,g1,g2,g3;
wire [3:0] Co;

assign p0=A1[0]^B1[0];

assign p1=A1[1]^B1[1];

assign p2=A1[2]^B1[2];

assign p3=A1[3]^B1[3];


assign g0=A1[0]&B1[0];
assign g1=A1[1]&B1[1];
assign g2=A1[2]&B1[2];
assign g3=A1[3]&B1[3];





one_bit_fa FA0(.A(A1[0]),.B(B1[0]),.Cin(Cin1),.S(S1[0]),.Cout(Co[0]));
assign cout0=g0|(p0&Cin1);
one_bit_fa FA1(.A(A1[1]),.B(B1[1]),.Cin(cout0),.S(S1[1]),.Cout(Co[1]));
assign cout1=g1|(p1&(g0|(p0&Cin1)));
one_bit_fa FA2(.A(A1[2]),.B(B1[2]),.Cin(cout1),.S(S1[2]),.Cout(Co[2]));
assign cout2=g2|(p2&(g1|(p1&cout0)));
one_bit_fa FA3(.A(A1[3]),.B(B1[3]),.Cin(cout2),.S(S1[3]),.Cout(Co[3]));
assign cout3=g3|(p3&(g2|(p2&(g1|(p1&cout0)))));
assign S1_f={cout3,S1};
endmodule

