# Funktion som skapar huvudmapp, undermappar och loggfil
function Skapa-Struktur {
    param (
        [string]$Namn
    )

    try {
        # Kontrollera om huvudmappen redan finns
        if (Test-Path $Namn) {
            throw "Mappen '$Namn' finns redan."
        }

        # Skapa huvudmappen
        New-Item -Path $Namn -ItemType Directory | Out-Null

        # Lista med undermappar som ska skapas
        $undermappar = @("logs", "scripts", "temp")

        # Skapa varje undermapp inuti huvudmappen
        foreach ($mapp in $undermappar) {
            New-Item -Path "$Namn\$mapp" -ItemType Directory | Out-Null
        }

        # Hämta dagens datum i formatet YYYY-MM-DD
        $datum = Get-Date -Format "yyyy-MM-dd"

        # Skapa sökvägen till loggfilen
        $loggfil = "$Namn\logs\log-$datum.txt"

        # Skapa loggtext med datum och tid
        $loggText = "Struktur skapad: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

        # Skriv texten till loggfilen
        Set-Content -Path $loggfil -Value $loggText

        # Meddelande om att allt gick bra
        Write-Host "Strukturen skapades utan problem."
        Write-Host "Huvudmapp: $Namn"
        Write-Host "Loggfil: $loggfil"
    }
    catch {
        # Felhantering om något går fel
        Write-Host "Ett fel uppstod:" -ForegroundColor Red
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

# Fråga användaren efter ett namn på huvudmappen
$namn = Read-Host "Ange namn på huvudmappen, välj något nice."

# Kör funktionen med användarens angivna namn
Skapa-Struktur -Namn $namn