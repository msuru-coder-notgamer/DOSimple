@echo off
set dosPath="%cd%"\dos.exe
set Path="%cd%"
start wscript.exe %Path%/choose.vbs %dosPath% %Path%
echo