#!/usr/bin/python
import sys,socket

if len(sys.argv) <= 1:
	print("Modo de uso: ./portscanner.py IP")
	print("Exemplo: ./portscanner.py 127.0.0.1")
else:
	print("\n---- Varrendo portas ----\n")
	for porta in range(1,65535):
		meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		if meusocket.connect_ex((sys.argv[1],porta)) == 0:
			print("Porta %d aberta!" %porta)
			meusocket.close()
