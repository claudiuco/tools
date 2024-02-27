## Title:       An advanced ping test when you deal with a lot of servers. 
## Author:      Claudiu Costin
## Version:     1.1
## Date:        2024-02-12

$Computers = Get-Content "$PSScriptRoot\servers.txt"
 
forEach ($comp in $Computers) {
   if (Test-NetConnection -ComputerName $comp -CommonTCPPort "RDP" -InformationLevel "Quiet") {
      $Online =  "$comp,Yes"
      $Online | Out-File -FilePath $PSScriptRoot\rdpresults.txt -Append
      Write-Host "$comp RDP is ONLINE" -ForegroundColor Green
   }
   else {
      $Offline =  "$comp,No"
      $Offline | Out-File -FilePath $PSScriptRoot\rdpresults.txt -Append
      Write-Host "$comp RDP is OFFLINE" -ForegroundColor Red
   }
}
