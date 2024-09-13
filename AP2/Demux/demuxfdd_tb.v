`timescale 1ns/1ns
`include "demuxfdd.v"

module demuxfdd_tb;

    reg D;
    reg [1:0]S;
    wire [3:0]y;
    demuxfdd uut(D, S, y);

    initial begin
        $dumpfile("demuxfdd_tb.vcd");
        $dumpvars(0, demuxfdd_tb);
        D = 1'b1; 
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        
        $display("Teste completo");
    end

endmodule