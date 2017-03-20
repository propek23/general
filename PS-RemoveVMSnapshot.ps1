$servername = XXXXXX

Add-PSSnapin VMware.VimAutomation.Core
Connect-VIServer -Server $servername
Get-VM  -Name Win10-TestDesktop | `
  Get-Snapshot |  `
  Where-Object { $_.Created -lt (Get-Date).AddDays(-0) } | `
  Remove-Snapshot -Confirm:$false
