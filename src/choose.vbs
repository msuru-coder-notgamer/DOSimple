Set wShell=CreateObject("WScript.Shell")
dosPath=WScript.Arguments(0)
Path=WScript.Arguments(1)
Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
sFileSelected = oExec.StdOut.ReadLine

        wShell.Run "cmd /c """ + Path + "\exec.bat"" """ + dosPath + """ """ + sFileSelected + """", 0
        WScript.Sleep 1000