REM @echo off

setlocal

for %%I in (*.pdf) do (
for /f %%n in ('pdfgrep "Identity No" %%I ^| grep -oE "[1-2][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"') do (
set ID=%%n
echo !ID!
)
)
