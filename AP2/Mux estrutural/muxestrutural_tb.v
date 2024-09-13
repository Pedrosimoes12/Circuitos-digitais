`timescale 1ns/1ns
`include "muxestrutural.v"

module muxestrutural_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire y;
    muxestrutural uut(D, S, y);

    initial begin
        $dumpfile("muxestrutural_tb.vcd");
        $dumpvars(1);
        D = 4'b0110; 
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule