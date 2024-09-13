`timescale 1ns/1ns
`include "Muxfdd.v"
`include "demuxfdd.v"

module muxedemuxfdd_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire [3:0]y;
    wire ligacao;
    demuxfdd uut(ligacao, S, y);
    muxfdd uut2(D,S,ligacao);

    initial begin
        $dumpfile("muxedemuxfdd_tb.vcd");
        $dumpvars(0, muxedemuxfdd_tb);
        D = 4'b0110; 
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule