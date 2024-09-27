module full_adder(a, b, s, c1, c2);

    input a, b, c1;
    output s, c2;

    assign s = a ^ b ^ c1;
    assign c2 = (b & c1) + (a & c1) + (a & b);

endmodule