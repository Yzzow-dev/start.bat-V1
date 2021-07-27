:menu
@echo off & color 0f & cls & title le start.bat trop loul
mode 60,20
color 0b
echo.
echo --------Start.bat pour lancer le serveur-------- 
echo.       
echo [1] Lancer Serveur
echo.     
echo [2] Creer une backup
echo.
echo --------discord.gg/puJTGNTHBQ / Delta-DEV--------
echo.
set /p answer=""
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
goto :menu
exit

:1
color 0e
echo.
echo Suppression du cache en cours...
RMDIR /s /q "D:\nomdossier/cache"
ping localhost -n 5 >nul
echo.
echo Dossier cache supprime !
ping localhost -n 5 >nul
echo.
echo Lancement de votre serveur FiveM en cours...
ping localhost -n 5 >nul
echo.
color 0b
echo 3	
echo.
echo 2
echo.
echo 1
cd /d D:\nomdossier
D:\nomdossier\FXServer.exe +exec server.cfg
ping localhost -n 8 >nul
echo.
echo Lancement du serveur reussi !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit


:2
color 0e
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 8 >nul
XCOPY D:\nomdossier D:\nomdossier-backup\ /m /e /y
echo.
echo Backup cree avec succes !
ping localhost -n 5 >nul
exit
