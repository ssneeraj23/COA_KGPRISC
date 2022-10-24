`timescale 1ns / 1ps

module main_control(
     opcode,
     Memread,
     Memwrite
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
       6b'000001:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'1;
            ALUop <= 3b'000;
            ALUSrc <= 1b'0;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'000010:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'1;
            ALUop <= 3b'001;
            ALUSrc <= 1b'0;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'000011:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'1;
            ALUop <= 3b'010;
            ALUSrc <= 1b'0;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'000100:
          begin
            branch <= 2b'01;
            regdest <= 1b'0;
            reg_write <= 1b'0;
            ALUop <= 3b'011;
            ALUSrc <= 1b'1;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'000101:
          begin
            branch <= 2b'10;
            regdest <= 1b'0;
            reg_write <= 1b'0;
            ALUop <= 3b'011;
            ALUSrc <= 1b'1;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'000110:
          begin
            branch <= 2b'11;
            regdest <= 1b'1;
            reg_write <= 1b'0;
            ALUop <= 3b'011;
            ALUSrc <= 1b'1;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'01;
          end
        6b'100011:
          begin
            branch <= 2b'00;
            regdest <= 1b'1;
            reg_write <= 1b'1;
            ALUop <= 3b'100;
            ALUSrc <= 1b'1;
            Memread <= 1b'1;
            Memwrite <= 1'b0;
            MemToReg <= 2b'10;
          end
        6b'101011:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'0;
            ALUop <= 3b'100;
            ALUSrc <= 1b'1;
            Memread <= 1b'1;
            Memwrite <= 1'b1;
            MemToReg <= 2b'00;
          end
        6b'100100:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'1;
            ALUop <= 3b'100;
            ALUSrc <= 1b'1;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end
        6b'100101:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'1;
            ALUop <= 3b'101;
            ALUSrc <= 1b'1;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end                 
        default:
          begin
            branch <= 2b'00;
            regdest <= 1b'0;
            reg_write <= 1b'0;
            ALUop <= 3b'000;
            ALUSrc <= 1b'0;
            Memread <= 1b'0;
            Memwrite <= 1'b0;
            MemToReg <= 2b'00;
          end   
    endcase       
end

endmodule
