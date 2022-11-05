`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:29:53 11/05/2022
// Design Name:   main_control
// Module Name:   /home/neeraj/Desktop/KGPRISC/KGPRISC/main_control_tb.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_control_tb;

	// Inputs
	reg [5:0] opcode;

	// Outputs
	wire Memread;
	wire Memwrite;
	wire [1:0] MemToReg;
	wire [1:0] branch;
	wire [2:0] ALUop;
	wire ALUSrc;
	wire reg_dest;
	wire reg_write;

	// Instantiate the Unit Under Test (UUT)
	main_control uut (
		.opcode(opcode), 
		.Memread(Memread), 
		.Memwrite(Memwrite), 
		.MemToReg(MemToReg), 
		.branch(branch), 
		.ALUop(ALUop), 
		.ALUSrc(ALUSrc), 
		.reg_dest(reg_dest), 
		.reg_write(reg_write)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 6'b000001;
		#10;
		opcode = 6'b000010;
		#10;
		opcode = 6'b000011;
		#10;
		opcode = 6'b000100;
		#10;
		opcode = 6'b000101;
		#10;
		opcode = 6'b000110;
		#10;
		opcode = 6'b111100;
		#10;
		opcode = 6'b111101;
		#10;
		opcode = 6'b111110;
		#10;
		opcode = 6'b111111;
		#10;

	end
      
endmodule

