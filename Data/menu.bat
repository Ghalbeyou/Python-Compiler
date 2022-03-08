set /p pyname=Enter the python file name: 
if exist %pyname% (
    goto :next
) else (
    goto :faild
)
:next
echo Is your project a console app?
CHOICE /C YN /M "Press Y for Yes, N for No."
if %errorlevel%==1 goto :compile
if %errorlevel%==2 goto :compile_non
exit
:faild
cls
echo FAILD! press anykey to exit
pause>nul
exit
:compile
cls
pyinstaller --onefile %pyname%
echo compiled the app!
pause
exit
:compile_non
cls
pyinstaller -w --onefile %pyname%
echo compiled the app!
pause
exit