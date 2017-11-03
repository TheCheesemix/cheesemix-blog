# Copy static site
CWD=`pwd`

# Clone Pages repository
cd /tmp
git clone https://github.com/thecheesemix/cheesemix-blog build

# cd build && git checkout -b YOUR_BRANCH origin/YOUR_BRANCH # If not using master

# Trigger Middleman rebuild
cd $CWD
bundle exec middleman contentful --rebuild

# Push newly built repository
cp -r $CWD/build/* ./build

cd ./build

git config --global user.email "daf@cappui.com"
git config --global user.name "duncanaforbes"

git add .
git commit -m "Publishing Automated Cheesemix Blog Build Process"
git push -f origin master

