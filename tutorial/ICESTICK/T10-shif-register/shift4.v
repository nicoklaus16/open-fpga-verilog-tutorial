module shift4 #(
    parameter NP = 1, INI = 4'b0000
) (
    input clk,
    output [3:0]data
);

wire clkint, inisig;

initmod INMOD (
    .clk (clkint),
    .ini(inisig)
);

prescaler #(
    .N(2)
    ) P1 (
    .clk_in(clk),
    .clk_out(clkint)
);

shiftreg R1 (
    .din(INI),
    .losh (inisig),
    .clk(clkint),
    .serin(data[3]),
    .dout(data)
);

endmodule
