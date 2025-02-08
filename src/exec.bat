@echo off
pause
set dosPath=%1
set execPath=%2
%dosPath% %execPath%
ping -n 2 127.0.0.1 > nul