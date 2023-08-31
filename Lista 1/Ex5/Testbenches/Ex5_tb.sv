`timescale 1ns/100ps //Ajusta a escala de tempo para ns
module Ex5_tb;

logic [15:0] entrada, saida_quant_um, saida_quant_zero;

Ex5 dut(.entrada(entrada), .saida_quant_um(saida_quant_um), .saida_quant_zero(saida_quant_zero));//Instancia o testbench

initial begin
    entrada = 16'b0000000000000000; //zero 1's e dezesseis 0's
    #10
    assert(saida_quant_um == 0 & saida_quant_zero == 16) $display("Test 1 OK");
    else $error("Test 1 ERROR");
    $display("Saida esperada para 1's: 0");
    $display("Saida esperada para 0's: 16");
    $display("Saida obtida para 1's: %d", saida_quant_um);
    $display("Saida obtida para 0's: %d", saida_quant_zero);

    entrada = 16'b0000000000000001; //um 1's e quinze 0's
    #10
    assert(saida_quant_um == 1 & saida_quant_zero == 15) $display("Test 2 OK");
    else $error("Test 2 ERROR");
    $display("Saida esperada para 1's: 1");
    $display("Saida esperada para 0's: 15");
    $display("Saida obtida para 1's: %d", saida_quant_um);
    $display("Saida obtida para 0's: %d", saida_quant_zero);

    entrada = 16'b0100101001000100; // cinco 1's  e onze 0's
    #10
    assert(saida_quant_um == 5 & saida_quant_zero == 11) $display("Test 3 OK");
    else $error("Test 3 ERROR");
    $display("Saida esperada para 1's: 5");
    $display("Saida esperada para 0's: 11");
    $display("Saida obtida para 1's: %d", saida_quant_um);
    $display("Saida obtida para 0's: %d", saida_quant_zero);
end

endmodule