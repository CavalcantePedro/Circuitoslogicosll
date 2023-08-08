module lista1a
(output logic [29:0]z,
input logic[6:0]x);

always @ * begin
if (x > 4)
z =( x*x*x)+(5*x);
else z= 2*x+5;

end	
endmodule