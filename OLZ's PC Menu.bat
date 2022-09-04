title OLZ's PC MENU
@ECHO OFF
C:
CD\
CLS

:MENU
CLS

ECHO ============OLZ's PC MENU============
ECHO 1.  Tasklist 
ECHO 2.  Re-Install
ECHO 3.  Restart PC
ECHO 4.  System Refresh
ECHO 5.  Credits
ECHO 6.  Flush DNS  
ECHO 7.  Shutdown PC 
ECHO 8.  Disable RTP
ECHO 9.  Enable RTP
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO WARNING: AFTER RUNNING ACTION CLOSE W
ECHO INDOW OR EVERYTHING RUNS AT ONECE
ECHO.

SET INPUT=
SET /P INPUT=Please select a option:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='4' GOTO Selection4
IF /I '%INPUT%'=='5' GOTO Selection5
IF /I '%INPUT%'=='6' GOTO Selection6
IF /I '%INPUT%'=='7' GOTO Selection7
IF /I '%INPUT%'=='8' GOTO Selection8
IF /I '%INPUT%'=='9' GOTO Selection9
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ========== INVALID OPTION ==========
ECHO ------------------------------------
ECHO Please select a option from the Menu
ECHO ------------------------------------
ECHO ====YOU MAY NOW CLOSE THIS WINDOW===

PAUSE > NUL
GOTO MENU

:Selection1
tasklist
pause

:Selection2
start https://github.com/hithisisme123/_OLZComputerTweaks/blob/main/OLZ's%20PC%20Menu.bat
pause

:Selection3
shutdown -r
pause

:Selection4
taskkill /im explorer.exe /f
start explorer.exe
exit

:Selection5
echo msgbox "Made with love by: _OLZ" > %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs
exit
pause

:Selection6
ipconfig /flushdns
exit

:Selection7
shutdown -s
echo msgbox "SHUTTING DOWN PC" > %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs
exit

:Selection8
sc stop WinDefend
pasue

:Selection9
sc start WinDefend

:Quit
cls
exit
