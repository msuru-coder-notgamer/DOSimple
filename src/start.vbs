Set wShell = CreateObject("WScript.Shell")

Dim xmlhttp
Set xmlhttp = CreateObject("MSXML2.XMLHTTP")

xmlhttp.Open "GET", "https://msuru-coder-notgamer.github.io/DOSimple/ud-sys/main.txt", False
xmlhttp.Send

Dim x

If (xmlhttp.responseText = "1.3.4") Then
    wShell.Run "cmd /c getLoc.bat", 0
Else
    x = MsgBox("There is a new version of DOSimple." & vbCrLf & vbCrLf & _
    "New version: v" & xmlhttp.responseText & vbCrLf & _
    "Current version: v1.3.4" & vbCrLf & vbCrLf & _
    "Do you want to download DOSimple v" & xmlhttp.responseText & "? Press cancel to exit.", _
    vbYesNoCancel + vbExclamation, "New version of DOSimple")

    If (x = vbYes) Then
        wShell.Run "cmd /c start https://github.com/msuru-coder-notgamer/DOSimple/releases/", 0
    ElseIf (x = vbNo) Then
        wShell.Exec ("cmd /c getLoc.bat")
    End If
End If