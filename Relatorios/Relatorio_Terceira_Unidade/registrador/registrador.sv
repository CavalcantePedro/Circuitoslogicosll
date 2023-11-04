module registrador
(output logic [7:0] q,
 input logic [7:0] d,
 input clk, escreve);

 always_ff @(posedge clk) // borda de subida
 if (escreve ==1)
 q <= d;
endmodule