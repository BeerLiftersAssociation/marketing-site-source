#/bin/bash
git pull
jekyll build --environment production
cd ../beerliftersassociation.github.io/
git add -A
git commit -am "Deploy"
cd ../marketing-site-source
echo "Complete"