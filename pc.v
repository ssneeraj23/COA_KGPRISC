`timescale 1ns/
module p_c(
    input clock,
    input reset,
    input [31:0] pc_in,
    output reg [31:0] pc_out);
always @(posedge clock)
begin
    if(reset)
        begin
            pc_out<=0;
        end
    else 
        begin
            pc_out<=pc_in
        end
end
endmodule            