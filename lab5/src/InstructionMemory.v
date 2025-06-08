module InstructionMemory (
    input wire [2:0] pc_in,
    input wire control,
    output wire [31:0] instruction
);

    reg [31:0] mem [0:5]; // 6 instructions

    initial begin
        // ADDI reg10, reg0, 10 (reg10 = reg0 + 10, reg0 will be 0)
        mem[0] = 32'hCA00000A;

        // ADDI reg15, reg0, 15 (reg15 = reg0 + 15, reg0 will be 0)
        mem[1] = 32'hCF00000F;

        // ADD reg25, reg10, reg15 (reg25 = reg10 + reg15)
        mem[2] = 32'h5953C000;

        // SUBI reg20, reg25, 5 (reg20 = reg25 - 5)
        mem[3] = 32'hF4C80005;

        // ADDI reg5, reg0, 2 (reg5 = reg0 + 2, reg0 will be 0)
        mem[4] = 32'hC5000002;

        // SHIFTL reg30, reg25, reg5 (reg30 = reg25 << reg5, left shift reg25 reg5 times, write result to reg30)
        mem[5] = 32'h9EC94000;
    end

    assign instruction = control ? mem[pc_in] : 32'b0;

endmodule

