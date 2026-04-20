@echo off

cd..

cd..

git init

git pull origin main

git add .

git commit -m "FirstTestPipelines"

git push origin main

npm run deploy

pause
