`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:03 11/04/2022
// Design Name:   main
// Module Name:   D:/COA_LAB/KGPRISC/KGPRISC/risc_main.v
// Project Name:  KGPRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module risc_main;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] retReg;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.rst(rst), 
		.retReg(retReg)
	);

   always #2 clk = ~clk;
	initial begin
	$monitor(" reg1 = %d\t, reg2 = %d\t",
			$signed(uut.RF.register[1]), 
			$signed(uut.RF.register[2])
			);
	   $monitor("Return value: ", $signed(retReg));
		// Initialize Inputs
		clk = 0;
		rst = 1;

		
		
		
		
		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		rst = 0;
		
        
		// Add stimulus here

	end
      
endmodule

