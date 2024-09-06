module semaforo (a, b, sa, sb);

    input a, b;
    output sa, sb;

    assign sa = a & ~b | a & b; // sa = a
    assign sb = ~a & b;

endmodule