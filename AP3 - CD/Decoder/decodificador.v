module decodificador (a, en, d);

    input [2:0]a;
    input en;
    output reg [7:0]d;

    always @ (a or en) begin
        if (en == 1'b1) begin 
            case(a)
                3'b000: d = 8'b00000001; //d0
                3'b001: d = 8'b00000010; //d1
                3'b010: d = 8'b00000100; //d2
                3'b011: d = 8'b00001000; //d3
                3'b100: d = 8'b00010000; //d4
                3'b101: d = 8'b00100000; //d5
                3'b110: d = 8'b01000000; //d6
                3'b111: d = 8'b10000000; //d7
            default: d = 8'b00000000;
            endcase;
        end
        else
        d = 8'b00000000;
    end

endmodule