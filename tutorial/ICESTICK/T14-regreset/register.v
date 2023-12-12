module register #(parameter WIDTH = 4, INI = 4'b0000)
(
    input clk,
    input rst_bar,
    input din [WIDTH-1:0],
    output reg dout [WIDTH-1:0]
);

always @ (posedge(clk)) begin
    if (rst_bar == 0)
        dout <= INI;
    else
        dout <= din;
    end

endmodule
