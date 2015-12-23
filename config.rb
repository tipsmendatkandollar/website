require 'slim'
require 'lib/custom_helpers'

activate :directory_indexes
activate :blog

page '/index.html', layout: :landing_page

with_layout :website do
  page '/about.html'
  page '/blog.html'
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

helpers CustomHelpers
