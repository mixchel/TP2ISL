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
        else begin    
            case (Saida)
                4'b0000:case (Entrada)
                            7'b1100000: Saida = 4'b0001;
                            7'b1000100: Saida = 4'b0010;
                            7'b1111100: Saida = 4'b0011;
                            7'b1011010: Saida = 4'b0100;
                            7'b1101110: Saida = 4'b0101;
                        endcase 
                4'b0001:case (Entrada)
                            7'b1000100: Saida = 4'b0010;
                            7'b1001001: Saida = 4'b1001;
                            7'b1111100: Saida = 4'b1000;
                            7'b1011010: Saida = 4'b1000;
                            7'b1101110: Saida = 4'b1000;
                            7'b1110101: Saida = 4'b1000;
                        endcase
                4'b0010:case (Entrada)
                            7'b1100000: Saida = 4'b0001;
                            7'b1111100: Saida = 4'b0011;
                            7'b1001001: Saida = 4'b1001;
                            7'b1011010: Saida = 4'b1000;
                            7'b1101110: Saida = 4'b1000;
                            7'b1110101: Saida = 4'b1000;  
                        endcase
                4'b0011:case (Entrada)
                            7'b1000100: Saida = 4'b0010;
                            7'b1011010: Saida = 4'b0100;
                            7'b1001001: Saida = 4'b1001;
                            7'b1100000: Saida = 4'b1000;
                            7'b1101110: Saida = 4'b1000;
                            7'b1110101: Saida = 4'b1000;
                        endcase
                4'b0100:case (Entrada)
                            7'b1111100: Saida = 4'b0011;
                            7'b1101110: Saida = 4'b0101;
                            7'b1010011: Saida = 4'b1010;
                            7'b1100000: Saida = 4'b1000;
                            7'b1000100: Saida = 4'b1000;
                            7'b1110101: Saida = 4'b1000;
                        endcase    
                4'b0101:case (Entrada)
                            7'b1011010: Saida = 4'b0100;
                            7'b1010011: Saida = 4'b1010;
                            7'b1100000: Saida = 4'b1000;
                            7'b1000100: Saida = 4'b1000;
                            7'b1111100: Saida = 4'b1000;
                            7'b1110101: Saida = 4'b1000;
                        endcase
            endcase
        end    
    end
endmodule