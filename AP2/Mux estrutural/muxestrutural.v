module muxestrutural (d, s, y);

    input [3:0]d;
    input [1:0]s;
    output y;

    wire ns0, ns1, a1, out1, a2, out2, a3, out3, a4, out4, y1, y2;
    
    not(ns0, s[0]);
    not(ns1, s[1]);

    and(a1, ns0, ns1);
    and(out1, a1, d[0]);

    and(a2, ns1, s[0]);
    and(out2, a2 , d[1]);

    and(a3, s[1], ns0);
    and(out3, a3, d[2]);

    and(a4, s[1], s[0]);
    and(out4, a4, d[3]);

    or(y1, out1, out2);
    or(y2, y1, out3);
    or(y, y2, out4);

endmodule