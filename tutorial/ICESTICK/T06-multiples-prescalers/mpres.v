module mpres #(parameter N0 = 1, N1 = 1, N2 = 1, N3 = 1, N4 = 1) (
    input clk_in,
    output d1,d2,d3,d4
);

wire clkinternal;

prescaler #(.N(N0)) presbase (
    .clk_in (clk_in),
    .clk_out (clkinternal)
);

prescaler #(.N(N1)) pres_1 (
    .clk_in (clkinternal),
    .clk_out (d1)
);

prescaler #(.N(N2)) pres_2 (
    .clk_in (clkinternal),
    .clk_out (d2)
);

prescaler #(.N(N3)) pres_3 (
    .clk_in (clkinternal),
    .clk_out (d3)
);

prescaler #(.N(N4)) pres_4 (
    .clk_in (clkinternal),
    .clk_out (d4)
);


endmodule
