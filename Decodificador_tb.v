module DecodificadorMaq_tb;
reg clk;
reg [6:0] Entrada_teste;
reg Controle_teste, Reset_teste;
wire [3:0] Saida_teste;

reg clk = 0;
always #1 clk = !clk;

DecodificadorMaq dut(.Entrada(Entrada_teste), .Controle(Controle_teste), .clk(clk), .Reset(Reset_teste), .Saida(Saida_teste));

initial begin
        $dumpfile("DecodificadorMaq_tb.vcd");
        $dumpvars(0, DecodificadorMaq_tb);
        $monitor("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);

        #0 Reset_teste = 1'b1;
        #0 Controle_teste = 1'b1;
        #0 Reset_teste = 1'b0;
        
        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1 
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1111100; //C3 -> Estado 3 
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4 
        #20 Reset_teste = 1'b1;         //Estado Inicial

        #10 Entrada_teste = 7'b1101110; //C5 -> Estado 5 
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        //Teste Correcoes

        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1
        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #10 Entrada_teste = 7'b1111100; //C3 -> Estado 3
        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4
        #10 Entrada_teste = 7'b1101110; //C5 -> Estado 5
        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4
        #10 Entrada_teste = 7'b1111100; //C3 -> Estado 3
        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        //Teste C6 e C8

        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1 
        #10 Entrada_teste = 7'b1001001; //C6 -> Saida 1
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #10 Entrada_teste = 7'b1001001; //C6 -> Saida 1
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1111100; //C3 -> Estado 3 
        #10 Entrada_teste = 7'b1001001; //C6 -> Saida 1
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4 
        #10 Entrada_teste = 7'b1010011; //C8 -> Saida 2
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1101110; //C5 -> Estado 5 
        #10 Entrada_teste = 7'b1010011; //C8 -> Saida 2
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        //Teste C7

        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1 
        #10 Entrada_teste = 7'b1110101; //C7 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #10 Entrada_teste = 7'b1110101; //C7 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1111100; //C3 --> Estado 3 
        #10 Entrada_teste = 7'b1110101; //C7 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4 
        #10 Entrada_teste = 7'b1110101; //C7 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1101110; //C5 - Estado 5 
        #10 Entrada_teste = 7'b1110101; //C7 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial
        
        //Teste Correcao invalida com um dos caracteres

        #10 Entrada_teste = 7'b1100000; //C1 -> Estado 1 
        #10 Entrada_teste = 7'b1111100; //C3 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1000100; //C2 -> Estado 2
        #10 Entrada_teste = 7'b1011010; //C4 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1111100; //C3 -> Estado 3 
        #10 Entrada_teste = 7'b1100000; //C1 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1011010; //C4 -> Estado 4 
        #10 Entrada_teste = 7'b1000100; //C2 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #10 Entrada_teste = 7'b1101110; //C5 -> Estado 5 
        #10 Entrada_teste = 7'b1100000; //C1 -> Estado Invalido
        #20 Reset_teste = 1'b1;
        #20 Reset_teste = 1'b0;         //Estado Inicial

        #20 $stop;
        #500 $finish;
    end
endmodule