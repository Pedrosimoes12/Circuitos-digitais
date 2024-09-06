`timescale 1ns/1ns
`include "ex2.v"

module amplificador_tb;

    reg A, B;
    wire S0, S1, S2;
    amplificador uut(A, B, S0, S1, S2); // pegar o modulo do .v sem ser tb

    initial begin
        $dumpfile("amplificador.vcd");
        $dumpvars(0, amplificador_tb);

        A = 0;
        B = 0; #20;
        A = 0; 
        B = 1; #20;
        A = 1;
        B = 0; #20;
        A = 1;
        B = 1; #20;

        $display("Teste completo");
    end

endmodule