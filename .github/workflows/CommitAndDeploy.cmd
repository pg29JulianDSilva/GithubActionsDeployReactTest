
cd..

cd..

git init

git pull origin main

git add .

set /p commitName="Enter commit message:"

git commit -m "%commitName%"

git push origin main

npm run deploy
 
echo "Done"
pause "Press any key to continue..."
exit()
