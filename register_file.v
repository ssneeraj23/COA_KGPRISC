`timescale 1ns/1ps
module register_file(
    input [4:0] reg1,
    input [4:0] reg2,
    input  reg_write,
    input reg_dest,
    input [31:0] write_data,
    output [31:0] read1,
    output [31:0] read2,
    input clock,
    input reset,
    );

    reg [31:0] register[31:0];

    always @(posedge clk) begin
        if(reset) begin
            register[0] <= 0;
            register[1] <= 0;
            register[2] <= 0;
            register[3] <= 0;
            register[4] <= 0;
            register[5] <= 0;
            register[6] <= 0;
            register[7] <= 0;
            register[8] <= 0;
            register[9] <= 0;
            register[10] <= 0;
            register[11] <= 0;
            register[12] <= 0;
            register[13] <= 0;
            register[14] <= 0;
            register[15] <= 0;
            register[16] <= 0;
            register[17] <= 0;
            register[18] <= 0;
            register[19] <= 0;
            register[20] <= 0;
            register[21] <= 0;
            register[22] <= 0;
            register[23] <= 0;
            register[24] <= 0;
            register[25] <= 0;
            register[26] <= 0;
            register[27] <= 0;
            register[28] <= 0;
            register[29] <= 0;
            register[30] <= 0;
            register[31] <= 0;
        end else begin
            case(reg_write)
                1'b0:
                    begin
                        case(reg_dest)
                        1'b1:
                            begin
                                register[5'd31]<=write_data;
                            end
                        default:
                            begin

                            end  
                        endcase          
                    end
                1'b1:
                    begin
                        case(reg_dest)
                        1'b0:
                            begin
                                register[reg1]<=write_data;
                            end
                        1'b1:
                            begin
                                register[reg2]<=write_data;     
                            end
                        endcase
                    
            endcase
        end
    end

    assign read1 = register[reg1];
    assign read2 = register[reg2];
endmodule