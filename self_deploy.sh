cd dacheng
hugo --minify 
rm -rf /tmp/public 
cp -rf public /tmp/ 
git checkout gh-pages 
cd - 
rm -rf * 
cp -rf /tmp/public/* .
git add . && git commit -m "self deploy" && git push