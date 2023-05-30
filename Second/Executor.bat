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



http://tecnologiaeinformaticazaragoza.blogspot.com/2016/06/actividades-practicas-para-crear.html
https://www.compuhoy.com/6-formas-de-crear-un-virus-informatico-usando-el-bloc-de-notas/?utm_content=cmp-true
