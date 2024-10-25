module contadorsd (clk, clr, q);

    input clk, clr;
    output reg [5:0]q;

    always @ (negedge clk) begin
        if(clr)
            q = 35;
        else
            q = q - 1'b1;

        if(q < 6'd10)
            q = 6'd35;

    end

endmodule