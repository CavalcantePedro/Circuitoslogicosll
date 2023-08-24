`timescale 1ns/100ps //Ajusta a escala de tempo para ns
module Ex2_tb;

logic [7:0] entrada;//Entrada
logic [2:0] saida_dist;//Saída

Ex2 dut(.entrada(entrada), .saida_dist(saida_dist)); //Instancia o módulo

initial begin
    entrada=8'b01010000;
    #10;
    assert(saida_dist == 2) $display("Teste 1 OK");
    else $error("Teste falhou");
    $display("Distancia esperada: 2 ");
    $display("Distancia obtida: %d", saida_dist);
    
    entrada=8'b10000010;
    #10;
    $display("Distancia esperada: 6 ");
    $display("Distancia obtida: %d", saida_dist);
    
    entrada=8'b01010000;
    #10;
    $display("Distancia esperada: 2");
    $display("Distancia obtida: %d", saida_dist);
    
    entrada=8'b01100000;
    #10;
    $display("Distancia esperada: 1");
    $display("Distancia obtida: %d", saida_dist);
    
    entrada=8'b01000100;
    #10;
    $display("Distancia esperada: 4");
    $display("Distancia obtida: %d", saida_dist);
end

endmodule