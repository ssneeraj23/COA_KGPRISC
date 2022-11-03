`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:52 10/28/2022 
// Design Name: 
// Module Name:    pc 
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
`timescale 1ns/1ps
module Program_Counter(
    input clock,
    input reset,
    input [31:0] pc_in,
    output reg [31:0] pc_out);
always @(posedge clock)
begin
    if(reset)
        begin
            pc_out<=0;
        end
    else 
        begin
            pc_out<=pc_in;
        end
end
endmodule            
