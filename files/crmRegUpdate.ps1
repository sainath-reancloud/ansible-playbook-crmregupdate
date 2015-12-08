Param(
[string]$AGListener,
[string]$Domain
)

$data = "Data Source=" + $AGListener +"."+ $Domain +";Initial Catalog=MSCRM_CONFIG;Integrated Security=SSPI;Connect Timeout=60;multisubnetfailover=true"
Set-ItemProperty -Path HKLM:SOFTWARE\Microsoft\MSCRM\ -Name configdb -Value $data -Force
Get-ItemProperty -Path HKLM:SOFTWARE\Microsoft\MSCRM\ -Name configdb
