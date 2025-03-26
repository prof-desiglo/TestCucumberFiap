# language: pt

Funcionalidade: Caluladora

# Context
Contexto:
    Dado que eu tenho uma calculadora

# Comentário
Cenario: Soma Simples
    #Dado que eu tenho uma calculadora
    Quando eu fizer uma soma com os valores 1 e 6
    Então o resultado vai ser 7

Cenario: Soma Simples 2
    #Dado que eu tenho uma calculadora
    Quando eu fizer uma soma com os valores 1 e 6
    Então vai aparecer 7

Cenario: Soma Simples 3
    #Dado que eu tenho uma calculadora
    Quando eu fizer uma soma com os valores 1 e 6
    Então vai ser 7

# scenario Outline:
Esquema do Cenario: Somas com valores diferentes
    #Dado que eu tenho uma calculadora
    Quando eu fizer uma soma com os valores <Valor1> e <valor2>
    Então o resultado vai ser <resultado>

# Examples:
Exemplos:
    | Valor1  | valor2 | resultado |
    | 2       | 1      |     3     |
    | 9999999 | 1      | 10000000  |
    | 5       | -1     |     4     |
