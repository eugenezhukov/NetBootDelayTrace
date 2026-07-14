$boot = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$events = @()

$events += Get-WinEvent -FilterHashtable @{LogName='System'; StartTime=$boot} -ErrorAction SilentlyContinue |
    Where-Object { $_.Message -match 'link|соединен|network' -and $_.ProviderName -notmatch 'DistributedCOM' } |
    Select-Object TimeCreated, @{n='Source';e={$_.ProviderName}}, Id, @{n='Msg';e={$_.Message.Split("`n")[0]}}

foreach ($log in 'Microsoft-Windows-NetworkProfile/Operational','Microsoft-Windows-NCSI/Operational') {
    $events += Get-WinEvent -FilterHashtable @{LogName=$log; StartTime=$boot} -ErrorAction SilentlyContinue |
        Select-Object TimeCreated, @{n='Source';e={$log.Split('/')[0].Split('-')[-1]}}, Id, @{n='Msg';e={$_.Message.Split("`n")[0]}}
}

$events | Sort-Object TimeCreated |
    Select-Object @{n='T+сек';e={[math]::Round(($_.TimeCreated - $boot).TotalSeconds,1)}}, Source, Id, Msg |
    Format-Table -Wrap
