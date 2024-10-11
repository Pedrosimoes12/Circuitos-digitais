`timescale 1ns/1ns
`include "ff_d.v"

module ff_d_tb;

    reg d, pr, clr, clk;
    wire q;
    ff_d uut(d, pr, clr, clk, q);

    initial begin
    $dumpfile ("ff_d_tb.vcd");
    $dumpvars (1);

            pr = 1; clr = 0; #20;
            pr = 0; clr = 0; d = 0; #20;
            d = 1; #20;
            $finish;
        end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
    endmodule
