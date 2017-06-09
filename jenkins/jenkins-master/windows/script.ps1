copy "C:\Users\pclaquin\Documents\Scripts\Windows\install.ps1" \\SRVINFRADEC3\Sources\
copy "C:\Users\pclaquin\Documents\Scripts\Windows\install.bat" \\SRVINFRADEC3\Sources\
#psexec \\SRVINFRADEC3 C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -Command "& \\SRVINFRADEC3\Sources\install.ps1"
psexec \\SRVINFRADEC3 \\SRVINFRADEC3\Sources\install.bat
