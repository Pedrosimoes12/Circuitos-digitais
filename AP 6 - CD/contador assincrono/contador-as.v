`include "ff_jk.v"

module contadoras(PR, CLR, Q, clk);
    
    output [3:0]Q;
    input PR, CLR;
    input clk;

    ff_jk uut(1'b1, 1'b1, PR, CLR, clk, Q[0]);
    ff_jk uut1(1'b1, 1'b1, PR, CLR, Q[0], Q[1]);
    ff_jk uut2(1'b1, 1'b1, PR, CLR, Q[1], Q[2]);
    ff_jk uut3(1'b1, 1'b1, PR, CLR, Q[2], Q[3]);

endmodule