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
                            C1: Saida = 4'b0001;
                            C2: Saida = 4'b0010;
                            C3: Saida = 4'b0011;
                            C4: Saida = 4'b0100;
                            C5: Saida = 4'b0101;
                        endcase 
                4'b0001:case (Entrada)
                            C2: Saida = 4'b0010;
                            C6: Saida = 4'b1001;
                            C3: Saida = 4'b1000;
                            C4: Saida = 4'b1000;
                            C5: Saida = 4'b1000;
                            C7: Saida = 4'b1000;
                        endcase
                4'b0010:case (Entrada)
                            C1: Saida = 4'b0001;
                            C3: Saida = 4'b0011;
                            C6: Saida = 4'b1001;
                            C4: Saida = 4'b1000;
                            C5: Saida = 4'b1000;
                            C7: Saida = 4'b1000;  
                        endcase
                4'b0011:case (Entrada)
                            C2: Saida = 4'b0010;
                            C4: Saida = 4'b0100;
                            C6: Saida = 4'b1001;
                            C1: Saida = 4'b1000;
                            C5: Saida = 4'b1000;
                            C7: Saida = 4'b1000;
                        endcase
                4'b0100:case (Entrada)
                            C3: Saida = 4'b0011;
                            C5: Saida = 4'b0101;
                            C8: Saida = 4'b1010;
                            C1: Saida = 4'b1000;
                            C2: Saida = 4'b1000;
                            C7: Saida = 4'b1000;
                        endcase    
                4'b0101:case (Entrada)
                            C4: Saida = 4'b0100;
                            C8: Saida = 4'b1010;
                            C1: Saida = 4'b1000;
                            C2: Saida = 4'b1000;
                            C3: Saida = 4'b1000;
                            C7: Saida = 4'b1000;
                        endcase
            endcase
        end    
    end
endmodule