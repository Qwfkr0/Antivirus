@echo off
title                                                                :Antivirus USB
color a
:start
echo .
echo .
echo                                MOMENTO DE EJECUCIÓN
echo                                DÍA %date%    HORA %time%
echo .
echo .
echo       ------------------------------------------------------------------------------------------------------------------------------------------
echo                                                                   ANTIVIRUS USB
echo       ------------------------------------------------------------------------------------------------------------------------------------------
echo .
echo .
set /p unit= INGRESE LA LETRA DE LA UNIDAD USB A DESINFECTAR:
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
echo LA UNIDAD %unit% FUÉ DESINFECTADA EL DÍA %date% A LA HORA %times% >USB DESINFECTADO.txt
echo .
:error
cls
echo .
echo unidad inválida
echo .
goto start
