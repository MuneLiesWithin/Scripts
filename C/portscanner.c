#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main(void){
	char ip[20];
	int porta;

	printf("Digite um IP: ");
	scanf("%s", &ip);

	int  meusocket;
	int  conecta;

	struct sockaddr_in alvo;

	printf("\n### Varrendo portas ###\n\n");

	for(porta = 0; porta < 65535; porta++){
		meusocket = socket(AF_INET,SOCK_STREAM,0);
		alvo.sin_family = AF_INET;
		alvo.sin_port = htons(porta);
		alvo.sin_addr.s_addr = inet_addr(ip);

		conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);

		if(conecta == 0){
			printf("Porta %d aberta!\n", porta);
			close(meusocket);
			close(conecta);
		}
		else{
			close(meusocket);
			close(conecta);
		}
	}
	return 0;
}
