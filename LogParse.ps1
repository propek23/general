$filepath = C:\xxxxxx\*.log
$date = (Get-Date).AddDays(-0).ToString('yyyy/MM/dd')
get-content "$filepath" | select-string -notmatch "INFO" | set-content "$filepath"
