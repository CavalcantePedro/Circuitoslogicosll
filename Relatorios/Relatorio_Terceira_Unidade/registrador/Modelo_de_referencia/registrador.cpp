#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("registrador.tv", "w"); // abre o arquivo para escrita
    if(fp == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }

    int a, b, c, d, e, f, g, h, clock;
    int anterior_a, anterior_b, anterior_c, anterior_d, anterior_e, anterior_f, anterior_g, anterior_h;
    
    anterior_a = 0;  
    anterior_b = 0;
    anterior_c = 0;
    anterior_d = 0;
    anterior_e = 0;
    anterior_f = 0;
    anterior_g = 0;
    anterior_h = 0;
  
    for(a=0; a<=1; a++) {
        for(b=0; b<=1; b++) {
            for(c=0; c<=1; c++) {
                for(d=0; d<=1; d++) {
                	for(e=0; e<=1; e++ ){
                		for(f=0; f<=1;f++){
                			for(g=0; g<=1;g++){
                				for(h=0; h<=1; h++){
									clock = 0; // gera o Clock para os Flip-Flops (sensível à borda de subida)
                                    fprintf(fp, "%d%d%d%d%d%d%d%d_%d_%d%d%d%d%d%d%d%d\n", a, b, c, d, e, f, g, h, clock, anterior_a, anterior_b, anterior_c, anterior_d, anterior_e, anterior_f, anterior_g, anterior_h);  // escreve a combinaçao pela primeira vez
					                clock = 1; // gera o clock para os Flip-Flops (sensível à borda de subida)
                                    fprintf(fp, "%d%d%d%d%d%d%d%d_%d_%d%d%d%d%d%d%d%d\n", a, b, c, d, e, f, g, h, clock, a, b, c, d, e, f, g, h); // escreve a combinação pela segunda vez
                                    anterior_a = a; // armazena a combinação atual
                                    anterior_b = b;
                                    anterior_c = c;
                                    anterior_d = d;
                                    anterior_e = e;
                                    anterior_f = f;
                                    anterior_g = g;
                                    anterior_h = h;
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




    
    
    
