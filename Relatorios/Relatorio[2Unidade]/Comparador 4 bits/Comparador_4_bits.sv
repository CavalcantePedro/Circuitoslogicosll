module Comparador_4_bits (
    input logic [3:0] A,
    input logic [3:0] B,
    output logic igual,
    output logic maior,
    output logic menor
);
    assign igual = (A == B);
    assign maior = (A > B);
    assign menor = (A < B);
endmodule
