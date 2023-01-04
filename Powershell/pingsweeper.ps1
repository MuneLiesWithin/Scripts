param($ip)

if(!$ip){
    echo "Modo de uso: .\pingsweeper.ps1 REDE"
    echo "Exemplo: .\pingsweeper.ps1 192.168.0"
}
else{
    foreach ($var in 1..254){
        try{
            $resp = ping -n 1 "$ip.$var" | Select-String "bytes=32"
            $resp.Line.split(' ')[2] -replace ":",""
        }
        catch{}
    }
}