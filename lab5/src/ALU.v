module ALU (
    input wire [31:0] operand1,
    input wire [31:0] operand2,
    input wire [2:0] ALUop,
    input wire [31:0] immediate,
    output reg [31:0] result
);

    always @(*) begin
        case (ALUop)
            3'b000: begin // NOOP
                result = 32'b0;
            end
            3'b001: begin // NOOP
                result = 32'b0;
            end
            3'b010: begin // ADD
                result = operand1 + operand2;
            end
            3'b011: begin // SUB
                result = operand1 - operand2;
            end
            3'b100: begin // SHIFTL
                result = operand1 << operand2;
            end
            3'b101: begin // SHIFTR
                result = operand1 >> operand2;
            end
            3'b110: begin // ADDI
                result = operand1 + immediate;
            end
            3'b111: begin // SUBI
                result = operand1 - immediate;
            end
            default: begin
                result = 32'b0;
            end
        endcase
    end

endmodule

