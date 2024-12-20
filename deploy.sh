#!/bin/bash
source ~/.bashrc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
rm -rf biglab-temp

git clone git@github.com:cmubig/cmubig.github.io.git biglab-temp
cd biglab-temp
last_commit=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%s)
git clone git@github.com:cmubig/cmubig.github.io.git _site
cd _site
last_push=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%s)
if [ $last_commit -ge $last_push ]; then
  cd ..
  rm -rf _site
  sudo docker run --rm --volume="$PWD:/srv/jekyll"  jekyll/jekyll:4.0 jekyll build
  if [ -d "_site" ]; then
    cd _site
    git init
    git remote add origin git@github.com:cmubig/cmubig.github.io.git
    touch .nojekyll
    touch CNAME
    echo "cmubig.github.io" >> CNAME
    git add -A
    git commit -m "Auto deploy"
    git push -f origin main
    cd ../../
    rm -rf biglab-temp
    echo "Pushed changes!"
  else
    echo "Failed to push!"
  fi
else
  cd ../../
  rm -rf biglab-temp
  echo "Up to date!"
fi 
