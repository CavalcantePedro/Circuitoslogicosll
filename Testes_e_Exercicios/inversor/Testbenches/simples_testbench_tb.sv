module simples_testbench_tb;
 // Definição dos sinais de entrada e saída
 logic [3:0] a;
 logic [3:0] y;
 inversor dut (.a(a), .y(y)); // Instanciação do circuito a ser testado
 // Estímulos de entrada

 initial begin

 // Teste 1: Entrada com todos os bits em 0
 a = 4'b0000;
 #50; // Aguarda 50 unidades de tempo
 // Teste 2: Entrada os bits em 0001
 a = 4'b0001;
 #50; // Aguarda 50 unidades de tempo
 // Teste 3: Entrada os bits em 0010
 a = 4'b0010;
 #50; // Aguarda 50 unidades de tempo
 // Teste 4: Entrada com os bits em 0011
 a = 4'b0011;
 #50; // Aguarda 50 unidades de tempo
 // Teste 5: Entrada com os bits em 0100
 a = 4'b0100;
 #50; // Aguarda 50 unidades de tempo
 // Teste 6: Entrada com os bits em 0101
 a = 4'b0101 ;
 #50; // Aguarda 50 unidades de tempo
 // Teste 7: Entrada com os bits em 0110
 a = 4'b0110;
 #50; // Aguarda 50 unidades de tempo
 // Teste 8: Entrada com os bits em 0111
 a = 4'b0111;
 #50; // Aguarda 50 unidades de tempo
 // Teste 9: Entrada com os bits em 1000
 a = 4'b1000;
 #50; // Aguarda 50 unidades de tempo

 // Teste 10: Entrada com os bits em 1001
 a = 4'b1001;
 #50; // Aguarda 50 unidades de tempo
 // Teste 11: Entrada com os bits em 1010
 a = 4'b1010;
 #50; // Aguarda 50 unidades de tempo
 // Teste 12: Entrada com os bits em 1011
 a = 4'b1011;
 #50; // Aguarda 50 unidades de tempo
 // Teste 13: Entrada com os bits em 1100
 a = 4'b1100;
 #50; // Aguarda 50 unidades de tempo
 // Teste 14: Entrada com os bits em 1101
 a = 4'b1101;
 #50; // Aguarda 50 unidades de tempo
 // Teste 15: Entrada com os bits em 1110
 a = 4'b1110;
 #50; // Aguarda 50 unidades de tempo
 // Teste 16: Entrada com os bits em 1111
 a = 4'b1111;
 #50; // Aguarda 50 unidades de tempo
 end
endmodule
