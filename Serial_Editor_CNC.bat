@echo off
:menu 
color 3B
REM Batch tool to edit CNC serial in Windows Registry by Doctor_Titi
echo.
SET /P ab=Enter name to save new .reg file: 
rem :exist
rem if exist %UserProfile%\Desktop\%ab%.reg goto :question1
rem
rem :question1
rem    SET /P 12=This name is already taken. Would you like to choose an another one?(Y/N): 
rem		if /i {%12%}=={y} (goto :exist)
rem		if /i {%12%}=={n} (goto :continue)
rem
rem goto :question1

:continue
SET /P a=Enter new serial key for CNC3: 

echo Windows Registry Editor Version 5.00 > %UserProfile%\Desktop\%ab%.reg
echo. >> %UserProfile%\Desktop\%ab%.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Electronic Arts\Electronic Arts\Command and Conquer 3\ergc] >> %UserProfile%\Desktop\%ab%.reg
echo @="%a%" >> %UserProfile%\Desktop\%ab%.reg



set /P b=Would you like to apply change right now? (Y/N): 
 if /i {%b%}=={y} ( GOTO :apply )
 if /i {%b%}=={n} ( GOTO :exit )

goto :menu

:apply

%UserProfile%\Desktop\%ab%.reg 
 
:exit
echo Bye!
exit



REM --EOF--