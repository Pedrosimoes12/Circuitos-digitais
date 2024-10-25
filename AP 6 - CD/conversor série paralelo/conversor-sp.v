`include "ff_d.v"

module conversorsp(D, PR, CLR, Q, clk);
    input D;
    output [3:0]Q;
    input PR, CLR;
    input clk;

    ff_d uut(D, PR, CLR, clk, Q[0]);
    ff_d uut1(Q[0], PR, CLR, clk, Q[1]);
    ff_d uut2(Q[1], PR, CLR, clk, Q[2]);
    ff_d uut3(Q[2], PR, CLR, clk, Q[3]);

  
endmodule