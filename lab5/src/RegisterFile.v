module RegisterFile (
    input wire clk,
    input wire rst,
    input wire we,
    input wire [4:0] ra1,
    input wire [4:0] ra2,
    input wire [4:0] wa,
    input wire [31:0] wd,
    output wire [31:0] rd1,
    output wire [31:0] rd2
);

    reg [31:0] registers [0:31];

    // Initialize reg0 to 0 and other registers to 0 on reset
    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (we) begin
            if (wa != 5'b00000) begin // reg0 is always 0
                registers[wa] <= wd;
            end
        end
    end

    assign rd1 = (ra1 == 5'b00000) ? 32'b0 : registers[ra1];
    assign rd2 = (ra2 == 5'b00000) ? 32'b0 : registers[ra2];

endmodule

