`timescale 1ns/1ns
`include "conversor-sp.v"

module conversorsp_tb;

    reg D;
    wire [3:0]Q;
    reg PR, CLR;
    reg clk;
    conversorsp uut(D, PR, CLR, Q, clk);

    initial begin
        $dumpfile("conversorsp.vcd");
        $dumpvars(0, conversorsp_tb);

        PR = 0; CLR = 1; #20
        PR = 0; CLR = 0; D = 1'b1; #20;
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        
        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule