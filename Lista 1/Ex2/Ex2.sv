//Um circuito combinacional deve ser projetado para calcular a distância entre dois 1’s em um vetor de bits de entrada (8 bits). Suponha que o vetor tenha exatamente dois 1’s. Por exemplo se x = (1,0,1,0,0,0,0,0) então a distância é 2.
module Ex2
(input logic [7:0]entrada, 
output logic [2:0]saida_dist); //O output deve ser de 3 bits, pois a distância máxima é 7, que é representado em binário por 3 bits (111) e O input deve ser de 8 bits, pois o vetor de bits de entrada tem 8 bits

always @ * begin //O always é usdado para que o código seja executado sempre que houver uma mudança na entrada
saida_dist = 0; //A saída é inicializada com 0
for (int i =0; i < 8; i++) begin //O for é usado para percorrer o vetor de entrada
    if (entrada[i] == 1) begin //Se o valor do vetor for 1, o primeiro 1 é encontrado
        for (int j = i+1; j < 8; j++) begin //O for é usado para percorrer o vetor de entrada a partir da posição do primeiro 1
            if (entrada[j] == 1) begin //Se o valor do vetor for 1, o segundo 1 é encontrado
                saida_dist = j - i; //A distância é calculada
                break; //O break é usado para sair do for
            end
        end
    end
end

end

endmodule