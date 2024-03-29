`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:05 10/28/2022 
// Design Name: 
// Module Name:    alu 
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

module ALU(
     in1,
     in2,
     shamt,
    control,
    out,
     flag
);

parameter size=32;
parameter c = 4;
input [size-1:0] in1;
input [size-1:0] in2;
input [c:0] shamt;
input [c-1:0] control;
output reg [size-1:0] out;
output reg [2:0] flag;
wire [size-1:0] sum;
wire [size-1:0] comp;
wire [size-1:0] shmt_final;
wire carrysum = 0;
wire ifequal;
assign shmt_final = control[3]==0  ? {27'b0, shamt} : in2 ; //control(3)==0 then sll, srl, sra else srav, sllv
wire [size-1:0] diff_out;
diff dif(.in1(in1), .in2(in2), .out(diff_out), .ifequal(ifequal));
//flag[0]==1 means rs=0
//flag[1]==1 means rs<0
//flag[2]==1 means carry==1

always @(*) begin
        flag[0] = in1 == 32'b0 ? 1'b1 : 1'b0;
		flag[1] = in1[31] == 1'b1 ? 1'b1 : 1'b0;
        case(control[2:0])
            3'b000: 
                begin
                    out = in1+in2;
                    flag[2] = carrysum;
                end
            3'b001:
                begin
                    out = ~in2 + 1'b1;
                    flag[2] = 1'b0;
                end
            3'b010:
                begin
                    out=diff_out;
                    flag[2] = 1'b0;
                end    
            3'b011:
                begin
                    out = in1&in2;
                    flag[2] = 1'b0;
                end
            3'b100:
                begin
                    out = in1^in2;
                    flag[2] = 1'b0;
                end
            3'b101:
                begin
                    out = in1 << shmt_final;
                    flag[2] = 1'b0;
                end
            3'b110:
                begin
                    out = in1 >> shmt_final;
                    flag[2] = 1'b0;
                end
            3'b111:
                begin
                    out = in1 >>> shmt_final;
                    flag[2] = 1'b0;
                end
            default:
                begin
                    out = 32'b0;
                    flag[2] = 1'b0;
                end
        endcase
    end
endmodule
