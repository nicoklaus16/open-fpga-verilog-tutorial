module counter #(parameter N = 32)(clk, rst, en, data);
input clk;
input rst;
input en;
output reg [25:0] data = 0;

always @ (posedge clk) begin
    if (rst == 0)
        data <= 26'd0;
    else if (en == 1)
        data <= data + 1;
end

endmodule
