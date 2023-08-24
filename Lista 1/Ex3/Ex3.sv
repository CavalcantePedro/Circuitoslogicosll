// Faça a descrição System Verilog de um circuito que conta o número de 1's de um vetor de entrada de 16 bits. Simule a seguir o circuito usando um testbench simples.
module Ex3
(input logic [15:0] entrada,
output logic [15:0] saida_quant_um
);//Entrada de 16 bits como a questão pede, e saída de 16 bits (pois a é a maior quantidade de 1's possivel) para representar o número de 1's

always @ * begin //O always é usado para definir um bloco de código que será executado sempre que houver uma mudança nos sinais de entrada do módulo.
saida_quant_um = 0; //Inicializa a saída com 0

for (int i = 0; i < 16; i++) begin //Loop para percorrer os 16 bits da entrada
    if (entrada[i] == 1) begin //Se o bit for 1, incrementa a saída
        saida_quant_um = saida_quant_um + 1; //Incrementa a saída
    end
end

end

endmodule