REM @echo off
mkdir output
bin\cpdf -split %1 -o "%~dp0\output\page%%%%%%%%.pdf"&cls
ECHO LOADING Please wait...
bin\bash bin\script.sh