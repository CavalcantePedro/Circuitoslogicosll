`timescale 1ns/100ps //Ajusta a escala de tempo para ns
module Ex3_tb;

logic [15:0] entrada, saida_quant_um;

Ex3 dut(.entrada(entrada), .saida_quant_um(saida_quant_um)); //Instancia o testbench

initial begin
    entrada = 16'b0000000000000000; //zero 1's
    #10
    assert(saida_quant_um == 0) $display("Test 1 OK");
    else $error("Test 1 ERROR");
    $display("Saida esperada: 0");
    $display("Saida obtida: %d", saida_quant_um);

    entrada = 16'b0000000000000001; //um 1's
    #10
    assert(saida_quant_um == 1) $display("Test 2 OK");
    else $error("Test 2 ERROR");
    $display("Saida esperada: 1");
    $display("Saida obtida: %d", saida_quant_um);

    entrada = 16'b0100101001000100; // cinco 1's
    #10
    assert(saida_quant_um == 5) $display("Test 3 OK");
    else $error("Test 3 ERROR");
    $display("Saida esperada: 5");
    $display("Saida obtida: %d", saida_quant_um);
end
endmodule