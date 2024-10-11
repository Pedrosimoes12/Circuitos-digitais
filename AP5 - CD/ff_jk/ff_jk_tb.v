`timescale 1ns/1ns
`include "ff_jk.v"

module ff_jk_tb;

    reg j, k, pr, clr, clk;
    wire q;
    ff_jk uut(j, k, pr, clr, clk, q);

    initial begin
    $dumpfile ("ff_jk_tb.vcd");
    $dumpvars (1);

            pr = 1; clr = 0; #20;
            pr = 1; clr = 1; j = 0; k = 0; #20;
            j = 0; k = 1; #20;
            j = 1; k = 0; #20;
            j = 1; k = 1; #20;
            $finish;
        end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
    endmodule
