module shiftreg (
    input losh,
    input [3:0] din,
    input clk,
    input serin,
    output reg [3:0] dout
);

reg [3:0] aux;

always @(posedge clk)
begin
    if (!losh)
        dout <= din;
    else
    begin
        dout <= dout << 1;
        dout[0] <= serin;
        // dout <= {dout[2:0], serin};
    end
end

endmodule
