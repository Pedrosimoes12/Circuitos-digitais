module alarme (p, w, m, s, a);

    input p, w, m, s;
    output a;

    assign a = p & s | w & s | m;

endmodule