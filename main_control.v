`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:00 10/28/2022 
// Design Name: 
// Module Name:    main_control 
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

module main_control(
     opcode,
     Memread,
     Memwrite,
     MemToReg,
     branch,
     ALUop,
     ALUSrc,
     reg_dest,
     reg_write
);

parameter d = 2;

input [5:0] opcode;
output reg Memread;
output reg Memwrite;
output reg [d-1:0] MemToReg;
output reg [d-1:0] branch;
output reg [d:0] ALUop;
output reg ALUSrc;
output reg reg_dest;
output reg reg_write;


always @(*) begin
    case(opcode)
       6'b000001:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b1;
            ALUop <= 3'b000;
            ALUSrc <= 1'b0;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b000010:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b1;
            ALUop <= 3'b001;
            ALUSrc <= 1'b0;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b000011:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b1;
            ALUop <= 3'b010;
            ALUSrc <= 1'b0;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b000100:
          begin
            branch <= 2'b01;
            reg_dest <= 1'b0;
            reg_write <= 1'b0;
            ALUop <= 3'b011;
            ALUSrc <= 1'b1;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b000101:
          begin
            branch <= 2'b10;
            reg_dest <= 1'b0;
            reg_write <= 1'b0;
            ALUop <= 3'b011;
            ALUSrc <= 1'b1;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b000110:
          begin
            branch <= 2'b11;
            reg_dest <= 1'b1;
            reg_write <= 1'b0;
            ALUop <= 3'b011;
            ALUSrc <= 1'b1;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b01;
          end
        6'b100011:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b1;
            reg_write <= 1'b1;
            ALUop <= 3'b100;
            ALUSrc <= 1'b1;
            Memread <= 1'b1;
            Memwrite <= 1'b0;
            MemToReg <= 2'b10;
          end
        6'b101011:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b0;
            ALUop <= 3'b100;
            ALUSrc <= 1'b1;
            Memread <= 1'b1;
            Memwrite <= 1'b1;
            MemToReg <= 2'b00;
          end
        6'b100100:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b1;
            ALUop <= 3'b100;
            ALUSrc <= 1'b1;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end
        6'b100101:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b1;
            ALUop <= 3'b101;
            ALUSrc <= 1'b1;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end                 
        default:
          begin
            branch <= 2'b00;
            reg_dest <= 1'b0;
            reg_write <= 1'b0;
            ALUop <= 3'b000;
            ALUSrc <= 1'b0;
            Memread <= 1'b0;
            Memwrite <= 1'b0;
            MemToReg <= 2'b00;
          end   
    endcase       
end

endmodule