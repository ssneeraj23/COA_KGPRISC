`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:04 10/28/2022 
// Design Name: 
// Module Name:    alu_control 
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

module ALU_Control_Unit(
   funct,
    aluop,
    alu_control_signal
);

  input [5:0] funct;
  input [2:0] aluop;
  output reg [3:0] alu_control_signal;

always @(*) begin
    case(aluop)
        3'b000:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0000;
                      6'b000010: alu_control_signal <= 4'b0001;
                      6'b000011: alu_control_signal <= 4'b0010;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end
        3'b001:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0011;
                      6'b000010: alu_control_signal <= 4'b0100;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end
        3'b010:
          begin
            case (funct)
                      6'b000000: alu_control_signal <= 4'b0101;
                      6'b000001: alu_control_signal <= 4'b0110;
                      6'b000010: alu_control_signal <= 4'b1101;
                      6'b000011: alu_control_signal <= 4'b1110;
                      6'b000100: alu_control_signal <= 4'b0111;
                      6'b000101: alu_control_signal <= 4'b1111;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end
        3'b100:
          begin
              alu_control_signal <= 4'b0000;
          end
        3'b101:
          begin
              alu_control_signal <= 4'b0001;
          end        
        3'b011:
          begin
              alu_control_signal <= 4'b1011;
          end
          endcase
    end

endmodule   



