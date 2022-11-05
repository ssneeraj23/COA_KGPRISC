`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:09:50 10/28/2022
// Design Name:   alu
// Module Name:   D:/COA_LAB/KGPRISC/alu_test_bench.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test_bench;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg [4:0] shamt;
	reg [3:0] control;

	// Outputs
	wire [31:0] out;
	wire [2:0] flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.in1(in1), 
		.in2(in2), 
		.shamt(shamt), 
		.control(control), 
		.out(out), 
		.flag(flag)
	);

	initial begin
	   $monitor ("in1 = %d, in2 = %d, out = %d, carry = %b, zero = %b, negative = %b, control = %b", in1, in2, out, flag[2], flag[0], flag[1], control);
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		shamt = 0;
		control = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in1 = 32'd0;
		in2 = 32'd5;
		control = 4'b0000;
		#10;
		// Add stimulus here
      in1 = 32'd105;
		in2 = 32'd106;
		control = 4'b0001;
		#10;
		in1 = 32'd105;
		in2 = 32'd106;
		control = 4'b0001;
		#10;
		in1 = 32'd105;
		in2 = 32'd106;
		control = 4'b0001;
		#10;
		in1 = 32'd105;
		in2 = 32'd106;
		control = 4'b0001;
		#10;
	end
      
endmodule

