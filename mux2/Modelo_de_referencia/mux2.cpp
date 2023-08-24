#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("mux2.tv", "w"); // abre o arquivo para escrita
    if(fp == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    int a, b, c, d, e, f, g, h;
    for(a=0; a<=1; a++) {
    	e = !a;
        for(b=0; b<=1; b++) {
        	f=!b;
            for(c=0; c<=1; c++) {
            	g = !c;
                for(d=0; d<=1; d++) {
                  h = !d;
				  if (d==0) 
                    fprintf(fp, "%d%d%d%d_%d%d%d%d_%d_%d%d%d%d\n", a, b, c, d, e, f, g, h, d, a, b, c, d); // escreve no arquivo
                   else fprintf(fp, "%d%d%d%d_%d%d%d%d_%d_%d%d%d%d\n", a, b, c, d, e, f, g, h,d,e, f, g, h);
                  
                }
            }
        }
    }
    fclose(fp); // fecha o arquivo
    printf("Arquivo gerado com sucesso.\n");
    return 0;
}
