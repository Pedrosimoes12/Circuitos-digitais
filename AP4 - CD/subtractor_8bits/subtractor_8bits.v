`include "half_subtractor.v"
`include "full_subtractor.v"

module subtractor_8bits(a, b, s);

    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    wire [6:0]c;
    
    half_subtractor u1(a[0], b[0], s[0], c[0]);
    full_subtractor u2(a[1], b[1], s[1], c[0], c[1]);
    full_subtractor u3(a[2], b[2], s[2], c[1], c[2]);
    full_subtractor u4(a[3], b[3], s[3], c[2], c[3]);
    full_subtractor u5(a[4], b[4], s[4], c[3], c[4]);
    full_subtractor u6(a[5], b[5], s[5], c[4], c[5]);
    full_subtractor u7(a[6], b[6], s[6], c[5], c[6]);
    full_subtractor u(a[7], b[7], s[7], c[6], s[8]);


endmodule