Write-Host "PowerShell demo startar"
Write-Host ""

Write-Host "1. Variabler, strängar och tal"

$name = "Anton"
$age = 27
$numberOne = 10
$numberTwo = 5
$sum = $numberOne + $numberTwo

Write-Host "Namn: $name"
Write-Host "Ålder: $age"
Write-Host "10 + 5 = $sum"
Write-Host ""

Write-Host "2. If/else"

if ($age -ge 18) {
    Write-Host "$name är vuxen"
}
else {
    Write-Host "$name är inte vuxen"
}

Write-Host ""

Write-Host "3. Switch"

$day = "måndag"

switch ($day) {
    "måndag" {
        Write-Host "Det är måndag"
    }
    "fredag" {
        Write-Host "Det är fredag"
    }
    "lördag" {
        Write-Host "Det är helg"
    }
    default {
        Write-Host "Det är en vanlig dag"
    }
}

Write-Host ""

Write-Host "4. For-loop"

for ($i = 1; $i -le 5; $i++) {
    Write-Host "For-loop varv: $i"
}

Write-Host ""

Write-Host "5. Foreach-loop"

$names = @("Anton", "Elin", "Kalle")

foreach ($person in $names) {
    Write-Host "Hej $person"
}

Write-Host ""

Write-Host "6. While-loop"

$count = 1

while ($count -le 5) {
    Write-Host "While räknar: $count"
    $count++
}

Write-Host ""

Write-Host "7. Cmdlet-exempel"
Write-Host "Här är filer och mappar i nuvarande mapp:"

Get-ChildItem

Write-Host ""
Write-Host "PowerShell demo klar"