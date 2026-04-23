echo off

echo starting commit and deploy process...

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

git fetch origin main

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

git pull origin main

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

git add .

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

git commit -m "%COMMIT_NAME%"

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

git push origin main

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

npm run deploy
 
if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

echo Done
pause
exit /b
