#include<stdio.h>

int mains()
{
    FILE *fp;
    fp = fopen("xor4bits.txt", "w");
    if(fp == NULL)
    {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    int a,b,c,d;
    for(a=0; a<=1; a++) 
    {
        for(b=0; b<=1; b++) 
        {
            for(c=0; c<=1; c++) 
            {
                for(d=0; d<=1; d++) 
                {
                    int y = a^b^c^d; // calcula a função booleana XOR
                    fprintf(fp, "%d%d%d%d_%d\n", a, b, c, d, y); // escreve no arquivo
                }
    }   }   }
    fclose(fp);
    printf("Arquivo criado com sucesso.\n");
    return 0;
}
