#include <stdio.h>
#include <stdlib.h>

void decToBinary(int n, FILE *fp) {
    // Array para armazenar o binário
    int binaryNum[4] = {0, 0, 0, 0};

    // Contador para o array binário
    int i = 3;
    while (n > 0 && i >= 0) {
        // Armazenando o resto da divisão por 2 no array binário
        binaryNum[i] = n % 2;
        n = n / 2;
        i--;
    }

    // Imprimindo o array binário
    for (int j = 0; j < 4; j++)
        fprintf(fp, "%d", binaryNum[j]);
}

int main() {
    FILE *fp;
    fp = fopen("modelo_de_referencia.tv", "w");
    if (fp == NULL) {
        printf("Erro ao abrir o arquivo.");
        return 1;
    }

    // Criando 8 vetores de entrada aleatórios de 8 bits
    int entradas[8][8];
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            entradas[i][j] = rand() % 2; // Preenche com 0 ou 1
        }
    }

    // Calculando o número de 1s em cada vetor de entrada e escrevendo no arquivo de saída
    for (int i = 0; i < 8; i++) {
        int count = 0;
        for (int j = 0; j < 8; j++) {
            if (entradas[i][j] == 1) {
                count++;
            }
            fprintf(fp, "%c", entradas[i][j] + '0'); // Escreve cada bit da entrada no arquivo como um caractere '0' ou '1'
        }
        fprintf(fp, "_");
        decToBinary(count, fp); // Escreve a quantidade de 1s em binário com 4 bits no arquivo
        fprintf(fp, "\n"); // Nova linha no arquivo
    }

    fclose(fp);
    return 0;
}
