module Contador_bits_1
(input logic [7:0] entrada,
output logic [3:0] saida_quant_um);

always @ * begin //O always � usado para definir um bloco de c�digo que ser� executado sempre que houver uma mudan�a nos sinais de entrada do m�dulo.
saida_quant_um = 0; //Inicializa a sa�da com 0

for (int i = 0; i < 8; i++) begin //Loop para percorrer os 8 bits da entrada
    if (entrada[i] == 1) begin //Se o bit for 1, incrementa a sa�da
        saida_quant_um = saida_quant_um + 1; //Incrementa a sa�da
    end
end

end

endmodule