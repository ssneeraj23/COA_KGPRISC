`timescale 1ns / 1ps

module alu(
     in1;
     in2;
     out;
     ifequal;
);

input [31:0] in1;
input [31:0] in2;
output reg[31:0] out;
output reg ifequal;
wire [31:0] xorr;

assign xorr = in1^in2;

always @(*)
      begin
        ifequal = 1b'1;
       for(int i=0;i<=31;i++)
        begin
        if(xorr[i]== 1b'1) begin
            ifequal = 1b'0;
            out = i;
            break;
        end

        end
      end  
endmodule