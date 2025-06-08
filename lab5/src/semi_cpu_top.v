module semi_cpu_top (
    input wire clk,
    input wire rst,
    input wire control,
    output wire [31:0] Result,
    output wire [6:0] seg,
    output wire [3:0] an,
    // Signals for testbench monitoring
    output wire [2:0] pc_out_tb,
    output wire [31:0] instruction_tb,
    output wire [2:0] alu_op_tb,
    output wire [31:0] rd1_tb,
    output wire [31:0] rd2_tb,
    output wire [31:0] immediate_tb
);

    wire [2:0] pc_out;
    wire [31:0] instruction;
    wire [2:0] alu_op;
    wire [4:0] ra1;
    wire [4:0] ra2;
    wire [4:0] wa;
    wire we;
    wire [31:0] immediate;
    wire [31:0] rd1;
    wire [31:0] rd2;
    wire [31:0] alu_result;
    reg [31:0] last_result; // Register to hold the last valid result

    // Instantiate Program Counter
    ProgramCounter pc (
        .clk(clk),
        .rst(rst),
        .control(control),
        .pc_out(pc_out)
    );

    // Instantiate Instruction Memory
    InstructionMemory im (
        .pc_in(pc_out),
        .control(control),
        .instruction(instruction)
    );

    // Instantiate Instruction Decoder
    InstructionDecoder id (
        .instruction(instruction),
        .ALUop(alu_op),
        .ra1(ra1),
        .ra2(ra2),
        .wa(wa),
        .we(we),
        .immediate(immediate)
    );

    // Instantiate Register File
    RegisterFile rf (
        .clk(clk),
        .rst(rst),
        .we(we),
        .ra1(ra1),
        .ra2(ra2),
        .wa(wa),
        .wd(alu_result),
        .rd1(rd1),
        .rd2(rd2)
    );

    // Instantiate ALU
    ALU alu (
        .operand1(rd1),
        .operand2(rd2),
        .ALUop(alu_op),
        .immediate(immediate),
        .result(alu_result)
    );

    // Update last_result only when write enable is high
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            last_result <= 32'b0;
        end else if (we) begin
            last_result <= alu_result;
        end
    end

    assign Result = last_result; // Connect last valid ALU result to the top-level Result output

    // Assign signals for testbench monitoring
    assign pc_out_tb = pc_out;
    assign instruction_tb = instruction;
    assign alu_op_tb = alu_op;
    assign rd1_tb = rd1;
    assign rd2_tb = rd2;
    assign immediate_tb = immediate;

    // 7-segment display controller instantiation will go here
    // For now, let's just connect a placeholder
    wire [31:0] display_data = Result;
    wire [3:0] digit_select;
    wire [6:0] segment_output;

    // Instantiate 7-segment display controller
    seven_segment_display_controller ssdc (
        .clk(clk),
        .data_in(display_data),
        .seg_out(seg),
        .an_out(an)
    );

endmodule

