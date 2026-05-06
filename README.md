# Powershell-Inlamning-1

## Beskrivning

Det här är min första inlämning i PowerShell. Skriptet skapar en enkel mappstruktur utifrån ett namn som användaren själv skriver in.

Till exempel kan man skriva `kundsystem`, och då skapas en huvudmapp med det namnet. Inuti den mappen skapas även mapparna `logs`, `scripts` och `temp`.

I `logs`-mappen skapas också en loggfil med dagens datum i filnamnet. Loggfilen innehåller en rad som visar vilket datum och vilken tid strukturen skapades.

## Hur man kör skriptet

För att köra skriptet öppnar man PowerShell och går till mappen där filen finns.

Sedan kör man:

.\strukturverktyg.ps1


När skriptet startar får man skriva in ett namn på mappen som ska skapas.

Exempel:

kundsystem


Då skapas mappen `kundsystem` i samma mapp som skriptet körs från.

## Felhantering

Skriptet använder `try/catch` för att kunna hantera fel. Till exempel kontrollerar skriptet om huvudmappen redan finns. Om den redan finns stoppas skriptet och ett felmeddelande skrivs ut i terminalen.

## Reflektion

Jag tyckte att uppgiften var bra för att förstå grunderna i PowerShell. Det var nyttigt att få öva på att skapa mappar, skapa filer och skriva till en loggfil.

Det som var lite svårt i början var att förstå hur `function`, `param`, `try`, `catch` och `throw` hängde ihop. Efter att ha gått igenom det blev det tydligare att funktionen används för att samla koden, och att `try/catch` används för att fånga upp fel på ett snyggare sätt.

Jag tycker också att det var intressant att se hur man kan automatisera saker som annars hade gjorts manuellt.
