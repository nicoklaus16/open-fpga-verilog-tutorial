module regreset #(parameter NP = 2, NREG = 4)
(
    input clk,
    output [3:0] data
);
wire [3:0]outsignals[NREG-1:0];

reg inisig = 0;
always @ (posedge(clk_pres))
    inisig <= 1;

prescaler #(.N(NP))
    PRES1 (
        .clk_in(clk),
        .clk_out(clk_pres)
    );

assign data = outsignals[0];

genvar i;
for (i = 0; i < NREG; i=i+1) begin:reg_array 
    if (i == NREG-1) begin
        register #(.WIDTH(4), .INI(i))
            dutf (
                .clk(clk_pres),
                .rst_bar(inisig),
                .din(outsignals[0]),
                .dout(outsignals[i])
            );
    end else begin 
        register #(.WIDTH(4), .INI(i))
            dut1 (
                .clk(clk_pres),
                .rst_bar(inisig),
                .din(outsignals[i+1]),
                .dout(outsignals[i])
            );
    end
end

endmodule
