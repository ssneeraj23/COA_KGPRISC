`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:50 10/28/2022 
// Design Name: 
// Module Name:    instruction_fetcher 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Instruction_Memory(
     input clock,
	  input [31:0] pc,
	  output [31:0] instruction
    );
brom your_instance_name (
  .clka(clock), // input clka
  .addra(pc), // input [11 : 0] addra
  .douta(instruction) // output [31 : 0] douta
);

endmodule
