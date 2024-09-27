`timescale 1ns/1ns
`include "half_subtractor.v"

module half_subtractor_tb;

    reg a, b;
    wire s, c;
    half_subtractor uut(a, b, s, c);

    initial begin
        $dumpfile("half_subtractor_tb.vcd");
        $dumpvars(0, half_subtractor_tb);
        a = 1'b0; b = 1'b0; #20;
        a = 1'b0; b = 1'b1; #20;
        a = 1'b1; b = 1'b0; #20;
        a = 1'b1; b = 1'b1; #20;
        
        $display("Teste completo");
        
    end

endmodule