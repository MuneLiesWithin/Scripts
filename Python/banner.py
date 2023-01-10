#!/usr/bin/python
import socket

ip = input("Digite um IP: ")
porta = int(input("Digite uma porta: "))

meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
meusocket.connect((ip,porta))
banner = meusocket.recv(1024)
print(banner)
