'timescale 1ns/1ps

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
        3b'000:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0000;
                      6'b000010: alu_control_signal <= 4'b0001;
                      6'b000011: alu_control_signal <= 4'b0010;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end
        3b'001:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0011;
                      6'b000010: alu_control_signal <= 4'b0100;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end
        3b'010:
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
        3b'101:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0000;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end      
         3b'110:
          begin
            case (funct)
                      6'b000001: alu_control_signal <= 4'b0001;
                      default: alu_control_signal <= 4'b1011;
            endcase
          end     
        default: alu_control_signal <= 4'bb1011;
          endcase
    end

endmodule   


