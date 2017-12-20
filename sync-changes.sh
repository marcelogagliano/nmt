git add $1
git status
git commit -m $2
#git remote add origin https://github.com/marcelogagliano/nmt.git
#git remote add origin $3
git remote -v
git push origin master
