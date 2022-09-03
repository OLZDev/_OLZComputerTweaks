title OLZ's PC Menu
@ECHO OFF
C:
CD\
CLS

:MENU
CLS

ECHO ============= OLZ's PC MENU ==========
ECHO -------------------------------------
ECHO 1.  Tasklist
ECHO 2.  Open Chrome (if installed)
ECHO 3.  Restart PC
ECHO 4.  System Refresh
ECHO 5.  Credits
ECHO 6.  Flush DNS
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO ====PRESS 'ENTER' TO EXECUTE ALL=====
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
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a option from the Menu!
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:Selection1
tasklist
pause

:Selection2
start chrome.exe
exit

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
pasue

:Quit
cls
exit
