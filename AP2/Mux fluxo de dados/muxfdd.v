module muxfdd (d, s, y);

    input [3:0]d; 
    input [1:0]s;
    output y;

    assign y = d[0] & ~s[0] & ~s[1] | d[1] & ~s[1] & s[0] | d[2] & s[1] & ~s[0] | d[3] & s[0] & s[1];

endmodule

/*module muxfdd (d0, d1, d2, d3, s0, s1, y);

    input d0, d1, d2, d3, s0, s1;
    output y;

    assign y = d0 & ~s0 & ~s1 | d1 & ~s1 & s0 | d2 & s1 & ~s0 | d3 & s0 & s1;

endmodule*/