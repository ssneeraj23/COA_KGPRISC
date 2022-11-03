`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:57 10/28/2022 
// Design Name: 
// Module Name:    branch_mechanism 
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
module Branch_Mechanism(
    pc_in,
    branch_address,
    branch_control_signal,
    funct,
    alu_flags,
    clock,
    reset,
    pc_next,
    read_1
    );
	 
	 input [31:0] branch_address, pc_in, read_1;
    input [1:0] branch_control_signal;
    input clock, reset;
	 input [2:0] alu_flags;
	 output reg [31:0] pc_next;
	 input [4:0] funct;
	 
endmodule
