PARAM(
[string]$server
)
psexec.exe -d -s ("\\" + $server) C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe -File ("\\" + $server + "\Sources\uninstall.ps1")
