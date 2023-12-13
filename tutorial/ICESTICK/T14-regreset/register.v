module register #(parameter WIDTH = 4, INI = 4'b0000)
(
    input clk,
    input rst_bar,
    input [WIDTH-1:0] din,
    output reg [WIDTH-1:0] dout
);

always @ (posedge(clk)) begin
    if (rst_bar == 0)
        dout <= INI;
    else
        dout <= din;
    end

endmodule
