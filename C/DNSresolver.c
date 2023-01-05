#include <stdio.h>
#include <netdb.h>
#include <arpa/inet.h>


int main(void){
	char site[50];

	printf("Digite um site: ");
	scanf("%s", &site);

	struct hostent *alvo = gethostbyname(site);
	if(alvo == NULL){
		printf("Erro ):");
	}
	else{
		printf("O endereço %s possui o seguinte IP: %s ", site, inet_ntoa(*((struct in_addr *)alvo -> h_addr)));
	}
	return 0;
}
