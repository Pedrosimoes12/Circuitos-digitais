`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb;

    reg a, b, c1;
    wire s, c2;
    full_adder uut(a, b, s, c1, c2);

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        a = 1'b0; b = 1'b0; c1 = 1'b0; #20;
        a = 1'b0; b = 1'b0; c1 = 1'b1; #20;
        a = 1'b0; b = 1'b1; c1 = 1'b0; #20;
        a = 1'b0; b = 1'b1; c1 = 1'b1; #20;
        a = 1'b1; b = 1'b0; c1 = 1'b0; #20;
        a = 1'b1; b = 1'b0; c1 = 1'b1; #20;
        a = 1'b1; b = 1'b1; c1 = 1'b0; #20;
        a = 1'b1; b = 1'b1; c1 = 1'b1; #20;

        
        $display("Teste completo");
    end

endmodule