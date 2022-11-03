`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:02 10/28/2022 
// Design Name: 
// Module Name:    mux_write_data 
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
`timescale 1ns / 1ps

module mux_write_data(
    alu_out,
    pc_plus,
    MemToReg,
    write_data_out,
    data_output
);

input [1:0] MemToReg;
output reg [31:0] data_output;
input [31:0] alu_out;
input [31:0] pc_plus;
input [31:0] write_data_out;

always @(*)
  begin
    case(MemToReg[1:0])
        2'b01: 
           begin
              data_output <= pc_plus;
           end  
         2'b10: 
           begin
              data_output <= write_data_out;
           end  
         default: 
           begin
              data_output <= alu_out;
           end        
    endcase
  end

endmodule    