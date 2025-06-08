
module labwork1_src (
    input [7:0] in,  // 8-bit input
    output [7:0] out // 8-bit output
);
    assign out = ~in + 1;  // Invert the bits and add 1 to get the 2's complement
endmodule
