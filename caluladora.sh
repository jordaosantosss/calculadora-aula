#!/bin/bash

# Função para exibir o menu
exibir_menu() {
    echo "============================"
    echo "     Calculadora Simples    "
    echo "============================"
    echo "Escolha uma operação:"
    echo "1 - Adição"
    echo "2 - Subtração"
    echo "3 - Multiplicação"
    echo "4 - Divisão"
    echo "5 - Sair"
    echo "============================"
}

# Função para executar a operação
executar_operacao() {
    case $1 in
        1)
            echo "Digite o primeiro número:"
            read num1
            echo "Digite o segundo número:"
            read num2
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        2)
            echo "Digite o primeiro número:"
            read num1
            echo "Digite o segundo número:"
            read num2
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        3)
            echo "Digite o primeiro número:"
            read num1
            echo "Digite o segundo número:"
            read num2
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado: $resultado"
            ;;
        4)
            echo "Digite o primeiro número:"
            read num1
            echo "Digite o segundo número:"
            read num2
            if [ "$num2" -eq 0 ]; then
                echo "Erro: Divisão por zero não é permitida."
            else
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $resultado"
            fi
            ;;
        5)
            echo "Saindo da calculadora. Até mais!"
            exit 0
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            ;;
    esac
}

# Loop principal
while true; do
    exibir_menu
    echo "Escolha uma opção:"
    read opcao
    executar_operacao $opcao
    echo
done
