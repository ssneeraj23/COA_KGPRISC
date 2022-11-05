`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:41:11 11/05/2022
// Design Name:   ALU_Control_Unit
// Module Name:   /home/neeraj/Desktop/KGPRISC/KGPRISC/alu_control_tb.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_control_tb;

	// Inputs
	reg [5:0] funct;
	reg [2:0] aluop;

	// Outputs
	wire [3:0] alu_control_signal;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control_Unit uut (
		.funct(funct), 
		.aluop(aluop), 
		.alu_control_signal(alu_control_signal)
	);

initial begin
		// Initialize Inputs
		aluop = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		aluop = 3'b001;
		funct = 5'd0;
		#10;

		aluop = 3'b001;
		funct = 5'd1;
		#10;

		aluop = 3'b010;
		funct = 5'd0;
		#10;

		aluop = 3'b010;
		funct = 5'd1;
		#10;

		aluop = 3'b011;
		funct = 5'd0;
		#10;

		funct = 5'd1;
		#10;

		funct = 5'd2;
		#10;

		funct = 5'd3;
		#10;

		funct = 5'd4;
		#10;

		funct = 5'd5;
		#10;

		aluop = 3'b101;
		#10;

		funct = 5'd1;
		#10;

		aluop = 3'b110;
		#10;

		funct = 5'd2;
		#10;

		aluop = 3'b000;
		#10;

		funct = 5'd3;
		#10;

	end
	endmodule

