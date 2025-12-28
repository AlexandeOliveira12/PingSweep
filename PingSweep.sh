#!/bin/bash
if [ -z "$1"];
then
    echo "PING SWEEP"
    echo "Modo de uso: $0 IP"
    echo "Exemplo: $0 192.168.0.1"
    echo
else
    azul="\e[34m"
    verde="\e[32m"
    vermelho="\e[31m"
    reset="\e[0m"
    echo -e "$azul
    __________.__                   _________
    \______   \__| ____    ____    /   _____/_  _  __ ____   ____ ______
     |     ___/  |/    \  / ___\   \_____  \\ \/ \/ // __ \_/ __ \\____ \
     |    |   |  |   |  \/ /_/  >  /        \\     /\  ___/\  ___/|  |_> >
     |____|   |__|___|  /\___  /  /_______  / \/\_/  \___  >\___  >   __/
                         \//_____/           \/             \/     \/|__|
    $reset"
    echo
    echo -e "$azul Gostaria de Fazer um Teste mais Rapido?$reset ($verde s $reset/$vermelho n $reset)"
    read velocidade
    if [ "$velocidade" == "s" ]
    then
        vel="-T4"
    else
        vel=""
    fi
    echo -e "$azul Gostaria de um teste mais Intrusivo?$reset ($verde s $reset/$vermelho n $reset)"
    read intrusao
    if [ "$intrusao" == "s" ]
    then
        int="-p-"
        int2="-sV"
        int3="-sT"
    else
        int=""
        int2=""
        int3=""
    fi
        echo
        echo -e "$azul Varrendo Host: $reset $1"
        echo
        nmap -sT -sV -Pn $vel $int $int2 $int3 --open $1 > nmap.txt
        cat nmap.txt | head -n 5 | tail -n 1
        grep "open" nmap.txt
        rm -rf nmap.txt
        echo
        echo -e "$azul Digite a quantidade de pacotes que devem ser enviado: $reset"
        read qntd
                echo
                echo -e "$azul Realizando Ping no IP: $reset $1 $azul (Enviando $reset $vermelho $qntd $reset $azul Pacotes) $reset"
                echo
                ping -c $qntd $1 | grep "64 bytes"
fi
