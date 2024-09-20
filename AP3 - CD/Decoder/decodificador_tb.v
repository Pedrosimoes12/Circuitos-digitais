`timescale 1ns/1ns
`include "decodificador.v"

module decodificador_tb;

    reg [2:0]a;
    reg en;
    wire [7:0]d;
    decodificador uut(a, en, d);

    initial begin
        $dumpfile("decodificador_tb.vcd");
        $dumpvars(1);
        en = 1'b1;
        a = 4'b000; #20;
        a = 4'b001; #20;
        a = 4'b010; #20;
        a = 4'b011; #20;
        a = 4'b100; #20;
        a = 4'b101; #20;
        a = 4'b110; #20;
        a = 4'b111; #20;
        en = 1'b0; #20;

        $display("Teste completo");
    end

endmodule