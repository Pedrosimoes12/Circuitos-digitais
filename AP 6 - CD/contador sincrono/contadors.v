module contadors (clk, clr, q);

    input clk, clr;
    output reg [3:0]q;

    always @ (posedge clk) begin
        if(clr)
            q = 0;
        else
            q = q + 1'b1;

    end

endmodule