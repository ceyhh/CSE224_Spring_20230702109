module PC(
    input  wire        clk,
    input  wire        rst,
    input  wire        step,
    input  wire        is_branch,
    input  wire        branch_taken,
    input  wire        is_jump,
    input  wire [31:0] branch_target,
    input  wire [31:0] jump_target,
    output reg  [31:0] pc
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            pc <= 32'd0;
        else if (step) begin
            if (is_jump)
                pc <= jump_target;
            else if (is_branch && branch_taken)
                pc <= branch_target;
            else
                pc <= pc + 1;
        end
    end
endmodule
