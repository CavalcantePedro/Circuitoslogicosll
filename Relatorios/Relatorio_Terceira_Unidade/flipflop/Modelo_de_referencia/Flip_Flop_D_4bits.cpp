#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("flipflop.tv", "w"); // abre o arquivo para escrita
    if(fp == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    int a, b, c, d, clock;
    int anterior_a, anterior_b, anterior_c, anterior_d;
    
    anterior_a = 0;  
    anterior_b = 0;
    anterior_c = 0;
    anterior_d = 0;
  
    for(a=0; a<=1; a++) {
        for(b=0; b<=1; b++) {
            for(c=0; c<=1; c++) {
                for(d=0; d<=1; d++) {
                    clock = 0; // gera o Clock para os Flip-Flops (sens�vel � borda de subida)
                    fprintf(fp, "%d%d%d%d_%d_%d%d%d%d\n", a, b, c, d, clock, anterior_a, anterior_b, anterior_c, anterior_d);  // escreve a combina�ao pela primeira vez
					clock = 1; // gera o clock para os Flip-Flops (sens�vel � borda de subida)
                    fprintf(fp, "%d%d%d%d_%d_%d%d%d%d\n", a, b, c, d, clock, a, b, c, d); // escreve a combina��o pela segunda vez
                    anterior_a = a; // armazena a combina��o atual
                    anterior_b = b;
                    anterior_c = c;
                    anterior_d = d;
                    
                }
            }
        }
    }
    
    fclose(fp); // fecha o arquivo
    printf("Arquivo gerado com sucesso.\n");
    return 0;
}




    
    
    
