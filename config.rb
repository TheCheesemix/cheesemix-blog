# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions



# ------------------------------------------------------------------------------
# Middleman Configuration
# ------------------------------------------------------------------------------

# For custom domains on github pages
page "CNAME", layout: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :partials_dir, 'partials'
set :markdown_engine, :redcarpet


Time.zone = "London"


activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

# Turn this on if you want to make your url's prettier, without the .html
activate :directory_indexes

# Use relative URLs
activate :relative_assets
 

# Enable cache buster
activate :asset_hash



activate :disqus do |d|
  d.shortname = 'cheesemix' # Replace with your Disqus shortname.
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "/layouts/feed.html", :layout => "feed"

page "../layouts/post.html", :layout => "post"


data.site.blogPost.each do |article|
  page "/#{article[1][:slug]}.html", proxy: '/post/show.html', ignore: true do
    @article     = article[1]
    @title    = article[1][:title]
    @subtitle    = article[1][:subtitle]
    @slug     = article[1][:slug]
    @body     = article[1][:body]
    @image    = article[1][:featuredImage]
    @imageUrl     = article[1][:featuredImage][:url]
    @imageTitle    = article[1][:featuredImage][:title]
    @date     = article[1][:date]
    @tags     = article[1][:tags]
    @category    = article[1][:blogCategory]
    @authorName   = article[1][:author][:name]
    @authorPhoto   = article[1][:author][:profilePhoto][:url]
    @authorPhotoTitle   = article[1][:author][:profilePhoto][:title]
    @authorBiography   = article[1][:author][:biography]
    @comments = article[1][:comments]
  end
end

activate :blog do |blog|
  blog.taglink = "categories/{data.site.blogPost.tags}.html"
end

# Disable warnings
Haml::TempleEngine.disable_option_validator!


activate :drafts


# This will push to the gh-pages branch of the repo, which will
# host it on github pages (If this is a github repository)
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end


configure :build do
  # activate :minify_css
  # activate :minify_javascript
  # activate :asset_hash
  # activate :relative_assets
end


# ------------------------------------------------------------------------------
# Contentful Configuration
# ------------------------------------------------------------------------------

activate :contentful do |f|
  f.access_token  = "dc4bbaef77a67..."
  f.space = {site:"meg1xu0a1no8"}
  f.content_types = {blogPost: "blogPost"}

  # extension.data      = 'blog.post'
  # extension.prefix    = 'blog'
  # extension.permalink = "posts/{year}-{month}-{day}-{slug}.html"
  # extension.template  = 'post.html.erb'

end


  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /()/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

 

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
 



# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end





# ------------------------------------------------------------------------------
# Helpers
# ------------------------------------------------------------------------------

helpers do
  def title
  end

  def author
    data.site.blogPost.first[1].author[0]
  end

  def sort_by_most_recent(posts)
    posts.sort_by { |key| key["date"] }.reverse
  end

  def recent_articles
    articles = []
    data.site.blogPost.first(3).each do |id, article|
      articles.push article
    end
    sort_by_most_recent(articles)
  end

  def category
    data.site.blogPost.first[1].blogCategory[0]
  end

  def tags

  end

  def all_articles
    articles = []
    data.site.blogPost.each do |id, article|
      articles.push article
    end
    sort_by_most_recent(articles)
  end

  def publish_date(datetime)
    datetime.strftime('%B %d, %Y')
  end

  def microdata_date(datetime)
    datetime.strftime('%Y-%m-%d')
  end

end

 



