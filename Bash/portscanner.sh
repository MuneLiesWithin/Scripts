#!/bin/bash
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 REDE PORTA"
	echo "Exemplo: $0 198.9.0 80"
else
for host in {1..254};
do
hping3 -c 1 -p $2 -S $1.$host 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | tr -d "ip="; 
done 
fi
