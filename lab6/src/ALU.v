module ALU(
    input  wire [1:0]  opcode,
    input  wire [31:0] A,
    input  wire [31:0] B,
    output reg  [31:0] result
);
    always @(*) begin
        case (opcode)
            2'b00: result = A + B;
            2'b01: result = A - B;
            2'b10: result = A << B[4:0];
            default: result = 32'd0;
        endcase
    end
endmodule
