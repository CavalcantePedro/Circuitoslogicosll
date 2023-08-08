`timescale 1ns/100ps //Ajusta a escala de tempo para ns
module lista1a_tb;

logic [6:0] x;
logic [29:0] z;

lista1a dut(.x(x), .z(z));

initial begin
	x = 0;
	#10;
	$display("Teste 1 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
	x = 2;
	#10; // Aguardar um pouco após a mudança de x
	$display("Teste 2 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
			
	x = 4;
	#10; // Aguardar um pouco após a mudança de x
	$display("Teste 3 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
			
	x = 5;
	#10; // Aguardar um pouco após a mudança de x
	$display("Teste 4 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
	
	x = 7;
	#10; // Aguardar um pouco após a mudança de x
	$display("Teste 5 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
	
	x = 15;
	#10; // Aguardar um pouco após a mudança de x
	$display("Teste 6 | x = %0d, z = %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
	
	x = 1;
	#10; // Aguardar 10 ns
	$display("Teste 7 | x = %0d, z= %0d", x, z);
	$display("saidas em binario | x = %b, z = %b", x, z);
end
   
endmodule