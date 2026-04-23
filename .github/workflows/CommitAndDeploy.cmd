echo off

cd..
cd..

echo starting commit and deploy process...

git init

git fetch origin main

git pull origin main

git add .

if %ERRORLEVEL% NEQ 0 (
    echo There was an error, please check the error and remember:
    echo - Ensure you have the correct permissions.
    echo - Ensure you have saved all the changes before running this script.
    echo - Ensure you have a stable internet connection.
    pause
    exit /b
)

set /p commitName="Enter commit message:"

git commit -m "%commitName%"

git push origin main

npm run deploy
 
echo Done
pause
exit/b
