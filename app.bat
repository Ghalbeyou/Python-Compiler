@echo off
echo [====================]
echo [ ::. Loading .. .:: ]
echo [====================]
ping localhost -n 5 > nul
cls
call Data\menu
echo FAILD TO OPEN DATA, PLEASE VERIFY THAT THERE IS A DATA FOLDER!
pause