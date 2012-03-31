echo 'commit source and checkout master, then deploy'
git add .
git commit -a -m $1
git push origin source