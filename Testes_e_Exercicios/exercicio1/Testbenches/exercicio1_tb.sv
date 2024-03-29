 `timescale 1ns/100ps //Ajusta a escala de tempo para ns

module exercicio1_tb;
    // Sinais do testbench
    logic [3:0] x;
    logic [6:0] z;
    
    // Inst�ncia do m�dulo sob teste
    exercicio1 dut(.x(x),.z(z));
    
    // Est�mulos
    initial begin        
        x = 0;
        #10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 1 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
        //O uso de tr�s = compara tipo e valor das variaveis 
        assert(z === 0) $display("Teste 1 foi validado com o uso do assert");
				else $error ("O teste 1 nao passou na validacao do assert");
               
        x = 2;
        #10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 2 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
                
        x = 4;
        #10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 3 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
                
        x = 5;
        #10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 4 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
        
        x = 7;
        #10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 5 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
        
        x = 15;
		#10; // Aguardar um pouco ap�s a mudan�a de x
        $display("Teste 6 | x = %0d, z = %0d", x, z);
        $display("saidas em binario | x = %b, z = %b", x, z);
		
		x = 1;
		#10; // Aguardar 10 ns
		$display("Teste 7 | x = %0d, z= %0d", x, z);
		$display("saidas em binario | x = %b, z = %b", x, z);
    end
   
endmodule
