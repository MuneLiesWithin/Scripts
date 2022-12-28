#!/bin/bash
echo "Digite um servico a ser inicializado:"
read service
service $service restart
echo -e "\n##### PROCESSOS DO SERVICO #####\n"
ps aux | grep $service
echo -e "\n##### CONEXOES #####\n"
netstat -nlpt
