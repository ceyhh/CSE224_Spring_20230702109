module ProgramCounter (
    input wire clk,
    input wire rst,
    input wire control,
    output reg [2:0] pc_out // Changed to 3 bits for 6 instructions
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_out <= 3'b0;
        end else if (control) begin
            if (pc_out == 3'd5) begin // If at the last instruction (index 5)
                pc_out <= 3'b0; // Wrap around to the first instruction
            end else begin
                pc_out <= pc_out + 1;
            end
        end
    end

endmodule

