`timescale 1ns / 100ps

module registrador_tb;
  
  
  logic clk;
  logic [7:0]d, q, q_expected;
  int counter, errors;
  logic [16:0] vectors [512];
  logic clkSimulation, rst;
  logic  escreve,flag;
  
  registrador dut(
  
  .d(d), .clk(clk), .q(q), .escreve(escreve)
  
  );
  
  
  initial // No inicio de toda execução
     begin
       $display ("             Iniciando Testbench");
       $display ("           |   D     | CLK |   Q     |");
       $display ("            -------------------------");
       $readmemb("registrador.tv", vectors); //Carrega os vetores descritos em flop.tv
       counter = 0; errors = 0;  // Inicializa contadores
       rst = 1; #20; rst = 0; // Reset em 1 por 20 ns
      end        // #10
  
    
    always // Sempre
      begin
       clkSimulation = 1; #10; // clock em 1 dura 12 ns
       clkSimulation = 0; #10; // clock em 0 dura 7 ns
      end

    always @ (negedge clkSimulation) begin
         if (flag == 0)begin 
          escreve = 1;
          flag = 1;
         end 
         else begin
          escreve = 0; 
          flag = 0; 
         end 
        end 

       
    always @ (posedge clkSimulation) // Sempre que o clock subir vetores lidos do arquivo
      if(~rst)
       begin
         {d, clk, q_expected} = vectors[counter];
       end   
       
      always @ (negedge clkSimulation) // Sempre que o clock descer
        if(~rst)
         begin
          if (q_expected[0]=== 1'b0) begin
             $display ("  linha %2d | %b | %b | %b |", counter+1, d, clk, q_expected);
             counter++;
            end
             
      
          else begin
           $display ("  linha %2d | %b | %b | %b |", counter+1, d, clk, q);
           if(q !== q_expected) begin
            for (int i = 0; i < 8; i++)
              if(q[i] !== q_expected[i]) begin
                $display("Erro: (Q_expected[%0d] = %b)", i, q_expected[i]);
                errors++; 
            end
        end
        counter++;
        
        if (counter === 512) //Quando os vetores de teste acabarem
         begin
          $display("Testes Efetuados = %0d", counter);
          $display("Erros Encontrados = %0d", errors);
          #10
          $stop;
         end
       
        
      
         end 
          
      end
      
  endmodule    