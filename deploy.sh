echo 'cp _site file to ./'
cp -r _site/* .
git add .
git commit -a -m 'commit jekyll generated files to site'
git push origin master

