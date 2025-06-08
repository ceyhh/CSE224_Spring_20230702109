module InstructionDecoder(
    input  wire [31:0] instr,
    output reg  [4:0]  rs1, rs2, rd,
    output reg  [31:0] imm_ext,
    output reg  [1:0]  alu_opcode,
    output reg         use_imm,
    output reg         we3,
    output reg         is_branch,
    output reg         is_jump,
    output reg         branch_eq
);
    parameter OPC_ADDI    = 6'b000001;
    parameter OPC_AD      = 6'b000010;
    parameter OPC_SUBI    = 6'b000011;
    parameter OPC_SHIFTL  = 6'b000100;
    parameter OPC_BEQ     = 6'b000101;
    parameter OPC_J       = 6'b000110;

    wire [5:0] opcode = instr[31:26];
    wire [4:0] f_rs1   = instr[25:21];
    wire [4:0] f_rs2   = instr[20:16];
    wire [4:0] f_rd    = instr[15:11];
    wire [15:0] imm    = instr[15:0];
    wire [31:0] imm_se = {{16{imm[15]}}, imm};

    always @(*) begin
        rs1        = f_rs1;
        rs2        = f_rs2;
        rd         = f_rd;
        imm_ext    = imm_se;
        alu_opcode = 2'b00;
        use_imm    = 1'b0;
        we3        = 1'b0;
        is_branch  = 1'b0;
        branch_eq  = 1'b0;
        is_jump    = 1'b0;

        case (opcode)
            OPC_ADDI: begin alu_opcode = 2'b00; use_imm = 1'b1; we3 = 1'b1; end
            OPC_AD:   begin alu_opcode = 2'b00; use_imm = 1'b0; we3 = 1'b1; end
            OPC_SUBI: begin alu_opcode = 2'b01; use_imm = 1'b1; we3 = 1'b1; end
            OPC_SHIFTL: begin alu_opcode = 2'b10; use_imm = 1'b1; we3 = 1'b1; end
            OPC_BEQ:  begin is_branch = 1'b1; branch_eq = 1'b1; end
            OPC_J:    begin is_jump = 1'b1; end
            default: ;
        endcase
    end
endmodule
