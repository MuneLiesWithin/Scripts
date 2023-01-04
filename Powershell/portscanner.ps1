param($ip)

if(!$ip){
    echo "Modo de uso: .\portscanner.ps1 IP"
    echo "Exemplo: .\portscanner.ps1 192.168.0.9"
}
else{
    $toports = 21,22,3306,80,443
    try{
        foreach($porta in $toports){
            if(Test-NetConnection $ip -Port $porta -warningAction SilentlyContinue -InformationLevel Quiet){
                echo "Porta $porta aberta!"
            }
            else{
                echo "Porta $porta fechada!"
            }
        }
    
    }
    catch{}
}