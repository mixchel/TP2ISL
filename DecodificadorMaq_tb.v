module DecodificadorMaq_tb;
reg clk = 0;
reg [6:0] Entrada_teste;
reg Controle_teste, Reset_teste;
wire [3:0] Saida_teste;

always #20 clk = !clk;

DecodificadorMaq dut(.Entrada(Entrada_teste), .Controle(Controle_teste), .clk(clk), .Reset(Reset_teste), .Saida(Saida_teste));

initial begin
        $dumpfile("DecodificadorMaq_tb.vcd");
        $dumpvars(0, DecodificadorMaq_tb);

        #1 Reset_teste = 1'b0;
        #1 Controle_teste =  1'b1;
        #1 $display("\nBit de controle habilitado:\n");
        #1 $display("Teste C6 e C8:\n");
        
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1010011;
        #500 $display("Entrada: %b - Saida: %b      C8 -> Saida 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1010011;
        #500 $display("Entrada: %b - Saida: %b      C8 -> Saida 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #1 $display("\nTeste C7:\n");


        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

    
        #1 $display("\nTeste Correcoes:\n");


        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #1 $display("\nTeste Correcoes Invalidas:\n");

        
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Controle_teste =  1'b0;
        #1 $display("\nBit de controle desabilitado:\n");

        #1 $display("Teste C6 e C8:\n");
        
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1001001;
        #500 $display("Entrada: %b - Saida: %b      C6 -> Saida 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1010011;
        #500 $display("Entrada: %b - Saida: %b      C8 -> Saida 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1010011;
        #500 $display("Entrada: %b - Saida: %b      C8 -> Saida 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #1 $display("\nTeste C7:\n");


        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1110101;
        #500 $display("Entrada: %b - Saida: %b      C7 -> Invalido", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

    
        #1 $display("\nTeste Correcoes:\n");


        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #1 $display("\nTeste Correcoes Invalidas:\n");

        
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1011010;
        #500 $display("Entrada: %b - Saida: %b      C4 -> Estado 4", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);


        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1100000;
        #500 $display("Entrada: %b - Saida: %b      C1 -> Estado 1", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1000100;
        #500 $display("Entrada: %b - Saida: %b      C2 -> Estado 2", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        #500 Entrada_teste = 7'b1101110;
        #500 $display("Entrada: %b - Saida: %b      C5 -> Estado 5", Entrada_teste, Saida_teste);
        #500 Entrada_teste = 7'b1111100;
        #500 $display("Entrada: %b - Saida: %b      C3 -> Estado 3", Entrada_teste, Saida_teste);
        #250 Reset_teste = 1'b1;
        #250 Entrada_teste = 7'b0000000;
        #250 Reset_teste = 1'b0;
        #500 $display("Entrada: %b - Saida: %b      Volta ao estado inicial\n", Entrada_teste, Saida_teste);

        $stop;

    end
endmodule