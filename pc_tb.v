`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:05 11/04/2022
// Design Name:   Program_Counter
// Module Name:   D:/COA_LAB/KGPRISC/KGPRISC/pc_tb.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Program_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_tb;

	// Inputs
	reg clock;
	reg reset;
	reg [31:0] pc_in;

	// Outputs
	wire [31:0] pc_out;

	// Instantiate the Unit Under Test (UUT)
	Program_Counter uut (
		.clock(clock), 
		.reset(reset), 
		.pc_in(pc_in), 
		.pc_out(pc_out)
	);
  always #2 clock = ~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		pc_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  reset = 0;
		  pc_in = 1;
		  #10
		  
		  pc_in = 2;
		  #10
		  
		  pc_in = 3;
		// Add stimulus here

	end
      
endmodule

