#THIS ONE NEEDS A BIT OF WORK!
param($url)
if(!$url){
    echo "Modo de uso: .\web.ps1 URL"
    echo "Exemplo: .\web.ps1 fbi.gov"
}
else{
    try{
        $web = Invoke-WebRequest -uri "$url" -Method Options -UseBasicParsing
        echo ""
        echo "### SERVIDOR RODA ###"
        echo ""
        $web.headers.server
        echo ""
        echo "### MÉTODOS ACEITOS ###"
        echo ""
        $web.headers.allow
    }
    catch{echo "NÃO FOI POSSÍVEL DETERMINAR SERVIDOR E MÉTODOS!"}
    echo ""
    echo "### LINKS ENCONTRADOS ###"
    $web2 = Invoke-WebRequest -uri "$url" -UseBasicParsing
    $web2.links.href | Select-String "//"
}