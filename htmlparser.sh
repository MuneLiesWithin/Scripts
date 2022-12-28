#!/bin/bash
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 URL"
	echo "Exemplo: $0 globo.com"
else
	wget -q $1
	cat index.html | grep "href" | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v ">" | sort -u > lista.txt
	for url in $(cat lista.txt);
	do
		host $url | grep "has address" | sed "s/has address/=/";
	done    
	rm index.html lista.txt
fi
