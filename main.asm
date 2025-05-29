        ORG 0         ; Início do programa
;-------------------------------------------------------------------------------
; Autor: João Freitas de Carvalho
; Descrição:
; Este programa lê um código Morse do teclado (porta de entrada 0),
; compara esse código com os códigos predefinidos para as letras A, B, C e D,
; e envia o caractere ASCII correspondente para o visor (porta de saída 0).
; Se o código Morse não corresponder a nenhuma dessas letras, o programa
; envia o caractere NUL (0).
;-----------------------------------------------------------------------------

START:  IN 0           ; Ler código Morse do teclado (endereço 0)
        STA MORSE_IN  ; Salvar entrada em MORSE_IN

        LDA MORSE_IN  ; Carregar código Morse para comparação
        SUB A_CODE    ; Subtrair código do A
        JZ LOAD_A     ; Se zero, é A
        LDA MORSE_IN
        SUB B_CODE
        JZ LOAD_B
        LDA MORSE_IN
        SUB C_CODE
        JZ LOAD_C
        LDA MORSE_IN
        SUB D_CODE
        JZ LOAD_D

        LDI 0         ; Se não for nenhum, carregar 0 no acumulador
        JMP END_PROG

LOAD_A: LDI 41h        ; ASCII 'A'
        JMP END_PROG

LOAD_B: LDI 42h        ; ASCII 'B'
        JMP END_PROG

LOAD_C: LDI 43h        ; ASCII 'C'
        JMP END_PROG

LOAD_D: LDI 44h        ; ASCII 'D'

END_PROG:
        OUT 0         ; Enviar caractere para visor (endereço 0)
        HLT           ; Parar a máquina

; Dados
MORSE_IN: DS 1        ; Reservar espaço para código Morse entrada
A_CODE:   DB 01h       ; Código Morse de A
B_CODE:   DB 81h       ; Código Morse de B
C_CODE:   DB 91h       ; Código Morse de C
D_CODE:   DB 82h       ; Código Morse de D

        END START     ; Fim do programa, PC inicia em START
