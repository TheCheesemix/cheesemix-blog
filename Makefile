
#build middleman site and retrive recent contentful data
site_build:
	middleman contentful --rebuild

#run sync command for google storage
rsync:
	gsutil -m rsync -d -r build gs://stageing_blog.cheesemix.com