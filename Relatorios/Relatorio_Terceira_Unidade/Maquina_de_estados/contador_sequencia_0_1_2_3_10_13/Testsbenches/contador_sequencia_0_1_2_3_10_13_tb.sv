`timescale 1ns / 100ps

module contador_sequencia_0_1_2_3_10_13_tb;
  
  
  logic clk;
  logic [3:0] y, y_expected;
  int counter, errors;
  logic [7:0] vectors [15];
  logic clkSimulation, rst, reset;
 
  
  contador_sequencia_0_1_2_3_10_13 dut(
  
  .clk(clk), .y(y), .reset(reset)
  
  );
  
  
  initial // No inicio de toda execu��o
     begin
       $display (" Iniciando Testbench");
       $display ("          RESET|CLK|  Y  |");
       $display ("      ----------------------");
       $readmemb("contador_sequencia_0_1_2_3_10_13.tv", vectors); //Carrega os vetores 
       counter = 0; errors = 0;  // Inicializa contadores
       rst = 1; #20; rst = 0; // Reset em 1 por 20 ns 
      end        // #10
  
    
    always // Sempre
      begin
       clkSimulation = 1; #10; // clock em 1 dura 12 ns
       clkSimulation = 0; #10; // clock em 0 dura 7 ns
      end
        
    always @ (posedge clkSimulation) // Sempre que o clock subir vetores lidos do arquivo
      if(~rst)
       begin
         {reset, clk, y_expected} = vectors[counter];
       end   
       
      always @ (negedge clkSimulation) // Sempre que o clock descer
        if(~rst)
         begin
       
             $display ("  linha %2d | %b | %b | %b ", counter+1, reset, clk, y_expected);
             if( y!== y_expected)
              begin
                $display("Erro: (y_expected = %b)", y_expected);
                errors++; 
            end
        counter++;
        
        if (counter === 15) //Quando os vetores de teste acabarem
         begin
          $display("Testes Efetuados = %0d", counter);
          $display("Erros Encontrados = %0d", errors);
          #10
          $stop;
         end
       
        
      
       end 
          
    //  end
      
  endmodule    