@echo off
REM ------------------------------------------------
REM   naplesOCTA.bat
REM ------------------------------------------------
REM arg1: Naples input file (input.udf)
REM arg2-x: args of naplesOCTA
REM ------------------------------------------------
setlocal enabledelayedexpansion
set prog_name=naplesOCTA
set conv=naples_input_converter
set udf_name=%1

set init_flag=1
for %%a in (%*) do (
    if !init_flag! == 1 (
        set init_flag=0
    ) else (
        set args=!args! %%a
    )
)

echo ----------
%conv% -I %udf_name% > input
if not %errorlevel% == 0 goto ERROR1
echo naples  input  file  created  from  %udf_name%.
echo %prog_name%  is  started.   args  :  [%args%]
echo  :
%prog_name% input %args%
set RC=%errorlevel%
if not %RC% == 1 goto ERROR2
echo %prog_name%  is  completed.
goto END

:ERROR1
echo %conv%  failed.
goto END

:ERROR2
echo %prog_name%  is  completed. But there are some errors.  [rc=%RC%]

:END
endlocal
