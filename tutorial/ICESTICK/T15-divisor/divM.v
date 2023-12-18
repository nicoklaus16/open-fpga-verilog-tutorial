module divM #(
    parameter N = 3
) (
    input clk_in,
    output clk_out
);
localparam NC = $clog2(N) - 1;
reg [NC:0] count = 0;
reg clk_aux = 0;
always @(posedge (clk_in)) begin
    if (count < N - 1) begin
        count <= count + 1;
        clk_aux <= 0;
    end else begin
        count <= 0;
        clk_aux <= 1;
    end
end

assign clk_out = clk_aux;

endmodule;
