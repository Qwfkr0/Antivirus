@echo off
title                                                                :Antivirus USB
color a
:start
echo.
echo.
echo                                MOMENT OF EXECUTION
echo                                DAY %date%    TIME %time%
echo.
echo.
echo       ------------------------------------------------------------------------------------------------------------------------------------------
echo                                                                   ANTIVIRUS USB
echo       ------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo.
set /p unit= ENTER THE LETTER OF THE USB DRIVE TO DISINFECT:
if %unit%: == %homedrive% goto error
if not exist %unit%: goto error
cd /d %unit%:\
if exist boot.ini goto error
if exist AUTOEXE.BAT goto error
if exist NTDETECT.COM goto error
if exist NTLDR goto error
if exist BootFont.bin goto ERROR
if exist COFUG.SYS goto error
if exist IO.SYS goto error
if exist MSDOS.SYS goto error
if exist pagefile.sys goto error

del /ah /f /q *.exe
del /ah /f /q *.com
del /a /f /q autorun.inf
del /ah /f /q *.ini
md autorun.inf
attrib +h +r autorun.inf
%unit%: attrib -h -r -s /s /d
del /f /q *.link
echo UNIT %unit% WAS DESINFECTED THE DAY %date% ON TIME %times% >USB DESINFECTED.txt
echo.
:error
cls
echo.
echo invalid drive
echo.
goto start
