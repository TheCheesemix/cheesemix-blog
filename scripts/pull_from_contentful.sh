
#!/bin/bash

echo '******************************************'
echo '**** Updating content from Contentful ****'
echo '******************************************'

bundle exec middleman contentful --rebuild

git --no-pager diff

echo '******************************************'