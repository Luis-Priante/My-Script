#!/bin/bash

# Função para soma
soma() {
    echo "Digite o primeiro número: "
    read a
    echo "Digite o segundo número: "
    read b
    resultado=$(echo "$a + $b" | bc)      # bc comando para fazer operação com resultados na casa de décimos
    echo "Resultado da soma: $resultado"
}

# Função para subtração
subtracao() {
    echo "Digite o primeiro número: "
    read a
    echo "Digite o segundo número: "
    read b
    resultado=$(echo "$a - $b" | bc)
    echo "Resultado da subtração: $resultado"
}

# Função para multiplicação
multiplicacao() {
    echo "Digite o primeiro número: "
    read a
    echo "Digite o segundo número: "
    read b
    resultado=$(echo "$a * $b" | bc)
    echo "Resultado da multiplicação: $resultado"
}

# Função para divisão
divisao() {
    echo "Digite o primeiro número: "
    read a
    echo "Digite o segundo número: "
    read b

    # Verifica se o segundo número é zero
    if [ "$b" -eq 0 ]; then
        echo "Erro: Divisão por zero não permitida."
    else
        resultado=$(echo "escale=2; $a / $b" | bc)
        echo "Resultado da divisão: $resultado"
    fi
}

# Menu principal
while true; do
    echo "Escolha uma operação:"
    echo "1. Soma"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"
    echo "5. Sair"
    read opcao

    case $opcao in
        1)
            soma
            ;;
        2)
            subtracao
            ;;
        3)
            multiplicacao
            ;;
        4)
            divisao
            ;;
        5)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida, tente novamente."
            ;;
    esac
done
