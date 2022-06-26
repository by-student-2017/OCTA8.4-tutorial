@echo off

if not exist naplesOCTA.bat (
  copy C:\OCTA8.4\ENGINES\bin\win64\naplesOCTA.bat .\
)
if not exist naplesOCTA.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\naplesOCTA.exe .\
)
if not exist naples_input_converter.exe (
  copy C:\OCTA8.4\ENGINES\bin\win64\naples_input_converter.exe .\
)

call naplesOCTA.bat input_step_shear.udf
