echo off

cd..

cd..

git init

for /f "tokens=*" %%i in ('git status') do set "status=%%i"

if "%status%"=="nothing to commit, working tree clean" (
	echo "No changes to commit."
	exit /b
) else (
	echo "Changes detected. Proceeding with commit and deploy."
)

git pull origin main

git add .

set /p commitName="Enter commit message:"

git commit -m "%commitName%"

git push origin main

npm run deploy
 
echo "Done"
pause "Press any key to continue..."
exit/b
