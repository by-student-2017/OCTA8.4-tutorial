@echo off

if not exist cyggcc_s-seh-1.dll (
  copy C:\OCTA8.4\ENGINES\lib\win64\*.dll .\
)

if not exist kapsel.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\kapsel.exe .\
)

"C:\Windows\System32\wsl.exe" ./kapsel.exe -Iinput.udf -Ooutput.udf -Ddefine.udf -Rrestart.udf
