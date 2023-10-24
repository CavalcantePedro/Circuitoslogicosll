module Contador_bits_1
(input logic [7:0] entrada,
output logic [3:0] saida_quant_um);

always @ * begin //O always é usado para definir um bloco de código que será executado sempre que houver uma mudança nos sinais de entrada do módulo.
saida_quant_um = 0; //Inicializa a saída com 0

for (int i = 0; i < 8; i++) begin //Loop para percorrer os 8 bits da entrada
    if (entrada[i] == 1) begin //Se o bit for 1, incrementa a saída
        saida_quant_um = saida_quant_um + 1; //Incrementa a saída
    end
end

end

endmodule