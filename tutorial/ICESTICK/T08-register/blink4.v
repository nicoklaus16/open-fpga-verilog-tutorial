module blink4 #(
    parameter N = 1,
    parameter RegN = 4
) (
    input clk,
    output [3:0]data
);

wire clk_out;
reg [3:0]dout = 4'b0101;

prescaler P1 (
    .clk_in(clk),
    .clk_out(clk_out)
);

always @ (posedge clk_out)
begin
    dout <= data;
end

assign data = ~dout;

endmodule
