echo off

cd..

cd..

git init

set /i status=git status

if "%status%"=="nothing to commit, working tree clean" (
	echo "No changes to commit."
	exit /b 0
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
exit/b 0
