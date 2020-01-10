
Write-Host "********************************** "
Write-Host "    Find Bitlocker KEY AD"
Write-Host " "
Write-Host "    Written MyAlien"
Write-Host "********************************** "

$StrComputer = Read-Host -Prompt 'Input your hostname'
$objComputer = Get-ADComputer $StrComputer
$Bitlocker_Object = Get-ADObject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $objComputer.DistinguishedName -Properties 'msFVE-RecoveryPassword'
$Bitlocker_Object

Write-Host "Bitlocker KEY -> msFVE-RecoveryPassword" -ForegroundColor Green
Write-Host " "
Write-Host "Find Bitlocker KEY AD"

pause