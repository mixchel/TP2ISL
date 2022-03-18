module Decodificador_tb;
reg clk = 0;
reg [6:0] Entrada_teste;
reg Controle_teste, Reset_teste;
wire [3:0] Saida_teste;

always #20 clk = !clk;

Decodificador dut(.Entrada(Entrada_teste), .Controle(Controle_teste), .clk(clk), .Reset(Reset_teste), .Saida(Saida_teste));

initial begin
        $dumpfile("Decodificador_tb2.vcd");
        $dumpvars(0, Decodificador_tb);
        #1 Reset_teste = 1'b0;
        #1 Controle_teste =  1'b1;
        #1000 Entrada_teste = 7'b1100000;
        #1000$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        #1000 Entrada_teste = 7'b1001001;
        #10$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        #1000 Reset_teste = 1'b1;
        #10$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        #1000 Reset_teste = 1'b0;
        #10$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        #1000 Entrada_teste = 7'b1000100;
        #1000$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        #1000 Entrada_teste = 7'b1001001;
        #1000$display("Entrada: %b - Saida: %b", Entrada_teste, Saida_teste);
        $stop;
    end
endmodule