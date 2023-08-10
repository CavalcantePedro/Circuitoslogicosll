// Modulo de teste para um decodificador com dois bits de selecao
`timescale 1ns / 100ps

module decoder_tb;

  // Declaracao dos sinais de entrada e saida
  logic [1:0] sel;
  logic [3:0] out;

  // Instancia do decodificador a ser testado
  decoder dut(.sel(sel), .out(out));
  //  decoder dut (sel, out );

  // Geracao de estimulos de teste
  initial begin
    // Caso 1: sel = 00
    sel = 2'b00;
    #10;
    assert(out === 4'b0001) 
   // $display (" caso 1 OK");    //
     $display ("caso 1 OK: sel = %b, out = %b", sel, out);          
     else $error("Erro no caso 1: sel = %b, out = %b", sel, out);

    // Caso 2: sel = 01
    sel = 2'b01;
    #10;
    assert(out === 4'b0010)
   // $display (" caso 2 OK"); 
      $display ("caso 2 OK: sel = %b, out = %b", sel, out);
     else $error("Erro no caso 2: sel = %b, out = %b", sel, out);
    

    // Caso 3: sel = 10
    sel = 2'b10;
    #10;
    assert(out === 4'b0100)
   // $display (" caso 3 OK");
      $display ("caso 3 OK: sel = %b, out = %b", sel, out);
 
   // $display (" sel = %b, out = %b --> OK "); 
    else $error("Erro no caso 3: sel = %b, out = %b", sel, out);

    // Caso 4: sel = 11
    sel = 2'b11;
    #10;
    assert(out === 4'b1000)
 //  $display (" caso 4 OK"); 
      
     $display ("caso 4 OK: sel = %b, out = %b", sel, out);

   // $display (" sel = %b, out = %b --> OK , sel, out"); 
    else $error("Erro no caso 4: sel = %b, out = %b", sel, out);
  end

endmodule


