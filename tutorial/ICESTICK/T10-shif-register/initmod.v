module initmod (
    input wire clk,
    output reg ini = 0
);

integer cnt = 0;

always @(posedge clk)
begin
    if (cnt == 0)
        cnt = cnt + 1;
    else
        ini <= 1; 
end


endmodule
