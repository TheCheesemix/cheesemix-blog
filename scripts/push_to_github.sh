#!/bin/bash

echo '*************************************************'
echo '**** Publish updated content to Github Pages ****'
echo '*************************************************'

git config --global user.email "daf@cappui.com"
git config --global user.name "DuncanAForbes"

echo '**** Committing updated content ****'
git add .
git commit -m "Automated Publish"

echo '**** Pushing updated content to Github ****'
git push -f origin master

echo '*************************************************'