`timescale 1ns/1ns
`include "adder_8bits.v"
module adder_8bits_tb;

    reg [7:0]a;
    reg [7:0]b;
    wire [8:0]s;
    adder_8bits uut(a, b, s);

    initial begin
        $dumpfile("adder_8bits_tb.vcd");
        $dumpvars(0, adder_8bits_tb);

        a = 8'b00000000;
        b = 8'b00000001; #20;
        a = 8'b11111111;
        b = 8'b11111100; #20;


        $display("Teste completo");
    end

endmodule