module Decodificador(
    input [6:0] Entrada,
    input Controle, clk, Reset,
    output reg [3:0] Saida
);  
    initial begin
        Saida = 4'b0000;
    end
    always @(posedge clk, Controle) begin
        if (Reset)
            Saida = 4'b0000;
        case (Saida)
            4'b0000: case (Entrada)
                        C1: Saida = 4'b0001;
                        C2: Saida = 4'b0010;
                        C1: Saida = 4'b0011;
                        C4: Saida = 4'b0100;
                        C5: Saida = 4'b0101;
                        endcase 
            4'b0001: case (Entrada)
                        C2: Saida = 4'b0010;
                        C6: Saida = 4'b1001;
                        default: Saida = 1000;
                        endcase
            4'b0010:
                        
            4'b0011:
            4'b0100:
            4'b0101: 
        endcase
    end
endmodule