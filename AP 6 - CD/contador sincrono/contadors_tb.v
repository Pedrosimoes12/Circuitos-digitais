`timescale 1ns/1ns
`include "contadors.v"

module contadors_tb;

    wire [3:0]q;
    reg clk, clr;
    contadors uut(clk, clr, q);

    initial begin
        $dumpfile("contadors.vcd");
        $dumpvars(0, contadors_tb);

        clr = 1; #20;
        clr = 0; #320;
        
        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule