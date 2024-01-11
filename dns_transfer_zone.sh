#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKA='\e[38;5;197m'  # F5055C
COR_DNS='\e[38;5;220m'  # FEB63E
RESET='\e[0m'  # Reset para as configurações padrão de cor

#Verifica se o número correto de argumentos foi fornecido
if [ "$#" -ne 1 ]; then
    echo "----------------------------------------"
    echo -e "${COR_PKA}Pk's Academy${RESET} - ${COR_DNS}DNS TRANSFER ZONE${RESET}"
    echo "----------------------------------------"
    echo "Modo de uso: $0 <dominio>"
    echo "----------------------------------------"
    echo "Exemplo: $0 businesscorp.com.br"
    echo "----------------------------------------"

    exit 1
fi

echo
echo "-----------------------------------------"
echo -e "|${COR_PKA}Pk's Academy${RESET} - ${COR_DNS}DNS TRANSFER ZONE${RESET}|"
echo "-----------------------------------------"
echo
echo "Iniciando transferência de zona para o domínio: $1"

# Loop sobre servidores de nomes
for server in $(host -t ns $1 | cut -d " " -f 4);
do
echo
echo -e "\nTransferindo zona de $1 do servidor: $server"
host -l -a $1 $server
done 
