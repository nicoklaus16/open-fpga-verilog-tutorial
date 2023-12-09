module reginit_tb.v ()

parameter NPtb = 2;
parameter INITtb = 0110;

reg clk = 0;
reg initsig = 0;
wire net_clk;
wire [3:0] din;

always #1 clk = ~clk;

prescaler #(.N(NPtb)
    ) PRES1 (
        .clk_in(clk),
        .clk_out(net_clk)
    );

always @ (posedge(net_clk))
    initsig = 1;

assign din = initsig ? ~dout : INITtb;



endmodule
