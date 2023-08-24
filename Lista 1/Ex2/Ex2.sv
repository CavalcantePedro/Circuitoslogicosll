//Um circuito combinacional deve ser projetado para calcular a dist�ncia entre dois 1�s em um vetor de bits de entrada (8 bits). Suponha que o vetor tenha exatamente dois 1�s. Por exemplo se x = (1,0,1,0,0,0,0,0) ent�o a dist�ncia � 2.
module Ex2
(input logic [7:0]entrada, 
output logic [2:0]saida_dist); //O output deve ser de 3 bits, pois a dist�ncia m�xima � 7, que � representado em bin�rio por 3 bits (111) e   O input deve ser de 8 bits, pois o vetor de bits de entrada tem 8 bits

always @ * begin //O always � usdado para que o c�digo seja executado sempre que houver uma mudan�a na entrada
saida_dist = 0; //A sa�da � inicializada com 0
for (int i =0; i < 8; i++) begin //O for � usado para percorrer o vetor de entrada
    if (entrada[i] == 1) begin //Se o valor do vetor for 1, o primeiro 1 � encontrado
        for (int j = i+1; j < 8; j++) begin //O for � usado para percorrer o vetor de entrada a partir da posi��o do primeiro 1
            if (entrada[j] == 1) begin //Se o valor do vetor for 1, o segundo 1 � encontrado
                saida_dist = j - i; //A dist�ncia � calculada
                break; //O break � usado para sair do for
            end
        end
    end
end

end

endmodule