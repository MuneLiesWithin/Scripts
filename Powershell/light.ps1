while($true) {

    $resp = ping -n 1 google.com
    $filter = "time=(\d+)ms"
    $match = $resp | Select-String -Pattern $filter


    if ($match) {

        $timeValue = $match.Matches.Groups[1].Value
        echo "Rodando! Tempo de resposta: ${timeValue}ms"

    } else {

        Start-Process C:\Users\Administrator\Desktop\lol.mp3
        echo "HOST IS DOWN!!"

    }
    
    Start-Sleep -Seconds 5 
}
