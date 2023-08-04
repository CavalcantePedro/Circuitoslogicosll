module exercicio1
(output logic [6:0]z,
input logic [3:0] x);

always @ * begin
if (x > 4)
z = x*x;
else z = 2*x;
end

endmodule