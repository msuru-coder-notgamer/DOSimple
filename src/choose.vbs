Set wShell=CreateObject("WScript.Shell")
dosPath=WScript.Arguments(0)
Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
sFileSelected = oExec.StdOut.ReadLine
if (sFileSelected = "") Then
    msgbox "No file selected", vbOkOnly+vbCritical, "Error"
Else
    wShell.Run "cmd /c exec.bat """ + dosPath + """ """ + sFileSelected + """", 0
End If