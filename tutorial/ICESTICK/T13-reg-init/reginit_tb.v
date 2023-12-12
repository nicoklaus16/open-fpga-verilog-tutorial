module reginit_tb ();

parameter NPtb = 2;
parameter INItb = 4'b0110;

reg clk = 0;
wire [3:0] data;

always #1 clk = ~clk;

reginit #(.NP(1), .INI(INItb)
    ) R1 (
        .clk(clk),
        .data(data)
    );

initial
begin
    $dumpfile("reginit_tb.vcd");
    $dumpvars(0, reginit_tb);

    #30
    $display("FIN SIMULACION");
    $finish;
end

endmodule
