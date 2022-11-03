`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:11 10/28/2022 
// Design Name: 
// Module Name:    diff 
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

module diff(
     in1,
     in2,
     out,
     ifequal
);

input [31:0] in1;
input [31:0] in2;
output reg[31:0] out;
wire ifequal;
wire [31:0] xorr;

assign xorr = in1^in2;

always @(*)
      begin
        ifequal = 1'b1;
       for(int i=0;i<=31;i=i+1)
        begin
        if(xorr[i]== 1'b1) begin
            ifequal = 1'b0;
            out = i;
            break;
        end

        end
      end  
endmodule