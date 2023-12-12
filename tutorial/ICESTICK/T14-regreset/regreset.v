module regreset #(parameter NP = 2)
(
    input clk,
    output data [3:0]
);
integer INI = 0;
wire [1:0]outputs[3:0];

genvar i;
for (i = 0; i < 2; i=i+1) begin:reg_array 
    INI = INI + 1;
    register #(.WIDTH(4), .INI(INI))
        dut (
            .clk(clk_pres),
            .rst_bar(inisig),
            .din(outputs()),
            .dout(output(i+1))
        );
end

reg inisig = 0;
always @ (posedge(clk_pres))
    inisig <= 1;

prescaler #(.N(NP))
    PRES1 (
        .clk_in(clk),
        .clk_out(clk_pres)
    );

endmodule
