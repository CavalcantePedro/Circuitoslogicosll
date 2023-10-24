`timescale 1ns/100ps // Ajusta a escala de tempo para ns
module Comparador_4_bits_tb;

    logic [3:0] A;
    logic [3:0] B;
    logic igual;
    logic maior;
    logic menor;
    logic maior_esperado;
    logic menor_esperado;
    logic igual_esperado;
    logic [10:0] vectors [10];
    int testes;
    int erros;
    logic clk, reset;

    Comparador_4_bits dut
    (
        .A(A),
        .B(B),
        .igual(igual),
        .maior(maior),
        .menor(menor)
    );


    initial 
        begin
            $display("Inicializando testbench");
            $readmemb("comparador_4bits.tv", vectors); // Leitura do arquivo de teste
            testes = 0; erros = 0;
            reset =1; #20; reset =0; // Reseta o contador
        end

    always 
        begin
            clk =1; #10;
            clk =0; #10;
        end

    always @(posedge clk)
        if(~reset)
        begin
            {A, B, igual_esperado, maior_esperado, menor_esperado} = vectors[testes];
        end

    always @(negedge clk)
        if(~reset)
        begin
            assert (menor === menor_esperado && maior === maior_esperado && igual === igual_esperado) 
                $display("|%b | %b | = | %b | %b | %b | OK", A, B, igual, maior, menor); 
            else
            begin
                $display("|%b | %b | = | %b | %b | %b | ERRO, saida esperada: | %b | %b | %b |", A, B, igual, maior, menor,igual_esperado, maior_esperado, menor_esperado); 
                erros = erros + 1;
            end

            testes++;

            if(vectors[testes] === 11'bx)
            begin
                $display("Testes finalizados");
                $display("Total de testes: %0d", testes);
                $display("Total de erros: %0d", erros);
                #10
                $stop;    
            end
        end
endmodule
    