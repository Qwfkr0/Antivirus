@echo off
title SHORTCUT VIRUSES
color 0A
@echo ---------------------------------------­­-----
@echo USB FILE REPAIR 
@echo ---------------------------------------­­-----
@echo Showing Folders
Attrib /d /s -r -h -s . 
@echo ---------------------------------------­­-----
@echo Removed Shortcuts
if exist *.lnk del *.lnk 
@echo ---------------------------------------­­-----
@echo Removing Autorun
if exist autorun.inf del autorun.inf 
@echo ---------------------------------------­­----
