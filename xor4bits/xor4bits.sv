module xor4bits
  ( input logic a,b,c,d,
    output logic y);
   
     always @ *
 
     y = a ^ b ^ c ^ d; 
endmodule 