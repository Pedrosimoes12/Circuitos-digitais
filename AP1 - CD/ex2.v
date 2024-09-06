module amplificador (a, b, sa, sb, sc);

    input a, b;
    output sa, sb, sc;

    assign sa = a;
    assign sb = ~a & b;
    assign sc = ~a & ~b;

endmodule