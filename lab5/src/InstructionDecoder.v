module InstructionDecoder (
    input wire [31:0] instruction,
    output reg [2:0] ALUop,
    output reg [4:0] ra1,
    output reg [4:0] ra2,
    output reg [4:0] wa,
    output reg we,
    output reg [31:0] immediate
);

    wire [2:0] opcode;

    assign opcode = instruction[31:29];

    always @(*) begin
        // Default values
        ALUop = 3'b000; // NOOP
        ra1 = 5'b0;
        ra2 = 5'b0;
        wa = 5'b0;
        we = 1'b0;
        immediate = 32'b0;

        case (opcode)
            3'b000: begin // NOOP
                ALUop = 3'b000;
                we = 1'b0;
            end
            3'b001: begin // NOOP
                ALUop = 3'b001;
                we = 1'b0;
            end
            3'b010: begin // ADD (R-type)
                ALUop = 3'b010;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                ra2 = instruction[18:14];
                we = 1'b1;
            end
            3'b011: begin // SUB (R-type)
                ALUop = 3'b011;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                ra2 = instruction[18:14];
                we = 1'b1;
            end
            3'b100: begin // SHIFTL (R-type)
                ALUop = 3'b100;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                ra2 = instruction[18:14];
                we = 1'b1;
            end
            3'b101: begin // SHIFTR (R-type)
                ALUop = 3'b101;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                ra2 = instruction[18:14];
                we = 1'b1;
            end
            3'b110: begin // ADDI (I-type)
                ALUop = 3'b110;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                immediate = {{13{instruction[18]}}, instruction[18:0]}; // Sign-extend 19-bit immediate to 32-bit
                we = 1'b1;
            end
            3'b111: begin // SUBI (I-type)
                ALUop = 3'b111;
                wa = instruction[28:24];
                ra1 = instruction[23:19];
                immediate = {{13{instruction[18]}}, instruction[18:0]}; // Sign-extend 19-bit immediate to 32-bit
                we = 1'b1;
            end
            default: begin
                ALUop = 3'b000;
                we = 1'b0;
            end
        endcase
    end

endmodule

