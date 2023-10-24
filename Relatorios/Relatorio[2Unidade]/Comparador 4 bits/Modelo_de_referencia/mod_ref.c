#include <stdio.h>
#include <stdlib.h>
#include <time.h>

char* decimal_to_binary(int n) {
    int c, d, count;
    char *pointer;

    count = 0;
    pointer = (char*)malloc(4+1);

    if (pointer == NULL)
        exit(EXIT_FAILURE);

    for (c = 3; c >= 0; c--) {
        d = n >> c;

        if (d & 1)
            *(pointer+count) = 1 + '0';
        else
            *(pointer+count) = 0 + '0';

        count++;
    }
    *(pointer+count) = '\0';

    return pointer;
}

int main() {
    FILE *file;
    file = fopen("comparador_4bits.tv", "w");

    if (file == NULL) {
        printf("Erro ao criar o arquivo.");
        exit(1);
    }

    srand(time(0));

    for (int i = 0; i < 10; i++) {
        int A = rand() % 16; // Gera um número aleatório entre 0 e 15 (equivalente a 0000 e 1111 em binário de 4 bits)
        int B = rand() % 16;
        int igual = (A == B);
        int maior = (A > B);
        int menor = (A < B);

        char *binary_A = decimal_to_binary(A);
        char *binary_B = decimal_to_binary(B);

        fprintf(file, "%s_%s_%d_%d_%d\n", binary_A, binary_B, igual, maior, menor);

        free(binary_A);
        free(binary_B);
    }

    fclose(file);
    printf("Arquivo .tv gerado com sucesso.");
    return 0;
}
