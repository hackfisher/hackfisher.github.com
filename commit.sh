echo 'commit source and checkout master, then deploy'
git add .
git commit -a -m '$1'
git push origin source

echo 'start checkout master and deploy'
git checkout master
sh deploy.sh $1
