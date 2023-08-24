module mux2 (
  input logic [3:0] a,b, // entradas a e b com 4 bits cada
  input logic  s,  // entrada s com 1 bit
  output logic  [3:0] y  //Saida y com 4 bits
);

  always_comb //Uso do always_comb para garantir que a sa�da y seja atualizada sempre que houver uma mudan�a nas entradas
  begin //Uso do begin para garantir que o always_comb tenha um bloco de c�digo
    if (s == 0) //Sele��o da entrada que ser� a Sa�da
      y = a; //Sa�da y recebe a entrada a
     else 
      y = b;
  end //Finaliza��o do bloco de c�digo do always_comb

endmodule

 