module ff_d (d, pr, clr, clk , q);

    input d, pr, clr, clk;
    output reg q;

    always @ (negedge clk) begin
        if (pr == 0 & clr == 1) 
            q = 0;

        else if (pr == 1 & clr == 0)
            q = 1;

        else if (pr == 1 & clr == 1)
            q = 1'bX;

        else case (d)
            1'b1: q = 1;

        default: q = 0;

        endcase;

    end

endmodule