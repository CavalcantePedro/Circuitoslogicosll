module contador_8bits

 (output logic [7:0] q,
  input logic clk, clrn);
  
always_ff@(posedge clk, negedge clrn) 
  if (~clrn)
   q <= 0;
   else q <= q + 1;
endmodule