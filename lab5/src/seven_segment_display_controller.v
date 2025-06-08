module seven_segment_display_controller (
    input wire clk,
    input wire [31:0] data_in,
    output reg [6:0] seg_out,
    output reg [3:0] an_out
);

    // Clock divider for multiplexing
    reg [19:0] clk_divider = 20'd0;
    reg [1:0] digit_select = 2'd0;

    // 7-segment display decoder
    always @(*) begin
        case (data_in[digit_select * 4 +: 4]) // Select 4 bits based on digit_select
            4'b0000: seg_out = 7'b0000001; // 0
            4'b0001: seg_out = 7'b1001111; // 1
            4'b0010: seg_out = 7'b0010010; // 2
            4'b0011: seg_out = 7'b0000110; // 3
            4'b0100: seg_out = 7'b1001100; // 4
            4'b0101: seg_out = 7'b0100100; // 5
            4'b0110: seg_out = 7'b0100000; // 6
            4'b0111: seg_out = 7'b0001111; // 7
            4'b1000: seg_out = 7'b0000000; // 8
            4'b1001: seg_out = 7'b0000100; // 9
            4'b1010: seg_out = 7'b0001000; // A
            4'b1011: seg_out = 7'b1100000; // B
            4'b1100: seg_out = 7'b0110001; // C
            4'b1101: seg_out = 7'b1000010; // D
            4'b1110: seg_out = 7'b0110000; // E
            4'b1111: seg_out = 7'b0111000; // F
            default: seg_out = 7'b1111111; // All segments off
        endcase
    end

    // Multiplexing logic
    always @(posedge clk) begin
        clk_divider <= clk_divider + 1;
        if (clk_divider == 20'd50000) begin // Adjust this value for desired refresh rate
            clk_divider <= 20'd0;
            digit_select <= digit_select + 1;
            if (digit_select == 2'd4) begin
                digit_select <= 2'd0;
            end
        end

        case (digit_select)
            2'd0: an_out = 4'b0111; // Anode for digit 0 (rightmost)
            2'd1: an_out = 4'b1011; // Anode for digit 1
            2'd2: an_out = 4'b1101; // Anode for digit 2
            2'd3: an_out = 4'b1110; // Anode for digit 3 (leftmost)
            default: an_out = 4'b1111; // All off
        endcase
    end

endmodule

