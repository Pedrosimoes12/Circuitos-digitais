`timescale 1ns/1ns
`include "ex1.v"

module semaforo_tb;

    reg A, B;
    wire S0, S1;
    semaforo uut(A, B, S0, S1);

    initial begin
        $dumpfile("semaforo_tb.vcd");
        $dumpvars(0, semaforo_tb);

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