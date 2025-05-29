Decodificador Morse em Assembly
Autor: João Freitas de Carvalho

Descrição:
Este projeto é um programa simples escrito em linguagem Assembly para uma máquina hipotética (ou simulador de processador), que lê um código Morse digitado via teclado, identifica se ele corresponde às letras A, B, C ou D, e exibe o caractere ASCII correspondente em um visor (saída).

Caso o código Morse lido não corresponda a nenhuma das letras reconhecidas, o programa retorna o caractere NUL (ASCII 0).

Funcionamento:
O código Morse é lido através da porta de entrada 0.
O valor lido é armazenado em memória.
O programa compara esse valor com os códigos Morse pré-definidos das letras A, B, C e D.
Se houver correspondência, o programa carrega o valor ASCII da letra correspondente.
Esse valor é enviado à porta de saída 0, onde será exibido.
Se não houver correspondência, o valor 0 (NUL) é enviado.

Códigos Morse usados:
Letra	Código Morse (hexadecimal)
A	01h
B	81h
C	91h
D	82h

Observação: Os valores hexadecimais são codificações específicas definidas pelo autor e dependem da implementação do teclado/simulador. Exemplo: 01h pode representar .- (letra A em Morse).

Instruções de Execução:
Abra o simulador/ambiente compatível com Assembly para esse modelo de máquina.

1. Carregue o código no simulador.
2. Execute o programa.
3. Insira um código Morse pelo teclado (porta de entrada 0).
4. Observe o caractere ASCII correspondente na saída (visor).

Estrutura do Código:
Entrada: IN 0 – lê o valor da porta de entrada.
Saída: OUT 0 – envia o caractere para a saída (tela/visor).
Comparações: Compara o valor lido com os códigos Morse das letras.

Dados armazenados:
MORSE_IN: onde o valor lido é armazenado.
A_CODE, B_CODE, C_CODE, D_CODE: armazenam os códigos Morse esperados.

Possíveis Extensões:
Adicionar suporte a mais letras do alfabeto.
Implementar decodificação completa de palavras.
Incluir tratamento de erros ou sinais de código inválido.
Melhorar a forma de codificação dos sinais Morse.

Licença:
Este projeto é de livre uso acadêmico. Sinta-se à vontade para estudar, modificar e expandir.
