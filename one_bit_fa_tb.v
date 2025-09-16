`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module one_bit_fa_tb;
reg A,B; 
reg Cin;

wire S;
wire Cout;



 
// Instantiate original module (named DUT {device under test}) 
one_bit_fa uut (A,B,Cin,S,Cout);

initial begin 
    #10 A=1'b0;B=1'b0;Cin=1'b0;
    #10 A=1'b0;B=1'b0;Cin=1'b1;
    #10 A=1'b0;B=1'b1;Cin=1'b0;
    #10 A=1'b0;B=1'b1;Cin=1'b1;
    #10 A=1'b1;B=1'b0;Cin=1'b0;
    #10 A=1'b1;B=1'b0;Cin=1'b1;
    #10 A=1'b1;B=1'b1;Cin=1'b0;
    #10 A=1'b1;B=1'b1;Cin=1'b1;

	#10 $stop;

end 
endmodule
