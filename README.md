# Circuitos Lógicos II

---
### 👀 Sobre o reposiório:

Este repositório foi criado para armazenar códigos feitos durante o andamento da cadeira de Circuitos lógicos II do curso de Engenharia de Computação da `UFPB`.</br>

Todos os códigos foram desenvolvidos utilizando system verilog</br>

Sinta-se a vontade para utilizar os códigos deste repositório para fins de aprendizagem.

### 🌍 Onde me encontrar:

Caso queira discutir sobre algum código, ou solicitar ajuda pode me contatar.

<div align='center'>

  [![LinkedIn](https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/pedro-cavalcante-898242185/)
  [![Instagram](https://img.shields.io/badge/Instagram-purple?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/pedr0cavalcante/)
  [![Gmail](https://img.shields.io/badge/Gmail-darkred?style=for-the-badge&logo=gmail&logoColor=white)](mailto:pedro.ricardo@academico.ufpb.br)
</div>

---
# 🛠️ Usando System Verilog (Algumas coisas)

## 🔍 O que é System Verilog ?

SystemVerilog é uma linguagem de descrição de hardware (HDL) utilizada principalmente para projetar e verificar circuitos digitais e sistemas complexos. Ela expande a funcionalidade da linguagem Verilog e oferece recursos poderosos para modelagem, simulação e verificação de hardware.

---

## O "module"

O "module" em SystemVerilog é uma construção fundamental para definir componentes de hardware independentes e reutilizáveis. Ele representa um bloco de design com entradas, saídas e possivelmente atribuições internas que definem sua funcionalidade. Os módulos podem ser interconectados para formar hierarquias de design, promovendo modularidade e reutilização de código

#### Como utilizar:

~~~sv
module <nome do modulo>(declaração das portas);

//descrição do comportamento

endmodule
~~~

#### Exemplo:

~~~sv
module decoder(input logic [1:0] sel, output logic [3:0] out);
  always_comb begin
  case(sel)
    2'b00: out = 4'b0001;
    2'b01: out = 4'b0010;
    2'b10: out = 4'b0100;
    2'b11: out = 4'b1000;
  endcase
  end
endmodule
~~~

---

##  O tipo de dado "Logic"

O tipo de dado logic em SystemVerilog é usado para representar valores lógicos em circuitos digitais. Ele pode assumir três valores possíveis: 0, 1 e x (desconhecido ou indefinido). O tipo logic é mais abstrato e flexível do que os tipos tradicionais como reg ou wire.

~~~ sv
(input logic [1:0] sel, output logic [3:0] out);
~~~

---

## O bloco "always_comb"


O bloco always_comb é uma construção fundamental em SystemVerilog que é usado para descrever combinações lógicas em um design digital. Ele é usado para especificar como os sinais combinatórios (aqueles cujo valor é diretamente derivado das entradas) são calculados com base em suas entradas.

~~~ sv
always_comb begin

end
~~~

---

## O "case"

A construção case em SystemVerilog é usada para criar seleções condicionais multiplamente ramificadas, permitindo que diferentes ações sejam executadas com base no valor de uma expressão. Ela é frequentemente usada para simplificar o código quando há muitas condições diferentes a serem avaliadas.

~~~ sv
case(sel)

endcase
~~~

---

## O "always @ *"

A construção always @ * é usada para criar blocos combinatórios em Verilog, onde o bloco é executado sempre que qualquer sinal dentro do escopo do bloco for alterado. Essa sintaxe é conhecida como "sensibilidade automática" ou "sensibilidade a todos".

~~~ sv
always @ * begin

end
~~~

---

## O "always_ff"

A construção always_ff é uma sintaxe específica do SystemVerilog, utilizada para criar blocos sequenciais que descrevem a atualização de elementos de memória, como flip-flops. Esses blocos são usados para modelar a lógica sequencial em um design digital, onde o comportamento depende do estado anterior dos sinais.

~~~ sv
module sequential_logic(input logic clk, input logic rst, input logic data, output logic q);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;    // Reset assíncrono
        else
            q <= data;    // Atualização síncrona na borda de subida do clk
    end
endmodule
~~~

Neste exemplo, o bloco always_ff é sensível às bordas de subida do sinal de clock clk e de reset assíncrono rst. Quando rst é ativado, o flip-flop é redefinido para 0. Quando ocorre uma borda de subida em clk e o reset não está ativo, o valor de data é carregado no flip-flop.

---

## O "assign"

A construção assign em SystemVerilog é usada para realizar atribuições contínuas de valores a fios (wires) ou sinais combinatórios em um design digital. Ela é usada para definir relações lógicas simples sem a necessidade de criar um bloco procedural como o always.

~~~sv
 assign result = a & b;  // Atribuição contínua da operação AND
~~~