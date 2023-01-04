#!/bin/bash
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 REDE"
	echo "Exemplo: $0 192.0.8"
else
for host in {1..254};
do
ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | tr -d ":";
done
fi
