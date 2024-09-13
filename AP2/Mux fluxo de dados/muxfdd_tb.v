`timescale 1ns/1ns
`include "muxfdd.v"

module muxfdd_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire y;
    muxfdd uut(D, S, y);

    initial begin
        $dumpfile("muxfdd_tb.vcd");
        $dumpvars(0, muxfdd_tb);
        D = 4'b0110; 
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule