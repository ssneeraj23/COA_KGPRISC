`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:20:10 11/04/2022
// Design Name:   Instruction_Memory
// Module Name:   /home/neeraj/Desktop/KGPRISC/KGPRISC/inst_mem_tb.v
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

module inst_mem_tb;

	// Inputs
	reg clock;
	reg [31:0] pc_out;
	reg reset;

	// Outputs
	wire [31:0] instruction;
   reg [31:0] pc_in;
	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
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
	initial 
		begin
			clock <= 0;
		end
   always #2 clock = ~clock;
	
   always @(pc_in) begin
		pc_out = pc_in + 32'd1;
	end

	initial begin
		// Initialize Inputs
		clock <= 0;
		reset <= 1;
       pc_in <=0;
		 pc_out<=0;
		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		forever #50 pc_in=pc_out;
		
		
		
       
		
		// Add stimulus here

	end
      
endmodule

