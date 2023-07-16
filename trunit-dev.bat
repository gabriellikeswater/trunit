@echo off
title ARE YOU DREAMING?

:mainarea

cls

echo                       ______
echo                      /\__  _\
echo                      \/_/\ \/
echo                         \ \_\
echo                          \/_/
echo    ______     __  __     __   __        __     ______
echo   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\
echo   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/
echo    \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\
echo     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/
echo.
echo  - To run all the stuff needed for the server, Type "runall"
echo  - To run only the local server, Type "run"
echo  - To run only the playit proxy, Type "runproxy"
echo  - To run only the discord bot, Type "runbot"
echo.
echo  -----------------------Notes(below)---------------------
echo.
echo  - If you don't have a discord bot or playit proxy,
echo    when using "runall", you might get errors,
echo    it's OK. The server will still work :D
echo  - While running, type "exit" to save and stop the server.
echo  - While running, type "help" for a list of all commands.
echo  - You can't close all the windows with the "exit"
echo    command so you have to manually close them :P
echo.

set /p option1= [%username%@runit]~ 
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea

pause

:runall

cls
echo.
echo   Please be patient, this may take a bit!
echo.

start "..\Python\Python311\python.exe" "dbot.py"
echo.

start playit.exe
echo.

TerrariaServer.exe -config serverconfig.txt

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea

pause

:run

cls
echo.
echo   Please be patient, this may take a bit!
echo.

TerrariaServer.exe -config serverconfig.txt

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea

pause

:runproxy

cls
echo.
start playit.exe

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea

pause

:runbot

cls
echo.

start "..\Python\Python311\python.exe" "dbot.py"

echo.
echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto mainarea

pause