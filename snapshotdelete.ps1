$vcenterserver = xxxxxx
$vmname = xxxxx

Add-PSSnapin VMware.VimAutomation.Core
Connect-VIServer -Server $vcenterserver
Get-VM  -Name $vmname | `
  Get-Snapshot |  `
  Where-Object { $_.Created -lt (Get-Date).AddDays(-7) } | `
  Remove-Snapshot -Confirm:$false
