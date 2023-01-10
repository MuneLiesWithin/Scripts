#!/usr/bin/python
import socket

host = input("Digite um site: ")

print("\n---- Obtendo IP ----\n")

print(host,"---->",socket.gethostbyname(host))
