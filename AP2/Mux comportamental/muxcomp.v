module muxcomp (d, s, y);

    input [3:0]d;
    input [1:0]s;
    output reg y;

    always @ (s) begin
        if(s == 2'b00)
            y = d[0];
        if(s == 2'b01)
            y = d[1];
        if(s == 2'b10)
            y = d[2];
        if(s == 2'b11)
            y = d[3];
    end

endmodule