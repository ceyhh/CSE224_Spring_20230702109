module RegisterFile(
    input  wire        clk,
    input  wire        WE3,
    input  wire [4:0]  A1,
    input  wire [4:0]  A2,
    input  wire [4:0]  A3,
    input  wire [31:0] WD3,
    output reg  [31:0] RD1,
    output reg  [31:0] RD2
);
    reg [31:0] rf [0:31];
    integer i;

    initial begin
        for (i = 0; i < 32; i = i + 1)
            rf[i] = 32'd0;
    end

    always @(*) begin
        RD1 = (A1 != 0) ? rf[A1] : 32'd0;
        RD2 = (A2 != 0) ? rf[A2] : 32'd0;
    end

    always @(posedge clk) begin
        if (WE3 && A3 != 0)
            rf[A3] <= WD3;
    end
endmodule
