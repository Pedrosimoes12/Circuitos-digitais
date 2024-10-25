module ff_jk (j, k, pr, clr, clk , q);

    input j, k, pr, clr, clk;
    output reg q;

    always @ (negedge clk or negedge clr) begin
        if (pr == 0 & clr == 1) 
            q = 1;

        else if (pr == 1 & clr == 0)
            q = 0;

        else case ({j, k})
            2'b01: q = 0;
            2'b10: q = 1;
            2'b11: q = ~q;
            default: q = q;

        endcase;

    end

endmodule