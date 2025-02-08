Set wShell = CreateObject("WScript.Shell")
wShell.Run "cmd /c %cd%\getLoc.bat", 0 
WScript.Sleep 1000