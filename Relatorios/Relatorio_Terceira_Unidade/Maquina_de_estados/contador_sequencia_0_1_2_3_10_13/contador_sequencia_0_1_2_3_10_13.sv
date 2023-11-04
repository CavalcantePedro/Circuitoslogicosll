//
module contador_sequencia_0_1_2_3_10_13

 (output logic [3:0] y,
  input logic clk, reset);
  
  logic [2:0] estado_atual;
   
 parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S10 = 4, S13 = 5;
 
  always_comb  begin // parte combinacional
   case (estado_atual)
    S0: y = 0;
    S1: y = 1;
    S2: y = 2;
    S3: y = 3;
   S10: y = 10;
   S13: y = 13;
  endcase
end

 always_ff @ (posedge clk, posedge reset) // parte sequencial
  if (reset)
   estado_atual <= S0;
 else
  case (estado_atual)
   S0: estado_atual <= S1;
   S1: estado_atual <= S2;
   S2: estado_atual <= S3;
   S3: estado_atual <= S10;
  S10: estado_atual <= S13;
  S13: estado_atual <= S0;
 endcase
endmodule