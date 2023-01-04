#!/bin/bash
if [ "$1" == "" ]
then
	echo "Modo de uso: $0 URL"
	echo "Exemplo: $0 globo.com"
else
	wget -4 -q $1
	cat index.html | grep "href" | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v ">" | sort -u > lista.txt
	for url in $(cat lista.txt | grep ".com");
	do
		host -4 $url | grep "has address" | sed "s/has address/=/";
	done    
	rm index.html lista.txt
fi
