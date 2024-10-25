`timescale 1ns/1ns
`include "contadorsd.v"

module contadorsd_tb;

    wire [5:0]q;
    reg clk, clr;
    contadorsd uut(clk, clr, q);

    initial begin
        $dumpfile("contadorsd.vcd");
        $dumpvars(0, contadorsd_tb);

        clr = 1; #20;
        clr = 0; #700;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule