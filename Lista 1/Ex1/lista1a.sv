//Um circuito combinacional tem uma entrada X, a qual representa dois dígitos decimais. A saída Z é igual a 2X + 5 se X for maior do que 4; caso contrário a saída Z é igual a X3+ 5X.
module lista1a
(output logic [29:0]z,
input logic[6:0]x); 

always @ * begin //O always é usado para definir um bloco de código que será executado sempre que houver uma mudança nos sinais de entrada do módulo.
if (x > 4)
z =( x*x*x)+(5*x);
else z= 2*x+5;
end	//end é usado para finalizar um bloco de código.
endmodule