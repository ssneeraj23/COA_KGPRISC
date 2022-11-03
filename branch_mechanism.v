`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:57 10/28/2022 
// Design Name: 
// Module Name:    branch_mechanism 
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
module Branch_Mechanism(
    pc_in,
    branch_address,
    branch_control_signal,
    funct,
    alu_flags,
    clock,
    reset,
    pc_next,
    read_1,
	 pc_plus
    );
	 
	 input [31:0] branch_address, pc_in, read_1;
    input [1:0] branch_control_signal;
    input clock, reset;
	 input [2:0] alu_flags;
	 output reg [31:0] pc_next,pc_plus;
	 input [4:0] funct;
	 
	 reg [2:0] prev_flag;

	 always @(posedge clock) begin
		if(reset)
			prev_flag <= 3'b000;
		else
			prev_flag <= alu_flags;
	 end
	 
	 always @(*)
	 begin
		pc_plus <= pc_in+32'd1;
		if(reset) pc_next<=32'd0;
		else begin
					case(branch_control_signal)
						2'b01: begin
									case(funct)
										5'b00000:begin
														pc_next<=read_1;
													end
										5'b00001:begin
                                          if(alu_flags[1]==1'b1) pc_next<=branch_address;
                                          else pc_next<=pc_in+32'd1;
														end
                              5'b00010:begin
                                          if(alu_flags[0]==1'b1) pc_next<=branch_address;
                                          else pc_next<=pc_in+32'd1;	
                                          end														
                              5'b00011:begin
                                          if(alu_flags[0]==1'b0) pc_next<=branch_address;
                                          else pc_next<=pc_in+32'd1;
														end
                              default: pc_next<=pc_in+32'd1;
                           endcase
                  end
                  2'b10: begin
						         case(funct)
										5'b00000:begin
														pc_next<=branch_address;
													end
										5'b00001:begin
                                          if(prev_flag[2]==1'b1) pc_next<=branch_address;
                                          else pc_next<=pc_in+32'd1;
														end
                              5'b00010:begin
                                          if(prev_flag[2]==1'b0) pc_next<=branch_address;
                                          else pc_next<=pc_in+32'd1;
														end
										default: begin pc_next<=pc_in+32'd1; end 
                           endcase
                  end
                  2'b11: begin
                           pc_next<=branch_address;
                         end
               default: begin
                          pc_next<=pc_in+32'd1;
                        end
           endcase
       end
    end
	  
endmodule
