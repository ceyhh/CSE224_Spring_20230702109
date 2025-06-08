module full_cpu(
    input  wire        clk,
    input  wire        control,
    input  wire        reset_btn,
    output wire [6:0]  seg_high,
    output wire [6:0]  seg_low
);
    // Internal wires
    wire [31:0] pc_val, instr;
    wire [4:0]  rs1, rs2, rd;
    wire [31:0] imm_ext;
    wire [1:0]  alu_opcode;
    wire        use_imm, we3;
    wire        is_branch, is_jump, branch_eq;
    wire [31:0] rd1, rd2, alu_b, alu_res;
    wire        branch_taken;
    wire [31:0] branch_target, jump_target;

    // PC
    PC pc0(
        .clk(clk), .rst(reset_btn), .step(control),
        .is_branch(is_branch), .branch_taken(branch_taken),
        .is_jump(is_jump), .branch_target(branch_target), .jump_target(jump_target),
        .pc(pc_val)
    );

    // Instruction Memory (simple ROM)
    reg [31:0] imem [0:31];
    initial begin
        integer i;
        for (i = 0; i < 32; i = i + 1) imem[i] = 32'd0;
        // Buraya programı doldurabilirsin
    end
    assign instr = imem[pc_val[4:0]];

    // Instruction Decoder
    InstructionDecoder dec(
        .instr(instr), .rs1(rs1), .rs2(rs2), .rd(rd),
        .imm_ext(imm_ext), .alu_opcode(alu_opcode),
        .use_imm(use_imm), .we3(we3),
        .is_branch(is_branch), .is_jump(is_jump), .branch_eq(branch_eq)
    );

    // Register File
    RegisterFile rf(
        .clk(clk), .WE3(we3), .A1(rs1), .A2(rs2), .A3(rd), .WD3(alu_res),
        .RD1(rd1), .RD2(rd2)
    );

    // ALU
    assign alu_b = use_imm ? imm_ext : rd2;
    ALU alu0(
        .opcode(alu_opcode), .A(rd1), .B(alu_b), .result(alu_res)
    );

    // Branch logic
    assign branch_taken  = is_branch && ((rd1 == rd2) == branch_eq);
    assign branch_target = pc_val + imm_ext;
    assign jump_target   = {pc_val[31:28], instr[25:0], 2'b00};

    // 7-Segment display driver
    SevenSeg high(
        .nibble(alu_res[7:4]), .seg(seg_high)
    );
    SevenSeg low (
        .nibble(alu_res[3:0]), .seg(seg_low)
    );
endmodule

