echo "building county pages..."
Rscript BuildCountiesWebsite.R 

echo "uploading to github..."
d=$(date +"%Y_%m_%d")
git add ../tmp/*
git add ../data/covid.RData

git commit -m "Daily Update for $d"
git push




