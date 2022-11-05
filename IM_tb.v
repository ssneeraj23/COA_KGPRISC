`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:44 11/04/2022
// Design Name:   Instruction_Memory
// Module Name:   D:/COA_LAB/KGPRISC/KGPRISC/IM_tb.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IM_tb;

	// Inputs
	reg clock, reset;
	reg [31:0] pc_in;

	// Outputs
	wire [31:0] instruction;
	reg [31:0] pc_out;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut1 (
		.clock(clock), 
		.pc(pc_out), 
		.instruction(instruction)
	);
   Program_Counter uut2 (
		.pc_in(pc_in),
		.pc_out(pc_out),
		.clock(clock),
		.reset(reset)
	);
   always #2 clock = ~clock;
	always @(posedge clock) begin
		pc_in <= pc_out + 32'd1;
	end
	
   
	initial begin
		// Initialize Inputs\
		pc_out=0;
		pc_in=0;
		clock = 0;
		reset = 1;
     
		// Wait 100 ns for global reset to finish
		#100;
        
		reset = 0;
		
		// Add stimulus here

	end
      
endmodule

