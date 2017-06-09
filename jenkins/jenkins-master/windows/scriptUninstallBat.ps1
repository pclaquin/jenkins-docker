PARAM(
[string]$server
)
psexec.exe -d -s ("\\" + $server) cmd.exe /C ("\\" + $server + "\Sources\uninstall.bat")
