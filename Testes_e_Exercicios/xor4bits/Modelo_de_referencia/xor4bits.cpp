#include<stdio.h>

int main()
{
    FILE *fp; // ponteiro para o arquivo
    fp = fopen("xor4bits.tv", "w");// abre o arquivo para escrita
    if(fp == NULL)// verifica se o arquivo foi aberto com sucesso
    {
        printf("Erro ao abrir o arquivo.\n"); // imprime uma mensagem de erro
        return 1;
    }

    int a,b,c,d; // variáveis para representar as entradas
    for(a=0; a<=1; a++) // laço para gerar todas as combinações de entradas
    {
        for(b=0; b<=1; b++)  // laço para gerar todas as combinações de entradas
        {
            for(c=0; c<=1; c++) // laço para gerar todas as combinações de entradas
            {
                for(d=0; d<=1; d++) // laço para gerar todas as combinações de entradas
                {
                    int y = a^b^c^d; // calcula a função booleana XOR
                    fprintf(fp, "%d%d%d%d_%d\n", a, b, c, d, y); // escreve no arquivo
                }
            }   
        }
    }

    fclose(fp); // fecha o arquivo
    printf("Arquivo criado com sucesso.\n");
    return 0;
}
