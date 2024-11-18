/*
class Peca(ABC):
    x : int
    y : int

    def __init__(self):
        self.x = 0
        self.y = 0
    
    p1 = Azul()
*/

module morse (
    in, out, reset, clk
);
    input in, reset, clk;
    output reg [7:0] out;

    parameter IDLE = 5'bxxxxx, E = 5'b00000, A = 5'b00001, T = 5'b00010, I = 5'b00100, U = 5'b00110, S = 5'b00111, V = 5'b01110, H = 5'b01111;
    reg [5:0] state, next_state;

    // Lógica Sequencial    
    always @(posedge clk) begin
        if (reset)
            state = IDLE;
        else
            state = next_state;        
    end
    
    // Lógica Combinacional de entrada
    always @(*) begin
        case (state)   // 1 -> ponto 0 -> traço
            IDLE: begin
                if (in)
                    next_state = E; // .
                else
                    next_state = T; // -
            end   
            E: begin
                if (in)
                    next_state = I; // ..
                else
                    next_state = A; // .-
            end
            I: begin
                if(in)
                    next_state = S; // ...
                else
                    next_state = U; // ..-  
            end
            S: begin
                if(in)
                    next_state = H; // ....
                else
                    next_state = V; // ...-  
            end                                    
            default: next_state = IDLE;
        endcase
        
    end

    // Lógica Combinacional de saída
    always @(*) begin
        case (state)
            IDLE: out = 8'h00;
            E: out = 8'h45;
            T: out = 8'h54;
            A: out = 8'h41;
            I: out = 8'h49; 
            S: out = 8'h53;
            U: out = 8'h55;
            H: out = 8'h48;
            V: out = 8'h56;
            default: next_state = IDLE;
        endcase
    end
endmodule