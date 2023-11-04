#include <stdio.h>

int main() {
    // Nome do arquivo
    char nomeArquivo[] = "contador_sequencia_0_1_2_3_10_13.tv";

    // Abra o arquivo para escrita
    FILE *arquivo = fopen(nomeArquivo, "w");

    // Verifique se o arquivo foi aberto com sucesso
    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    // Sequência de dados desejada
    char sequencia[][10] = {
        "1_0_0000",             /* Ordem dos dados: RESET_CLK_Yesperado */
        "1_1_0000",
        "0_1_0000",
        "0_0_0000",
        "0_1_0001",
        "0_0_0001",
        "0_1_0010",
        "0_0_0010",
        "0_1_0011",
        "0_0_0011",
        "0_1_1010",
        "0_0_1010",
        "0_1_1101",
        "0_0_1101",
        "0_1_0000"
    };

    // Escreva a sequência de dados no arquivo
    for (int i = 0; i < 15; i++) {
        fprintf(arquivo, "%s\n", sequencia[i]);
    }

    // Feche o arquivo
    fclose(arquivo);

    printf("Sequência de dados escrita com sucesso no arquivo %s.\n", nomeArquivo);

    return 0;
}




    
    
    
