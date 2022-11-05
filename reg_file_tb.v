`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:14 11/04/2022
// Design Name:   Reg_file
// Module Name:   D:/COA_LAB/KGPRISC/KGPRISC/reg_file_tb.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_tb;

	// Inputs
	reg [4:0] reg1;
	reg [4:0] reg2;
	reg reg_write;
	reg reg_dest;
	reg [31:0] write_data;
	reg clock;
	reg reset;

	// Outputs
	wire [31:0] read1;
	wire [31:0] read2;

	// Instantiate the Unit Under Test (UUT)
	Reg_file uut (
		.reg1(reg1), 
		.reg2(reg2), 
		.reg_write(reg_write), 
		.reg_dest(reg_dest), 
		.write_data(write_data), 
		.read1(read1), 
		.read2(read2), 
		.clock(clock), 
		.reset(reset)
	);
always #2 clock = ~clock;
	initial begin
	$monitor ("reg0 = %d, reg1 = %d, reg2 = %d, reg3 = %d, reg31 = %d", 
			$signed(uut.register[0]), 
			$signed(uut.register[1]), 
			$signed(uut.register[2]), 
			$signed(uut.register[3]), 
			$signed(uut.register[31])
			);
		// Initialize Inputs
		reg1 = 0;
		reg2 = 0;
		reg_write = 0;
		reg_dest = 0;
		write_data = 0;
		clock = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		  reset=0;
		// Add stimulus here
		
       reg1 = 5'd1;
		reg2 = 5'd2;
		reg_write = 1'b1;
		write_data = 32'd16;
		reg_dest=1'b1;

		
	end
      
endmodule

