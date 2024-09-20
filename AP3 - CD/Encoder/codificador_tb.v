`timescale 1ns/1ns
`include "codificador.v"

module codificador_tb;

    reg [3:0]bcd;
    wire [6:0]l;
    codificador uut(bcd, l);

    initial begin
        $dumpfile("codificador_tb.vcd");
        $dumpvars(1);
        bcd = 4'b0000; #20;
        bcd = 4'b0001; #20;
        bcd = 4'b0010; #20;
        bcd = 4'b0011; #20;
        bcd = 4'b0100; #20;
        bcd = 4'b0101; #20;
        bcd = 4'b0110; #20;
        bcd = 4'b0111; #20;
        bcd = 4'b1000; #20;
        bcd = 4'b1001; #20;
        bcd = 4'b0110; #20;
        bcd = 4'b0110; #20;
        bcd = 4'b0110; #20;
        bcd = 4'b0110; #20;
        bcd = 4'b0110; #20;

        $display("Teste completo");
    end

endmodule