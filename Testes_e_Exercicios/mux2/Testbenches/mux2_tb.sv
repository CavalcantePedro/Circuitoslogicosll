`timescale 1ns / 100ps


// As entradas e sa�das do DUT s�o lidas de um arquivo e comparadas  pelo testbench que escreve 
//  mensagens de texto no simulador atrav�s do comando $display, indicando sucesso ou falha


module mux2_tb;

  // Defini��o dos sinais de entrada e sa�da
  
  logic [3:0] a, b;
  logic s;
  logic [3:0] y, y_expected; 
  int counter, errors;
  logic [12:0] vectors[16];
  logic clk, rst;
  

  
 mux2 dut (.a(a), .b(b), .s(s), .y(y)); // Instancia��o do circuito a ser testado
    

  // Est�mulos de entrada
  
  initial // In�cio da execu��o
    begin
     $display ("Iniciando Testbench");
     $display ("|Entrada1 | Entrada2  | S |  Saida(y) |"); 
     $display (" ------------------------------------- ");
     $readmemb("mux2.tv", vectors); // leitura do arquivo "mux2.tv"     
                                       // com os vetores de teste  presente na pasta simulation
     counter = 0; errors = 0;          // inicializa contadores                                  
     rst = 1; #20;                   // reset em 1 por 20 ns
     rst = 0;                                                 
    end 
                                      
   always //sempre
    begin 
      clk = 1; #10; // faz o clk em 1 por 10 ns
      clk = 0; #10;  // faz o clk em 0 por 10 ns     
    end
    
    always @ (posedge clk)  // na borda de subida do clk l� os valores do arquivo de teste
     if(~rst) // se o sinal de reset (rst) estiver em 0
      begin
       {a, b, s, y_expected} = vectors[counter]; // atribui os valores do vetor nas entradas do DUT e os valores esperados
      end
    
    always @ (negedge clk)  // sempre que houver uma borda negativa do clk
     if(~rst) //  se o sinal de reset estiver em 0
      begin
       $display("| %b |     %b |     %b  |   %b |", a, b, s, y); 
      

        if (y !== y_expected)begin
          $display ("Erro");
         for(int i = 0; i<4; i++) 
           if (y[i] !== y_expected[i])begin
            $display( "Erro: (y_expected[%0d]  = %b)",i, y_expected[i]);
            errors++;
           end
         end 
         counter++; 
         
    
      
      if(counter === 16) // Quando os vetores de teste acabarem
      
    
       begin
         $display("Testes Efetuados = %0d", counter);
         $display("Erros encontrados = %0d", errors);
         #10;
         $stop;
       end
       
     end 
         

endmodule