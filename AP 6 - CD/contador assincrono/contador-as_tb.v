`timescale 1ns/1ns
`include "contador-as.v"

module contadoras_tb;

   
    wire [3:0]Q;
    reg PR, CLR;
    reg clk;
    contadoras uut(PR, CLR, Q, clk);

    initial begin
        $dumpfile("contador-as.vcd");
        $dumpvars(0, contadoras_tb);

        PR = 1; CLR = 0; #15;
        PR = 1; CLR = 1; #320;
        
        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule