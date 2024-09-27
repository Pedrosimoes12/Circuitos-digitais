`timescale 1ns/1ns
`include "subtractor_8bits.v"
module subtractor_8bits_tb;

    reg [7:0]a;
    reg [7:0]b;
    wire [8:0]s;
    subtractor_8bits uut(a, b, s);

    initial begin
        $dumpfile("subtractor_8bits_tb.vcd");
        $dumpvars(0, subtractor_8bits_tb);

        a = 8'b00000001;
        b = 8'b00000000; #20;
        a = 8'b11111100;
        b = 8'b11111111; #20;


        $display("Teste completo");
    end

endmodule