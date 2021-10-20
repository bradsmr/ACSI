# ACSI
Repository of scripts written by Bradley Summers for use at Accent Computer Solutions, Inc

Usage for Get-StorageCraftDTX.ps1:
```PowerShell
$ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/bradsmr/ACSI/main/Get-StorageCraftDTX.ps1
Invoke-Expression $($ScriptFromGithHub.Content)
```

Common Errors:

1. SSL/TLS Error
```PowerShell
Invoke-WebRequest : The request was aborted: Could not create SSL/TLS secure channel. # etc...
```
Resolution:
```PowerShell
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
# Then run the regular commands
```
