
$dir = "'$PSScriptRoot'"
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  
  Start-Process powershell.exe " -Command",('"set-location {0};Write-host "Running... This window will close when done"; & ".\files\velociraptor-v0.6.5-2-windows-386.exe" "artifacts --definitions=.\artifacts collect Custom.Generic.Detection.OpenSSL_3_xCriticalVuln_Indicators --output=.\OpenSSL_3_xCriticalVuln_Indicators_SEE_YOUR_RESULTS_HERE.zip --format=csv --cpu_limit=5"; exit"' -f $dir) -Verb RunAs
  exit
}
