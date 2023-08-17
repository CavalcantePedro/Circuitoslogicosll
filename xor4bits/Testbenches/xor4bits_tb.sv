`timescale 1ns / 100ps

module xor4bits_tb;
  
  logic a, b, c, d;
  logic y, y_expected;
  int counter, errors;
  logic [4:0] vectors [16]; // alterei aqui
  logic clk, rst;
  xor4bits dut(.a(a), .b(b), .c(c), .d(d), .y(y)); // Instância xor4bits
initial // No inicio de toda execução
     begin
       $display ("Iniciando Testbench");
       $display ("| A | B | C | D | Y |");
       $display ("---------------------");
       $readmemb("xor4bits.tv", vectors); //Carrega os vetores descritos em xor4bits.tv
       counter = 0; errors = 0;  // Inicializa contadores
       rst = 1; #20; rst = 0; // Reset em 1 por 20 ns
    end        
    always // Sempre
      begin
       clk = 1; #10; // clock em 1 dura 10 ns
       clk = 0; #10; // clock em 0 dura 10 ns
      end      
    always @ (posedge clk) // Sempre que o clock subir vetores lidos do arquivo
      if(~rst)
       begin
         {a, b, c, d, y_expected} = vectors[counter];
       end       
      always @ (negedge clk) // Sempre que o clock descer
        if(~rst)
       begin
          assert (y === y_expected)
            $display (" | %b | %b | %b | %b | %b | OK", a, b, c, d, y);           //, y_expected); 
        else
          begin
            $display (" | %b | %b | %b | %b | %b | ERRO: y esperado: %b", a, b, c, d, y, y_expected);
            errors = errors + 1;  // Incrementa contador de erros
          end 
         counter++; // Incrementa contador de vetores de teste 
         if (vectors[counter] === 5'bx) // Quando os vetores de teste acabarem
          begin
            $display("Testes Efetuados = %0d", counter);
            $display("Erros Encontrados = %0d", errors);
            #10
            $stop;
          end     
      end   
  endmodule