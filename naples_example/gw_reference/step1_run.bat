@echo off

if not exist naplesgwOCTA.bat (
  copy C:\OCTA8.4\ENGINES\bin\win64\naplesgwOCTA.bat .\
  REM copy C:\OCTA8.4\ENGINES\Naples_for_OCTA\bin\win64\naplesgwOCTA.bat .\
)
if not exist naplesgwOCTA.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\naplesgwOCTA.exe .\
)
if not exist naplesOCTA.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\naplesOCTA.exe .\
)
if not exist naples_input_converter.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\naples_input_converter.exe .\
)
if not exist getggval.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\getggval.exe .\
)

call naplesgwOCTA.bat input_dynamic_shear_for_gw.udf