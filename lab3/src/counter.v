module counter(
  input clk,
  input rst,
  output reg [3:0] count
);

  always @(posedge clk or negedge rst) begin
    if (!rst)
      count <= 4'b0000;
    else begin
      if (count == 4'b0100)
        count <= 4'b0000;
      else
        count <= count + 1;
    end
  end

endmodule
