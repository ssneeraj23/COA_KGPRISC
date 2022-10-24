`timescale 1ns / 1ps

module alu(
     in1;
     in2;
     shamt;
    control;
    out1;
     flag;
);

parameter size=32;
parameter c = 4;
input [size-1:0] in1;
input [size-1:0] in2;
input [c:0] shamt;
input [c-1:0] control;
output reg [size-1:0] out1;
output reg [2:0] flag;
wire [size-1:0] sum;
wire [size-1:0]comp;
wire [size-1:0] AND;
wire [size-1:0]  XOR, SLL, SRL, SRA;
wire [size-1:0] shmt_final;
wire carrysum;

assign shmt_final = control[3]==0  ? {27'b0, shamt} : input2 ; //control(3)==0 then sll, srl, sra else srav, sllv

always @(*) begin
		//flag
        case(control[2:0])
            3'b000: 
                begin
                    out = sum;
                    flag[2] = sumcarry;
                end
            3'b001:
                begin
                    out = ~in2 + 1'b1;
                    flag[2] = 1'b0;
                end
            3'b010:
                begin
                    out = in1&in2;
                    flag[2] = 1'b0;
                end
            3'b011:
                begin
                    out = in1^in2;
                    flag[2] = 1'b0;
                end
            3'b100:
                begin
                    out = in1 << shmt_final;
                    flag[2] = 1'b0;
                end
            3'b101:
                begin
                    out = in1 >> shmt_final;
                    flag[2] = 1'b0;
                end
            3'b110:
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