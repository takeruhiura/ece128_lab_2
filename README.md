# ECE 128 Lab 2 README File


## Project Description
The focus of this lab is to implement different kinds of full adders on an FPGA. First, a one-bit full adder was implemented to get an understanding of how they are implemented in Verilog programming. Once the one-bit full adder was implemented, the next was the four-bit full adder. The four-bit full adder is more complex as it requires using the one-bit full adder as well as other implementations. There are two methods analyzed in this lab: the ripple carry adder and the carry lookahead adder. The two types of full adders were implemented to understand the pros and cons of the two methods. Finally, the full adders were tested using the testbench as well as programmed onto the FPGA board to test the functionality. 


## How to simulate the program and implement on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Make sure to choose the correct file for which method you want to implement on the FPGA by putting it at on top in the design sources. Next, run the synthesis and then click run simulation, and then the behavioral simulation. 

To program the FPGA with the full adder code, run the implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. Make sure the correct FPGA board is connected to the computer so you can implement the full adder. 
