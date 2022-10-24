`timescale 1ns / 1ps

module mux_write_data(
    alu_out,
    pc_next,
    MemToReg,
    write_data_out,
    data_output
);

input [1:0] MemToReg;
output reg [31:0] data_output;
input [31:0] alu_out;
input [31:0] pc_next;
input [31:0] write_data_out;

always @(*)
  begin
    case(MemToReg[1:0])
        2b'01: 
           begin:
              data_output <= pc_next;
           end  
         2b'10: 
           begin:
              data_output <= write_data_out;
           end  
         default: 
           begin:
              data_output <= alu_out;
           end        
    endcase
  end

endmodule    