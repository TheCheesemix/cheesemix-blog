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
cp -r $CWD/build/* /tmp/build

cd /tmp/build

git config --global user.email "daf@cappui.com"
git config --global user.name "duncanaforbes"

git add .
git commit -m "Publishing Automated Cheesemix Blog Build Process"
git push -f origin master


# Copy static site
CWD=`pwd`

# Clone Pages repository
cd /tmp
git clone YOUR_PAGES_REPO build

# cd build && git checkout -b YOUR_BRANCH origin/YOUR_BRANCH # If not using master

# Trigger Middleman rebuild
cd $CWD
bundle exec middleman contentful --rebuild

# Push newly built repository
cp -r $CWD/build/* /tmp/build

cd /tmp/build

git config --global user.email "YOUR_EMAIL@example.com"
git config --global user.name "YOUR NAME"

git add .
git commit -m "Automated Rebuild"
git push -f origin YOUR_PAGES_BRANCH