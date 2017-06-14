# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

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


# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false



activate :contentful do |f|
  f.access_token  = "dc4bbaef77a67ae520045ad0942a81663a1bddcc7dc6dabcf84b53d4e8c3a558"
  f.space = {site:"meg1xu0a1no8"}
  f.content_types = {blogPost: "blogPost"}

  # extension.data      = 'blog.post'
  # extension.prefix    = 'blog'
  # extension.permalink = "posts/{year}-{month}-{day}-{slug}.html"
  # extension.template  = 'post.html.erb'

end




data.site.blogPost.each do |post|
  page "/blog/#{post[1][:slug]}.html", proxy: '/blog/show.html', ignore: true do
    @post     = post[1]
    @title    = post[1][:title]
    @slug     = post[1][:slug]
    @body     = post[1][:body]
    @image    = post[1][:featuredImage]
    @date     = post[1][:date]
    @tags     = post[1][:tags]
    @author   = post[1][:author]
    @comments = post[1][:comments]
  end
end

# Disable warnings
Haml::TempleEngine.disable_option_validator!

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
