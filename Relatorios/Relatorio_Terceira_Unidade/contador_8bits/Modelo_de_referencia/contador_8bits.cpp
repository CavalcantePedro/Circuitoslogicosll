#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("contador_8bits.tv", "w"); // abre o arquivo para escrita
    if(fp == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    int a, b, c, d, e, f, g, h, clock;
  
    for(a=0; a<=1; a++) {
        for(b=0; b<=1; b++) {
            for(c=0; c<=1; c++) {
                for(d=0; d<=1; d++) {
                	for(e=0; e<=1; e++ ){
                		for(f=0; f<=1;f++){
                			for(g=0; g<=1;g++){
                				for(h=0; h<=1; h++){
									clock = 1; // gera o Clock para os Flip-Flops (sensível à borda de subida)
                                    fprintf(fp, "%d_%d%d%d%d%d%d%d%d\n",clock, a, b, c, d, e, f, g, h);  // escreve a combinaçao pela primeira vez
					                clock = 0; // gera o clock para os Flip-Flops (sensível à borda de subida)
                                    fprintf(fp, "%d_%d%d%d%d%d%d%d%d\n",clock, a, b, c, d, e, f, g, h); // escreve a combinação pela segunda vez
                                 
                                }
                           }
                       }
                    }
               }
           }
        }
   }   
    
    fclose(fp); // fecha o arquivo
    printf("Arquivo gerado com sucesso.\n");
    return 0;
}




    
    
    
