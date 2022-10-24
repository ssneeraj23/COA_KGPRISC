module KGP_miniRISC(
    input clk,
    input rst,
	output [31:0] retReg
    );


 main_control cmain(
   .opcode(instruction[31:26]),
   .Memread(Memread),
   .Memwrite(MemWrite),
   .MemToReg(MemToReg),
   .branch(branch),
   .ALUop(aluop),
   .ALUSrc(ALUSrc),
   .reg_dest(reg_dest)
   .reg_write(reg_write)
 );   

 ALU alu(
    .in1(read_1),
    .in2(read_2),
    .shamt(instruction[10:6]),
    .control(alu_control_signal),
    .out1(alu_out),
    .flag(flags)
 );

ALU_Control_Unit ACU(
    .funct(instruction[5:0]),
    .aluop(aluop),
    .alu_control_signal(alu_control_signal)
);

Program_Counter PC(
    .pc_in(pc_in),
    .pc_out(pc),
    .clock(clock),
    .reset(reset)
);

Instruction_Memory IM(
     .pc(pc),
     .clock(clock),
     .instruction(instruction),
);

Data_Memory DM(
    .address(alu_out),
    .write_data(read_2),
    .clock(clock),
    .Memread(Memread),
    .MemWrite(MemWrite),
    .data_output(data_output)
);

Branch_Mechanism B̨M(
    .pc_in(pc),
    .branch_address(branch_address),
    .branch_control_signal(branch),
    .funct(instruction[4:0]),
    .alu_flags(flags),
    .clock(clock),
    .reset(reset),
    .pc_next(pc_next),
    .read_1(read_1),

);

Reg_file RF(
     .reg1(instruction[25:21]),
     .reg2(instruction[20:16]),
     .write_data(write_data),
     .reg_write(reg_write),
     .reg_dest(reg_dest),
     .clock(clock),
     .reset(reset),
     .read_1(read_1),
     .read_2(read_2)
     
);

mux_write_data MWD(
    .alu_out(alu_out),
    .pc_next(pc_next),
    .MemToReg(MemToReg),
    .write_data_out(write_data_out),
    .data_output(data_output)
);
